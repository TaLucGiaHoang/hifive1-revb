#include <string.h>
#include <time.h>
#include <metal/led.h>
#include <metal/gpio.h>
#include <metal/timer.h>
#include <metal/spi.h>
#include <metal/clock.h>
#include <metal/uart.h> // serial uart
#include <metal/machine.h> // serial uart
#include "debug_serial.h"
#include "drv_spi1.h"
#include "drv_esp32.h"
#include "esp32_AT.h"

/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "semphr.h"


#define delay_s(s)    vTaskDelay( ( TickType_t )(1000*s) / portTICK_PERIOD_MS )
#define delay_ms(ms)    vTaskDelay( ( TickType_t )ms / portTICK_PERIOD_MS )


enum {
//	MSG_AT = 0,
//	MSG_RESET,
//	MSG_ECHO_OFF,
//	MSG_WIFI_CONNECT,
    MSG_SEND_STRING,
	MSG_RECV_STRING,
};


static char messageReceive[ESP_AT_BUFFER_SIZE];
static QueueHandle_t xQueueRx, xQueueTx, xQueueReturnValue;
static SemaphoreHandle_t xSemaphore = NULL; // spi1 semaphore
struct ESP32_ST
{
    int id;
    void *data;
    int len;
} s_esp32;

static void prvESP32Task(void* pvParameters);
static void prvSpiRxTask(void* pvParameters);


static void queue_send_cmd(int id, void* data, int len);
static int read_xQueueRx(char* s, int s_len);


void esp32_create_tasks(void)
{
	xSemaphore = xSemaphoreCreateMutex();
	if ( ( xSemaphore ) != NULL )
	  xSemaphoreGive( ( xSemaphore ) );

    xQueueRx = xQueueCreate( 1024, sizeof( char ) );
    if( xQueueRx == NULL )
    {
        /* Queue was not created and must not be used. */
        debug_puts("xQueueRx was not created\r\n");
    }

    xQueueTx = xQueueCreate( 2, sizeof( s_esp32 ) );
    if( xQueueTx == NULL )
    {
        /* Queue was not created and must not be used. */
    	debug_puts("xQueueTx was not created\r\n");
    }

    xQueueReturnValue = xQueueCreate( 1, sizeof( int ) );
    if( xQueueReturnValue == NULL )
    {
        /* Queue was not created and must not be used. */
    	debug_puts("xQueueReturnValue was not created\r\n");
    }

    xTaskCreate(prvESP32Task, "prvESP32Task", 1024, NULL, 1, NULL);
    xTaskCreate(prvSpiRxTask, "prvSpiRxTask", 512, NULL, 1, NULL);
}


static void prvSpiRxTask( void *pvParameters )
{
	/* Prevent the compiler warning about the unused parameter. */
	( void ) pvParameters;
	char c;
//	int i = 0;
	char *s = messageReceive;
	int len = 0;
	int ret = 0;
	memset(s, 0, sizeof(messageReceive));
	xSemaphoreTake(xSemaphore, portMAX_DELAY);
	debug_puts("Start ");debug_puts(__func__);debug_puts("\n");
	xSemaphoreGive(xSemaphore);
	for( ;; )
	{

		if( xQueueRx != 0 )
		{
			s = messageReceive;
			s[0] = 0;
			len = 0;
			xSemaphoreTake(xSemaphore, portMAX_DELAY);
			ret = drv_esp32_recv(s, &len);
			xSemaphoreGive(xSemaphore);

			if( ret != 0)
			{
				// recv error
			}
			else
			{
				if(len > 0) {
					s[len] = 0;
					debug_puts("esp32> ");  // DEBUG
					debug_puts(s);  // DEBUG

					// send to queue
					while(*s) {
						c = *(s);
						if( xQueueSend( xQueueRx, ( void * ) &c, ( TickType_t )2000 ) != pdPASS )
						{
							/* Failed to post the message. */
							debug_puts("xQueueRx is full --> clear\n");
							read_xQueueRx(0,0); // clear queue after 2000 ticks
							xQueueSend( xQueueRx, ( void * ) &c, ( TickType_t )0 ); // re-send queue
						}
						s++;
					}
				}
			}

			memset(s, 0, sizeof(messageReceive));
			delay_ms(100); // sleep 100ms
		}
	}

    vTaskDelete(NULL);
    vAssertCalled();
}

