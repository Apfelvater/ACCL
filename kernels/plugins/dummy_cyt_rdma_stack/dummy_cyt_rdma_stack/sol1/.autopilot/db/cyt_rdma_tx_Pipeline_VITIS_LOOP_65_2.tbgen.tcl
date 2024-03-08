set moduleName cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ send_data_V_data_V int 512 regular {axi_s 0 volatile  { send_data Data } }  }
	{ send_data_V_keep_V int 64 regular {axi_s 0 volatile  { send_data Keep } }  }
	{ send_data_V_strb_V int 64 regular {axi_s 0 volatile  { send_data Strb } }  }
	{ send_data_V_last_V int 1 regular {axi_s 0 volatile  { send_data Last } }  }
	{ send_data_V_dest_V int 8 regular {axi_s 0 volatile  { send_data Dest } }  }
	{ tx_word_dest_V int 8 regular  }
	{ tx_V_data_V int 512 regular {axi_s 1 volatile  { tx Data } }  }
	{ tx_V_keep_V int 64 regular {axi_s 1 volatile  { tx Keep } }  }
	{ tx_V_strb_V int 64 regular {axi_s 1 volatile  { tx Strb } }  }
	{ tx_V_last_V int 1 regular {axi_s 1 volatile  { tx Last } }  }
	{ tx_V_dest_V int 8 regular {axi_s 1 volatile  { tx Dest } }  }
	{ tmp_strb_V_out int 64 regular {pointer 1}  }
	{ i_1_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "send_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "send_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "send_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "send_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "send_data_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tx_word_dest_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tx_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_strb_V_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "i_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ send_data_TVALID sc_in sc_logic 1 invld 0 } 
	{ tx_TREADY sc_in sc_logic 1 outacc 6 } 
	{ send_data_TDATA sc_in sc_lv 512 signal 0 } 
	{ send_data_TREADY sc_out sc_logic 1 inacc 4 } 
	{ send_data_TKEEP sc_in sc_lv 64 signal 1 } 
	{ send_data_TSTRB sc_in sc_lv 64 signal 2 } 
	{ send_data_TLAST sc_in sc_lv 1 signal 3 } 
	{ send_data_TDEST sc_in sc_lv 8 signal 4 } 
	{ tx_word_dest_V sc_in sc_lv 8 signal 5 } 
	{ tx_TDATA sc_out sc_lv 512 signal 6 } 
	{ tx_TVALID sc_out sc_logic 1 outvld 10 } 
	{ tx_TKEEP sc_out sc_lv 64 signal 7 } 
	{ tx_TSTRB sc_out sc_lv 64 signal 8 } 
	{ tx_TLAST sc_out sc_lv 1 signal 9 } 
	{ tx_TDEST sc_out sc_lv 8 signal 10 } 
	{ tmp_strb_V_out sc_out sc_lv 64 signal 11 } 
	{ tmp_strb_V_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ i_1_out sc_out sc_lv 32 signal 12 } 
	{ i_1_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "send_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "send_data_V_data_V", "role": "default" }} , 
 	{ "name": "tx_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tx_V_data_V", "role": "default" }} , 
 	{ "name": "send_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "send_data_V_data_V", "role": "default" }} , 
 	{ "name": "send_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "send_data_V_dest_V", "role": "default" }} , 
 	{ "name": "send_data_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "send_data_V_keep_V", "role": "default" }} , 
 	{ "name": "send_data_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "send_data_V_strb_V", "role": "default" }} , 
 	{ "name": "send_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "send_data_V_last_V", "role": "default" }} , 
 	{ "name": "send_data_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "send_data_V_dest_V", "role": "default" }} , 
 	{ "name": "tx_word_dest_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx_word_dest_V", "role": "default" }} , 
 	{ "name": "tx_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "tx_V_data_V", "role": "default" }} , 
 	{ "name": "tx_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tx_V_dest_V", "role": "default" }} , 
 	{ "name": "tx_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx_V_keep_V", "role": "default" }} , 
 	{ "name": "tx_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx_V_strb_V", "role": "default" }} , 
 	{ "name": "tx_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_V_last_V", "role": "default" }} , 
 	{ "name": "tx_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx_V_dest_V", "role": "default" }} , 
 	{ "name": "tmp_strb_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_strb_V_out", "role": "default" }} , 
 	{ "name": "tmp_strb_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp_strb_V_out", "role": "ap_vld" }} , 
 	{ "name": "i_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i_1_out", "role": "default" }} , 
 	{ "name": "i_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "i_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		i_1_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	send_data_V_data_V { axis {  { send_data_TVALID in_vld 0 1 }  { send_data_TDATA in_data 0 512 } } }
	send_data_V_keep_V { axis {  { send_data_TKEEP in_data 0 64 } } }
	send_data_V_strb_V { axis {  { send_data_TSTRB in_data 0 64 } } }
	send_data_V_last_V { axis {  { send_data_TLAST in_data 0 1 } } }
	send_data_V_dest_V { axis {  { send_data_TREADY in_acc 1 1 }  { send_data_TDEST in_data 0 8 } } }
	tx_word_dest_V { ap_none {  { tx_word_dest_V in_data 0 8 } } }
	tx_V_data_V { axis {  { tx_TREADY out_acc 0 1 }  { tx_TDATA out_data 1 512 } } }
	tx_V_keep_V { axis {  { tx_TKEEP out_data 1 64 } } }
	tx_V_strb_V { axis {  { tx_TSTRB out_data 1 64 } } }
	tx_V_last_V { axis {  { tx_TLAST out_data 1 1 } } }
	tx_V_dest_V { axis {  { tx_TVALID out_vld 1 1 }  { tx_TDEST out_data 1 8 } } }
	tmp_strb_V_out { ap_vld {  { tmp_strb_V_out out_data 1 64 }  { tmp_strb_V_out_ap_vld out_vld 1 1 } } }
	i_1_out { ap_vld {  { i_1_out out_data 1 32 }  { i_1_out_ap_vld out_vld 1 1 } } }
}
