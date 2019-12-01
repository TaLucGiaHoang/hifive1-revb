/*
 * esp32_AT.h
 *
 *  Created on: Nov 4, 2019
 *      Author: HoangSHC
 */

#ifndef ESP32_AT_H_
#define ESP32_AT_H_

typedef enum {
	AT_OK = 0,
	AT_ERROR,
	AT_CONNECT,
	AT_DISCONNECT,
	AT_SEND_OK,
	AT_NULL,
} at_t;

void esp32_create_tasks(void);
int esp32_send_cmd(const char* cmd, int wait_ms);
size_t esp32_recv(char* msg, int msg_len);
at_t esp32_process_message(char* msg, int msg_len);

int AT_cmd(const char* cmd, int wait_ms, char* out_msg, size_t out_msg_len);
int AT_reset(int wait_ms, char* out_msg, size_t out_msg_len);
int AT_echo_off(int wait_ms, char* out_msg, size_t out_msg_len);
int AT_at(int wait_ms, char* out_msg, size_t out_msg_len);
int AT_wifi_mode_station(int wait_ms, char* out_msg, size_t out_msg_len);
int AT_wifi_conn(const char* ssid, const char* pssid, int wait_ms, char* out_msg, size_t out_msg_len);


#endif /* ESP32_AT_H_ */
