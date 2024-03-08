set moduleName cyt_rdma_rx
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {cyt_rdma_rx}
set C_modelType { void 0 }
set C_modelArgList {
	{ notif int 64 regular {axi_s 1 volatile  { notif Data } }  }
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
	{ rx_V_data_V int 512 regular {axi_s 0 volatile  { rx Data } }  }
	{ rx_V_keep_V int 64 regular {axi_s 0 volatile  { rx Keep } }  }
	{ rx_V_strb_V int 64 regular {axi_s 0 volatile  { rx Strb } }  }
	{ rx_V_last_V int 1 regular {axi_s 0 volatile  { rx Last } }  }
	{ rx_V_dest_V int 8 regular {axi_s 0 volatile  { rx Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "notif", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
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
 	{ "Name" : "rx_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ notif_TDATA sc_out sc_lv 64 signal 0 } 
	{ notif_TVALID sc_out sc_logic 1 outvld 0 } 
	{ notif_TREADY sc_in sc_logic 1 outacc 0 } 
	{ recv_data_TDATA sc_out sc_lv 512 signal 1 } 
	{ recv_data_TVALID sc_out sc_logic 1 outvld 5 } 
	{ recv_data_TREADY sc_in sc_logic 1 outacc 5 } 
	{ recv_data_TKEEP sc_out sc_lv 64 signal 2 } 
	{ recv_data_TSTRB sc_out sc_lv 64 signal 3 } 
	{ recv_data_TLAST sc_out sc_lv 1 signal 4 } 
	{ recv_data_TDEST sc_out sc_lv 8 signal 5 } 
	{ wr_data_TDATA sc_out sc_lv 512 signal 6 } 
	{ wr_data_TVALID sc_out sc_logic 1 outvld 10 } 
	{ wr_data_TREADY sc_in sc_logic 1 outacc 10 } 
	{ wr_data_TKEEP sc_out sc_lv 64 signal 7 } 
	{ wr_data_TSTRB sc_out sc_lv 64 signal 8 } 
	{ wr_data_TLAST sc_out sc_lv 1 signal 9 } 
	{ wr_data_TDEST sc_out sc_lv 8 signal 10 } 
	{ wr_cmd_TDATA sc_out sc_lv 104 signal 11 } 
	{ wr_cmd_TVALID sc_out sc_logic 1 outvld 15 } 
	{ wr_cmd_TREADY sc_in sc_logic 1 outacc 15 } 
	{ wr_cmd_TKEEP sc_out sc_lv 13 signal 12 } 
	{ wr_cmd_TSTRB sc_out sc_lv 13 signal 13 } 
	{ wr_cmd_TLAST sc_out sc_lv 1 signal 14 } 
	{ wr_cmd_TDEST sc_out sc_lv 8 signal 15 } 
	{ rx_TDATA sc_in sc_lv 512 signal 16 } 
	{ rx_TVALID sc_in sc_logic 1 invld 20 } 
	{ rx_TREADY sc_out sc_logic 1 inacc 20 } 
	{ rx_TKEEP sc_in sc_lv 64 signal 17 } 
	{ rx_TSTRB sc_in sc_lv 64 signal 18 } 
	{ rx_TLAST sc_in sc_lv 1 signal 19 } 
	{ rx_TDEST sc_in sc_lv 8 signal 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "notif_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "notif", "role": "TDATA" }} , 
 	{ "name": "notif_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "notif", "role": "TVALID" }} , 
 	{ "name": "notif_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "notif", "role": "TREADY" }} , 
 	{ "name": "recv_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "recv_data_V_data_V", "role": "default" }} , 
 	{ "name": "recv_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "recv_data_V_dest_V", "role": "default" }} , 
 	{ "name": "recv_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "recv_data_V_dest_V", "role": "default" }} , 
 	{ "name": "recv_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "recv_data_V_keep_V", "role": "default" }} , 
 	{ "name": "recv_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "recv_data_V_strb_V", "role": "default" }} , 
 	{ "name": "recv_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "recv_data_V_last_V", "role": "default" }} , 
 	{ "name": "recv_data_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "recv_data_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "wr_data_V_data_V", "role": "default" }} , 
 	{ "name": "wr_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wr_data_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "wr_data_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_data_V_keep_V", "role": "default" }} , 
 	{ "name": "wr_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_data_V_strb_V", "role": "default" }} , 
 	{ "name": "wr_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_data_V_last_V", "role": "default" }} , 
 	{ "name": "wr_data_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wr_data_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":104, "type": "signal", "bundle":{"name": "wr_cmd_V_data_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wr_cmd_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "wr_cmd_V_dest_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "wr_cmd_V_keep_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "wr_cmd_V_strb_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_cmd_V_last_V", "role": "default" }} , 
 	{ "name": "wr_cmd_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wr_cmd_V_dest_V", "role": "default" }} , 
 	{ "name": "rx_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "rx_V_data_V", "role": "default" }} , 
 	{ "name": "rx_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rx_V_dest_V", "role": "default" }} , 
 	{ "name": "rx_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rx_V_dest_V", "role": "default" }} , 
 	{ "name": "rx_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rx_V_keep_V", "role": "default" }} , 
 	{ "name": "rx_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rx_V_strb_V", "role": "default" }} , 
 	{ "name": "rx_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_V_last_V", "role": "default" }} , 
 	{ "name": "rx_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rx_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
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
					{"ID" : "1", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "recv_data_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "recv_data_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "recv_data_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "recv_data_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "recv_data_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "recv_data_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "recv_data_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "recv_data_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "recv_data",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "recv_data_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "wr_data_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "wr_data_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "wr_data_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "wr_data_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "wr_data_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "wr_data_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "wr_data_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "wr_data_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "wr_data_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "wr_data",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "wr_data_V_dest_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
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
					{"ID" : "1", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "rx_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "rx_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "rx_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "rx_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "rx_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "rx_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "rx_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "rx_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "rx_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "rx_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "rx_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]},
			{"Name" : "rx_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Port" : "rx_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Port" : "rx_V_dest_V", "Inst_start_state" : "4", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_notif_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_recv_data_V_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_recv_data_V_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_recv_data_V_strb_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_recv_data_V_last_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_recv_data_V_dest_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_data_V_data_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_data_V_keep_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_data_V_strb_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_data_V_last_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_data_V_dest_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_cmd_V_data_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_cmd_V_keep_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_cmd_V_strb_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_cmd_V_last_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_cmd_V_dest_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_V_data_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_V_keep_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_V_strb_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_V_last_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		wr_data_V_dest_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	notif { axis {  { notif_TDATA out_data 1 64 }  { notif_TVALID out_vld 1 1 }  { notif_TREADY out_acc 0 1 } } }
	recv_data_V_data_V { axis {  { recv_data_TDATA out_data 1 512 } } }
	recv_data_V_keep_V { axis {  { recv_data_TKEEP out_data 1 64 } } }
	recv_data_V_strb_V { axis {  { recv_data_TSTRB out_data 1 64 } } }
	recv_data_V_last_V { axis {  { recv_data_TLAST out_data 1 1 } } }
	recv_data_V_dest_V { axis {  { recv_data_TVALID out_vld 1 1 }  { recv_data_TREADY out_acc 0 1 }  { recv_data_TDEST out_data 1 8 } } }
	wr_data_V_data_V { axis {  { wr_data_TDATA out_data 1 512 } } }
	wr_data_V_keep_V { axis {  { wr_data_TKEEP out_data 1 64 } } }
	wr_data_V_strb_V { axis {  { wr_data_TSTRB out_data 1 64 } } }
	wr_data_V_last_V { axis {  { wr_data_TLAST out_data 1 1 } } }
	wr_data_V_dest_V { axis {  { wr_data_TVALID out_vld 1 1 }  { wr_data_TREADY out_acc 0 1 }  { wr_data_TDEST out_data 1 8 } } }
	wr_cmd_V_data_V { axis {  { wr_cmd_TDATA out_data 1 104 } } }
	wr_cmd_V_keep_V { axis {  { wr_cmd_TKEEP out_data 1 13 } } }
	wr_cmd_V_strb_V { axis {  { wr_cmd_TSTRB out_data 1 13 } } }
	wr_cmd_V_last_V { axis {  { wr_cmd_TLAST out_data 1 1 } } }
	wr_cmd_V_dest_V { axis {  { wr_cmd_TVALID out_vld 1 1 }  { wr_cmd_TREADY out_acc 0 1 }  { wr_cmd_TDEST out_data 1 8 } } }
	rx_V_data_V { axis {  { rx_TDATA in_data 0 512 } } }
	rx_V_keep_V { axis {  { rx_TKEEP in_data 0 64 } } }
	rx_V_strb_V { axis {  { rx_TSTRB in_data 0 64 } } }
	rx_V_last_V { axis {  { rx_TLAST in_data 0 1 } } }
	rx_V_dest_V { axis {  { rx_TVALID in_vld 0 1 }  { rx_TREADY in_acc 1 1 }  { rx_TDEST in_data 0 8 } } }
}
