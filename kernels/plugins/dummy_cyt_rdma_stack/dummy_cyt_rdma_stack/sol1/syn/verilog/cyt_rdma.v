// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="cyt_rdma_cyt_rdma,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu280-fsvh2892-2L-e,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=2.353000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=486,HLS_SYN_LUT=756,HLS_VERSION=2022_2}" *)

module cyt_rdma (
        rdma_sq_TDATA,
        notif_TDATA,
        send_data_TDATA,
        send_data_TKEEP,
        send_data_TSTRB,
        send_data_TLAST,
        send_data_TDEST,
        recv_data_TDATA,
        recv_data_TKEEP,
        recv_data_TSTRB,
        recv_data_TLAST,
        recv_data_TDEST,
        wr_data_TDATA,
        wr_data_TKEEP,
        wr_data_TSTRB,
        wr_data_TLAST,
        wr_data_TDEST,
        wr_cmd_TDATA,
        wr_cmd_TKEEP,
        wr_cmd_TSTRB,
        wr_cmd_TLAST,
        wr_cmd_TDEST,
        wr_sts_TDATA,
        rx_TDATA,
        rx_TKEEP,
        rx_TSTRB,
        rx_TLAST,
        rx_TDEST,
        tx_TDATA,
        tx_TKEEP,
        tx_TSTRB,
        tx_TLAST,
        tx_TDEST,
        ap_clk,
        ap_rst_n,
        rdma_sq_TVALID,
        rdma_sq_TREADY,
        send_data_TVALID,
        send_data_TREADY,
        tx_TVALID,
        tx_TREADY,
        notif_TVALID,
        notif_TREADY,
        recv_data_TVALID,
        recv_data_TREADY,
        wr_data_TVALID,
        wr_data_TREADY,
        wr_cmd_TVALID,
        wr_cmd_TREADY,
        rx_TVALID,
        rx_TREADY,
        wr_sts_TVALID,
        wr_sts_TREADY
);


input  [127:0] rdma_sq_TDATA;
output  [63:0] notif_TDATA;
input  [511:0] send_data_TDATA;
input  [63:0] send_data_TKEEP;
input  [63:0] send_data_TSTRB;
input  [0:0] send_data_TLAST;
input  [7:0] send_data_TDEST;
output  [511:0] recv_data_TDATA;
output  [63:0] recv_data_TKEEP;
output  [63:0] recv_data_TSTRB;
output  [0:0] recv_data_TLAST;
output  [7:0] recv_data_TDEST;
output  [511:0] wr_data_TDATA;
output  [63:0] wr_data_TKEEP;
output  [63:0] wr_data_TSTRB;
output  [0:0] wr_data_TLAST;
output  [7:0] wr_data_TDEST;
output  [103:0] wr_cmd_TDATA;
output  [12:0] wr_cmd_TKEEP;
output  [12:0] wr_cmd_TSTRB;
output  [0:0] wr_cmd_TLAST;
output  [7:0] wr_cmd_TDEST;
input  [31:0] wr_sts_TDATA;
input  [511:0] rx_TDATA;
input  [63:0] rx_TKEEP;
input  [63:0] rx_TSTRB;
input  [0:0] rx_TLAST;
input  [7:0] rx_TDEST;
output  [511:0] tx_TDATA;
output  [63:0] tx_TKEEP;
output  [63:0] tx_TSTRB;
output  [0:0] tx_TLAST;
output  [7:0] tx_TDEST;
input   ap_clk;
input   ap_rst_n;
input   rdma_sq_TVALID;
output   rdma_sq_TREADY;
input   send_data_TVALID;
output   send_data_TREADY;
output   tx_TVALID;
input   tx_TREADY;
output   notif_TVALID;
input   notif_TREADY;
output   recv_data_TVALID;
input   recv_data_TREADY;
output   wr_data_TVALID;
input   wr_data_TREADY;
output   wr_cmd_TVALID;
input   wr_cmd_TREADY;
input   rx_TVALID;
output   rx_TREADY;
input   wr_sts_TVALID;
output   wr_sts_TREADY;

 reg    ap_rst_n_inv;
