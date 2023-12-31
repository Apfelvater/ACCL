//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Sat Dec 30 12:24:23 2023
//Host        : n2login1 running 64-bit Red Hat Enterprise Linux release 8.8 (Ootpa)
//Command     : generate_target external_dma_bd_wrapper.bd
//Design      : external_dma_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module external_dma_bd_wrapper
   (ap_clk,
    ap_rst_n,
    m_axi_0_araddr,
    m_axi_0_arburst,
    m_axi_0_arcache,
    m_axi_0_arlen,
    m_axi_0_arprot,
    m_axi_0_arready,
    m_axi_0_arsize,
    m_axi_0_aruser,
    m_axi_0_arvalid,
    m_axi_0_awaddr,
    m_axi_0_awburst,
    m_axi_0_awcache,
    m_axi_0_awlen,
    m_axi_0_awprot,
    m_axi_0_awready,
    m_axi_0_awsize,
    m_axi_0_awuser,
    m_axi_0_awvalid,
    m_axi_0_bready,
    m_axi_0_bresp,
    m_axi_0_bvalid,
    m_axi_0_rdata,
    m_axi_0_rlast,
    m_axi_0_rready,
    m_axi_0_rresp,
    m_axi_0_rvalid,
    m_axi_0_wdata,
    m_axi_0_wlast,
    m_axi_0_wready,
    m_axi_0_wstrb,
    m_axi_0_wvalid,
    m_axi_1_araddr,
    m_axi_1_arburst,
    m_axi_1_arcache,
    m_axi_1_arlen,
    m_axi_1_arprot,
    m_axi_1_arready,
    m_axi_1_arsize,
    m_axi_1_aruser,
    m_axi_1_arvalid,
    m_axi_1_awaddr,
    m_axi_1_awburst,
    m_axi_1_awcache,
    m_axi_1_awlen,
    m_axi_1_awprot,
    m_axi_1_awready,
    m_axi_1_awsize,
    m_axi_1_awuser,
    m_axi_1_awvalid,
    m_axi_1_bready,
    m_axi_1_bresp,
    m_axi_1_bvalid,
    m_axi_1_rdata,
    m_axi_1_rlast,
    m_axi_1_rready,
    m_axi_1_rresp,
    m_axi_1_rvalid,
    m_axi_1_wdata,
    m_axi_1_wlast,
    m_axi_1_wready,
    m_axi_1_wstrb,
    m_axi_1_wvalid,
    m_axis_mm2s_sts_tdata,
    m_axis_mm2s_sts_tkeep,
    m_axis_mm2s_sts_tlast,
    m_axis_mm2s_sts_tready,
    m_axis_mm2s_sts_tvalid,
    m_axis_mm2s_tdata,
    m_axis_mm2s_tkeep,
    m_axis_mm2s_tlast,
    m_axis_mm2s_tready,
    m_axis_mm2s_tvalid,
    m_axis_s2mm_sts_tdata,
    m_axis_s2mm_sts_tkeep,
    m_axis_s2mm_sts_tlast,
    m_axis_s2mm_sts_tready,
    m_axis_s2mm_sts_tvalid,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid,
    s_axis_mm2s_cmd_tdata,
    s_axis_mm2s_cmd_tdest,
    s_axis_mm2s_cmd_tkeep,
    s_axis_mm2s_cmd_tlast,
    s_axis_mm2s_cmd_tready,
    s_axis_mm2s_cmd_tvalid,
    s_axis_s2mm_cmd_tdata,
    s_axis_s2mm_cmd_tdest,
    s_axis_s2mm_cmd_tkeep,
    s_axis_s2mm_cmd_tlast,
    s_axis_s2mm_cmd_tready,
    s_axis_s2mm_cmd_tvalid,
    s_axis_s2mm_tdata,
    s_axis_s2mm_tdest,
    s_axis_s2mm_tkeep,
    s_axis_s2mm_tlast,
    s_axis_s2mm_tready,
    s_axis_s2mm_tvalid);
  input ap_clk;
  input ap_rst_n;
  output [63:0]m_axi_0_araddr;
  output [1:0]m_axi_0_arburst;
  output [3:0]m_axi_0_arcache;
  output [7:0]m_axi_0_arlen;
  output [2:0]m_axi_0_arprot;
  input m_axi_0_arready;
  output [2:0]m_axi_0_arsize;
  output [3:0]m_axi_0_aruser;
  output m_axi_0_arvalid;
  output [63:0]m_axi_0_awaddr;
  output [1:0]m_axi_0_awburst;
  output [3:0]m_axi_0_awcache;
  output [7:0]m_axi_0_awlen;
  output [2:0]m_axi_0_awprot;
  input m_axi_0_awready;
  output [2:0]m_axi_0_awsize;
  output [3:0]m_axi_0_awuser;
  output m_axi_0_awvalid;
  output m_axi_0_bready;
  input [1:0]m_axi_0_bresp;
  input m_axi_0_bvalid;
  input [511:0]m_axi_0_rdata;
  input m_axi_0_rlast;
  output m_axi_0_rready;
  input [1:0]m_axi_0_rresp;
  input m_axi_0_rvalid;
  output [511:0]m_axi_0_wdata;
  output m_axi_0_wlast;
  input m_axi_0_wready;
  output [63:0]m_axi_0_wstrb;
  output m_axi_0_wvalid;
  output [63:0]m_axi_1_araddr;
  output [1:0]m_axi_1_arburst;
  output [3:0]m_axi_1_arcache;
  output [7:0]m_axi_1_arlen;
  output [2:0]m_axi_1_arprot;
  input m_axi_1_arready;
  output [2:0]m_axi_1_arsize;
  output [3:0]m_axi_1_aruser;
  output m_axi_1_arvalid;
  output [63:0]m_axi_1_awaddr;
  output [1:0]m_axi_1_awburst;
  output [3:0]m_axi_1_awcache;
  output [7:0]m_axi_1_awlen;
  output [2:0]m_axi_1_awprot;
  input m_axi_1_awready;
  output [2:0]m_axi_1_awsize;
  output [3:0]m_axi_1_awuser;
  output m_axi_1_awvalid;
  output m_axi_1_bready;
  input [1:0]m_axi_1_bresp;
  input m_axi_1_bvalid;
  input [511:0]m_axi_1_rdata;
  input m_axi_1_rlast;
  output m_axi_1_rready;
  input [1:0]m_axi_1_rresp;
  input m_axi_1_rvalid;
  output [511:0]m_axi_1_wdata;
  output m_axi_1_wlast;
  input m_axi_1_wready;
  output [63:0]m_axi_1_wstrb;
  output m_axi_1_wvalid;
  output [7:0]m_axis_mm2s_sts_tdata;
  output [0:0]m_axis_mm2s_sts_tkeep;
  output [0:0]m_axis_mm2s_sts_tlast;
  input [0:0]m_axis_mm2s_sts_tready;
  output [0:0]m_axis_mm2s_sts_tvalid;
  output [511:0]m_axis_mm2s_tdata;
  output [63:0]m_axis_mm2s_tkeep;
  output [0:0]m_axis_mm2s_tlast;
  input [0:0]m_axis_mm2s_tready;
  output [0:0]m_axis_mm2s_tvalid;
  output [31:0]m_axis_s2mm_sts_tdata;
  output [3:0]m_axis_s2mm_sts_tkeep;
  output [0:0]m_axis_s2mm_sts_tlast;
  input [0:0]m_axis_s2mm_sts_tready;
  output [0:0]m_axis_s2mm_sts_tvalid;
  input [8:0]s_axi_control_araddr;
  output s_axi_control_arready;
  input s_axi_control_arvalid;
  input [8:0]s_axi_control_awaddr;
  output s_axi_control_awready;
  input s_axi_control_awvalid;
  input s_axi_control_bready;
  output [1:0]s_axi_control_bresp;
  output s_axi_control_bvalid;
  output [31:0]s_axi_control_rdata;
  input s_axi_control_rready;
  output [1:0]s_axi_control_rresp;
  output s_axi_control_rvalid;
  input [31:0]s_axi_control_wdata;
  output s_axi_control_wready;
  input [3:0]s_axi_control_wstrb;
  input s_axi_control_wvalid;
  input [103:0]s_axis_mm2s_cmd_tdata;
  input [7:0]s_axis_mm2s_cmd_tdest;
  input [12:0]s_axis_mm2s_cmd_tkeep;
  input [0:0]s_axis_mm2s_cmd_tlast;
  output [0:0]s_axis_mm2s_cmd_tready;
  input [0:0]s_axis_mm2s_cmd_tvalid;
  input [103:0]s_axis_s2mm_cmd_tdata;
  input [7:0]s_axis_s2mm_cmd_tdest;
  input [12:0]s_axis_s2mm_cmd_tkeep;
  input [0:0]s_axis_s2mm_cmd_tlast;
  output [0:0]s_axis_s2mm_cmd_tready;
  input [0:0]s_axis_s2mm_cmd_tvalid;
  input [511:0]s_axis_s2mm_tdata;
  input [7:0]s_axis_s2mm_tdest;
  input [63:0]s_axis_s2mm_tkeep;
  input [0:0]s_axis_s2mm_tlast;
  output [0:0]s_axis_s2mm_tready;
  input [0:0]s_axis_s2mm_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [63:0]m_axi_0_araddr;
  wire [1:0]m_axi_0_arburst;
  wire [3:0]m_axi_0_arcache;
  wire [7:0]m_axi_0_arlen;
  wire [2:0]m_axi_0_arprot;
  wire m_axi_0_arready;
  wire [2:0]m_axi_0_arsize;
  wire [3:0]m_axi_0_aruser;
  wire m_axi_0_arvalid;
  wire [63:0]m_axi_0_awaddr;
  wire [1:0]m_axi_0_awburst;
  wire [3:0]m_axi_0_awcache;
  wire [7:0]m_axi_0_awlen;
  wire [2:0]m_axi_0_awprot;
  wire m_axi_0_awready;
  wire [2:0]m_axi_0_awsize;
  wire [3:0]m_axi_0_awuser;
  wire m_axi_0_awvalid;
  wire m_axi_0_bready;
  wire [1:0]m_axi_0_bresp;
  wire m_axi_0_bvalid;
  wire [511:0]m_axi_0_rdata;
  wire m_axi_0_rlast;
  wire m_axi_0_rready;
  wire [1:0]m_axi_0_rresp;
  wire m_axi_0_rvalid;
  wire [511:0]m_axi_0_wdata;
  wire m_axi_0_wlast;
  wire m_axi_0_wready;
  wire [63:0]m_axi_0_wstrb;
  wire m_axi_0_wvalid;
  wire [63:0]m_axi_1_araddr;
  wire [1:0]m_axi_1_arburst;
  wire [3:0]m_axi_1_arcache;
  wire [7:0]m_axi_1_arlen;
  wire [2:0]m_axi_1_arprot;
  wire m_axi_1_arready;
  wire [2:0]m_axi_1_arsize;
  wire [3:0]m_axi_1_aruser;
  wire m_axi_1_arvalid;
  wire [63:0]m_axi_1_awaddr;
  wire [1:0]m_axi_1_awburst;
  wire [3:0]m_axi_1_awcache;
  wire [7:0]m_axi_1_awlen;
  wire [2:0]m_axi_1_awprot;
  wire m_axi_1_awready;
  wire [2:0]m_axi_1_awsize;
  wire [3:0]m_axi_1_awuser;
  wire m_axi_1_awvalid;
  wire m_axi_1_bready;
  wire [1:0]m_axi_1_bresp;
  wire m_axi_1_bvalid;
  wire [511:0]m_axi_1_rdata;
  wire m_axi_1_rlast;
  wire m_axi_1_rready;
  wire [1:0]m_axi_1_rresp;
  wire m_axi_1_rvalid;
  wire [511:0]m_axi_1_wdata;
  wire m_axi_1_wlast;
  wire m_axi_1_wready;
  wire [63:0]m_axi_1_wstrb;
  wire m_axi_1_wvalid;
  wire [7:0]m_axis_mm2s_sts_tdata;
  wire [0:0]m_axis_mm2s_sts_tkeep;
  wire [0:0]m_axis_mm2s_sts_tlast;
  wire [0:0]m_axis_mm2s_sts_tready;
  wire [0:0]m_axis_mm2s_sts_tvalid;
  wire [511:0]m_axis_mm2s_tdata;
  wire [63:0]m_axis_mm2s_tkeep;
  wire [0:0]m_axis_mm2s_tlast;
  wire [0:0]m_axis_mm2s_tready;
  wire [0:0]m_axis_mm2s_tvalid;
  wire [31:0]m_axis_s2mm_sts_tdata;
  wire [3:0]m_axis_s2mm_sts_tkeep;
  wire [0:0]m_axis_s2mm_sts_tlast;
  wire [0:0]m_axis_s2mm_sts_tready;
  wire [0:0]m_axis_s2mm_sts_tvalid;
  wire [8:0]s_axi_control_araddr;
  wire s_axi_control_arready;
  wire s_axi_control_arvalid;
  wire [8:0]s_axi_control_awaddr;
  wire s_axi_control_awready;
  wire s_axi_control_awvalid;
  wire s_axi_control_bready;
  wire [1:0]s_axi_control_bresp;
  wire s_axi_control_bvalid;
  wire [31:0]s_axi_control_rdata;
  wire s_axi_control_rready;
  wire [1:0]s_axi_control_rresp;
  wire s_axi_control_rvalid;
  wire [31:0]s_axi_control_wdata;
  wire s_axi_control_wready;
  wire [3:0]s_axi_control_wstrb;
  wire s_axi_control_wvalid;
  wire [103:0]s_axis_mm2s_cmd_tdata;
  wire [7:0]s_axis_mm2s_cmd_tdest;
  wire [12:0]s_axis_mm2s_cmd_tkeep;
  wire [0:0]s_axis_mm2s_cmd_tlast;
  wire [0:0]s_axis_mm2s_cmd_tready;
  wire [0:0]s_axis_mm2s_cmd_tvalid;
  wire [103:0]s_axis_s2mm_cmd_tdata;
  wire [7:0]s_axis_s2mm_cmd_tdest;
  wire [12:0]s_axis_s2mm_cmd_tkeep;
  wire [0:0]s_axis_s2mm_cmd_tlast;
  wire [0:0]s_axis_s2mm_cmd_tready;
  wire [0:0]s_axis_s2mm_cmd_tvalid;
  wire [511:0]s_axis_s2mm_tdata;
  wire [7:0]s_axis_s2mm_tdest;
  wire [63:0]s_axis_s2mm_tkeep;
  wire [0:0]s_axis_s2mm_tlast;
  wire [0:0]s_axis_s2mm_tready;
  wire [0:0]s_axis_s2mm_tvalid;

  external_dma_bd external_dma_bd_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axi_0_araddr(m_axi_0_araddr),
        .m_axi_0_arburst(m_axi_0_arburst),
        .m_axi_0_arcache(m_axi_0_arcache),
        .m_axi_0_arlen(m_axi_0_arlen),
        .m_axi_0_arprot(m_axi_0_arprot),
        .m_axi_0_arready(m_axi_0_arready),
        .m_axi_0_arsize(m_axi_0_arsize),
        .m_axi_0_aruser(m_axi_0_aruser),
        .m_axi_0_arvalid(m_axi_0_arvalid),
        .m_axi_0_awaddr(m_axi_0_awaddr),
        .m_axi_0_awburst(m_axi_0_awburst),
        .m_axi_0_awcache(m_axi_0_awcache),
        .m_axi_0_awlen(m_axi_0_awlen),
        .m_axi_0_awprot(m_axi_0_awprot),
        .m_axi_0_awready(m_axi_0_awready),
        .m_axi_0_awsize(m_axi_0_awsize),
        .m_axi_0_awuser(m_axi_0_awuser),
        .m_axi_0_awvalid(m_axi_0_awvalid),
        .m_axi_0_bready(m_axi_0_bready),
        .m_axi_0_bresp(m_axi_0_bresp),
        .m_axi_0_bvalid(m_axi_0_bvalid),
        .m_axi_0_rdata(m_axi_0_rdata),
        .m_axi_0_rlast(m_axi_0_rlast),
        .m_axi_0_rready(m_axi_0_rready),
        .m_axi_0_rresp(m_axi_0_rresp),
        .m_axi_0_rvalid(m_axi_0_rvalid),
        .m_axi_0_wdata(m_axi_0_wdata),
        .m_axi_0_wlast(m_axi_0_wlast),
        .m_axi_0_wready(m_axi_0_wready),
        .m_axi_0_wstrb(m_axi_0_wstrb),
        .m_axi_0_wvalid(m_axi_0_wvalid),
        .m_axi_1_araddr(m_axi_1_araddr),
        .m_axi_1_arburst(m_axi_1_arburst),
        .m_axi_1_arcache(m_axi_1_arcache),
        .m_axi_1_arlen(m_axi_1_arlen),
        .m_axi_1_arprot(m_axi_1_arprot),
        .m_axi_1_arready(m_axi_1_arready),
        .m_axi_1_arsize(m_axi_1_arsize),
        .m_axi_1_aruser(m_axi_1_aruser),
        .m_axi_1_arvalid(m_axi_1_arvalid),
        .m_axi_1_awaddr(m_axi_1_awaddr),
        .m_axi_1_awburst(m_axi_1_awburst),
        .m_axi_1_awcache(m_axi_1_awcache),
        .m_axi_1_awlen(m_axi_1_awlen),
        .m_axi_1_awprot(m_axi_1_awprot),
        .m_axi_1_awready(m_axi_1_awready),
        .m_axi_1_awsize(m_axi_1_awsize),
        .m_axi_1_awuser(m_axi_1_awuser),
        .m_axi_1_awvalid(m_axi_1_awvalid),
        .m_axi_1_bready(m_axi_1_bready),
        .m_axi_1_bresp(m_axi_1_bresp),
        .m_axi_1_bvalid(m_axi_1_bvalid),
        .m_axi_1_rdata(m_axi_1_rdata),
        .m_axi_1_rlast(m_axi_1_rlast),
        .m_axi_1_rready(m_axi_1_rready),
        .m_axi_1_rresp(m_axi_1_rresp),
        .m_axi_1_rvalid(m_axi_1_rvalid),
        .m_axi_1_wdata(m_axi_1_wdata),
        .m_axi_1_wlast(m_axi_1_wlast),
        .m_axi_1_wready(m_axi_1_wready),
        .m_axi_1_wstrb(m_axi_1_wstrb),
        .m_axi_1_wvalid(m_axi_1_wvalid),
        .m_axis_mm2s_sts_tdata(m_axis_mm2s_sts_tdata),
        .m_axis_mm2s_sts_tkeep(m_axis_mm2s_sts_tkeep),
        .m_axis_mm2s_sts_tlast(m_axis_mm2s_sts_tlast),
        .m_axis_mm2s_sts_tready(m_axis_mm2s_sts_tready),
        .m_axis_mm2s_sts_tvalid(m_axis_mm2s_sts_tvalid),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tkeep(m_axis_mm2s_tkeep),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .m_axis_s2mm_sts_tdata(m_axis_s2mm_sts_tdata),
        .m_axis_s2mm_sts_tkeep(m_axis_s2mm_sts_tkeep),
        .m_axis_s2mm_sts_tlast(m_axis_s2mm_sts_tlast),
        .m_axis_s2mm_sts_tready(m_axis_s2mm_sts_tready),
        .m_axis_s2mm_sts_tvalid(m_axis_s2mm_sts_tvalid),
        .s_axi_control_araddr(s_axi_control_araddr),
        .s_axi_control_arready(s_axi_control_arready),
        .s_axi_control_arvalid(s_axi_control_arvalid),
        .s_axi_control_awaddr(s_axi_control_awaddr),
        .s_axi_control_awready(s_axi_control_awready),
        .s_axi_control_awvalid(s_axi_control_awvalid),
        .s_axi_control_bready(s_axi_control_bready),
        .s_axi_control_bresp(s_axi_control_bresp),
        .s_axi_control_bvalid(s_axi_control_bvalid),
        .s_axi_control_rdata(s_axi_control_rdata),
        .s_axi_control_rready(s_axi_control_rready),
        .s_axi_control_rresp(s_axi_control_rresp),
        .s_axi_control_rvalid(s_axi_control_rvalid),
        .s_axi_control_wdata(s_axi_control_wdata),
        .s_axi_control_wready(s_axi_control_wready),
        .s_axi_control_wstrb(s_axi_control_wstrb),
        .s_axi_control_wvalid(s_axi_control_wvalid),
        .s_axis_mm2s_cmd_tdata(s_axis_mm2s_cmd_tdata),
        .s_axis_mm2s_cmd_tdest(s_axis_mm2s_cmd_tdest),
        .s_axis_mm2s_cmd_tkeep(s_axis_mm2s_cmd_tkeep),
        .s_axis_mm2s_cmd_tlast(s_axis_mm2s_cmd_tlast),
        .s_axis_mm2s_cmd_tready(s_axis_mm2s_cmd_tready),
        .s_axis_mm2s_cmd_tvalid(s_axis_mm2s_cmd_tvalid),
        .s_axis_s2mm_cmd_tdata(s_axis_s2mm_cmd_tdata),
        .s_axis_s2mm_cmd_tdest(s_axis_s2mm_cmd_tdest),
        .s_axis_s2mm_cmd_tkeep(s_axis_s2mm_cmd_tkeep),
        .s_axis_s2mm_cmd_tlast(s_axis_s2mm_cmd_tlast),
        .s_axis_s2mm_cmd_tready(s_axis_s2mm_cmd_tready),
        .s_axis_s2mm_cmd_tvalid(s_axis_s2mm_cmd_tvalid),
        .s_axis_s2mm_tdata(s_axis_s2mm_tdata),
        .s_axis_s2mm_tdest(s_axis_s2mm_tdest),
        .s_axis_s2mm_tkeep(s_axis_s2mm_tkeep),
        .s_axis_s2mm_tlast(s_axis_s2mm_tlast),
        .s_axis_s2mm_tready(s_axis_s2mm_tready),
        .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid));
endmodule
