# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ip { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
port_nr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
close { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
session_id_i { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
session_id_o { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 48
	offset_end 55
}
success { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 56
	offset_end 63
}
}
dict set axilite_register_dict control $port_control