wire    cyt_rdma_tx_U0_ap_start;
wire    cyt_rdma_tx_U0_ap_done;
wire    cyt_rdma_tx_U0_ap_continue;
wire    cyt_rdma_tx_U0_ap_idle;
wire    cyt_rdma_tx_U0_ap_ready;
wire    cyt_rdma_tx_U0_rdma_sq_TREADY;
wire    cyt_rdma_tx_U0_send_data_TREADY;
wire   [511:0] cyt_rdma_tx_U0_tx_TDATA;
wire    cyt_rdma_tx_U0_tx_TVALID;
wire   [63:0] cyt_rdma_tx_U0_tx_TKEEP;
wire   [63:0] cyt_rdma_tx_U0_tx_TSTRB;
wire   [0:0] cyt_rdma_tx_U0_tx_TLAST;
wire   [7:0] cyt_rdma_tx_U0_tx_TDEST;
wire    cyt_rdma_rx_U0_ap_start;
wire    cyt_rdma_rx_U0_ap_done;
wire    cyt_rdma_rx_U0_ap_continue;
wire    cyt_rdma_rx_U0_ap_idle;
wire    cyt_rdma_rx_U0_ap_ready;
wire   [63:0] cyt_rdma_rx_U0_notif_TDATA;
wire    cyt_rdma_rx_U0_notif_TVALID;
wire   [511:0] cyt_rdma_rx_U0_recv_data_TDATA;
wire    cyt_rdma_rx_U0_recv_data_TVALID;
wire   [63:0] cyt_rdma_rx_U0_recv_data_TKEEP;
wire   [63:0] cyt_rdma_rx_U0_recv_data_TSTRB;
wire   [0:0] cyt_rdma_rx_U0_recv_data_TLAST;
wire   [7:0] cyt_rdma_rx_U0_recv_data_TDEST;
wire   [511:0] cyt_rdma_rx_U0_wr_data_TDATA;
wire    cyt_rdma_rx_U0_wr_data_TVALID;
wire   [63:0] cyt_rdma_rx_U0_wr_data_TKEEP;
wire   [63:0] cyt_rdma_rx_U0_wr_data_TSTRB;
wire   [0:0] cyt_rdma_rx_U0_wr_data_TLAST;
wire   [7:0] cyt_rdma_rx_U0_wr_data_TDEST;
wire   [103:0] cyt_rdma_rx_U0_wr_cmd_TDATA;
wire    cyt_rdma_rx_U0_wr_cmd_TVALID;
wire   [12:0] cyt_rdma_rx_U0_wr_cmd_TKEEP;
wire   [12:0] cyt_rdma_rx_U0_wr_cmd_TSTRB;
wire   [0:0] cyt_rdma_rx_U0_wr_cmd_TLAST;
wire   [7:0] cyt_rdma_rx_U0_wr_cmd_TDEST;
wire    cyt_rdma_rx_U0_rx_TREADY;
wire    cyt_rdma_wr_sts_U0_ap_start;
wire    cyt_rdma_wr_sts_U0_ap_done;
wire    cyt_rdma_wr_sts_U0_ap_continue;
wire    cyt_rdma_wr_sts_U0_ap_idle;
wire    cyt_rdma_wr_sts_U0_ap_ready;
wire    cyt_rdma_wr_sts_U0_wr_sts_TREADY;

