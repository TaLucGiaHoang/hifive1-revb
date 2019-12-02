/*
 * at.c
 *
 *  Created on: Dec 1, 2019
 *      Author: HoangSHC
 */

#include <string.h>

#include "esp32_AT.h"
#include "at.h"
#include "debug_serial.h"


static int receive_1line(char* dst, char* src, size_t len);
static int receive_1line(char* dst, char* src, size_t len);


// Get 1 line in receive buffer
static int receive_1line(char* dst, char* src, size_t len)
{
    size_t i = 0;
    dst[0] = 0;
    for (i = 0; i < len; i++) {
		dst[i] = src[i];
		if(dst[i] == '\n')
		{
			i++;
			break;
		}
		if(dst[i] == 0)
		{
			break;
		}
    }
    dst[i] = 0;
    return i;
}

static at_t esp32_process_message(char* msg, int msg_len)
{
    // Parse AT response to get the result
    int count;
    char *s = msg;
    int len = msg_len;

    do {
    	char tmp[100];
    	count = receive_1line(tmp, s , len);
    	if(count == 0)
    		break;

    	s += count; // move to next line

        // Process each line
        if (memcmp(tmp, "OK", 2) == 0) {
        	debug_puts("..");debug_puts(tmp);
        	return AT_OK;
        } else if (memcmp(tmp, "ERROR", 5) == 0) {
        	debug_puts("..");debug_puts(tmp);
        	return AT_ERROR;
        } else if (memcmp(tmp, "ERR CODE:", 9) == 0) {
        	debug_puts("..OK..\n");
        	// ERR CODE:0x010b0000
        	// ERR CODE:0x01030000
        	debug_puts("..");debug_puts(tmp);
        	return AT_ERROR;
        } /*else if (memcmp(tmp, "CONNECT", 2) == 0) {
        	s_is_connect = AT_CONNECT;
        } else if (memcmp(tmp, "DISCONNECT", 5) == 0) {
        	s_is_connect = AT_DISCONNECT;
        } else if (memcmp(tmp, "SEND OK", 5) == 0) {
        	return = AT_OK;
        }*/
        len -= count;
    }
    while (len > 0);
    debug_puts("..NULL..\n");
    return AT_NULL;
}

at_t AT_cmd(const char* cmd, int wait_ms, char* out_msg, size_t out_msg_len)
{
	size_t recv_len = 0;

	if( ( out_msg == NULL ) || ( out_msg_len == 0 ) )
		return AT_NULL;

	memset(out_msg, 0, out_msg_len); // clear buffer
	esp32_recv(0,0); // clear esp32 queue message
	esp32_send_cmd(cmd, wait_ms); // send AT command
	recv_len = esp32_recv(out_msg, out_msg_len); // get esp32 queue message and store to buffer
	if(recv_len == 0)
	{
		debug_puts("recv==0\n");
	}
	return esp32_process_message(out_msg, out_msg_len); // process buffer

}

/* reset ESP32-SOLO-1 */
at_t AT_reset(int wait_ms, char* out_msg, size_t out_msg_len)
{
//	return AT_cmd("AT+RST\r\n", 1000, out_msg, out_msg_len);
	return AT_cmd("AT+RST\r\n", wait_ms, out_msg, out_msg_len);
}

at_t AT_echo_off(int wait_ms, char* out_msg, size_t out_msg_len)
{
//	return AT_cmd("ATE0\r\n", 200, out_msg, out_msg_len);
	return AT_cmd("ATE0\r\n", wait_ms, out_msg, out_msg_len);
}

at_t AT_at(int wait_ms, char* out_msg, size_t out_msg_len)
{
//	return AT_cmd("AT\r\n", 100, out_msg, out_msg_len);
	return AT_cmd("AT\r\n", wait_ms, out_msg, out_msg_len);
}

at_t AT_wifi_mode_station(int wait_ms, char* out_msg, size_t out_msg_len)
{
//	return AT_cmd("AT+CWMODE=1\r\n", 100, out_msg, out_msg_len);
	return AT_cmd("AT+CWMODE=1\r\n", wait_ms, out_msg, out_msg_len);
}

at_t AT_wifi_conn(const char* ssid, const char* pssid, int wait_ms, char* out_msg, size_t out_msg_len)
{
	size_t recv_len = 0;

	if( ( out_msg == NULL ) || ( out_msg_len == 0 ) )
		return AT_NULL;

	memset(out_msg, 0, out_msg_len); // clear buffer
	esp32_recv(0,0); // clear esp32 queue message

	/* send AT command */
	esp32_send_cmd("AT+CWJAP=\"", 0);
	esp32_send_cmd(ssid, 0);
	esp32_send_cmd("\",\"", 0);
	esp32_send_cmd(pssid, 0);
	esp32_send_cmd("\"\r\n", wait_ms);

	recv_len = esp32_recv(out_msg, out_msg_len); // get esp32 queue message and store to buffer
	return esp32_process_message(out_msg, out_msg_len); // process buffer
}

