set moduleName cyt_rdma
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {cyt_rdma}
set C_modelType { void 0 }
set C_modelArgList {
	{ rdma_sq int 128 regular {axi_s 0 volatile  { rdma_sq Data } }  }
	{ notif int 64 regular {axi_s 1 volatile  { notif Data } }  }
	{ send_data_V_data_V int 512 regular {axi_s 0 volatile  { send_data Data } }  }
	{ send_data_V_keep_V int 64 regular {axi_s 0 volatile  { send_data Keep } }  }
	{ send_data_V_strb_V int 64 regular {axi_s 0 volatile  { send_data Strb } }  }
	{ send_data_V_last_V int 1 regular {axi_s 0 volatile  { send_data Last } }  }
	{ send_data_V_dest_V int 8 regular {axi_s 0 volatile  { send_data Dest } }  }
	{ recv_data_V_data_V int 512 regular {axi_s 1 volatile  { recv_data Data } }  }
	{ recv_data_V_keep_V int 64 regular {axi_s 1 volatile  { recv_data Keep } }  }
	{ recv_data_V_strb_V int 64 regular {axi_s 1 volatile  { recv_data Strb } }  }
	{ recv_data_V_last_V int 1 regular {axi_s 1 volatile  { recv_data Last } }  }
	{ recv_data_V_dest_V int 8 regular {axi_s 1 volatile  { recv_data Dest } }  }
	{ wr_data_V_data_V int 512 regular {axi_s 1 volatile  { wr_data Data } }  }
	{ wr_data_V_keep_V int 64 regular {axi_s 1 volatile  { wr_data Keep } }  }
	{ wr_data_V_strb_V int 64 regular {axi_s 1 volatile  { wr_data Strb } }  }
	{ wr_data_V_last_V int 1 regular {axi_s 1 volatile  { wr_data Last } }  }
	{ wr_data_V_dest_V int 8 regular {axi_s 1 volatile  { wr_data Dest } }  }
	{ wr_cmd_V_data_V int 104 regular {axi_s 1 volatile  { wr_cmd Data } }  }
	{ wr_cmd_V_keep_V int 13 regular {axi_s 1 volatile  { wr_cmd Keep } }  }
	{ wr_cmd_V_strb_V int 13 regular {axi_s 1 volatile  { wr_cmd Strb } }  }
	{ wr_cmd_V_last_V int 1 regular {axi_s 1 volatile  { wr_cmd Last } }  }
	{ wr_cmd_V_dest_V int 8 regular {axi_s 1 volatile  { wr_cmd Dest } }  }
	{ wr_sts int 32 regular {axi_s 0 volatile  { wr_sts Data } }  }
	{ rx_V_data_V int 512 regular {axi_s 0 volatile  { rx Data } }  }
	{ rx_V_keep_V int 64 regular {axi_s 0 volatile  { rx Keep } }  }
	{ rx_V_strb_V int 64 regular {axi_s 0 volatile  { rx Strb } }  }
	{ rx_V_last_V int 1 regular {axi_s 0 volatile  { rx Last } }  }
	{ rx_V_dest_V int 8 regular {axi_s 0 volatile  { rx Dest } }  }
	{ tx_V_data_V int 512 regular {axi_s 1 volatile  { tx Data } }  }
	{ tx_V_keep_V int 64 regular {axi_s 1 volatile  { tx Keep } }  }
	{ tx_V_strb_V int 64 regular {axi_s 1 volatile  { tx Strb } }  }
	{ tx_V_last_V int 1 regular {axi_s 1 volatile  { tx Last } }  }
	{ tx_V_dest_V int 8 regular {axi_s 1 volatile  { tx Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rdma_sq", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "notif", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "send_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "send_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "send_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "send_data_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "recv_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "recv_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "recv_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "recv_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "recv_data_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_data_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_cmd_V_data_V", "interface" : "axis", "bitwidth" : 104, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_cmd_V_keep_V", "interface" : "axis", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_cmd_V_strb_V", "interface" : "axis", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_cmd_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_cmd_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_sts", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tx_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ rdma_sq_TDATA sc_in sc_lv 128 signal 0 } 
	{ notif_TDATA sc_out sc_lv 64 signal 1 } 
	{ send_data_TDATA sc_in sc_lv 512 signal 2 } 
	{ send_data_TKEEP sc_in sc_lv 64 signal 3 } 
	{ send_data_TSTRB sc_in sc_lv 64 signal 4 } 
	{ send_data_TLAST sc_in sc_lv 1 signal 5 } 
	{ send_data_TDEST sc_in sc_lv 8 signal 6 } 
	{ recv_data_TDATA sc_out sc_lv 512 signal 7 } 
	{ recv_data_TKEEP sc_out sc_lv 64 signal 8 } 
	{ recv_data_TSTRB sc_out sc_lv 64 signal 9 } 
	{ recv_data_TLAST sc_out sc_lv 1 signal 10 } 
	{ recv_data_TDEST sc_out sc_lv 8 signal 11 } 
	{ wr_data_TDATA sc_out sc_lv 512 signal 12 } 
	{ wr_data_TKEEP sc_out sc_lv 64 signal 13 } 
	{ wr_data_TSTRB sc_out sc_lv 64 signal 14 } 
	{ wr_data_TLAST sc_out sc_lv 1 signal 15 } 
	{ wr_data_TDEST sc_out sc_lv 8 signal 16 } 
	{ wr_cmd_TDATA sc_out sc_lv 104 signal 17 } 
	{ wr_cmd_TKEEP sc_out sc_lv 13 signal 18 } 
	{ wr_cmd_TSTRB sc_out sc_lv 13 signal 19 } 
	{ wr_cmd_TLAST sc_out sc_lv 1 signal 20 } 
	{ wr_cmd_TDEST sc_out sc_lv 8 signal 21 } 
	{ wr_sts_TDATA sc_in sc_lv 32 signal 22 } 
	{ rx_TDATA sc_in sc_lv 512 signal 23 } 
	{ rx_TKEEP sc_in sc_lv 64 signal 24 } 
	{ rx_TSTRB sc_in sc_lv 64 signal 25 } 
	{ rx_TLAST sc_in sc_lv 1 signal 26 } 
	{ rx_TDEST sc_in sc_lv 8 signal 27 } 
	{ tx_TDATA sc_out sc_lv 512 signal 28 } 
	{ tx_TKEEP sc_out sc_lv 64 signal 29 } 
	{ tx_TSTRB sc_out sc_lv 64 signal 30 } 
	{ tx_TLAST sc_out sc_lv 1 signal 31 } 
	{ tx_TDEST sc_out sc_lv 8 signal 32 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ rdma_sq_TVALID sc_in sc_logic 1 invld 0 } 
	{ rdma_sq_TREADY sc_out sc_logic 1 inacc 0 } 
	{ send_data_TVALID sc_in sc_logic 1 invld 6 } 
	{ send_data_TREADY sc_out sc_logic 1 inacc 6 } 
	{ tx_TVALID sc_out sc_logic 1 outvld 32 } 
	{ tx_TREADY sc_in sc_logic 1 outacc 32 } 
	{ notif_TVALID sc_out sc_logic 1 outvld 1 } 
	{ notif_TREADY sc_in sc_logic 1 outacc 1 } 
	{ recv_data_TVALID sc_out sc_logic 1 outvld 11 } 
	{ recv_data_TREADY sc_in sc_logic 1 outacc 11 } 
	{ wr_data_TVALID sc_out sc_logic 1 outvld 16 } 
	{ wr_data_TREADY sc_in sc_logic 1 outacc 16 } 
	{ wr_cmd_TVALID sc_out sc_logic 1 outvld 21 } 
	{ wr_cmd_TREADY sc_in sc_logic 1 outacc 21 } 
	{ rx_TVALID sc_in sc_logic 1 invld 27 } 
	{ rx_TREADY sc_out sc_logic 1 inacc 27 } 
	{ wr_sts_TVALID sc_in sc_logic 1 invld 22 } 
	{ wr_sts_TREADY sc_out sc_logic 1 inacc 22 } 
}
set NewPortList {[ 
	{ "name": "rdma_sq_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "rdma_sq", "role": "TDATA" }} , 
 	{ "name": "notif_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "notif", "role": "TDATA" }} , 
 	{ "name": "send_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "send_data_V_data_V", "role": "default" }} , 
 	{ "name": "send_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "send_data_V_keep_V", "role": "default" }} , 
 	{ "name": "send_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "send_data_V_strb_V", "role": "default" }} , 
 	{ "name": "send_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "send_data_V_last_V", "role": "default" }} , 
 	{ "name": "send_data_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "send_data_V_dest_V", "role": "default" }} , 
 	{ "name": "recv_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "recv_data_V_data_V", "role": "default" }} , 
 	{ "name": "recv_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "recv_data_V_keep_V", "role": "default" }} , 
 	{ "name": "recv_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "recv_data_V_strb_V", "role": "default" }} , 
 	{ "name": "recv_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "recv_data_V_last_V", "role": "default" }} , 
 	{ "name": "recv_data_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "recv_data_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "wr_data_V_data_V", "role": "default" }} , 
 	{ "name": "wr_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_data_V_keep_V", "role": "default" }} , 
 	{ "name": "wr_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_data_V_strb_V", "role": "default" }} , 
 	{ "name": "wr_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_data_V_last_V", "role": "default" }} , 
 	{ "name": "wr_data_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wr_data_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":104, "type": "signal", "bundle":{"name": "wr_cmd_V_data_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "wr_cmd_V_keep_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "wr_cmd_V_strb_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_cmd_V_last_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wr_cmd_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_sts_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wr_sts", "role": "TDATA" }} , 
 	{ "name": "rx_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "rx_V_data_V", "role": "default" }} , 
 	{ "name": "rx_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rx_V_keep_V", "role": "default" }} , 
 	{ "name": "rx_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rx_V_strb_V", "role": "default" }} , 
 	{ "name": "rx_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_V_last_V", "role": "default" }} , 
 	{ "name": "rx_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rx_V_dest_V", "role": "default" }} , 
 	{ "name": "tx_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "tx_V_data_V", "role": "default" }} , 
 	{ "name": "tx_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx_V_keep_V", "role": "default" }} , 
 	{ "name": "tx_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx_V_strb_V", "role": "default" }} , 
 	{ "name": "tx_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_V_last_V", "role": "default" }} , 
 	{ "name": "tx_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "rdma_sq_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rdma_sq", "role": "TVALID" }} , 
 	{ "name": "rdma_sq_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rdma_sq", "role": "TREADY" }} , 
 	{ "name": "send_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "send_data_V_dest_V", "role": "default" }} , 
 	{ "name": "send_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "send_data_V_dest_V", "role": "default" }} , 
 	{ "name": "tx_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tx_V_dest_V", "role": "default" }} , 
 	{ "name": "tx_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tx_V_dest_V", "role": "default" }} , 
 	{ "name": "notif_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "notif", "role": "TVALID" }} , 
 	{ "name": "notif_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "notif", "role": "TREADY" }} , 
 	{ "name": "recv_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "recv_data_V_dest_V", "role": "default" }} , 
 	{ "name": "recv_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "recv_data_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wr_data_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "wr_data_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wr_cmd_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "wr_cmd_V_dest_V", "role": "default" }} , 
 	{ "name": "rx_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rx_V_dest_V", "role": "default" }} , 
 	{ "name": "rx_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rx_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_sts_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "wr_sts", "role": "TVALID" }} , 
 	{ "name": "wr_sts_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "wr_sts", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "15", "41"],
		"CDFG" : "cyt_rdma",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "cyt_rdma_tx_U0"},
			{"ID" : "15", "Name" : "cyt_rdma_rx_U0"},
			{"ID" : "41", "Name" : "cyt_rdma_wr_sts_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "cyt_rdma_tx_U0"},
			{"ID" : "15", "Name" : "cyt_rdma_rx_U0"},
			{"ID" : "41", "Name" : "cyt_rdma_wr_sts_U0"}],
		"Port" : [
			{"Name" : "rdma_sq", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "rdma_sq"}]},
			{"Name" : "notif", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "notif"}]},
			{"Name" : "send_data_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "send_data_V_data_V"}]},
			{"Name" : "send_data_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "send_data_V_keep_V"}]},
			{"Name" : "send_data_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "send_data_V_strb_V"}]},
			{"Name" : "send_data_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "send_data_V_last_V"}]},
			{"Name" : "send_data_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "send_data_V_dest_V"}]},
			{"Name" : "recv_data_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "recv_data_V_data_V"}]},
			{"Name" : "recv_data_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "recv_data_V_keep_V"}]},
			{"Name" : "recv_data_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "recv_data_V_strb_V"}]},
			{"Name" : "recv_data_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "recv_data_V_last_V"}]},
			{"Name" : "recv_data_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "recv_data_V_dest_V"}]},
			{"Name" : "wr_data_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "wr_data_V_data_V"}]},
			{"Name" : "wr_data_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "wr_data_V_keep_V"}]},
			{"Name" : "wr_data_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "wr_data_V_strb_V"}]},
			{"Name" : "wr_data_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "wr_data_V_last_V"}]},
			{"Name" : "wr_data_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "wr_data_V_dest_V"}]},
			{"Name" : "wr_cmd_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_cmd",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "wr_cmd_V_data_V"}]},
			{"Name" : "wr_cmd_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_cmd",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "wr_cmd_V_keep_V"}]},
			{"Name" : "wr_cmd_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_cmd",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "wr_cmd_V_strb_V"}]},
			{"Name" : "wr_cmd_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_cmd",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "wr_cmd_V_last_V"}]},
			{"Name" : "wr_cmd_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_cmd",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "wr_cmd_V_dest_V"}]},
			{"Name" : "wr_sts", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "cyt_rdma_wr_sts_U0", "Port" : "wr_sts"}]},
			{"Name" : "rx_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "rx_V_data_V"}]},
			{"Name" : "rx_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "rx_V_keep_V"}]},
			{"Name" : "rx_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "rx_V_strb_V"}]},
			{"Name" : "rx_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "rx_V_last_V"}]},
			{"Name" : "rx_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "cyt_rdma_rx_U0", "Port" : "rx_V_dest_V"}]},
			{"Name" : "tx_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "tx_V_data_V"}]},
			{"Name" : "tx_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "tx_V_keep_V"}]},
			{"Name" : "tx_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "tx_V_strb_V"}]},
			{"Name" : "tx_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "tx_V_last_V"}]},
			{"Name" : "tx_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "tx_V_dest_V"}]},
			{"Name" : "txFsmState", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "txFsmState"}]},
			{"Name" : "command_len_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "command_len_V"}]},
			{"Name" : "command_vaddr_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "command_vaddr_V"}]},
			{"Name" : "command_host_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "command_host_V"}]},
			{"Name" : "command_qpn_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "command_qpn_V"}]},
			{"Name" : "command_opcode_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "cyt_rdma_tx_U0", "Port" : "command_opcode_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0", "Parent" : "0", "Child" : ["2", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
		"CDFG" : "cyt_rdma_tx",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rdma_sq", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rdma_sq_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_data_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197", "Port" : "send_data_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "send_data_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197", "Port" : "send_data_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "send_data_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197", "Port" : "send_data_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "send_data_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197", "Port" : "send_data_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "send_data_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197", "Port" : "send_data_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "tx_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx",
				"BlockSignal" : [
					{"Name" : "tx_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197", "Port" : "tx_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "tx_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197", "Port" : "tx_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "tx_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197", "Port" : "tx_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "tx_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197", "Port" : "tx_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "tx_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197", "Port" : "tx_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "txFsmState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "command_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "command_vaddr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "command_host_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "command_qpn_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "command_opcode_V", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_data_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data",
				"BlockSignal" : [
					{"Name" : "send_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_data_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data"},
			{"Name" : "send_data_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data"},
			{"Name" : "send_data_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data"},
			{"Name" : "send_data_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "send_data"},
			{"Name" : "tx_word_dest_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "tx_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx",
				"BlockSignal" : [
					{"Name" : "tx_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tx_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx"},
			{"Name" : "tx_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx"},
			{"Name" : "tx_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx"},
			{"Name" : "tx_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx"},
			{"Name" : "tmp_strb_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "i_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_65_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.regslice_both_rdma_sq_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.regslice_both_send_data_V_data_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.regslice_both_send_data_V_keep_V_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.regslice_both_send_data_V_strb_V_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.regslice_both_send_data_V_last_V_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.regslice_both_send_data_V_dest_V_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.regslice_both_tx_V_data_V_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.regslice_both_tx_V_keep_V_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.regslice_both_tx_V_strb_V_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.regslice_both_tx_V_last_V_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_tx_U0.regslice_both_tx_V_dest_V_U", "Parent" : "1"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0", "Parent" : "0", "Child" : ["16", "18", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "cyt_rdma_rx",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "notif", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "notif_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "recv_data_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "recv_data_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "recv_data_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "recv_data_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "recv_data_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "recv_data_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "recv_data_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "recv_data_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "recv_data_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "recv_data_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "wr_data_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "wr_data_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "wr_data_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "wr_data_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "wr_data_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "wr_data_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "wr_data_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "wr_data_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "wr_data_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "wr_data_V_dest_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "wr_cmd_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_cmd",
				"BlockSignal" : [
					{"Name" : "wr_cmd_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wr_cmd_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_cmd"},
			{"Name" : "wr_cmd_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_cmd"},
			{"Name" : "wr_cmd_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_cmd"},
			{"Name" : "wr_cmd_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_cmd"},
			{"Name" : "rx_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"BlockSignal" : [
					{"Name" : "rx_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "rx_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "18", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "rx_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "rx_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "rx_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "18", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "rx_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "rx_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "rx_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "18", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "rx_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "rx_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "rx_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "18", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "rx_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "rx_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "rx_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "18", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "rx_V_dest_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Parent" : "15", "Child" : ["17"],
		"CDFG" : "cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rx_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"BlockSignal" : [
					{"Name" : "rx_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx"},
			{"Name" : "rx_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx"},
			{"Name" : "rx_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx"},
			{"Name" : "rx_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx"},
			{"Name" : "recv_data_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"BlockSignal" : [
					{"Name" : "recv_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "recv_data_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data"},
			{"Name" : "recv_data_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data"},
			{"Name" : "recv_data_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data"},
			{"Name" : "recv_data_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Parent" : "15", "Child" : ["19"],
		"CDFG" : "cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rx_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"BlockSignal" : [
					{"Name" : "rx_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx"},
			{"Name" : "rx_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx"},
			{"Name" : "rx_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx"},
			{"Name" : "rx_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx"},
			{"Name" : "wr_data_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"BlockSignal" : [
					{"Name" : "wr_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wr_data_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data"},
			{"Name" : "wr_data_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data"},
			{"Name" : "wr_data_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data"},
			{"Name" : "wr_data_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_119_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_notif_U", "Parent" : "15"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_recv_data_V_data_V_U", "Parent" : "15"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_recv_data_V_keep_V_U", "Parent" : "15"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_recv_data_V_strb_V_U", "Parent" : "15"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_recv_data_V_last_V_U", "Parent" : "15"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_recv_data_V_dest_V_U", "Parent" : "15"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_wr_data_V_data_V_U", "Parent" : "15"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_wr_data_V_keep_V_U", "Parent" : "15"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_wr_data_V_strb_V_U", "Parent" : "15"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_wr_data_V_last_V_U", "Parent" : "15"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_wr_data_V_dest_V_U", "Parent" : "15"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_wr_cmd_V_data_V_U", "Parent" : "15"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_wr_cmd_V_keep_V_U", "Parent" : "15"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_wr_cmd_V_strb_V_U", "Parent" : "15"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_wr_cmd_V_last_V_U", "Parent" : "15"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_wr_cmd_V_dest_V_U", "Parent" : "15"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_rx_V_data_V_U", "Parent" : "15"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_rx_V_keep_V_U", "Parent" : "15"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_rx_V_strb_V_U", "Parent" : "15"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_rx_V_last_V_U", "Parent" : "15"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_rx_U0.regslice_both_rx_V_dest_V_U", "Parent" : "15"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_wr_sts_U0", "Parent" : "0", "Child" : ["42"],
		"CDFG" : "cyt_rdma_wr_sts",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "wr_sts", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wr_sts_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cyt_rdma_wr_sts_U0.regslice_both_wr_sts_U", "Parent" : "41"}]}


set ArgLastReadFirstWriteLatency {
	cyt_rdma {
		rdma_sq {Type I LastRead 0 FirstWrite -1}
		notif {Type O LastRead -1 FirstWrite 0}
		send_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_dest_V {Type I LastRead 0 FirstWrite -1}
		recv_data_V_data_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_keep_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_strb_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_last_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_dest_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_data_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_keep_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_strb_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_last_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_dest_V {Type O LastRead -1 FirstWrite 0}
		wr_cmd_V_data_V {Type O LastRead -1 FirstWrite 0}
		wr_cmd_V_keep_V {Type O LastRead -1 FirstWrite 0}
		wr_cmd_V_strb_V {Type O LastRead -1 FirstWrite 0}
		wr_cmd_V_last_V {Type O LastRead -1 FirstWrite 0}
		wr_cmd_V_dest_V {Type O LastRead -1 FirstWrite 0}
		wr_sts {Type I LastRead 0 FirstWrite -1}
		rx_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_V_dest_V {Type I LastRead 0 FirstWrite -1}
		tx_V_data_V {Type O LastRead 0 FirstWrite 0}
		tx_V_keep_V {Type O LastRead 0 FirstWrite 0}
		tx_V_strb_V {Type O LastRead 0 FirstWrite 0}
		tx_V_last_V {Type O LastRead 0 FirstWrite 0}
		tx_V_dest_V {Type O LastRead 0 FirstWrite 0}
		txFsmState {Type IO LastRead -1 FirstWrite -1}
		command_len_V {Type IO LastRead -1 FirstWrite -1}
		command_vaddr_V {Type IO LastRead -1 FirstWrite -1}
		command_host_V {Type IO LastRead -1 FirstWrite -1}
		command_qpn_V {Type IO LastRead -1 FirstWrite -1}
		command_opcode_V {Type IO LastRead -1 FirstWrite -1}}
	cyt_rdma_tx {
		rdma_sq {Type I LastRead 0 FirstWrite -1}
		send_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_dest_V {Type I LastRead 0 FirstWrite -1}
		tx_V_data_V {Type O LastRead 0 FirstWrite 0}
		tx_V_keep_V {Type O LastRead 0 FirstWrite 0}
		tx_V_strb_V {Type O LastRead 0 FirstWrite 0}
		tx_V_last_V {Type O LastRead 0 FirstWrite 0}
		tx_V_dest_V {Type O LastRead 0 FirstWrite 0}
		txFsmState {Type IO LastRead -1 FirstWrite -1}
		command_len_V {Type IO LastRead -1 FirstWrite -1}
		command_vaddr_V {Type IO LastRead -1 FirstWrite -1}
		command_host_V {Type IO LastRead -1 FirstWrite -1}
		command_qpn_V {Type IO LastRead -1 FirstWrite -1}
		command_opcode_V {Type IO LastRead -1 FirstWrite -1}}
	cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2 {
		send_data_V_data_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_keep_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_strb_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_last_V {Type I LastRead 0 FirstWrite -1}
		send_data_V_dest_V {Type I LastRead 0 FirstWrite -1}
		tx_word_dest_V {Type I LastRead 0 FirstWrite -1}
		tx_V_data_V {Type O LastRead -1 FirstWrite 0}
		tx_V_keep_V {Type O LastRead -1 FirstWrite 0}
		tx_V_strb_V {Type O LastRead -1 FirstWrite 0}
		tx_V_last_V {Type O LastRead -1 FirstWrite 0}
		tx_V_dest_V {Type O LastRead -1 FirstWrite 0}
		tmp_strb_V_out {Type O LastRead -1 FirstWrite 0}
		i_1_out {Type O LastRead -1 FirstWrite 0}}
	cyt_rdma_rx {
		notif {Type O LastRead -1 FirstWrite 0}
		recv_data_V_data_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_keep_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_strb_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_last_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_dest_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_data_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_keep_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_strb_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_last_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_dest_V {Type O LastRead -1 FirstWrite 0}
		wr_cmd_V_data_V {Type O LastRead -1 FirstWrite 0}
		wr_cmd_V_keep_V {Type O LastRead -1 FirstWrite 0}
		wr_cmd_V_strb_V {Type O LastRead -1 FirstWrite 0}
		wr_cmd_V_last_V {Type O LastRead -1 FirstWrite 0}
		wr_cmd_V_dest_V {Type O LastRead -1 FirstWrite 0}
		rx_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_V_dest_V {Type I LastRead 0 FirstWrite -1}}
	cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2 {
		rx_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_V_dest_V {Type I LastRead 0 FirstWrite -1}
		recv_data_V_data_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_keep_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_strb_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_last_V {Type O LastRead -1 FirstWrite 0}
		recv_data_V_dest_V {Type O LastRead -1 FirstWrite 0}}
	cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1 {
		rx_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_V_dest_V {Type I LastRead 0 FirstWrite -1}
		wr_data_V_data_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_keep_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_strb_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_last_V {Type O LastRead -1 FirstWrite 0}
		wr_data_V_dest_V {Type O LastRead -1 FirstWrite 0}}
	cyt_rdma_wr_sts {
		wr_sts {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rdma_sq { axis {  { rdma_sq_TDATA in_data 0 128 }  { rdma_sq_TVALID in_vld 0 1 }  { rdma_sq_TREADY in_acc 1 1 } } }
	notif { axis {  { notif_TDATA out_data 1 64 }  { notif_TVALID out_vld 1 1 }  { notif_TREADY out_acc 0 1 } } }
	send_data_V_data_V { axis {  { send_data_TDATA in_data 0 512 } } }
	send_data_V_keep_V { axis {  { send_data_TKEEP in_data 0 64 } } }
	send_data_V_strb_V { axis {  { send_data_TSTRB in_data 0 64 } } }
	send_data_V_last_V { axis {  { send_data_TLAST in_data 0 1 } } }
	send_data_V_dest_V { axis {  { send_data_TDEST in_data 0 8 }  { send_data_TVALID in_vld 0 1 }  { send_data_TREADY in_acc 1 1 } } }
	recv_data_V_data_V { axis {  { recv_data_TDATA out_data 1 512 } } }
	recv_data_V_keep_V { axis {  { recv_data_TKEEP out_data 1 64 } } }
	recv_data_V_strb_V { axis {  { recv_data_TSTRB out_data 1 64 } } }
	recv_data_V_last_V { axis {  { recv_data_TLAST out_data 1 1 } } }
	recv_data_V_dest_V { axis {  { recv_data_TDEST out_data 1 8 }  { recv_data_TVALID out_vld 1 1 }  { recv_data_TREADY out_acc 0 1 } } }
	wr_data_V_data_V { axis {  { wr_data_TDATA out_data 1 512 } } }
	wr_data_V_keep_V { axis {  { wr_data_TKEEP out_data 1 64 } } }
	wr_data_V_strb_V { axis {  { wr_data_TSTRB out_data 1 64 } } }
	wr_data_V_last_V { axis {  { wr_data_TLAST out_data 1 1 } } }
	wr_data_V_dest_V { axis {  { wr_data_TDEST out_data 1 8 }  { wr_data_TVALID out_vld 1 1 }  { wr_data_TREADY out_acc 0 1 } } }
	wr_cmd_V_data_V { axis {  { wr_cmd_TDATA out_data 1 104 } } }
	wr_cmd_V_keep_V { axis {  { wr_cmd_TKEEP out_data 1 13 } } }
	wr_cmd_V_strb_V { axis {  { wr_cmd_TSTRB out_data 1 13 } } }
	wr_cmd_V_last_V { axis {  { wr_cmd_TLAST out_data 1 1 } } }
	wr_cmd_V_dest_V { axis {  { wr_cmd_TDEST out_data 1 8 }  { wr_cmd_TVALID out_vld 1 1 }  { wr_cmd_TREADY out_acc 0 1 } } }
	wr_sts { axis {  { wr_sts_TDATA in_data 0 32 }  { wr_sts_TVALID in_vld 0 1 }  { wr_sts_TREADY in_acc 1 1 } } }
	rx_V_data_V { axis {  { rx_TDATA in_data 0 512 } } }
	rx_V_keep_V { axis {  { rx_TKEEP in_data 0 64 } } }
	rx_V_strb_V { axis {  { rx_TSTRB in_data 0 64 } } }
	rx_V_last_V { axis {  { rx_TLAST in_data 0 1 } } }
	rx_V_dest_V { axis {  { rx_TDEST in_data 0 8 }  { rx_TVALID in_vld 0 1 }  { rx_TREADY in_acc 1 1 } } }
	tx_V_data_V { axis {  { tx_TDATA out_data 1 512 } } }
	tx_V_keep_V { axis {  { tx_TKEEP out_data 1 64 } } }
	tx_V_strb_V { axis {  { tx_TSTRB out_data 1 64 } } }
	tx_V_last_V { axis {  { tx_TLAST out_data 1 1 } } }
	tx_V_dest_V { axis {  { tx_TDEST out_data 1 8 }  { tx_TVALID out_vld 1 1 }  { tx_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
