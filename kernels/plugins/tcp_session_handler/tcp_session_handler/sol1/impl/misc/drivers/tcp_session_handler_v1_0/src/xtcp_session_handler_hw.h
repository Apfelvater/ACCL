// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of ip
//        bit 31~0 - ip[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of port_nr
//        bit 31~0 - port_nr[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of close
//        bit 0  - close[0] (Read/Write)
//        others - reserved
// 0x24 : reserved
// 0x28 : Data signal of session_id_i
//        bit 31~0 - session_id_i[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of session_id_o
//        bit 31~0 - session_id_o[31:0] (Read)
// 0x34 : Control signal of session_id_o
//        bit 0  - session_id_o_ap_vld (Read/COR)
//        others - reserved
// 0x38 : Data signal of success
//        bit 0  - success[0] (Read)
//        others - reserved
// 0x3c : Control signal of success
//        bit 0  - success_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XTCP_SESSION_HANDLER_CONTROL_ADDR_IP_DATA           0x10
#define XTCP_SESSION_HANDLER_CONTROL_BITS_IP_DATA           32
#define XTCP_SESSION_HANDLER_CONTROL_ADDR_PORT_NR_DATA      0x18
#define XTCP_SESSION_HANDLER_CONTROL_BITS_PORT_NR_DATA      32
#define XTCP_SESSION_HANDLER_CONTROL_ADDR_CLOSE_DATA        0x20
#define XTCP_SESSION_HANDLER_CONTROL_BITS_CLOSE_DATA        1
#define XTCP_SESSION_HANDLER_CONTROL_ADDR_SESSION_ID_I_DATA 0x28
#define XTCP_SESSION_HANDLER_CONTROL_BITS_SESSION_ID_I_DATA 32
#define XTCP_SESSION_HANDLER_CONTROL_ADDR_SESSION_ID_O_DATA 0x30
#define XTCP_SESSION_HANDLER_CONTROL_BITS_SESSION_ID_O_DATA 32
#define XTCP_SESSION_HANDLER_CONTROL_ADDR_SESSION_ID_O_CTRL 0x34
#define XTCP_SESSION_HANDLER_CONTROL_ADDR_SUCCESS_DATA      0x38
#define XTCP_SESSION_HANDLER_CONTROL_BITS_SUCCESS_DATA      1
#define XTCP_SESSION_HANDLER_CONTROL_ADDR_SUCCESS_CTRL      0x3c

