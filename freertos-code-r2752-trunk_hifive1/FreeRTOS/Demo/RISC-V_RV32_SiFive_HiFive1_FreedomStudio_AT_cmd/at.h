/*
 * at.h
 *
 *  Created on: Dec 1, 2019
 *      Author: HoangSHC
 */

#ifndef AT_H_
#define AT_H_

int AT_cmd(const char* cmd, int wait_ms, char* out_msg, size_t out_msg_len);
int AT_reset(int wait_ms, char* out_msg, size_t out_msg_len);
int AT_echo_off(int wait_ms, char* out_msg, size_t out_msg_len);
int AT_at(int wait_ms, char* out_msg, size_t out_msg_len);
int AT_wifi_mode_station(int wait_ms, char* out_msg, size_t out_msg_len);
int AT_wifi_conn(const char* ssid, const char* pssid, int wait_ms, char* out_msg, size_t out_msg_len);


#endif /* AT_H_ */
