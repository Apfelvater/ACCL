set moduleName tcp_session_handler
set isTopModule 1
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
set C_modelName {tcp_session_handler}
set C_modelType { void 0 }
set C_modelArgList {
	{ ip int 32 regular {axi_slave 0}  }
	{ port_nr int 32 regular {axi_slave 0}  }
	{ close uint 1 regular {axi_slave 0}  }
	{ session_id int 32 regular {axi_slave 2}  }
	{ success int 1 regular {axi_slave 1}  }
	{ listen_port_V_data_V int 16 regular {axi_s 1 volatile  { listen_port Data } }  }
	{ listen_port_V_keep_V int 2 regular {axi_s 1 volatile  { listen_port Keep } }  }
	{ listen_port_V_strb_V int 2 regular {axi_s 1 volatile  { listen_port Strb } }  }
	{ listen_port_V_last_V int 1 regular {axi_s 1 volatile  { listen_port Last } }  }
	{ port_status_V_data_V int 8 regular {axi_s 0 volatile  { port_status Data } }  }
	{ port_status_V_keep_V int 1 regular {axi_s 0 volatile  { port_status Keep } }  }
	{ port_status_V_strb_V int 1 regular {axi_s 0 volatile  { port_status Strb } }  }
	{ port_status_V_last_V int 1 regular {axi_s 0 volatile  { port_status Last } }  }
	{ open_connection_V_data_V int 64 regular {axi_s 1 volatile  { open_connection Data } }  }
	{ open_connection_V_keep_V int 8 regular {axi_s 1 volatile  { open_connection Keep } }  }
	{ open_connection_V_strb_V int 8 regular {axi_s 1 volatile  { open_connection Strb } }  }
	{ open_connection_V_last_V int 1 regular {axi_s 1 volatile  { open_connection Last } }  }
	{ close_connection_V_data_V int 16 regular {axi_s 1 volatile  { close_connection Data } }  }
	{ close_connection_V_keep_V int 2 regular {axi_s 1 volatile  { close_connection Keep } }  }
	{ close_connection_V_strb_V int 2 regular {axi_s 1 volatile  { close_connection Strb } }  }
	{ close_connection_V_last_V int 1 regular {axi_s 1 volatile  { close_connection Last } }  }
	{ open_status_V_data_V int 128 regular {axi_s 0 volatile  { open_status Data } }  }
	{ open_status_V_keep_V int 16 regular {axi_s 0 volatile  { open_status Keep } }  }
	{ open_status_V_strb_V int 16 regular {axi_s 0 volatile  { open_status Strb } }  }
	{ open_status_V_last_V int 1 regular {axi_s 0 volatile  { open_status Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ip", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "port_nr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "close", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "session_id", "interface" : "axi_slave", "bundle":"control","type":"ap_ovld","bitwidth" : 32, "direction" : "READWRITE", "offset" : {"in":40, "out":48}, "offset_end" : {"in":47, "out":55}} , 
 	{ "Name" : "success", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 1, "direction" : "WRITEONLY", "offset" : {"out":56}, "offset_end" : {"out":63}} , 
 	{ "Name" : "listen_port_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "listen_port_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "listen_port_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "listen_port_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "port_status_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "port_status_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "port_status_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "port_status_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "open_connection_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "open_connection_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "open_connection_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "open_connection_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "close_connection_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "close_connection_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "close_connection_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "close_connection_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "open_status_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "open_status_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "open_status_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "open_status_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ listen_port_TDATA sc_out sc_lv 16 signal 5 } 
	{ listen_port_TVALID sc_out sc_logic 1 outvld 8 } 
	{ listen_port_TREADY sc_in sc_logic 1 outacc 8 } 
	{ listen_port_TKEEP sc_out sc_lv 2 signal 6 } 
	{ listen_port_TSTRB sc_out sc_lv 2 signal 7 } 
	{ listen_port_TLAST sc_out sc_lv 1 signal 8 } 
	{ port_status_TDATA sc_in sc_lv 8 signal 9 } 
	{ port_status_TVALID sc_in sc_logic 1 invld 12 } 
	{ port_status_TREADY sc_out sc_logic 1 inacc 12 } 
	{ port_status_TKEEP sc_in sc_lv 1 signal 10 } 
	{ port_status_TSTRB sc_in sc_lv 1 signal 11 } 
	{ port_status_TLAST sc_in sc_lv 1 signal 12 } 
	{ open_connection_TDATA sc_out sc_lv 64 signal 13 } 
	{ open_connection_TVALID sc_out sc_logic 1 outvld 16 } 
	{ open_connection_TREADY sc_in sc_logic 1 outacc 16 } 
	{ open_connection_TKEEP sc_out sc_lv 8 signal 14 } 
	{ open_connection_TSTRB sc_out sc_lv 8 signal 15 } 
	{ open_connection_TLAST sc_out sc_lv 1 signal 16 } 
	{ close_connection_TDATA sc_out sc_lv 16 signal 17 } 
	{ close_connection_TVALID sc_out sc_logic 1 outvld 20 } 
	{ close_connection_TREADY sc_in sc_logic 1 outacc 20 } 
	{ close_connection_TKEEP sc_out sc_lv 2 signal 18 } 
	{ close_connection_TSTRB sc_out sc_lv 2 signal 19 } 
	{ close_connection_TLAST sc_out sc_lv 1 signal 20 } 
	{ open_status_TDATA sc_in sc_lv 128 signal 21 } 
	{ open_status_TVALID sc_in sc_logic 1 invld 24 } 
	{ open_status_TREADY sc_out sc_logic 1 inacc 24 } 
	{ open_status_TKEEP sc_in sc_lv 16 signal 22 } 
	{ open_status_TSTRB sc_in sc_lv 16 signal 23 } 
	{ open_status_TLAST sc_in sc_lv 1 signal 24 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"ip","role":"data","value":"16"},{"name":"port_nr","role":"data","value":"24"},{"name":"close","role":"data","value":"32"},{"name":"session_id","role":"data","value":"40"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"session_id","role":"data","value":"48"}, {"name":"session_id","role":"valid","value":"52","valid_bit":"0"},{"name":"success","role":"data","value":"56"}, {"name":"success","role":"valid","value":"60","valid_bit":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "listen_port_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "listen_port_V_data_V", "role": "default" }} , 
 	{ "name": "listen_port_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "listen_port_V_last_V", "role": "default" }} , 
 	{ "name": "listen_port_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "listen_port_V_last_V", "role": "default" }} , 
 	{ "name": "listen_port_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "listen_port_V_keep_V", "role": "default" }} , 
 	{ "name": "listen_port_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "listen_port_V_strb_V", "role": "default" }} , 
 	{ "name": "listen_port_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "listen_port_V_last_V", "role": "default" }} , 
 	{ "name": "port_status_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "port_status_V_data_V", "role": "default" }} , 
 	{ "name": "port_status_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "port_status_V_last_V", "role": "default" }} , 
 	{ "name": "port_status_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "port_status_V_last_V", "role": "default" }} , 
 	{ "name": "port_status_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "port_status_V_keep_V", "role": "default" }} , 
 	{ "name": "port_status_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "port_status_V_strb_V", "role": "default" }} , 
 	{ "name": "port_status_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "port_status_V_last_V", "role": "default" }} , 
 	{ "name": "open_connection_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "open_connection_V_data_V", "role": "default" }} , 
 	{ "name": "open_connection_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "open_connection_V_last_V", "role": "default" }} , 
 	{ "name": "open_connection_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "open_connection_V_last_V", "role": "default" }} , 
 	{ "name": "open_connection_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "open_connection_V_keep_V", "role": "default" }} , 
 	{ "name": "open_connection_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "open_connection_V_strb_V", "role": "default" }} , 
 	{ "name": "open_connection_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "open_connection_V_last_V", "role": "default" }} , 
 	{ "name": "close_connection_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "close_connection_V_data_V", "role": "default" }} , 
 	{ "name": "close_connection_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "close_connection_V_last_V", "role": "default" }} , 
 	{ "name": "close_connection_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "close_connection_V_last_V", "role": "default" }} , 
 	{ "name": "close_connection_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "close_connection_V_keep_V", "role": "default" }} , 
 	{ "name": "close_connection_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "close_connection_V_strb_V", "role": "default" }} , 
 	{ "name": "close_connection_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "close_connection_V_last_V", "role": "default" }} , 
 	{ "name": "open_status_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "open_status_V_data_V", "role": "default" }} , 
 	{ "name": "open_status_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "open_status_V_last_V", "role": "default" }} , 
 	{ "name": "open_status_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "open_status_V_last_V", "role": "default" }} , 
 	{ "name": "open_status_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "open_status_V_keep_V", "role": "default" }} , 
 	{ "name": "open_status_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "open_status_V_strb_V", "role": "default" }} , 
 	{ "name": "open_status_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "open_status_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "tcp_session_handler",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ip", "Type" : "None", "Direction" : "I"},
			{"Name" : "port_nr", "Type" : "None", "Direction" : "I"},
			{"Name" : "close", "Type" : "None", "Direction" : "I"},
			{"Name" : "session_id", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "success", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "listen_port_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "listen_port",
				"BlockSignal" : [
					{"Name" : "listen_port_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "listen_port_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "listen_port"},
			{"Name" : "listen_port_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "listen_port"},
			{"Name" : "listen_port_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "listen_port"},
			{"Name" : "port_status_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "port_status",
				"BlockSignal" : [
					{"Name" : "port_status_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "port_status_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "port_status"},
			{"Name" : "port_status_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "port_status"},
			{"Name" : "port_status_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "port_status"},
			{"Name" : "open_connection_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "open_connection",
				"BlockSignal" : [
					{"Name" : "open_connection_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "open_connection_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "open_connection"},
			{"Name" : "open_connection_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "open_connection"},
			{"Name" : "open_connection_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "open_connection"},
			{"Name" : "close_connection_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "close_connection",
				"BlockSignal" : [
					{"Name" : "close_connection_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "close_connection_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "close_connection"},
			{"Name" : "close_connection_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "close_connection"},
			{"Name" : "close_connection_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "close_connection"},
			{"Name" : "open_status_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "open_status",
				"BlockSignal" : [
					{"Name" : "open_status_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "open_status_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "open_status"},
			{"Name" : "open_status_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "open_status"},
			{"Name" : "open_status_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "open_status"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_listen_port_V_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_listen_port_V_keep_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_listen_port_V_strb_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_listen_port_V_last_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_port_status_V_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_port_status_V_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_port_status_V_strb_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_port_status_V_last_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_open_connection_V_data_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_open_connection_V_keep_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_open_connection_V_strb_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_open_connection_V_last_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_close_connection_V_data_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_close_connection_V_keep_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_close_connection_V_strb_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_close_connection_V_last_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_open_status_V_data_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_open_status_V_keep_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_open_status_V_strb_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_open_status_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tcp_session_handler {
		ip {Type I LastRead 0 FirstWrite -1}
		port_nr {Type I LastRead 0 FirstWrite -1}
		close {Type I LastRead 0 FirstWrite -1}
		session_id {Type IO LastRead 0 FirstWrite 1}
		success {Type O LastRead -1 FirstWrite 0}
		listen_port_V_data_V {Type O LastRead -1 FirstWrite 0}
		listen_port_V_keep_V {Type O LastRead -1 FirstWrite 0}
		listen_port_V_strb_V {Type O LastRead -1 FirstWrite 0}
		listen_port_V_last_V {Type O LastRead -1 FirstWrite 0}
		port_status_V_data_V {Type I LastRead 0 FirstWrite -1}
		port_status_V_keep_V {Type I LastRead 0 FirstWrite -1}
		port_status_V_strb_V {Type I LastRead 0 FirstWrite -1}
		port_status_V_last_V {Type I LastRead 0 FirstWrite -1}
		open_connection_V_data_V {Type O LastRead -1 FirstWrite 1}
		open_connection_V_keep_V {Type O LastRead -1 FirstWrite 1}
		open_connection_V_strb_V {Type O LastRead -1 FirstWrite 1}
		open_connection_V_last_V {Type O LastRead -1 FirstWrite 1}
		close_connection_V_data_V {Type O LastRead -1 FirstWrite 0}
		close_connection_V_keep_V {Type O LastRead -1 FirstWrite 0}
		close_connection_V_strb_V {Type O LastRead -1 FirstWrite 0}
		close_connection_V_last_V {Type O LastRead -1 FirstWrite 0}
		open_status_V_data_V {Type I LastRead 1 FirstWrite -1}
		open_status_V_keep_V {Type I LastRead 1 FirstWrite -1}
		open_status_V_strb_V {Type I LastRead 1 FirstWrite -1}
		open_status_V_last_V {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	listen_port_V_data_V { axis {  { listen_port_TDATA out_data 1 16 } } }
	listen_port_V_keep_V { axis {  { listen_port_TKEEP out_data 1 2 } } }
	listen_port_V_strb_V { axis {  { listen_port_TSTRB out_data 1 2 } } }
	listen_port_V_last_V { axis {  { listen_port_TVALID out_vld 1 1 }  { listen_port_TREADY out_acc 0 1 }  { listen_port_TLAST out_data 1 1 } } }
	port_status_V_data_V { axis {  { port_status_TDATA in_data 0 8 } } }
	port_status_V_keep_V { axis {  { port_status_TKEEP in_data 0 1 } } }
	port_status_V_strb_V { axis {  { port_status_TSTRB in_data 0 1 } } }
	port_status_V_last_V { axis {  { port_status_TVALID in_vld 0 1 }  { port_status_TREADY in_acc 1 1 }  { port_status_TLAST in_data 0 1 } } }
	open_connection_V_data_V { axis {  { open_connection_TDATA out_data 1 64 } } }
	open_connection_V_keep_V { axis {  { open_connection_TKEEP out_data 1 8 } } }
	open_connection_V_strb_V { axis {  { open_connection_TSTRB out_data 1 8 } } }
	open_connection_V_last_V { axis {  { open_connection_TVALID out_vld 1 1 }  { open_connection_TREADY out_acc 0 1 }  { open_connection_TLAST out_data 1 1 } } }
	close_connection_V_data_V { axis {  { close_connection_TDATA out_data 1 16 } } }
	close_connection_V_keep_V { axis {  { close_connection_TKEEP out_data 1 2 } } }
	close_connection_V_strb_V { axis {  { close_connection_TSTRB out_data 1 2 } } }
	close_connection_V_last_V { axis {  { close_connection_TVALID out_vld 1 1 }  { close_connection_TREADY out_acc 0 1 }  { close_connection_TLAST out_data 1 1 } } }
	open_status_V_data_V { axis {  { open_status_TDATA in_data 0 128 } } }
	open_status_V_keep_V { axis {  { open_status_TKEEP in_data 0 16 } } }
	open_status_V_strb_V { axis {  { open_status_TSTRB in_data 0 16 } } }
	open_status_V_last_V { axis {  { open_status_TVALID in_vld 0 1 }  { open_status_TREADY in_acc 1 1 }  { open_status_TLAST in_data 0 1 } } }
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