cyt_rdma_cyt_rdma_tx cyt_rdma_tx_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(cyt_rdma_tx_U0_ap_start),
    .ap_done(cyt_rdma_tx_U0_ap_done),
    .ap_continue(cyt_rdma_tx_U0_ap_continue),
    .ap_idle(cyt_rdma_tx_U0_ap_idle),
    .ap_ready(cyt_rdma_tx_U0_ap_ready),
    .rdma_sq_TDATA(rdma_sq_TDATA),
    .rdma_sq_TVALID(rdma_sq_TVALID),
    .rdma_sq_TREADY(cyt_rdma_tx_U0_rdma_sq_TREADY),
    .send_data_TDATA(send_data_TDATA),
    .send_data_TVALID(send_data_TVALID),
    .send_data_TREADY(cyt_rdma_tx_U0_send_data_TREADY),
    .send_data_TKEEP(send_data_TKEEP),
    .send_data_TSTRB(send_data_TSTRB),
    .send_data_TLAST(send_data_TLAST),
    .send_data_TDEST(send_data_TDEST),
    .tx_TDATA(cyt_rdma_tx_U0_tx_TDATA),
    .tx_TVALID(cyt_rdma_tx_U0_tx_TVALID),
    .tx_TREADY(tx_TREADY),
    .tx_TKEEP(cyt_rdma_tx_U0_tx_TKEEP),
    .tx_TSTRB(cyt_rdma_tx_U0_tx_TSTRB),
    .tx_TLAST(cyt_rdma_tx_U0_tx_TLAST),
    .tx_TDEST(cyt_rdma_tx_U0_tx_TDEST)
);

cyt_rdma_cyt_rdma_rx cyt_rdma_rx_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(cyt_rdma_rx_U0_ap_start),
    .ap_done(cyt_rdma_rx_U0_ap_done),
    .ap_continue(cyt_rdma_rx_U0_ap_continue),
    .ap_idle(cyt_rdma_rx_U0_ap_idle),
    .ap_ready(cyt_rdma_rx_U0_ap_ready),
    .notif_TDATA(cyt_rdma_rx_U0_notif_TDATA),
    .notif_TVALID(cyt_rdma_rx_U0_notif_TVALID),
    .notif_TREADY(notif_TREADY),
    .recv_data_TDATA(cyt_rdma_rx_U0_recv_data_TDATA),
    .recv_data_TVALID(cyt_rdma_rx_U0_recv_data_TVALID),
    .recv_data_TREADY(recv_data_TREADY),
    .recv_data_TKEEP(cyt_rdma_rx_U0_recv_data_TKEEP),
    .recv_data_TSTRB(cyt_rdma_rx_U0_recv_data_TSTRB),
    .recv_data_TLAST(cyt_rdma_rx_U0_recv_data_TLAST),
    .recv_data_TDEST(cyt_rdma_rx_U0_recv_data_TDEST),
    .wr_data_TDATA(cyt_rdma_rx_U0_wr_data_TDATA),
    .wr_data_TVALID(cyt_rdma_rx_U0_wr_data_TVALID),
    .wr_data_TREADY(wr_data_TREADY),
    .wr_data_TKEEP(cyt_rdma_rx_U0_wr_data_TKEEP),
    .wr_data_TSTRB(cyt_rdma_rx_U0_wr_data_TSTRB),
    .wr_data_TLAST(cyt_rdma_rx_U0_wr_data_TLAST),
    .wr_data_TDEST(cyt_rdma_rx_U0_wr_data_TDEST),
    .wr_cmd_TDATA(cyt_rdma_rx_U0_wr_cmd_TDATA),
    .wr_cmd_TVALID(cyt_rdma_rx_U0_wr_cmd_TVALID),
    .wr_cmd_TREADY(wr_cmd_TREADY),
    .wr_cmd_TKEEP(cyt_rdma_rx_U0_wr_cmd_TKEEP),
    .wr_cmd_TSTRB(cyt_rdma_rx_U0_wr_cmd_TSTRB),
    .wr_cmd_TLAST(cyt_rdma_rx_U0_wr_cmd_TLAST),
    .wr_cmd_TDEST(cyt_rdma_rx_U0_wr_cmd_TDEST),
    .rx_TDATA(rx_TDATA),
    .rx_TVALID(rx_TVALID),
    .rx_TREADY(cyt_rdma_rx_U0_rx_TREADY),
    .rx_TKEEP(rx_TKEEP),
    .rx_TSTRB(rx_TSTRB),
    .rx_TLAST(rx_TLAST),
    .rx_TDEST(rx_TDEST)
);

