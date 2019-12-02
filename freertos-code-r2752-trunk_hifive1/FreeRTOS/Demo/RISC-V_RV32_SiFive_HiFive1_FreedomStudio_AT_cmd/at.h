/*
 * at.h
 *
 *  Created on: Dec 1, 2019
 *      Author: HoangSHC
 */

#ifndef AT_H_
#define AT_H_

typedef enum {
	AT_OK = 0,
	AT_ERROR,
	AT_CONNECT,
	AT_DISCONNECT,
	AT_SEND_OK,
	AT_NULL,
} at_t;

at_t AT_cmd(const char* cmd, int wait_ms, char* out_msg, size_t out_msg_len);
at_t AT_reset(int wait_ms, char* out_msg, size_t out_msg_len);
at_t AT_echo_off(int wait_ms, char* out_msg, size_t out_msg_len);
at_t AT_at(int wait_ms, char* out_msg, size_t out_msg_len);
at_t AT_wifi_mode_station(int wait_ms, char* out_msg, size_t out_msg_len);
at_t AT_wifi_conn(const char* ssid, const char* pssid, int wait_ms, char* out_msg, size_t out_msg_len);


#endif /* AT_H_ */
