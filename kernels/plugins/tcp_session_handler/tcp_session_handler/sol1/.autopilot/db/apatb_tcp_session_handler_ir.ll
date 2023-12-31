; ModuleID = '/scratch/hpc-lco-kenter/nleerman/ACCL/kernels/plugins/tcp_session_handler/tcp_session_handler/sol1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<8>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<8>, 0, 0, 0>" = type { %"struct.ap_uint<8>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<64>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<64>, 0, 0, 0>" = type { %"struct.ap_uint<64>", %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<16>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<16>, 0, 0, 0>" = type { %"struct.ap_uint<16>", %"struct.ap_uint<2>", %"struct.ap_uint<2>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<128>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<128>, 0, 0, 0>" = type { %"struct.ap_uint<128>", %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<128>" = type { %"struct.ap_int_base<128, false>" }
%"struct.ap_int_base<128, false>" = type { %"struct.ssdm_int<128, false>" }
%"struct.ssdm_int<128, false>" = type { i128 }

; Function Attrs: noinline
define void @apatb_tcp_session_handler_ir(i32 %ip, i32 %port_nr, i1 zeroext %close, i32* noalias nocapture nonnull %session_id, i1* noalias nocapture nonnull %success, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(8) %listen_port, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(7) %port_status, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(16) %open_connection, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(8) %close_connection, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(32) %open_status) local_unnamed_addr #0 {
entry:
  %session_id_copy = alloca i32, align 512
  %success_copy = alloca i1, align 512
  %listen_port_copy.data = alloca i16
  %listen_port_copy.keep = alloca i2
  %listen_port_copy.strb = alloca i2
  %listen_port_copy.last = alloca i1
  %port_status_copy.data = alloca i8
  %port_status_copy.keep = alloca i1
  %port_status_copy.strb = alloca i1
  %port_status_copy.last = alloca i1
  %open_connection_copy.data = alloca i64
  %open_connection_copy.keep = alloca i8
  %open_connection_copy.strb = alloca i8
  %open_connection_copy.last = alloca i1
  %close_connection_copy.data = alloca i16
  %close_connection_copy.keep = alloca i2
  %close_connection_copy.strb = alloca i2
  %close_connection_copy.last = alloca i1
  %open_status_copy.data = alloca i128
  %open_status_copy.keep = alloca i16
  %open_status_copy.strb = alloca i16
  %open_status_copy.last = alloca i1
  call fastcc void @copy_in(i32* nonnull %session_id, i32* nonnull align 512 %session_id_copy, i1* nonnull %success, i1* nonnull align 512 %success_copy, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* nonnull %listen_port, i16* %listen_port_copy.data, i2* %listen_port_copy.keep, i2* %listen_port_copy.strb, i1* %listen_port_copy.last, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* nonnull %port_status, i8* %port_status_copy.data, i1* %port_status_copy.keep, i1* %port_status_copy.strb, i1* %port_status_copy.last, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* nonnull %open_connection, i64* %open_connection_copy.data, i8* %open_connection_copy.keep, i8* %open_connection_copy.strb, i1* %open_connection_copy.last, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* nonnull %close_connection, i16* %close_connection_copy.data, i2* %close_connection_copy.keep, i2* %close_connection_copy.strb, i1* %close_connection_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* nonnull %open_status, i128* %open_status_copy.data, i16* %open_status_copy.keep, i16* %open_status_copy.strb, i1* %open_status_copy.last)
  call void @apatb_tcp_session_handler_hw(i32 %ip, i32 %port_nr, i1 %close, i32* %session_id_copy, i1* %success_copy, i16* %listen_port_copy.data, i2* %listen_port_copy.keep, i2* %listen_port_copy.strb, i1* %listen_port_copy.last, i8* %port_status_copy.data, i1* %port_status_copy.keep, i1* %port_status_copy.strb, i1* %port_status_copy.last, i64* %open_connection_copy.data, i8* %open_connection_copy.keep, i8* %open_connection_copy.strb, i1* %open_connection_copy.last, i16* %close_connection_copy.data, i2* %close_connection_copy.keep, i2* %close_connection_copy.strb, i1* %close_connection_copy.last, i128* %open_status_copy.data, i16* %open_status_copy.keep, i16* %open_status_copy.strb, i1* %open_status_copy.last)
  call void @copy_back(i32* %session_id, i32* %session_id_copy, i1* %success, i1* %success_copy, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %listen_port, i16* %listen_port_copy.data, i2* %listen_port_copy.keep, i2* %listen_port_copy.strb, i1* %listen_port_copy.last, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %port_status, i8* %port_status_copy.data, i1* %port_status_copy.keep, i1* %port_status_copy.strb, i1* %port_status_copy.last, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %open_connection, i64* %open_connection_copy.data, i8* %open_connection_copy.keep, i8* %open_connection_copy.strb, i1* %open_connection_copy.last, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %close_connection, i16* %close_connection_copy.data, i2* %close_connection_copy.keep, i2* %close_connection_copy.strb, i1* %close_connection_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %open_status, i128* %open_status_copy.data, i16* %open_status_copy.keep, i16* %open_status_copy.strb, i1* %open_status_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(i32* noalias readonly, i32* noalias align 512, i1* noalias readonly, i1* noalias align 512, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.0" %_V_data_V15, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.1" %_V_keep_V26, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.0" %_V_data_V2, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.1" %_V_keep_V3, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.3" %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* noalias, i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.0" %_V_data_V159, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.1" %_V_keep_V2610, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.3" %_V_last_V4812) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %1, i32* %0)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %3, i1* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"(i16* %_V_data_V, i2* %_V_keep_V, i2* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>.15"(i64* %_V_data_V15, i8* %_V_keep_V26, i8* %_V_strb_V37, i1* %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"(i16* %_V_data_V2, i2* %_V_keep_V3, i2* %_V_strb_V4, i1* %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"(i128* %_V_data_V159, i16* %_V_keep_V2610, i16* %_V_strb_V3711, i1* %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512, i1* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i1* %0, null
  %3 = icmp eq i1* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i1* %1 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_7(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_7(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<8>"* %8 to i8*
  call void @fpga_fifo_push_1(i8* %9, i8* %_V_data_V)
  %10 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %11 = bitcast %"struct.ap_uint<1>"* %10 to i1*
  %12 = bitcast i1* %11 to i8*
  %13 = bitcast i1* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %12, i8* %13)
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %15 = bitcast %"struct.ap_uint<1>"* %14 to i1*
  %16 = bitcast i1* %15 to i8*
  %17 = bitcast i1* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %19 = bitcast %"struct.ap_uint<1>"* %18 to i1*
  %20 = bitcast i1* %19 to i8*
  %21 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* nonnull align 512 %0, i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i8
  %5 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i64* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_8(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i64* %3 to i8*
  %9 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_pop_8(i8* %8, i8* %9)
  %10 = load volatile i64, i64* %3
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_uint<64>"* %11 to i64*
  store i64 %10, i64* %12
  call void @fpga_fifo_pop_1(i8* %5, i8* %_V_keep_V)
  %13 = load volatile i8, i8* %5
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %15 = bitcast %"struct.ap_uint<8>"* %14 to i8*
  store i8 %13, i8* %15
  call void @fpga_fifo_pop_1(i8* %4, i8* %_V_strb_V)
  %16 = load volatile i8, i8* %4
  %17 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %18 = bitcast %"struct.ap_uint<8>"* %17 to i8*
  store i8 %16, i8* %18
  %19 = bitcast i1* %2 to i8*
  %20 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %19, i8* %20)
  %21 = bitcast i1* %2 to i8*
  %22 = load i8, i8* %21
  %23 = trunc i8 %22 to i1
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %"struct.ap_uint<1>"* %24 to i1*
  store i1 %23, i1* %25
  %26 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1 to i8*
  %27 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %26, i8* %27)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"(i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"(i128* %_V_data_V, i16* %_V_keep_V, i16* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"(i128* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<128>"* %8 to i128*
  %10 = bitcast i128* %9 to i8*
  %11 = bitcast i128* %_V_data_V to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<16>"* %12 to i16*
  %14 = bitcast i16* %13 to i8*
  %15 = bitcast i16* %_V_keep_V to i8*
  call void @fpga_fifo_push_2(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<16>"* %16 to i16*
  %18 = bitcast i16* %17 to i8*
  %19 = bitcast i16* %_V_strb_V to i8*
  call void @fpga_fifo_push_2(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(i32* noalias, i32* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.0" %_V_data_V15, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.1" %_V_keep_V26, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.0" %_V_data_V2, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.1" %_V_keep_V3, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.3" %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* noalias, i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.0" %_V_data_V159, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.1" %_V_keep_V2610, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.3" %_V_last_V4812) unnamed_addr #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %0, i32* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %2, i1* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.45"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %4, i16* %_V_data_V, i2* %_V_keep_V, i2* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.26"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %5, i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %6, i64* %_V_data_V15, i8* %_V_keep_V26, i8* %_V_strb_V37, i1* %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.45"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %7, i16* %_V_data_V2, i2* %_V_keep_V3, i2* %_V_strb_V4, i1* %_V_last_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %8, i128* %_V_data_V159, i16* %_V_keep_V2610, i16* %_V_strb_V3711, i1* %_V_last_V4812)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>.7"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* nonnull align 512 %0, i128* %_V_data_V, i16* %_V_keep_V, i16* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>.7"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i128* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"
  %2 = alloca i128
  %3 = alloca i16
  %4 = alloca i16
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i128* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_16(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i128* %2 to i8*
  %9 = bitcast i128* %_V_data_V to i8*
  call void @fpga_fifo_pop_16(i8* %8, i8* %9)
  %10 = load volatile i128, i128* %2
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_uint<128>"* %11 to i128*
  store i128 %10, i128* %12
  %13 = bitcast i16* %4 to i8*
  %14 = bitcast i16* %_V_keep_V to i8*
  call void @fpga_fifo_pop_2(i8* %13, i8* %14)
  %15 = load volatile i16, i16* %4
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %17 = bitcast %"struct.ap_uint<16>"* %16 to i16*
  store i16 %15, i16* %17
  %18 = bitcast i16* %3 to i8*
  %19 = bitcast i16* %_V_strb_V to i8*
  call void @fpga_fifo_pop_2(i8* %18, i8* %19)
  %20 = load volatile i16, i16* %3
  %21 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %22 = bitcast %"struct.ap_uint<16>"* %21 to i16*
  store i16 %20, i16* %22
  %23 = bitcast i1* %5 to i8*
  %24 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i1* %5 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i1
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  store i1 %27, i1* %29
  %30 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %1 to i8*
  %31 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %30, i8* %31)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>.15"(i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>.18"(i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>.18"(i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<64>"* %8 to i64*
  %10 = bitcast i64* %9 to i8*
  %11 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<8>"* %12 to i8*
  call void @fpga_fifo_push_1(i8* %13, i8* %_V_keep_V)
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %15 = bitcast %"struct.ap_uint<8>"* %14 to i8*
  call void @fpga_fifo_push_1(i8* %15, i8* %_V_strb_V)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %17 = bitcast %"struct.ap_uint<1>"* %16 to i1*
  %18 = bitcast i1* %17 to i8*
  %19 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.26"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.29"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* nonnull align 512 %0, i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.29"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = call i1 @fpga_fifo_not_empty_1(i8* %_V_data_V)
  br i1 %6, label %push, label %ret

push:                                             ; preds = %empty
  call void @fpga_fifo_pop_1(i8* %5, i8* %_V_data_V)
  %7 = load volatile i8, i8* %5
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<8>"* %8 to i8*
  store i8 %7, i8* %9
  %10 = bitcast i1* %4 to i8*
  %11 = bitcast i1* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %10, i8* %11)
  %12 = bitcast i1* %4 to i8*
  %13 = load i8, i8* %12
  %14 = trunc i8 %13 to i1
  %15 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %16 = bitcast %"struct.ap_uint<1>"* %15 to i1*
  store i1 %14, i1* %16
  %17 = bitcast i1* %3 to i8*
  %18 = bitcast i1* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %17, i8* %18)
  %19 = bitcast i1* %3 to i8*
  %20 = load i8, i8* %19
  %21 = trunc i8 %20 to i1
  %22 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %23 = bitcast %"struct.ap_uint<1>"* %22 to i1*
  store i1 %21, i1* %23
  %24 = bitcast i1* %2 to i8*
  %25 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %24, i8* %25)
  %26 = bitcast i1* %2 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i1
  %29 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %30 = bitcast %"struct.ap_uint<1>"* %29 to i1*
  store i1 %28, i1* %30
  %31 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1 to i8*
  %32 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_7(i8* %31, i8* %32)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"(i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.40"(i16* %_V_data_V, i2* %_V_keep_V, i2* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.40"(i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<16>"* %8 to i16*
  %10 = bitcast i16* %9 to i8*
  %11 = bitcast i16* %_V_data_V to i8*
  call void @fpga_fifo_push_2(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<2>"* %12 to i2*
  %14 = bitcast i2* %13 to i8*
  %15 = bitcast i2* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<2>"* %16 to i2*
  %18 = bitcast i2* %17 to i8*
  %19 = bitcast i2* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.45"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.48"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* nonnull align 512 %0, i16* %_V_data_V, i2* %_V_keep_V, i2* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.48"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"
  %2 = alloca i16
  %3 = alloca i1
  %4 = alloca i2
  %5 = alloca i2
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i16* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_2(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i16* %2 to i8*
  %9 = bitcast i16* %_V_data_V to i8*
  call void @fpga_fifo_pop_2(i8* %8, i8* %9)
  %10 = load volatile i16, i16* %2
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_uint<16>"* %11 to i16*
  store i16 %10, i16* %12
  %13 = bitcast i2* %5 to i8*
  %14 = bitcast i2* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %13, i8* %14)
  %15 = bitcast i2* %5 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i2
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %19 = bitcast %"struct.ap_uint<2>"* %18 to i2*
  store i2 %17, i2* %19
  %20 = bitcast i2* %4 to i8*
  %21 = bitcast i2* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %20, i8* %21)
  %22 = bitcast i2* %4 to i8*
  %23 = load i8, i8* %22
  %24 = trunc i8 %23 to i2
  %25 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %26 = bitcast %"struct.ap_uint<2>"* %25 to i2*
  store i2 %24, i2* %26
  %27 = bitcast i1* %3 to i8*
  %28 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %27, i8* %28)
  %29 = bitcast i1* %3 to i8*
  %30 = load i8, i8* %29
  %31 = trunc i8 %30 to i1
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  store i1 %31, i1* %33
  %34 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1 to i8*
  %35 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %34, i8* %35)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_tcp_session_handler_hw(i32, i32, i1, i32*, i1*, i16*, i2*, i2*, i1*, i8*, i1*, i1*, i1*, i64*, i8*, i8*, i1*, i16*, i2*, i2*, i1*, i128*, i16*, i16*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(i32* noalias, i32* noalias readonly align 512, i1* noalias, i1* noalias readonly align 512, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="7.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* noalias, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.0" %_V_data_V15, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.1" %_V_keep_V26, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="9.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.0" %_V_data_V2, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.1" %_V_keep_V3, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="20.3" %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* noalias, i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.0" %_V_data_V159, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.1" %_V_keep_V2610, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.3" %_V_last_V4812) unnamed_addr #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %0, i32* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %2, i1* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.45"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %4, i16* %_V_data_V, i2* %_V_keep_V, i2* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.26"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %5, i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %6, i64* %_V_data_V15, i8* %_V_keep_V26, i8* %_V_strb_V37, i1* %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.45"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %7, i16* %_V_data_V2, i2* %_V_keep_V3, i2* %_V_strb_V4, i1* %_V_last_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>.4"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %8, i128* %_V_data_V159, i16* %_V_keep_V2610, i16* %_V_strb_V3711, i1* %_V_last_V4812)
  ret void
}

define void @tcp_session_handler_hw_stub_wrapper(i32, i32, i1, i32*, i1*, i16*, i2*, i2*, i1*, i8*, i1*, i1*, i1*, i64*, i8*, i8*, i1*, i16*, i2*, i2*, i1*, i128*, i16*, i16*, i1*) #6 {
entry:
  %25 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"
  %26 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  %27 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"
  %28 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"
  %29 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"
  call void @copy_out(i32* null, i32* %3, i1* null, i1* %4, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %25, i16* %5, i2* %6, i2* %7, i1* %8, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %26, i8* %9, i1* %10, i1* %11, i1* %12, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %27, i64* %13, i8* %14, i8* %15, i1* %16, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %28, i16* %17, i2* %18, i2* %19, i1* %20, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %29, i128* %21, i16* %22, i16* %23, i1* %24)
  call void @tcp_session_handler_hw_stub(i32 %0, i32 %1, i1 %2, i32* %3, i1* %4, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %25, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %26, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %27, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %28, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %29)
  call void @copy_in(i32* null, i32* %3, i1* null, i1* %4, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %25, i16* %5, i2* %6, i2* %7, i1* %8, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %26, i8* %9, i1* %10, i1* %11, i1* %12, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"* %27, i64* %13, i8* %14, i8* %15, i1* %16, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %28, i16* %17, i2* %18, i2* %19, i1* %20, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"* %29, i128* %21, i16* %22, i16* %23, i1* %24)
  ret void
}

declare void @tcp_session_handler_hw_stub(i32, i32, i1, i32*, i1*, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0>, 0>"*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_7(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_7(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_7(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