cyt_rdma_cyt_rdma_wr_sts cyt_rdma_wr_sts_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(cyt_rdma_wr_sts_U0_ap_start),
    .ap_done(cyt_rdma_wr_sts_U0_ap_done),
    .ap_continue(cyt_rdma_wr_sts_U0_ap_continue),
    .ap_idle(cyt_rdma_wr_sts_U0_ap_idle),
    .ap_ready(cyt_rdma_wr_sts_U0_ap_ready),
    .wr_sts_TDATA(wr_sts_TDATA),
    .wr_sts_TVALID(wr_sts_TVALID),
    .wr_sts_TREADY(cyt_rdma_wr_sts_U0_wr_sts_TREADY)
);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign cyt_rdma_rx_U0_ap_continue = 1'b1;

assign cyt_rdma_rx_U0_ap_start = 1'b1;

assign cyt_rdma_tx_U0_ap_continue = 1'b1;

assign cyt_rdma_tx_U0_ap_start = 1'b1;

assign cyt_rdma_wr_sts_U0_ap_continue = 1'b1;

assign cyt_rdma_wr_sts_U0_ap_start = 1'b1;

assign notif_TDATA = cyt_rdma_rx_U0_notif_TDATA;

assign notif_TVALID = cyt_rdma_rx_U0_notif_TVALID;

assign rdma_sq_TREADY = cyt_rdma_tx_U0_rdma_sq_TREADY;

assign recv_data_TDATA = cyt_rdma_rx_U0_recv_data_TDATA;

assign recv_data_TDEST = cyt_rdma_rx_U0_recv_data_TDEST;

assign recv_data_TKEEP = cyt_rdma_rx_U0_recv_data_TKEEP;

assign recv_data_TLAST = cyt_rdma_rx_U0_recv_data_TLAST;

assign recv_data_TSTRB = cyt_rdma_rx_U0_recv_data_TSTRB;

assign recv_data_TVALID = cyt_rdma_rx_U0_recv_data_TVALID;

assign rx_TREADY = cyt_rdma_rx_U0_rx_TREADY;

assign send_data_TREADY = cyt_rdma_tx_U0_send_data_TREADY;

assign tx_TDATA = cyt_rdma_tx_U0_tx_TDATA;

assign tx_TDEST = cyt_rdma_tx_U0_tx_TDEST;

assign tx_TKEEP = cyt_rdma_tx_U0_tx_TKEEP;

assign tx_TLAST = cyt_rdma_tx_U0_tx_TLAST;

assign tx_TSTRB = cyt_rdma_tx_U0_tx_TSTRB;

assign tx_TVALID = cyt_rdma_tx_U0_tx_TVALID;

assign wr_cmd_TDATA = cyt_rdma_rx_U0_wr_cmd_TDATA;

assign wr_cmd_TDEST = cyt_rdma_rx_U0_wr_cmd_TDEST;

assign wr_cmd_TKEEP = cyt_rdma_rx_U0_wr_cmd_TKEEP;

assign wr_cmd_TLAST = cyt_rdma_rx_U0_wr_cmd_TLAST;

assign wr_cmd_TSTRB = cyt_rdma_rx_U0_wr_cmd_TSTRB;

assign wr_cmd_TVALID = cyt_rdma_rx_U0_wr_cmd_TVALID;

assign wr_data_TDATA = cyt_rdma_rx_U0_wr_data_TDATA;

assign wr_data_TDEST = cyt_rdma_rx_U0_wr_data_TDEST;

assign wr_data_TKEEP = cyt_rdma_rx_U0_wr_data_TKEEP;

assign wr_data_TLAST = cyt_rdma_rx_U0_wr_data_TLAST;

assign wr_data_TSTRB = cyt_rdma_rx_U0_wr_data_TSTRB;

assign wr_data_TVALID = cyt_rdma_rx_U0_wr_data_TVALID;

assign wr_sts_TREADY = cyt_rdma_wr_sts_U0_wr_sts_TREADY;

endmodule //cyt_rdma
