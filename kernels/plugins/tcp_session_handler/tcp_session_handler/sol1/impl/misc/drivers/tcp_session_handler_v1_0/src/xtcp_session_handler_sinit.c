// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtcp_session_handler.h"

extern XTcp_session_handler_Config XTcp_session_handler_ConfigTable[];

XTcp_session_handler_Config *XTcp_session_handler_LookupConfig(u16 DeviceId) {
	XTcp_session_handler_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTCP_SESSION_HANDLER_NUM_INSTANCES; Index++) {
		if (XTcp_session_handler_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTcp_session_handler_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTcp_session_handler_Initialize(XTcp_session_handler *InstancePtr, u16 DeviceId) {
	XTcp_session_handler_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTcp_session_handler_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTcp_session_handler_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

