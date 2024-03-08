set moduleName cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2
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
set C_modelName {cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ rx_V_data_V int 512 regular {axi_s 0 volatile  { rx Data } }  }
	{ rx_V_keep_V int 64 regular {axi_s 0 volatile  { rx Keep } }  }
	{ rx_V_strb_V int 64 regular {axi_s 0 volatile  { rx Strb } }  }
	{ rx_V_last_V int 1 regular {axi_s 0 volatile  { rx Last } }  }
	{ rx_V_dest_V int 8 regular {axi_s 0 volatile  { rx Dest } }  }
	{ recv_data_V_data_V int 512 regular {axi_s 1 volatile  { recv_data Data } }  }
	{ recv_data_V_keep_V int 64 regular {axi_s 1 volatile  { recv_data Keep } }  }
	{ recv_data_V_strb_V int 64 regular {axi_s 1 volatile  { recv_data Strb } }  }
	{ recv_data_V_last_V int 1 regular {axi_s 1 volatile  { recv_data Last } }  }
	{ recv_data_V_dest_V int 8 regular {axi_s 1 volatile  { recv_data Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rx_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rx_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "recv_data_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "recv_data_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "recv_data_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "recv_data_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "recv_data_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rx_TVALID sc_in sc_logic 1 invld 0 } 
	{ recv_data_TREADY sc_in sc_logic 1 outacc 5 } 
	{ rx_TDATA sc_in sc_lv 512 signal 0 } 
	{ rx_TREADY sc_out sc_logic 1 inacc 4 } 
	{ rx_TKEEP sc_in sc_lv 64 signal 1 } 
	{ rx_TSTRB sc_in sc_lv 64 signal 2 } 
	{ rx_TLAST sc_in sc_lv 1 signal 3 } 
	{ rx_TDEST sc_in sc_lv 8 signal 4 } 
	{ recv_data_TDATA sc_out sc_lv 512 signal 5 } 
	{ recv_data_TVALID sc_out sc_logic 1 outvld 9 } 
	{ recv_data_TKEEP sc_out sc_lv 64 signal 6 } 
	{ recv_data_TSTRB sc_out sc_lv 64 signal 7 } 
	{ recv_data_TLAST sc_out sc_lv 1 signal 8 } 
	{ recv_data_TDEST sc_out sc_lv 8 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rx_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rx_V_data_V", "role": "default" }} , 
 	{ "name": "recv_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "recv_data_V_data_V", "role": "default" }} , 
 	{ "name": "rx_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "rx_V_data_V", "role": "default" }} , 
 	{ "name": "rx_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rx_V_dest_V", "role": "default" }} , 
 	{ "name": "rx_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rx_V_keep_V", "role": "default" }} , 
 	{ "name": "rx_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rx_V_strb_V", "role": "default" }} , 
 	{ "name": "rx_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_V_last_V", "role": "default" }} , 
 	{ "name": "rx_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rx_V_dest_V", "role": "default" }} , 
 	{ "name": "recv_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "recv_data_V_data_V", "role": "default" }} , 
 	{ "name": "recv_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "recv_data_V_dest_V", "role": "default" }} , 
 	{ "name": "recv_data_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "recv_data_V_keep_V", "role": "default" }} , 
 	{ "name": "recv_data_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "recv_data_V_strb_V", "role": "default" }} , 
 	{ "name": "recv_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "recv_data_V_last_V", "role": "default" }} , 
 	{ "name": "recv_data_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "recv_data_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		recv_data_V_dest_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rx_V_data_V { axis {  { rx_TVALID in_vld 0 1 }  { rx_TDATA in_data 0 512 } } }
	rx_V_keep_V { axis {  { rx_TKEEP in_data 0 64 } } }
	rx_V_strb_V { axis {  { rx_TSTRB in_data 0 64 } } }
	rx_V_last_V { axis {  { rx_TLAST in_data 0 1 } } }
	rx_V_dest_V { axis {  { rx_TREADY in_acc 1 1 }  { rx_TDEST in_data 0 8 } } }
	recv_data_V_data_V { axis {  { recv_data_TREADY out_acc 0 1 }  { recv_data_TDATA out_data 1 512 } } }
	recv_data_V_keep_V { axis {  { recv_data_TKEEP out_data 1 64 } } }
	recv_data_V_strb_V { axis {  { recv_data_TSTRB out_data 1 64 } } }
	recv_data_V_last_V { axis {  { recv_data_TLAST out_data 1 1 } } }
	recv_data_V_dest_V { axis {  { recv_data_TVALID out_vld 1 1 }  { recv_data_TDEST out_data 1 8 } } }
}