static void prvESP32Task(void* pvParameters)
{
	/* Remove compiler warning about unused parameter. */
	( void ) pvParameters;
	struct ESP32_ST esp32;
	xSemaphoreTake(xSemaphore, portMAX_DELAY);
	debug_puts("Start ");debug_puts(__func__);debug_puts("\n");
	xSemaphoreGive(xSemaphore);
	for(;;)
	{
		if( xQueueTx != 0 )
		{
			if( xQueueReceive( xQueueTx, ( void * )&esp32 , ( TickType_t ) 100 ) != pdPASS )
			{
			    /* Failed to get the message. */
			} else
			{
				xSemaphoreTake(xSemaphore, portMAX_DELAY);
				int id = s_esp32.id;
				switch (id)
				{
				case MSG_SEND_STRING:
				{
					char *data = (char*)esp32.data;
					int len = esp32.len;
					drv_esp32_send(data);
					break;
				}
				case MSG_RECV_STRING:
				{
					char* msg = (char*)esp32.data;
					int len = esp32.len;
					int recv_len = 0;
					recv_len = read_xQueueRx(msg, len);

					break;
				}
				default:
				{
					break;
				};
				}
				xSemaphoreGive(xSemaphore);
			}
		} else
		{
			debug_puts("xQueueTx was not created\n");
		}

	}

    vTaskDelete(NULL);
    vAssertCalled();
}

static void queue_send_cmd(int id, void* data, int len)
{
    s_esp32.id = id;
    s_esp32.data = data;
    s_esp32.len = len;
    if( xQueueSend( xQueueTx, ( void * ) &s_esp32,( TickType_t ) portMAX_DELAY ) != pdPASS )
    {
      /* Failed to post the message */
    }
}

static int read_xQueueRx(char* s, int s_len)
{
	char c;
	int i = 0;
	do
	{
		if( xQueueReceive( xQueueRx, ( void * ) &c, ( TickType_t ) 0 ) != pdPASS )
		{
			break; // queue is empty
		}

		if(s)
			s[i] = c;

		if(s_len != 0)
			if(i > s_len)
				break;

		i++;
	}while(1);

	return i;
}

void esp32_send_cmd(const char* cmd, int wait_ms)
{
	queue_send_cmd( MSG_SEND_STRING, (void*)cmd, (int)strlen(cmd) );
	delay_ms(wait_ms + 50);
}

void esp32_recv(char* msg, int len)
{
	queue_send_cmd( MSG_RECV_STRING, (void*)msg, len);
	delay_ms(0 + 50);
}

void esp32_wifi_conn(const char* ssid, const char* pssid, int wait_ms)
{
	esp32_send_cmd("AT+CWMODE=1\r\n", 100);
//	esp32_send_cmd("AT+CWJAP=\"" WIFI_SSID "\",\"" WIFI_PASS "\"\r\n", 6000);
	esp32_send_cmd("AT+CWJAP=\"", 0);
	esp32_send_cmd(ssid, 0);
	esp32_send_cmd("\",\"", 0);
	esp32_send_cmd(pssid, 0);
	esp32_send_cmd("\"\r\n", wait_ms);
}

void esp32_reset_module(void)
{
	esp32_send_cmd("AT+RST\r\n", 1000);  // reset ESP32-SOLO-1
}

void esp32_echo_off(void)
{
	esp32_send_cmd("ATE0\r\n", 1000);  // echo off
}

