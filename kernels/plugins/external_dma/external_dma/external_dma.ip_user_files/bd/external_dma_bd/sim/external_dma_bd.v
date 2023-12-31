//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Sat Dec 30 12:24:23 2023
//Host        : n2login1 running 64-bit Red Hat Enterprise Linux release 8.8 (Ootpa)
//Command     : generate_target external_dma_bd.bd
//Design      : external_dma_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "external_dma_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=external_dma_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "external_dma_bd.hwdef" *) 
module external_dma_bd
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axi_control:s_axis_s2mm:m_axis_mm2s:s_axis_s2mm_cmd:m_axis_s2mm_sts:s_axis_mm2s_cmd:m_axis_mm2s_sts:m_axi_0:m_axi_1, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN external_dma_bd_ap_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_0, ADDR_WIDTH 64, ARUSER_WIDTH 4, AWUSER_WIDTH 4, BUSER_WIDTH 0, CLK_DOMAIN external_dma_bd_ap_clk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 64, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 ARBURST" *) output [1:0]m_axi_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 ARCACHE" *) output [3:0]m_axi_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 ARLEN" *) output [7:0]m_axi_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 ARPROT" *) output [2:0]m_axi_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 ARREADY" *) input m_axi_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 ARSIZE" *) output [2:0]m_axi_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 ARUSER" *) output [3:0]m_axi_0_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 ARVALID" *) output m_axi_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 AWADDR" *) output [63:0]m_axi_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 AWBURST" *) output [1:0]m_axi_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 AWCACHE" *) output [3:0]m_axi_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 AWLEN" *) output [7:0]m_axi_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 AWPROT" *) output [2:0]m_axi_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 AWREADY" *) input m_axi_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 AWSIZE" *) output [2:0]m_axi_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 AWUSER" *) output [3:0]m_axi_0_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 AWVALID" *) output m_axi_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 BREADY" *) output m_axi_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 BRESP" *) input [1:0]m_axi_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 BVALID" *) input m_axi_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 RDATA" *) input [511:0]m_axi_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 RLAST" *) input m_axi_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 RREADY" *) output m_axi_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 RRESP" *) input [1:0]m_axi_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 RVALID" *) input m_axi_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 WDATA" *) output [511:0]m_axi_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 WLAST" *) output m_axi_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 WREADY" *) input m_axi_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 WSTRB" *) output [63:0]m_axi_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_0 WVALID" *) output m_axi_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_1, ADDR_WIDTH 64, ARUSER_WIDTH 4, AWUSER_WIDTH 4, BUSER_WIDTH 0, CLK_DOMAIN external_dma_bd_ap_clk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 64, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 ARBURST" *) output [1:0]m_axi_1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 ARCACHE" *) output [3:0]m_axi_1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 ARLEN" *) output [7:0]m_axi_1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 ARPROT" *) output [2:0]m_axi_1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 ARREADY" *) input m_axi_1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 ARSIZE" *) output [2:0]m_axi_1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 ARUSER" *) output [3:0]m_axi_1_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 ARVALID" *) output m_axi_1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 AWADDR" *) output [63:0]m_axi_1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 AWBURST" *) output [1:0]m_axi_1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 AWCACHE" *) output [3:0]m_axi_1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 AWLEN" *) output [7:0]m_axi_1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 AWPROT" *) output [2:0]m_axi_1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 AWREADY" *) input m_axi_1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 AWSIZE" *) output [2:0]m_axi_1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 AWUSER" *) output [3:0]m_axi_1_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 AWVALID" *) output m_axi_1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 BREADY" *) output m_axi_1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 BRESP" *) input [1:0]m_axi_1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 BVALID" *) input m_axi_1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 RDATA" *) input [511:0]m_axi_1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 RLAST" *) input m_axi_1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 RREADY" *) output m_axi_1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 RRESP" *) input [1:0]m_axi_1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 RVALID" *) input m_axi_1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 WDATA" *) output [511:0]m_axi_1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 WLAST" *) output m_axi_1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 WREADY" *) input m_axi_1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 WSTRB" *) output [63:0]m_axi_1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_1 WVALID" *) output m_axi_1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s_sts TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_mm2s_sts, CLK_DOMAIN external_dma_bd_ap_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [7:0]m_axis_mm2s_sts_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s_sts TKEEP" *) output [0:0]m_axis_mm2s_sts_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s_sts TLAST" *) output [0:0]m_axis_mm2s_sts_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s_sts TREADY" *) input [0:0]m_axis_mm2s_sts_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s_sts TVALID" *) output [0:0]m_axis_mm2s_sts_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_mm2s, CLK_DOMAIN external_dma_bd_ap_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [511:0]m_axis_mm2s_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s TKEEP" *) output [63:0]m_axis_mm2s_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s TLAST" *) output [0:0]m_axis_mm2s_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s TREADY" *) input [0:0]m_axis_mm2s_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_mm2s TVALID" *) output [0:0]m_axis_mm2s_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_s2mm_sts TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_s2mm_sts, CLK_DOMAIN external_dma_bd_ap_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_s2mm_sts_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_s2mm_sts TKEEP" *) output [3:0]m_axis_s2mm_sts_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_s2mm_sts TLAST" *) output [0:0]m_axis_s2mm_sts_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_s2mm_sts TREADY" *) input [0:0]m_axis_s2mm_sts_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_s2mm_sts TVALID" *) output [0:0]m_axis_s2mm_sts_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 13, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN external_dma_bd_ap_clk, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [8:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [8:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mm2s_cmd TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_mm2s_cmd, CLK_DOMAIN external_dma_bd_ap_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 13, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 0" *) input [103:0]s_axis_mm2s_cmd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mm2s_cmd TDEST" *) input [7:0]s_axis_mm2s_cmd_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mm2s_cmd TKEEP" *) input [12:0]s_axis_mm2s_cmd_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mm2s_cmd TLAST" *) input [0:0]s_axis_mm2s_cmd_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mm2s_cmd TREADY" *) output [0:0]s_axis_mm2s_cmd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mm2s_cmd TVALID" *) input [0:0]s_axis_mm2s_cmd_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm_cmd TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_s2mm_cmd, CLK_DOMAIN external_dma_bd_ap_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 13, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 0" *) input [103:0]s_axis_s2mm_cmd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm_cmd TDEST" *) input [7:0]s_axis_s2mm_cmd_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm_cmd TKEEP" *) input [12:0]s_axis_s2mm_cmd_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm_cmd TLAST" *) input [0:0]s_axis_s2mm_cmd_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm_cmd TREADY" *) output [0:0]s_axis_s2mm_cmd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm_cmd TVALID" *) input [0:0]s_axis_s2mm_cmd_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_s2mm, CLK_DOMAIN external_dma_bd_ap_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 64, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 0" *) input [511:0]s_axis_s2mm_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm TDEST" *) input [7:0]s_axis_s2mm_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm TKEEP" *) input [63:0]s_axis_s2mm_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm TLAST" *) input [0:0]s_axis_s2mm_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm TREADY" *) output [0:0]s_axis_s2mm_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_s2mm TVALID" *) input [0:0]s_axis_s2mm_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [103:0]axis_switch_mm2s_cmd_M00_AXIS_TDATA;
  wire axis_switch_mm2s_cmd_M00_AXIS_TREADY;
  wire [0:0]axis_switch_mm2s_cmd_M00_AXIS_TVALID;
  wire [207:104]axis_switch_mm2s_cmd_M01_AXIS_TDATA;
  wire axis_switch_mm2s_cmd_M01_AXIS_TREADY;
  wire [1:1]axis_switch_mm2s_cmd_M01_AXIS_TVALID;
  wire [511:0]axis_switch_mm2s_data_M00_AXIS_TDATA;
  wire [63:0]axis_switch_mm2s_data_M00_AXIS_TKEEP;
  wire [0:0]axis_switch_mm2s_data_M00_AXIS_TLAST;
  wire [0:0]axis_switch_mm2s_data_M00_AXIS_TREADY;
  wire [0:0]axis_switch_mm2s_data_M00_AXIS_TVALID;
  wire [7:0]axis_switch_mm2s_sts_M00_AXIS_TDATA;
  wire [0:0]axis_switch_mm2s_sts_M00_AXIS_TKEEP;
  wire [0:0]axis_switch_mm2s_sts_M00_AXIS_TLAST;
  wire [0:0]axis_switch_mm2s_sts_M00_AXIS_TREADY;
  wire [0:0]axis_switch_mm2s_sts_M00_AXIS_TVALID;
  wire [103:0]axis_switch_s2mm_cmd_M00_AXIS_TDATA;
  wire axis_switch_s2mm_cmd_M00_AXIS_TREADY;
  wire [0:0]axis_switch_s2mm_cmd_M00_AXIS_TVALID;
  wire [207:104]axis_switch_s2mm_cmd_M01_AXIS_TDATA;
  wire axis_switch_s2mm_cmd_M01_AXIS_TREADY;
  wire [1:1]axis_switch_s2mm_cmd_M01_AXIS_TVALID;
  wire [511:0]axis_switch_s2mm_data_M00_AXIS_TDATA;
  wire [63:0]axis_switch_s2mm_data_M00_AXIS_TKEEP;
  wire [0:0]axis_switch_s2mm_data_M00_AXIS_TLAST;
  wire axis_switch_s2mm_data_M00_AXIS_TREADY;
  wire [0:0]axis_switch_s2mm_data_M00_AXIS_TVALID;
  wire [1023:512]axis_switch_s2mm_data_M01_AXIS_TDATA;
  wire [127:64]axis_switch_s2mm_data_M01_AXIS_TKEEP;
  wire [1:1]axis_switch_s2mm_data_M01_AXIS_TLAST;
  wire axis_switch_s2mm_data_M01_AXIS_TREADY;
  wire [1:1]axis_switch_s2mm_data_M01_AXIS_TVALID;
  wire [31:0]axis_switch_s2mm_sts_M00_AXIS_TDATA;
  wire [3:0]axis_switch_s2mm_sts_M00_AXIS_TKEEP;
  wire [0:0]axis_switch_s2mm_sts_M00_AXIS_TLAST;
  wire [0:0]axis_switch_s2mm_sts_M00_AXIS_TREADY;
  wire [0:0]axis_switch_s2mm_sts_M00_AXIS_TVALID;
  wire [7:0]dma_0_M_AXIS_MM2S_STS_TDATA;
  wire [0:0]dma_0_M_AXIS_MM2S_STS_TKEEP;
  wire dma_0_M_AXIS_MM2S_STS_TLAST;
  wire [0:0]dma_0_M_AXIS_MM2S_STS_TREADY;
  wire dma_0_M_AXIS_MM2S_STS_TVALID;
  wire [511:0]dma_0_M_AXIS_MM2S_TDATA;
  wire [63:0]dma_0_M_AXIS_MM2S_TKEEP;
  wire dma_0_M_AXIS_MM2S_TLAST;
  wire [0:0]dma_0_M_AXIS_MM2S_TREADY;
  wire dma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]dma_0_M_AXIS_S2MM_STS_TDATA;
  wire [3:0]dma_0_M_AXIS_S2MM_STS_TKEEP;
  wire dma_0_M_AXIS_S2MM_STS_TLAST;
  wire [0:0]dma_0_M_AXIS_S2MM_STS_TREADY;
  wire dma_0_M_AXIS_S2MM_STS_TVALID;
  wire [63:0]dma_0_M_AXI_ARADDR;
  wire [1:0]dma_0_M_AXI_ARBURST;
  wire [3:0]dma_0_M_AXI_ARCACHE;
  wire [7:0]dma_0_M_AXI_ARLEN;
  wire [2:0]dma_0_M_AXI_ARPROT;
  wire dma_0_M_AXI_ARREADY;
  wire [2:0]dma_0_M_AXI_ARSIZE;
  wire [3:0]dma_0_M_AXI_ARUSER;
  wire dma_0_M_AXI_ARVALID;
  wire [63:0]dma_0_M_AXI_AWADDR;
  wire [1:0]dma_0_M_AXI_AWBURST;
  wire [3:0]dma_0_M_AXI_AWCACHE;
  wire [7:0]dma_0_M_AXI_AWLEN;
  wire [2:0]dma_0_M_AXI_AWPROT;
  wire dma_0_M_AXI_AWREADY;
  wire [2:0]dma_0_M_AXI_AWSIZE;
  wire [3:0]dma_0_M_AXI_AWUSER;
  wire dma_0_M_AXI_AWVALID;
  wire dma_0_M_AXI_BREADY;
  wire [1:0]dma_0_M_AXI_BRESP;
  wire dma_0_M_AXI_BVALID;
  wire [511:0]dma_0_M_AXI_RDATA;
  wire dma_0_M_AXI_RLAST;
  wire dma_0_M_AXI_RREADY;
  wire [1:0]dma_0_M_AXI_RRESP;
  wire dma_0_M_AXI_RVALID;
  wire [511:0]dma_0_M_AXI_WDATA;
  wire dma_0_M_AXI_WLAST;
  wire dma_0_M_AXI_WREADY;
  wire [63:0]dma_0_M_AXI_WSTRB;
  wire dma_0_M_AXI_WVALID;
  wire [7:0]dma_1_M_AXIS_MM2S_STS_TDATA;
  wire [0:0]dma_1_M_AXIS_MM2S_STS_TKEEP;
  wire dma_1_M_AXIS_MM2S_STS_TLAST;
  wire [1:1]dma_1_M_AXIS_MM2S_STS_TREADY;
  wire dma_1_M_AXIS_MM2S_STS_TVALID;
  wire [511:0]dma_1_M_AXIS_MM2S_TDATA;
  wire [63:0]dma_1_M_AXIS_MM2S_TKEEP;
  wire dma_1_M_AXIS_MM2S_TLAST;
  wire [1:1]dma_1_M_AXIS_MM2S_TREADY;
  wire dma_1_M_AXIS_MM2S_TVALID;
  wire [31:0]dma_1_M_AXIS_S2MM_STS_TDATA;
  wire [3:0]dma_1_M_AXIS_S2MM_STS_TKEEP;
  wire dma_1_M_AXIS_S2MM_STS_TLAST;
  wire [1:1]dma_1_M_AXIS_S2MM_STS_TREADY;
  wire dma_1_M_AXIS_S2MM_STS_TVALID;
  wire [63:0]dma_1_M_AXI_ARADDR;
  wire [1:0]dma_1_M_AXI_ARBURST;
  wire [3:0]dma_1_M_AXI_ARCACHE;
  wire [7:0]dma_1_M_AXI_ARLEN;
  wire [2:0]dma_1_M_AXI_ARPROT;
  wire dma_1_M_AXI_ARREADY;
  wire [2:0]dma_1_M_AXI_ARSIZE;
  wire [3:0]dma_1_M_AXI_ARUSER;
  wire dma_1_M_AXI_ARVALID;
  wire [63:0]dma_1_M_AXI_AWADDR;
  wire [1:0]dma_1_M_AXI_AWBURST;
  wire [3:0]dma_1_M_AXI_AWCACHE;
  wire [7:0]dma_1_M_AXI_AWLEN;
  wire [2:0]dma_1_M_AXI_AWPROT;
  wire dma_1_M_AXI_AWREADY;
  wire [2:0]dma_1_M_AXI_AWSIZE;
  wire [3:0]dma_1_M_AXI_AWUSER;
  wire dma_1_M_AXI_AWVALID;
  wire dma_1_M_AXI_BREADY;
  wire [1:0]dma_1_M_AXI_BRESP;
  wire dma_1_M_AXI_BVALID;
  wire [511:0]dma_1_M_AXI_RDATA;
  wire dma_1_M_AXI_RLAST;
  wire dma_1_M_AXI_RREADY;
  wire [1:0]dma_1_M_AXI_RRESP;
  wire dma_1_M_AXI_RVALID;
  wire [511:0]dma_1_M_AXI_WDATA;
  wire dma_1_M_AXI_WLAST;
  wire dma_1_M_AXI_WREADY;
  wire [63:0]dma_1_M_AXI_WSTRB;
  wire dma_1_M_AXI_WVALID;
  wire [8:0]s_axi_control_1_ARADDR;
  wire s_axi_control_1_ARREADY;
  wire s_axi_control_1_ARVALID;
  wire [8:0]s_axi_control_1_AWADDR;
  wire s_axi_control_1_AWREADY;
  wire s_axi_control_1_AWVALID;
  wire s_axi_control_1_BREADY;
  wire [1:0]s_axi_control_1_BRESP;
  wire s_axi_control_1_BVALID;
  wire [31:0]s_axi_control_1_RDATA;
  wire s_axi_control_1_RREADY;
  wire [1:0]s_axi_control_1_RRESP;
  wire s_axi_control_1_RVALID;
  wire [31:0]s_axi_control_1_WDATA;
  wire s_axi_control_1_WREADY;
  wire [3:0]s_axi_control_1_WSTRB;
  wire s_axi_control_1_WVALID;
  wire [103:0]s_axis_mm2s_cmd_1_TDATA;
  wire [7:0]s_axis_mm2s_cmd_1_TDEST;
  wire [12:0]s_axis_mm2s_cmd_1_TKEEP;
  wire [0:0]s_axis_mm2s_cmd_1_TLAST;
  wire [0:0]s_axis_mm2s_cmd_1_TREADY;
  wire [0:0]s_axis_mm2s_cmd_1_TVALID;
  wire [511:0]s_axis_s2mm_1_TDATA;
  wire [7:0]s_axis_s2mm_1_TDEST;
  wire [63:0]s_axis_s2mm_1_TKEEP;
  wire [0:0]s_axis_s2mm_1_TLAST;
  wire [0:0]s_axis_s2mm_1_TREADY;
  wire [0:0]s_axis_s2mm_1_TVALID;
  wire [103:0]s_axis_s2mm_cmd_1_TDATA;
  wire [7:0]s_axis_s2mm_cmd_1_TDEST;
  wire [12:0]s_axis_s2mm_cmd_1_TKEEP;
  wire [0:0]s_axis_s2mm_cmd_1_TLAST;
  wire [0:0]s_axis_s2mm_cmd_1_TREADY;
  wire [0:0]s_axis_s2mm_cmd_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign axis_switch_mm2s_data_M00_AXIS_TREADY = m_axis_mm2s_tready[0];
  assign axis_switch_mm2s_sts_M00_AXIS_TREADY = m_axis_mm2s_sts_tready[0];
  assign axis_switch_s2mm_sts_M00_AXIS_TREADY = m_axis_s2mm_sts_tready[0];
  assign dma_0_M_AXI_ARREADY = m_axi_0_arready;
  assign dma_0_M_AXI_AWREADY = m_axi_0_awready;
  assign dma_0_M_AXI_BRESP = m_axi_0_bresp[1:0];
  assign dma_0_M_AXI_BVALID = m_axi_0_bvalid;
  assign dma_0_M_AXI_RDATA = m_axi_0_rdata[511:0];
  assign dma_0_M_AXI_RLAST = m_axi_0_rlast;
  assign dma_0_M_AXI_RRESP = m_axi_0_rresp[1:0];
  assign dma_0_M_AXI_RVALID = m_axi_0_rvalid;
  assign dma_0_M_AXI_WREADY = m_axi_0_wready;
  assign dma_1_M_AXI_ARREADY = m_axi_1_arready;
  assign dma_1_M_AXI_AWREADY = m_axi_1_awready;
  assign dma_1_M_AXI_BRESP = m_axi_1_bresp[1:0];
  assign dma_1_M_AXI_BVALID = m_axi_1_bvalid;
  assign dma_1_M_AXI_RDATA = m_axi_1_rdata[511:0];
  assign dma_1_M_AXI_RLAST = m_axi_1_rlast;
  assign dma_1_M_AXI_RRESP = m_axi_1_rresp[1:0];
  assign dma_1_M_AXI_RVALID = m_axi_1_rvalid;
  assign dma_1_M_AXI_WREADY = m_axi_1_wready;
  assign m_axi_0_araddr[63:0] = dma_0_M_AXI_ARADDR;
  assign m_axi_0_arburst[1:0] = dma_0_M_AXI_ARBURST;
  assign m_axi_0_arcache[3:0] = dma_0_M_AXI_ARCACHE;
  assign m_axi_0_arlen[7:0] = dma_0_M_AXI_ARLEN;
  assign m_axi_0_arprot[2:0] = dma_0_M_AXI_ARPROT;
  assign m_axi_0_arsize[2:0] = dma_0_M_AXI_ARSIZE;
  assign m_axi_0_aruser[3:0] = dma_0_M_AXI_ARUSER;
  assign m_axi_0_arvalid = dma_0_M_AXI_ARVALID;
  assign m_axi_0_awaddr[63:0] = dma_0_M_AXI_AWADDR;
  assign m_axi_0_awburst[1:0] = dma_0_M_AXI_AWBURST;
  assign m_axi_0_awcache[3:0] = dma_0_M_AXI_AWCACHE;
  assign m_axi_0_awlen[7:0] = dma_0_M_AXI_AWLEN;
  assign m_axi_0_awprot[2:0] = dma_0_M_AXI_AWPROT;
  assign m_axi_0_awsize[2:0] = dma_0_M_AXI_AWSIZE;
  assign m_axi_0_awuser[3:0] = dma_0_M_AXI_AWUSER;
  assign m_axi_0_awvalid = dma_0_M_AXI_AWVALID;
  assign m_axi_0_bready = dma_0_M_AXI_BREADY;
  assign m_axi_0_rready = dma_0_M_AXI_RREADY;
  assign m_axi_0_wdata[511:0] = dma_0_M_AXI_WDATA;
  assign m_axi_0_wlast = dma_0_M_AXI_WLAST;
  assign m_axi_0_wstrb[63:0] = dma_0_M_AXI_WSTRB;
  assign m_axi_0_wvalid = dma_0_M_AXI_WVALID;
  assign m_axi_1_araddr[63:0] = dma_1_M_AXI_ARADDR;
  assign m_axi_1_arburst[1:0] = dma_1_M_AXI_ARBURST;
  assign m_axi_1_arcache[3:0] = dma_1_M_AXI_ARCACHE;
  assign m_axi_1_arlen[7:0] = dma_1_M_AXI_ARLEN;
  assign m_axi_1_arprot[2:0] = dma_1_M_AXI_ARPROT;
  assign m_axi_1_arsize[2:0] = dma_1_M_AXI_ARSIZE;
  assign m_axi_1_aruser[3:0] = dma_1_M_AXI_ARUSER;
  assign m_axi_1_arvalid = dma_1_M_AXI_ARVALID;
  assign m_axi_1_awaddr[63:0] = dma_1_M_AXI_AWADDR;
  assign m_axi_1_awburst[1:0] = dma_1_M_AXI_AWBURST;
  assign m_axi_1_awcache[3:0] = dma_1_M_AXI_AWCACHE;
  assign m_axi_1_awlen[7:0] = dma_1_M_AXI_AWLEN;
  assign m_axi_1_awprot[2:0] = dma_1_M_AXI_AWPROT;
  assign m_axi_1_awsize[2:0] = dma_1_M_AXI_AWSIZE;
  assign m_axi_1_awuser[3:0] = dma_1_M_AXI_AWUSER;
  assign m_axi_1_awvalid = dma_1_M_AXI_AWVALID;
  assign m_axi_1_bready = dma_1_M_AXI_BREADY;
  assign m_axi_1_rready = dma_1_M_AXI_RREADY;
  assign m_axi_1_wdata[511:0] = dma_1_M_AXI_WDATA;
  assign m_axi_1_wlast = dma_1_M_AXI_WLAST;
  assign m_axi_1_wstrb[63:0] = dma_1_M_AXI_WSTRB;
  assign m_axi_1_wvalid = dma_1_M_AXI_WVALID;
  assign m_axis_mm2s_sts_tdata[7:0] = axis_switch_mm2s_sts_M00_AXIS_TDATA;
  assign m_axis_mm2s_sts_tkeep[0] = axis_switch_mm2s_sts_M00_AXIS_TKEEP;
  assign m_axis_mm2s_sts_tlast[0] = axis_switch_mm2s_sts_M00_AXIS_TLAST;
  assign m_axis_mm2s_sts_tvalid[0] = axis_switch_mm2s_sts_M00_AXIS_TVALID;
  assign m_axis_mm2s_tdata[511:0] = axis_switch_mm2s_data_M00_AXIS_TDATA;
  assign m_axis_mm2s_tkeep[63:0] = axis_switch_mm2s_data_M00_AXIS_TKEEP;
  assign m_axis_mm2s_tlast[0] = axis_switch_mm2s_data_M00_AXIS_TLAST;
  assign m_axis_mm2s_tvalid[0] = axis_switch_mm2s_data_M00_AXIS_TVALID;
  assign m_axis_s2mm_sts_tdata[31:0] = axis_switch_s2mm_sts_M00_AXIS_TDATA;
  assign m_axis_s2mm_sts_tkeep[3:0] = axis_switch_s2mm_sts_M00_AXIS_TKEEP;
  assign m_axis_s2mm_sts_tlast[0] = axis_switch_s2mm_sts_M00_AXIS_TLAST;
  assign m_axis_s2mm_sts_tvalid[0] = axis_switch_s2mm_sts_M00_AXIS_TVALID;
  assign s_axi_control_1_ARADDR = s_axi_control_araddr[8:0];
  assign s_axi_control_1_ARVALID = s_axi_control_arvalid;
  assign s_axi_control_1_AWADDR = s_axi_control_awaddr[8:0];
  assign s_axi_control_1_AWVALID = s_axi_control_awvalid;
  assign s_axi_control_1_BREADY = s_axi_control_bready;
  assign s_axi_control_1_RREADY = s_axi_control_rready;
  assign s_axi_control_1_WDATA = s_axi_control_wdata[31:0];
  assign s_axi_control_1_WSTRB = s_axi_control_wstrb[3:0];
  assign s_axi_control_1_WVALID = s_axi_control_wvalid;
  assign s_axi_control_arready = s_axi_control_1_ARREADY;
  assign s_axi_control_awready = s_axi_control_1_AWREADY;
  assign s_axi_control_bresp[1:0] = s_axi_control_1_BRESP;
  assign s_axi_control_bvalid = s_axi_control_1_BVALID;
  assign s_axi_control_rdata[31:0] = s_axi_control_1_RDATA;
  assign s_axi_control_rresp[1:0] = s_axi_control_1_RRESP;
  assign s_axi_control_rvalid = s_axi_control_1_RVALID;
  assign s_axi_control_wready = s_axi_control_1_WREADY;
  assign s_axis_mm2s_cmd_1_TDATA = s_axis_mm2s_cmd_tdata[103:0];
  assign s_axis_mm2s_cmd_1_TDEST = s_axis_mm2s_cmd_tdest[7:0];
  assign s_axis_mm2s_cmd_1_TKEEP = s_axis_mm2s_cmd_tkeep[12:0];
  assign s_axis_mm2s_cmd_1_TLAST = s_axis_mm2s_cmd_tlast[0];
  assign s_axis_mm2s_cmd_1_TVALID = s_axis_mm2s_cmd_tvalid[0];
  assign s_axis_mm2s_cmd_tready[0] = s_axis_mm2s_cmd_1_TREADY;
  assign s_axis_s2mm_1_TDATA = s_axis_s2mm_tdata[511:0];
  assign s_axis_s2mm_1_TDEST = s_axis_s2mm_tdest[7:0];
  assign s_axis_s2mm_1_TKEEP = s_axis_s2mm_tkeep[63:0];
  assign s_axis_s2mm_1_TLAST = s_axis_s2mm_tlast[0];
  assign s_axis_s2mm_1_TVALID = s_axis_s2mm_tvalid[0];
  assign s_axis_s2mm_cmd_1_TDATA = s_axis_s2mm_cmd_tdata[103:0];
  assign s_axis_s2mm_cmd_1_TDEST = s_axis_s2mm_cmd_tdest[7:0];
  assign s_axis_s2mm_cmd_1_TKEEP = s_axis_s2mm_cmd_tkeep[12:0];
  assign s_axis_s2mm_cmd_1_TLAST = s_axis_s2mm_cmd_tlast[0];
  assign s_axis_s2mm_cmd_1_TVALID = s_axis_s2mm_cmd_tvalid[0];
  assign s_axis_s2mm_cmd_tready[0] = s_axis_s2mm_cmd_1_TREADY;
  assign s_axis_s2mm_tready[0] = s_axis_s2mm_1_TREADY;
  external_dma_bd_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aclk(ap_clk_1),
        .s_axi_araddr(s_axi_control_1_ARADDR),
        .s_axi_aresetn(ap_rst_n_1),
        .s_axi_arready(s_axi_control_1_ARREADY),
        .s_axi_arvalid(s_axi_control_1_ARVALID),
        .s_axi_awaddr(s_axi_control_1_AWADDR),
        .s_axi_awready(s_axi_control_1_AWREADY),
        .s_axi_awvalid(s_axi_control_1_AWVALID),
        .s_axi_bready(s_axi_control_1_BREADY),
        .s_axi_bresp(s_axi_control_1_BRESP),
        .s_axi_bvalid(s_axi_control_1_BVALID),
        .s_axi_rdata(s_axi_control_1_RDATA),
        .s_axi_rready(s_axi_control_1_RREADY),
        .s_axi_rresp(s_axi_control_1_RRESP),
        .s_axi_rvalid(s_axi_control_1_RVALID),
        .s_axi_wdata(s_axi_control_1_WDATA),
        .s_axi_wready(s_axi_control_1_WREADY),
        .s_axi_wstrb(s_axi_control_1_WSTRB),
        .s_axi_wvalid(s_axi_control_1_WVALID));
  external_dma_bd_axis_switch_mm2s_cmd_0 axis_switch_mm2s_cmd
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axis_tdata({axis_switch_mm2s_cmd_M01_AXIS_TDATA,axis_switch_mm2s_cmd_M00_AXIS_TDATA}),
        .m_axis_tready({axis_switch_mm2s_cmd_M01_AXIS_TREADY,axis_switch_mm2s_cmd_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_switch_mm2s_cmd_M01_AXIS_TVALID,axis_switch_mm2s_cmd_M00_AXIS_TVALID}),
        .s_axis_tdata(s_axis_mm2s_cmd_1_TDATA),
        .s_axis_tdest(s_axis_mm2s_cmd_1_TDEST),
        .s_axis_tkeep(s_axis_mm2s_cmd_1_TKEEP),
        .s_axis_tlast(s_axis_mm2s_cmd_1_TLAST),
        .s_axis_tready(s_axis_mm2s_cmd_1_TREADY),
        .s_axis_tvalid(s_axis_mm2s_cmd_1_TVALID));
  external_dma_bd_axis_switch_mm2s_data_0 axis_switch_mm2s_data
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axis_tdata(axis_switch_mm2s_data_M00_AXIS_TDATA),
        .m_axis_tkeep(axis_switch_mm2s_data_M00_AXIS_TKEEP),
        .m_axis_tlast(axis_switch_mm2s_data_M00_AXIS_TLAST),
        .m_axis_tready(axis_switch_mm2s_data_M00_AXIS_TREADY),
        .m_axis_tvalid(axis_switch_mm2s_data_M00_AXIS_TVALID),
        .s_axis_tdata({dma_1_M_AXIS_MM2S_TDATA,dma_0_M_AXIS_MM2S_TDATA}),
        .s_axis_tkeep({dma_1_M_AXIS_MM2S_TKEEP,dma_0_M_AXIS_MM2S_TKEEP}),
        .s_axis_tlast({dma_1_M_AXIS_MM2S_TLAST,dma_0_M_AXIS_MM2S_TLAST}),
        .s_axis_tready({dma_1_M_AXIS_MM2S_TREADY,dma_0_M_AXIS_MM2S_TREADY}),
        .s_axis_tvalid({dma_1_M_AXIS_MM2S_TVALID,dma_0_M_AXIS_MM2S_TVALID}),
        .s_req_suppress({1'b0,1'b0}));
  external_dma_bd_axis_switch_mm2s_sts_0 axis_switch_mm2s_sts
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axis_tdata(axis_switch_mm2s_sts_M00_AXIS_TDATA),
        .m_axis_tkeep(axis_switch_mm2s_sts_M00_AXIS_TKEEP),
        .m_axis_tlast(axis_switch_mm2s_sts_M00_AXIS_TLAST),
        .m_axis_tready(axis_switch_mm2s_sts_M00_AXIS_TREADY),
        .m_axis_tvalid(axis_switch_mm2s_sts_M00_AXIS_TVALID),
        .s_axis_tdata({dma_1_M_AXIS_MM2S_STS_TDATA,dma_0_M_AXIS_MM2S_STS_TDATA}),
        .s_axis_tkeep({dma_1_M_AXIS_MM2S_STS_TKEEP,dma_0_M_AXIS_MM2S_STS_TKEEP}),
        .s_axis_tlast({dma_1_M_AXIS_MM2S_STS_TLAST,dma_0_M_AXIS_MM2S_STS_TLAST}),
        .s_axis_tready({dma_1_M_AXIS_MM2S_STS_TREADY,dma_0_M_AXIS_MM2S_STS_TREADY}),
        .s_axis_tvalid({dma_1_M_AXIS_MM2S_STS_TVALID,dma_0_M_AXIS_MM2S_STS_TVALID}),
        .s_req_suppress({1'b0,1'b0}));
  external_dma_bd_axis_switch_s2mm_cmd_0 axis_switch_s2mm_cmd
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axis_tdata({axis_switch_s2mm_cmd_M01_AXIS_TDATA,axis_switch_s2mm_cmd_M00_AXIS_TDATA}),
        .m_axis_tready({axis_switch_s2mm_cmd_M01_AXIS_TREADY,axis_switch_s2mm_cmd_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_switch_s2mm_cmd_M01_AXIS_TVALID,axis_switch_s2mm_cmd_M00_AXIS_TVALID}),
        .s_axis_tdata(s_axis_s2mm_cmd_1_TDATA),
        .s_axis_tdest(s_axis_s2mm_cmd_1_TDEST),
        .s_axis_tkeep(s_axis_s2mm_cmd_1_TKEEP),
        .s_axis_tlast(s_axis_s2mm_cmd_1_TLAST),
        .s_axis_tready(s_axis_s2mm_cmd_1_TREADY),
        .s_axis_tvalid(s_axis_s2mm_cmd_1_TVALID));
  external_dma_bd_axis_switch_s2mm_data_0 axis_switch_s2mm_data
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axis_tdata({axis_switch_s2mm_data_M01_AXIS_TDATA,axis_switch_s2mm_data_M00_AXIS_TDATA}),
        .m_axis_tkeep({axis_switch_s2mm_data_M01_AXIS_TKEEP,axis_switch_s2mm_data_M00_AXIS_TKEEP}),
        .m_axis_tlast({axis_switch_s2mm_data_M01_AXIS_TLAST,axis_switch_s2mm_data_M00_AXIS_TLAST}),
        .m_axis_tready({axis_switch_s2mm_data_M01_AXIS_TREADY,axis_switch_s2mm_data_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_switch_s2mm_data_M01_AXIS_TVALID,axis_switch_s2mm_data_M00_AXIS_TVALID}),
        .s_axis_tdata(s_axis_s2mm_1_TDATA),
        .s_axis_tdest(s_axis_s2mm_1_TDEST),
        .s_axis_tkeep(s_axis_s2mm_1_TKEEP),
        .s_axis_tlast(s_axis_s2mm_1_TLAST),
        .s_axis_tready(s_axis_s2mm_1_TREADY),
        .s_axis_tvalid(s_axis_s2mm_1_TVALID));
  external_dma_bd_axis_switch_s2mm_sts_0 axis_switch_s2mm_sts
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axis_tdata(axis_switch_s2mm_sts_M00_AXIS_TDATA),
        .m_axis_tkeep(axis_switch_s2mm_sts_M00_AXIS_TKEEP),
        .m_axis_tlast(axis_switch_s2mm_sts_M00_AXIS_TLAST),
        .m_axis_tready(axis_switch_s2mm_sts_M00_AXIS_TREADY),
        .m_axis_tvalid(axis_switch_s2mm_sts_M00_AXIS_TVALID),
        .s_axis_tdata({dma_1_M_AXIS_S2MM_STS_TDATA,dma_0_M_AXIS_S2MM_STS_TDATA}),
        .s_axis_tkeep({dma_1_M_AXIS_S2MM_STS_TKEEP,dma_0_M_AXIS_S2MM_STS_TKEEP}),
        .s_axis_tlast({dma_1_M_AXIS_S2MM_STS_TLAST,dma_0_M_AXIS_S2MM_STS_TLAST}),
        .s_axis_tready({dma_1_M_AXIS_S2MM_STS_TREADY,dma_0_M_AXIS_S2MM_STS_TREADY}),
        .s_axis_tvalid({dma_1_M_AXIS_S2MM_STS_TVALID,dma_0_M_AXIS_S2MM_STS_TVALID}),
        .s_req_suppress({1'b0,1'b0}));
  external_dma_bd_dma_0_0 dma_0
       (.m_axi_mm2s_aclk(ap_clk_1),
        .m_axi_mm2s_araddr(dma_0_M_AXI_ARADDR),
        .m_axi_mm2s_arburst(dma_0_M_AXI_ARBURST),
        .m_axi_mm2s_arcache(dma_0_M_AXI_ARCACHE),
        .m_axi_mm2s_aresetn(ap_rst_n_1),
        .m_axi_mm2s_arlen(dma_0_M_AXI_ARLEN),
        .m_axi_mm2s_arprot(dma_0_M_AXI_ARPROT),
        .m_axi_mm2s_arready(dma_0_M_AXI_ARREADY),
        .m_axi_mm2s_arsize(dma_0_M_AXI_ARSIZE),
        .m_axi_mm2s_aruser(dma_0_M_AXI_ARUSER),
        .m_axi_mm2s_arvalid(dma_0_M_AXI_ARVALID),
        .m_axi_mm2s_rdata(dma_0_M_AXI_RDATA),
        .m_axi_mm2s_rlast(dma_0_M_AXI_RLAST),
        .m_axi_mm2s_rready(dma_0_M_AXI_RREADY),
        .m_axi_mm2s_rresp(dma_0_M_AXI_RRESP),
        .m_axi_mm2s_rvalid(dma_0_M_AXI_RVALID),
        .m_axi_s2mm_aclk(ap_clk_1),
        .m_axi_s2mm_aresetn(ap_rst_n_1),
        .m_axi_s2mm_awaddr(dma_0_M_AXI_AWADDR),
        .m_axi_s2mm_awburst(dma_0_M_AXI_AWBURST),
        .m_axi_s2mm_awcache(dma_0_M_AXI_AWCACHE),
        .m_axi_s2mm_awlen(dma_0_M_AXI_AWLEN),
        .m_axi_s2mm_awprot(dma_0_M_AXI_AWPROT),
        .m_axi_s2mm_awready(dma_0_M_AXI_AWREADY),
        .m_axi_s2mm_awsize(dma_0_M_AXI_AWSIZE),
        .m_axi_s2mm_awuser(dma_0_M_AXI_AWUSER),
        .m_axi_s2mm_awvalid(dma_0_M_AXI_AWVALID),
        .m_axi_s2mm_bready(dma_0_M_AXI_BREADY),
        .m_axi_s2mm_bresp(dma_0_M_AXI_BRESP),
        .m_axi_s2mm_bvalid(dma_0_M_AXI_BVALID),
        .m_axi_s2mm_wdata(dma_0_M_AXI_WDATA),
        .m_axi_s2mm_wlast(dma_0_M_AXI_WLAST),
        .m_axi_s2mm_wready(dma_0_M_AXI_WREADY),
        .m_axi_s2mm_wstrb(dma_0_M_AXI_WSTRB),
        .m_axi_s2mm_wvalid(dma_0_M_AXI_WVALID),
        .m_axis_mm2s_cmdsts_aclk(ap_clk_1),
        .m_axis_mm2s_cmdsts_aresetn(ap_rst_n_1),
        .m_axis_mm2s_sts_tdata(dma_0_M_AXIS_MM2S_STS_TDATA),
        .m_axis_mm2s_sts_tkeep(dma_0_M_AXIS_MM2S_STS_TKEEP),
        .m_axis_mm2s_sts_tlast(dma_0_M_AXIS_MM2S_STS_TLAST),
        .m_axis_mm2s_sts_tready(dma_0_M_AXIS_MM2S_STS_TREADY),
        .m_axis_mm2s_sts_tvalid(dma_0_M_AXIS_MM2S_STS_TVALID),
        .m_axis_mm2s_tdata(dma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(dma_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(dma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(dma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(dma_0_M_AXIS_MM2S_TVALID),
        .m_axis_s2mm_cmdsts_aresetn(ap_rst_n_1),
        .m_axis_s2mm_cmdsts_awclk(ap_clk_1),
        .m_axis_s2mm_sts_tdata(dma_0_M_AXIS_S2MM_STS_TDATA),
        .m_axis_s2mm_sts_tkeep(dma_0_M_AXIS_S2MM_STS_TKEEP),
        .m_axis_s2mm_sts_tlast(dma_0_M_AXIS_S2MM_STS_TLAST),
        .m_axis_s2mm_sts_tready(dma_0_M_AXIS_S2MM_STS_TREADY),
        .m_axis_s2mm_sts_tvalid(dma_0_M_AXIS_S2MM_STS_TVALID),
        .s_axis_mm2s_cmd_tdata(axis_switch_mm2s_cmd_M00_AXIS_TDATA),
        .s_axis_mm2s_cmd_tready(axis_switch_mm2s_cmd_M00_AXIS_TREADY),
        .s_axis_mm2s_cmd_tvalid(axis_switch_mm2s_cmd_M00_AXIS_TVALID),
        .s_axis_s2mm_cmd_tdata(axis_switch_s2mm_cmd_M00_AXIS_TDATA),
        .s_axis_s2mm_cmd_tready(axis_switch_s2mm_cmd_M00_AXIS_TREADY),
        .s_axis_s2mm_cmd_tvalid(axis_switch_s2mm_cmd_M00_AXIS_TVALID),
        .s_axis_s2mm_tdata(axis_switch_s2mm_data_M00_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_switch_s2mm_data_M00_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_switch_s2mm_data_M00_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_switch_s2mm_data_M00_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_switch_s2mm_data_M00_AXIS_TVALID));
  external_dma_bd_dma_1_0 dma_1
       (.m_axi_mm2s_aclk(ap_clk_1),
        .m_axi_mm2s_araddr(dma_1_M_AXI_ARADDR),
        .m_axi_mm2s_arburst(dma_1_M_AXI_ARBURST),
        .m_axi_mm2s_arcache(dma_1_M_AXI_ARCACHE),
        .m_axi_mm2s_aresetn(ap_rst_n_1),
        .m_axi_mm2s_arlen(dma_1_M_AXI_ARLEN),
        .m_axi_mm2s_arprot(dma_1_M_AXI_ARPROT),
        .m_axi_mm2s_arready(dma_1_M_AXI_ARREADY),
        .m_axi_mm2s_arsize(dma_1_M_AXI_ARSIZE),
        .m_axi_mm2s_aruser(dma_1_M_AXI_ARUSER),
        .m_axi_mm2s_arvalid(dma_1_M_AXI_ARVALID),
        .m_axi_mm2s_rdata(dma_1_M_AXI_RDATA),
        .m_axi_mm2s_rlast(dma_1_M_AXI_RLAST),
        .m_axi_mm2s_rready(dma_1_M_AXI_RREADY),
        .m_axi_mm2s_rresp(dma_1_M_AXI_RRESP),
        .m_axi_mm2s_rvalid(dma_1_M_AXI_RVALID),
        .m_axi_s2mm_aclk(ap_clk_1),
        .m_axi_s2mm_aresetn(ap_rst_n_1),
        .m_axi_s2mm_awaddr(dma_1_M_AXI_AWADDR),
        .m_axi_s2mm_awburst(dma_1_M_AXI_AWBURST),
        .m_axi_s2mm_awcache(dma_1_M_AXI_AWCACHE),
        .m_axi_s2mm_awlen(dma_1_M_AXI_AWLEN),
        .m_axi_s2mm_awprot(dma_1_M_AXI_AWPROT),
        .m_axi_s2mm_awready(dma_1_M_AXI_AWREADY),
        .m_axi_s2mm_awsize(dma_1_M_AXI_AWSIZE),
        .m_axi_s2mm_awuser(dma_1_M_AXI_AWUSER),
        .m_axi_s2mm_awvalid(dma_1_M_AXI_AWVALID),
        .m_axi_s2mm_bready(dma_1_M_AXI_BREADY),
        .m_axi_s2mm_bresp(dma_1_M_AXI_BRESP),
        .m_axi_s2mm_bvalid(dma_1_M_AXI_BVALID),
        .m_axi_s2mm_wdata(dma_1_M_AXI_WDATA),
        .m_axi_s2mm_wlast(dma_1_M_AXI_WLAST),
        .m_axi_s2mm_wready(dma_1_M_AXI_WREADY),
        .m_axi_s2mm_wstrb(dma_1_M_AXI_WSTRB),
        .m_axi_s2mm_wvalid(dma_1_M_AXI_WVALID),
        .m_axis_mm2s_cmdsts_aclk(ap_clk_1),
        .m_axis_mm2s_cmdsts_aresetn(ap_rst_n_1),
        .m_axis_mm2s_sts_tdata(dma_1_M_AXIS_MM2S_STS_TDATA),
        .m_axis_mm2s_sts_tkeep(dma_1_M_AXIS_MM2S_STS_TKEEP),
        .m_axis_mm2s_sts_tlast(dma_1_M_AXIS_MM2S_STS_TLAST),
        .m_axis_mm2s_sts_tready(dma_1_M_AXIS_MM2S_STS_TREADY),
        .m_axis_mm2s_sts_tvalid(dma_1_M_AXIS_MM2S_STS_TVALID),
        .m_axis_mm2s_tdata(dma_1_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(dma_1_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(dma_1_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(dma_1_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(dma_1_M_AXIS_MM2S_TVALID),
        .m_axis_s2mm_cmdsts_aresetn(ap_rst_n_1),
        .m_axis_s2mm_cmdsts_awclk(ap_clk_1),
        .m_axis_s2mm_sts_tdata(dma_1_M_AXIS_S2MM_STS_TDATA),
        .m_axis_s2mm_sts_tkeep(dma_1_M_AXIS_S2MM_STS_TKEEP),
        .m_axis_s2mm_sts_tlast(dma_1_M_AXIS_S2MM_STS_TLAST),
        .m_axis_s2mm_sts_tready(dma_1_M_AXIS_S2MM_STS_TREADY),
        .m_axis_s2mm_sts_tvalid(dma_1_M_AXIS_S2MM_STS_TVALID),
        .s_axis_mm2s_cmd_tdata(axis_switch_mm2s_cmd_M01_AXIS_TDATA),
        .s_axis_mm2s_cmd_tready(axis_switch_mm2s_cmd_M01_AXIS_TREADY),
        .s_axis_mm2s_cmd_tvalid(axis_switch_mm2s_cmd_M01_AXIS_TVALID),
        .s_axis_s2mm_cmd_tdata(axis_switch_s2mm_cmd_M01_AXIS_TDATA),
        .s_axis_s2mm_cmd_tready(axis_switch_s2mm_cmd_M01_AXIS_TREADY),
        .s_axis_s2mm_cmd_tvalid(axis_switch_s2mm_cmd_M01_AXIS_TVALID),
        .s_axis_s2mm_tdata(axis_switch_s2mm_data_M01_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_switch_s2mm_data_M01_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_switch_s2mm_data_M01_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_switch_s2mm_data_M01_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_switch_s2mm_data_M01_AXIS_TVALID));
endmodule
