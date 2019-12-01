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

int AT_cmd(const char* cmd, int wait_ms, char* out_msg, size_t out_msg_len)
{
	size_t recv_len = 0;

	if( ( out_msg == NULL ) || ( out_msg_len == 0 ) )
		return AT_NULL;

	memset(out_msg, 0, out_msg_len); // clear buffer
	esp32_recv(0,0); // clear esp32 queue message
	esp32_send_cmd(cmd, wait_ms); // send AT command
	recv_len = esp32_recv(out_msg, out_msg_len); // get esp32 queue message and store to buffer
	if(recv_len > 0)
	{
		debug_puts("recv>0\n");
	}
	return esp32_process_message(out_msg, out_msg_len); // process buffer

}

/* reset ESP32-SOLO-1 */
int AT_reset(int wait_ms, char* out_msg, size_t out_msg_len)
{
//	return AT_cmd("AT+RST\r\n", 1000, out_msg, out_msg_len);
	return AT_cmd("AT+RST\r\n", wait_ms, out_msg, out_msg_len);
}

int AT_echo_off(int wait_ms, char* out_msg, size_t out_msg_len)
{
//	return AT_cmd("ATE0\r\n", 200, out_msg, out_msg_len);
	return AT_cmd("ATE0\r\n", wait_ms, out_msg, out_msg_len);
}

int AT_at(int wait_ms, char* out_msg, size_t out_msg_len)
{
//	return AT_cmd("AT\r\n", 100, out_msg, out_msg_len);
	return AT_cmd("AT\r\n", wait_ms, out_msg, out_msg_len);
}

int AT_wifi_mode_station(int wait_ms, char* out_msg, size_t out_msg_len)
{
//	return AT_cmd("AT+CWMODE=1\r\n", 100, out_msg, out_msg_len);
	return AT_cmd("AT+CWMODE=1\r\n", wait_ms, out_msg, out_msg_len);
}

int AT_wifi_conn(const char* ssid, const char* pssid, int wait_ms, char* out_msg, size_t out_msg_len)
{
	esp32_recv(0,0); // clear esp32 queue message
	memset(out_msg, 0, out_msg_len); // clear buffer

	/* send AT command */
	esp32_send_cmd("AT+CWJAP=\"", 0);
	esp32_send_cmd(ssid, 0);
	esp32_send_cmd("\",\"", 0);
	esp32_send_cmd(pssid, 0);
	esp32_send_cmd("\"\r\n", wait_ms);

	esp32_recv(out_msg, out_msg_len); // get esp32 queue message and store to buffer
	return esp32_process_message(out_msg, out_msg_len); // process buffer
}

