/*
 * esp32_AT.h
 *
 *  Created on: Nov 4, 2019
 *      Author: HoangSHC
 */

#ifndef ESP32_AT_H_
#define ESP32_AT_H_


void esp32_create_tasks(void);
int esp32_send_cmd(const char* cmd, int wait_ms);
size_t esp32_recv(char* msg, int msg_len);

void esp32_reset_module(void);
void esp32_echo_off(void);
void esp32_wifi_conn(const char* ssid, const char* pssid, int wait_ms);


#endif /* ESP32_AT_H_ */
