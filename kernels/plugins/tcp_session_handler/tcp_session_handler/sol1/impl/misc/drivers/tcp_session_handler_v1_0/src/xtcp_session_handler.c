// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtcp_session_handler.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTcp_session_handler_CfgInitialize(XTcp_session_handler *InstancePtr, XTcp_session_handler_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTcp_session_handler_Set_ip(XTcp_session_handler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTcp_session_handler_WriteReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_IP_DATA, Data);
}

u32 XTcp_session_handler_Get_ip(XTcp_session_handler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTcp_session_handler_ReadReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_IP_DATA);
    return Data;
}

void XTcp_session_handler_Set_port_nr(XTcp_session_handler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTcp_session_handler_WriteReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_PORT_NR_DATA, Data);
}

u32 XTcp_session_handler_Get_port_nr(XTcp_session_handler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTcp_session_handler_ReadReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_PORT_NR_DATA);
    return Data;
}

void XTcp_session_handler_Set_close(XTcp_session_handler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTcp_session_handler_WriteReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_CLOSE_DATA, Data);
}

u32 XTcp_session_handler_Get_close(XTcp_session_handler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTcp_session_handler_ReadReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_CLOSE_DATA);
    return Data;
}

void XTcp_session_handler_Set_session_id_i(XTcp_session_handler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTcp_session_handler_WriteReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_SESSION_ID_I_DATA, Data);
}

u32 XTcp_session_handler_Get_session_id_i(XTcp_session_handler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTcp_session_handler_ReadReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_SESSION_ID_I_DATA);
    return Data;
}

u32 XTcp_session_handler_Get_session_id_o(XTcp_session_handler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTcp_session_handler_ReadReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_SESSION_ID_O_DATA);
    return Data;
}

u32 XTcp_session_handler_Get_session_id_o_vld(XTcp_session_handler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTcp_session_handler_ReadReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_SESSION_ID_O_CTRL);
    return Data & 0x1;
}

u32 XTcp_session_handler_Get_success(XTcp_session_handler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTcp_session_handler_ReadReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_SUCCESS_DATA);
    return Data;
}

u32 XTcp_session_handler_Get_success_vld(XTcp_session_handler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTcp_session_handler_ReadReg(InstancePtr->Control_BaseAddress, XTCP_SESSION_HANDLER_CONTROL_ADDR_SUCCESS_CTRL);
    return Data & 0x1;
}

