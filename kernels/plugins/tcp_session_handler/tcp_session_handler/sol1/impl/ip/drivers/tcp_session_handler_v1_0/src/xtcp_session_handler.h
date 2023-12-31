// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTCP_SESSION_HANDLER_H
#define XTCP_SESSION_HANDLER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xtcp_session_handler_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XTcp_session_handler_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XTcp_session_handler;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTcp_session_handler_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTcp_session_handler_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTcp_session_handler_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTcp_session_handler_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XTcp_session_handler_Initialize(XTcp_session_handler *InstancePtr, u16 DeviceId);
XTcp_session_handler_Config* XTcp_session_handler_LookupConfig(u16 DeviceId);
int XTcp_session_handler_CfgInitialize(XTcp_session_handler *InstancePtr, XTcp_session_handler_Config *ConfigPtr);
#else
int XTcp_session_handler_Initialize(XTcp_session_handler *InstancePtr, const char* InstanceName);
int XTcp_session_handler_Release(XTcp_session_handler *InstancePtr);
#endif


void XTcp_session_handler_Set_ip(XTcp_session_handler *InstancePtr, u32 Data);
u32 XTcp_session_handler_Get_ip(XTcp_session_handler *InstancePtr);
void XTcp_session_handler_Set_port_nr(XTcp_session_handler *InstancePtr, u32 Data);
u32 XTcp_session_handler_Get_port_nr(XTcp_session_handler *InstancePtr);
void XTcp_session_handler_Set_close(XTcp_session_handler *InstancePtr, u32 Data);
u32 XTcp_session_handler_Get_close(XTcp_session_handler *InstancePtr);
void XTcp_session_handler_Set_session_id_i(XTcp_session_handler *InstancePtr, u32 Data);
u32 XTcp_session_handler_Get_session_id_i(XTcp_session_handler *InstancePtr);
u32 XTcp_session_handler_Get_session_id_o(XTcp_session_handler *InstancePtr);
u32 XTcp_session_handler_Get_session_id_o_vld(XTcp_session_handler *InstancePtr);
u32 XTcp_session_handler_Get_success(XTcp_session_handler *InstancePtr);
u32 XTcp_session_handler_Get_success_vld(XTcp_session_handler *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
