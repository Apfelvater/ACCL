// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cyt_rdma_cyt_rdma_wr_sts (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        wr_sts_TDATA,
        wr_sts_TVALID,
        wr_sts_TREADY
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] wr_sts_TDATA;
input   wr_sts_TVALID;
output   wr_sts_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    wr_sts_TDATA_blk_n;
wire   [0:0] tmp_nbreadreq_fu_24_p3;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    regslice_both_wr_sts_U_apdone_blk;
wire   [31:0] wr_sts_TDATA_int_regslice;
wire    wr_sts_TVALID_int_regslice;
reg    wr_sts_TREADY_int_regslice;
wire    regslice_both_wr_sts_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
end

cyt_rdma_regslice_both #(
    .DataWidth( 32 ))
regslice_both_wr_sts_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(wr_sts_TDATA),
    .vld_in(wr_sts_TVALID),
    .ack_in(regslice_both_wr_sts_U_ack_in),
    .data_out(wr_sts_TDATA_int_regslice),
    .vld_out(wr_sts_TVALID_int_regslice),
    .ack_out(wr_sts_TREADY_int_regslice),
    .apdone_blk(regslice_both_wr_sts_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((wr_sts_TVALID_int_regslice == 1'b0) & (tmp_nbreadreq_fu_24_p3 == 1'd1))) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((wr_sts_TVALID_int_regslice == 1'b0) & (tmp_nbreadreq_fu_24_p3 == 1'd1)))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((wr_sts_TVALID_int_regslice == 1'b0) & (tmp_nbreadreq_fu_24_p3 == 1'd1))) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((wr_sts_TVALID_int_regslice == 1'b0) & (tmp_nbreadreq_fu_24_p3 == 1'd1))) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_nbreadreq_fu_24_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        wr_sts_TDATA_blk_n = wr_sts_TVALID_int_regslice;
    end else begin
        wr_sts_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((wr_sts_TVALID_int_regslice == 1'b0) & (tmp_nbreadreq_fu_24_p3 == 1'd1))) & (tmp_nbreadreq_fu_24_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        wr_sts_TREADY_int_regslice = 1'b1;
    end else begin
        wr_sts_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((wr_sts_TVALID_int_regslice == 1'b0) & (tmp_nbreadreq_fu_24_p3 == 1'd1)));
end

assign tmp_nbreadreq_fu_24_p3 = wr_sts_TVALID_int_regslice;

assign wr_sts_TREADY = regslice_both_wr_sts_U_ack_in;

endmodule //cyt_rdma_cyt_rdma_wr_sts
