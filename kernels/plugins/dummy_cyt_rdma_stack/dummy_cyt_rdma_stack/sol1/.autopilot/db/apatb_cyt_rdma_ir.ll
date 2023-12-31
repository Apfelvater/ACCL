; ModuleID = '/scratch/hpc-lco-kenter/nleerman/ACCL/kernels/plugins/dummy_cyt_rdma_stack/dummy_cyt_rdma_stack/sol1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<rdma_req_t, 0>" = type { %struct.rdma_req_t }
%struct.rdma_req_t = type { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"class.hls::stream<eth_notification, 0>" = type { %struct.eth_notification }
%struct.eth_notification = type { %"struct.ap_uint<2>", %"struct.ap_uint<16>", %"struct.ap_uint<23>" }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_uint<23>" = type { %"struct.ap_int_base<23, false>" }
%"struct.ap_int_base<23, false>" = type { %"struct.ssdm_int<23, false>" }
%"struct.ssdm_int<23, false>" = type { i23 }
%"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>" = type { %"struct.hls::axis<ap_uint<104>, 0, 0, 8>" }
%"struct.hls::axis<ap_uint<104>, 0, 0, 8>" = type { %"struct.ap_uint<104>", %"struct.ap_uint<13>", %"struct.ap_uint<13>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<8>" }
%"struct.ap_uint<104>" = type { %"struct.ap_int_base<104, false>" }
%"struct.ap_int_base<104, false>" = type { %"struct.ssdm_int<104, false>" }
%"struct.ssdm_int<104, false>" = type { i104 }
%"struct.ap_uint<13>" = type { %"struct.ap_int_base<13, false>" }
%"struct.ap_int_base<13, false>" = type { %"struct.ssdm_int<13, false>" }
%"struct.ssdm_int<13, false>" = type { i13 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"class.hls::stream<ap_uint<32>, 0>" = type { %"struct.ap_uint<32>" }
%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>" = type { %"struct.hls::axis<ap_uint<512>, 0, 0, 8>" }
%"struct.hls::axis<ap_uint<512>, 0, 0, 8>" = type { %"struct.ap_uint<512>", %"struct.ap_uint<64>", %"struct.ap_uint<64>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<8>" }
%"struct.ap_uint<512>" = type { %"struct.ap_int_base<512, false>" }
%"struct.ap_int_base<512, false>" = type { %"struct.ssdm_int<512, false>" }
%"struct.ssdm_int<512, false>" = type { i512 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_cyt_rdma_ir(%"class.hls::stream<rdma_req_t, 0>"* noalias nocapture nonnull dereferenceable(24) %rdma_sq, %"class.hls::stream<eth_notification, 0>"* noalias nocapture nonnull dereferenceable(8) %notif, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias nonnull dereferenceable(128) %send_data, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias nonnull dereferenceable(128) %recv_data, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias nonnull dereferenceable(128) %wr_data, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* noalias nonnull dereferenceable(32) %wr_cmd, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %wr_sts, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias nonnull dereferenceable(128) %rx, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias nonnull dereferenceable(128) %tx) local_unnamed_addr #1 {
entry:
  %rdma_sq_copy = alloca i128, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i128* %rdma_sq_copy, i32 0) ]
  %notif_copy = alloca %"class.hls::stream<eth_notification, 0>", align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(%"class.hls::stream<eth_notification, 0>"* %notif_copy, i32 0) ]
  %send_data_copy.data = alloca i512
  %send_data_copy.keep = alloca i64
  %send_data_copy.strb = alloca i64
  %send_data_copy.last = alloca i1
  %send_data_copy.dest = alloca i8
  %recv_data_copy.data = alloca i512
  %recv_data_copy.keep = alloca i64
  %recv_data_copy.strb = alloca i64
  %recv_data_copy.last = alloca i1
  %recv_data_copy.dest = alloca i8
  %wr_data_copy.data = alloca i512
  %wr_data_copy.keep = alloca i64
  %wr_data_copy.strb = alloca i64
  %wr_data_copy.last = alloca i1
  %wr_data_copy.dest = alloca i8
  %wr_cmd_copy.data = alloca i104
  %wr_cmd_copy.keep = alloca i13
  %wr_cmd_copy.strb = alloca i13
  %wr_cmd_copy.last = alloca i1
  %wr_cmd_copy.dest = alloca i8
  %wr_sts_copy = alloca %"class.hls::stream<ap_uint<32>, 0>", align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(%"class.hls::stream<ap_uint<32>, 0>"* %wr_sts_copy, i32 0) ]
  %rx_copy.data = alloca i512
  %rx_copy.keep = alloca i64
  %rx_copy.strb = alloca i64
  %rx_copy.last = alloca i1
  %rx_copy.dest = alloca i8
  %tx_copy.data = alloca i512
  %tx_copy.keep = alloca i64
  %tx_copy.strb = alloca i64
  %tx_copy.last = alloca i1
  %tx_copy.dest = alloca i8
  call fastcc void @copy_in(%"class.hls::stream<rdma_req_t, 0>"* nonnull %rdma_sq, i128* nonnull align 512 %rdma_sq_copy, %"class.hls::stream<eth_notification, 0>"* nonnull %notif, %"class.hls::stream<eth_notification, 0>"* nonnull align 512 %notif_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* nonnull %send_data, i512* %send_data_copy.data, i64* %send_data_copy.keep, i64* %send_data_copy.strb, i1* %send_data_copy.last, i8* %send_data_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* nonnull %recv_data, i512* %recv_data_copy.data, i64* %recv_data_copy.keep, i64* %recv_data_copy.strb, i1* %recv_data_copy.last, i8* %recv_data_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* nonnull %wr_data, i512* %wr_data_copy.data, i64* %wr_data_copy.keep, i64* %wr_data_copy.strb, i1* %wr_data_copy.last, i8* %wr_data_copy.dest, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* nonnull %wr_cmd, i104* %wr_cmd_copy.data, i13* %wr_cmd_copy.keep, i13* %wr_cmd_copy.strb, i1* %wr_cmd_copy.last, i8* %wr_cmd_copy.dest, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %wr_sts, %"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %wr_sts_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* nonnull %rx, i512* %rx_copy.data, i64* %rx_copy.keep, i64* %rx_copy.strb, i1* %rx_copy.last, i8* %rx_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* nonnull %tx, i512* %tx_copy.data, i64* %tx_copy.keep, i64* %tx_copy.strb, i1* %tx_copy.last, i8* %tx_copy.dest)
  call void @apatb_cyt_rdma_hw(i128* %rdma_sq_copy, %"class.hls::stream<eth_notification, 0>"* %notif_copy, i512* %send_data_copy.data, i64* %send_data_copy.keep, i64* %send_data_copy.strb, i1* %send_data_copy.last, i8* %send_data_copy.dest, i512* %recv_data_copy.data, i64* %recv_data_copy.keep, i64* %recv_data_copy.strb, i1* %recv_data_copy.last, i8* %recv_data_copy.dest, i512* %wr_data_copy.data, i64* %wr_data_copy.keep, i64* %wr_data_copy.strb, i1* %wr_data_copy.last, i8* %wr_data_copy.dest, i104* %wr_cmd_copy.data, i13* %wr_cmd_copy.keep, i13* %wr_cmd_copy.strb, i1* %wr_cmd_copy.last, i8* %wr_cmd_copy.dest, %"class.hls::stream<ap_uint<32>, 0>"* %wr_sts_copy, i512* %rx_copy.data, i64* %rx_copy.keep, i64* %rx_copy.strb, i1* %rx_copy.last, i8* %rx_copy.dest, i512* %tx_copy.data, i64* %tx_copy.keep, i64* %tx_copy.strb, i1* %tx_copy.last, i8* %tx_copy.dest)
  call void @copy_back(%"class.hls::stream<rdma_req_t, 0>"* %rdma_sq, i128* %rdma_sq_copy, %"class.hls::stream<eth_notification, 0>"* %notif, %"class.hls::stream<eth_notification, 0>"* %notif_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %send_data, i512* %send_data_copy.data, i64* %send_data_copy.keep, i64* %send_data_copy.strb, i1* %send_data_copy.last, i8* %send_data_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %recv_data, i512* %recv_data_copy.data, i64* %recv_data_copy.keep, i64* %recv_data_copy.strb, i1* %recv_data_copy.last, i8* %recv_data_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %wr_data, i512* %wr_data_copy.data, i64* %wr_data_copy.keep, i64* %wr_data_copy.strb, i1* %wr_data_copy.last, i8* %wr_data_copy.dest, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %wr_cmd, i104* %wr_cmd_copy.data, i13* %wr_cmd_copy.keep, i13* %wr_cmd_copy.strb, i1* %wr_cmd_copy.last, i8* %wr_cmd_copy.dest, %"class.hls::stream<ap_uint<32>, 0>"* %wr_sts, %"class.hls::stream<ap_uint<32>, 0>"* %wr_sts_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %rx, i512* %rx_copy.data, i64* %rx_copy.keep, i64* %rx_copy.strb, i1* %rx_copy.last, i8* %rx_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %tx, i512* %tx_copy.data, i64* %tx_copy.keep, i64* %tx_copy.strb, i1* %tx_copy.last, i8* %tx_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<rdma_req_t, 0>"* noalias, i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<eth_notification, 0>"* noalias, %"class.hls::stream<eth_notification, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.3" %_V_last_V4, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.4" %_V_dest_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.0" %_V_data_V16, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.1" %_V_keep_V27, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.2" %_V_strb_V38, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.3" %_V_last_V49, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.4" %_V_dest_V510, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* noalias, i104* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.0" %_V_data_V2, i13* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.1" %_V_keep_V3, i13* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.3" %_V_last_V5, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.4" %_V_dest_V6, %"class.hls::stream<ap_uint<32>, 0>"* noalias, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V1611, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V2712, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V3813, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V4914, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.4" %_V_dest_V51015, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.0" %_V_data_V27, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.1" %_V_keep_V38, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.2" %_V_strb_V49, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.3" %_V_last_V510, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.4" %_V_dest_V611) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<rdma_req_t, 0>"(i128* align 512 %1, %"class.hls::stream<rdma_req_t, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<eth_notification, 0>"(%"class.hls::stream<eth_notification, 0>"* align 512 %3, %"class.hls::stream<eth_notification, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>.138"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i8* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>.138"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, i8* %_V_dest_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>.138"(i512* %_V_data_V16, i64* %_V_keep_V27, i64* %_V_strb_V38, i1* %_V_last_V49, i8* %_V_dest_V510, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"(i104* %_V_data_V2, i13* %_V_keep_V3, i13* %_V_strb_V4, i1* %_V_last_V5, i8* %_V_dest_V6, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* align 512 %9, %"class.hls::stream<ap_uint<32>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>.138"(i512* %_V_data_V1611, i64* %_V_keep_V2712, i64* %_V_strb_V3813, i1* %_V_last_V4914, i8* %_V_dest_V51015, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>.138"(i512* %_V_data_V27, i64* %_V_keep_V38, i64* %_V_strb_V49, i1* %_V_last_V510, i8* %_V_dest_V611, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %11)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<rdma_req_t, 0>"(i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rdma_req_t, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i128* %0, null
  %3 = icmp eq %"class.hls::stream<rdma_req_t, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<rdma_req_t, 0>"(i128* nonnull align 512 %0, %"class.hls::stream<rdma_req_t, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<rdma_req_t, 0>"(i128* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<rdma_req_t, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<rdma_req_t, 0>"
  %3 = alloca i128
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<rdma_req_t, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_24(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<rdma_req_t, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<rdma_req_t, 0>"* %1 to i8*
  call void @fpga_fifo_pop_24(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<rdma_req_t, 0>", %"class.hls::stream<rdma_req_t, 0>"* %2
  %9 = call i128 @"_llvm.fpga.pack.bits.i128.s_class.hls::stream<rdma_req_t, 0>s"(%"class.hls::stream<rdma_req_t, 0>" %8)
  store i128 %9, i128* %3
  %10 = bitcast i128* %3 to i8*
  %11 = bitcast i128* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<eth_notification, 0>"(%"class.hls::stream<eth_notification, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<eth_notification, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<eth_notification, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<eth_notification, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<eth_notification, 0>"(%"class.hls::stream<eth_notification, 0>"* nonnull align 512 %0, %"class.hls::stream<eth_notification, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<eth_notification, 0>"(%"class.hls::stream<eth_notification, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<eth_notification, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<eth_notification, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<eth_notification, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<eth_notification, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<eth_notification, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<eth_notification, 0>", %"class.hls::stream<eth_notification, 0>"* %2
  %8 = bitcast %"class.hls::stream<eth_notification, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<eth_notification, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"(i104* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i13* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i13* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"(i104* %_V_data_V, i13* %_V_keep_V, i13* %_V_strb_V, i1* %_V_last_V, i8* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"(i104* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i13* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i13* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<104>"* %8 to i104*
  %10 = bitcast i104* %9 to i8*
  %11 = bitcast i104* %_V_data_V to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<13>"* %12 to i13*
  %14 = bitcast i13* %13 to i8*
  %15 = bitcast i13* %_V_keep_V to i8*
  call void @fpga_fifo_push_2(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<13>"* %16 to i13*
  %18 = bitcast i13* %17 to i8*
  %19 = bitcast i13* %_V_strb_V to i8*
  call void @fpga_fifo_push_2(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 6
  %25 = bitcast %"struct.ap_uint<8>"* %24 to i8*
  call void @fpga_fifo_push_1(i8* %25, i8* %_V_dest_V)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<32>, 0>", %"class.hls::stream<ap_uint<32>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<rdma_req_t, 0>"* noalias, i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<eth_notification, 0>"* noalias, %"class.hls::stream<eth_notification, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.3" %_V_last_V4, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.4" %_V_dest_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.0" %_V_data_V16, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.1" %_V_keep_V27, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.2" %_V_strb_V38, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.3" %_V_last_V49, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.4" %_V_dest_V510, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* noalias, i104* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.0" %_V_data_V2, i13* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.1" %_V_keep_V3, i13* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.3" %_V_last_V5, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.4" %_V_dest_V6, %"class.hls::stream<ap_uint<32>, 0>"* noalias, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V1611, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V2712, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V3813, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V4914, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.4" %_V_dest_V51015, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.0" %_V_data_V27, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.1" %_V_keep_V38, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.2" %_V_strb_V49, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.3" %_V_last_V510, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.4" %_V_dest_V611) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<rdma_req_t, 0>.126"(%"class.hls::stream<rdma_req_t, 0>"* %0, i128* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<eth_notification, 0>"(%"class.hls::stream<eth_notification, 0>"* %2, %"class.hls::stream<eth_notification, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %4, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i8* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %5, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, i8* %_V_dest_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %6, i512* %_V_data_V16, i64* %_V_keep_V27, i64* %_V_strb_V38, i1* %_V_last_V49, i8* %_V_dest_V510)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>.171"(%"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %7, i104* %_V_data_V2, i13* %_V_keep_V3, i13* %_V_strb_V4, i1* %_V_last_V5, i8* %_V_dest_V6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %8, %"class.hls::stream<ap_uint<32>, 0>"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %10, i512* %_V_data_V1611, i64* %_V_keep_V2712, i64* %_V_strb_V3813, i1* %_V_last_V4914, i8* %_V_dest_V51015)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %11, i512* %_V_data_V27, i64* %_V_keep_V38, i64* %_V_strb_V49, i1* %_V_last_V510, i8* %_V_dest_V611)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<rdma_req_t, 0>.126"(%"class.hls::stream<rdma_req_t, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<rdma_req_t, 0>"* %0, null
  %3 = icmp eq i128* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<rdma_req_t, 0>.129"(%"class.hls::stream<rdma_req_t, 0>"* nonnull %0, i128* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<rdma_req_t, 0>.129"(%"class.hls::stream<rdma_req_t, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i128* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i128
  %3 = alloca %"class.hls::stream<rdma_req_t, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i128* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i128* %2 to i8*
  %7 = bitcast i128* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile i128, i128* %2
  %9 = call { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<rdma_req_t, 0>s.i128"(i128 %8)
  %newret = extractvalue { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } %9, 0
  %oldret1 = insertvalue %struct.rdma_req_t undef, %"struct.ap_uint<64>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } %9, 1
  %oldret3 = insertvalue %struct.rdma_req_t %oldret1, %"struct.ap_uint<32>" %newret2, 1
  %newret4 = extractvalue { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } %9, 2
  %oldret5 = insertvalue %struct.rdma_req_t %oldret3, %"struct.ap_uint<8>" %newret4, 2
  %newret6 = extractvalue { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } %9, 3
  %oldret7 = insertvalue %struct.rdma_req_t %oldret5, %"struct.ap_uint<16>" %newret6, 3
  %newret8 = extractvalue { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } %9, 4
  %oldret9 = insertvalue %struct.rdma_req_t %oldret7, %"struct.ap_uint<8>" %newret8, 4
  %oldret = insertvalue %"class.hls::stream<rdma_req_t, 0>" undef, %struct.rdma_req_t %oldret9, 0
  store %"class.hls::stream<rdma_req_t, 0>" %oldret, %"class.hls::stream<rdma_req_t, 0>"* %3
  %10 = bitcast %"class.hls::stream<rdma_req_t, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<rdma_req_t, 0>"* %0 to i8*
  call void @fpga_fifo_push_24(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<rdma_req_t, 0>s.i128"(i128 %A) #6 {
  %1 = trunc i128 %A to i64
  %.0 = insertvalue %"struct.ssdm_int<64, false>" undef, i64 %1, 0
  %.01 = insertvalue %"struct.ap_int_base<64, false>" undef, %"struct.ssdm_int<64, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_uint<64>" undef, %"struct.ap_int_base<64, false>" %.01, 0
  %2 = lshr i128 %A, 64
  %3 = trunc i128 %2 to i32
  %.04 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %3, 0
  %.05 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %.05, 0
  %4 = lshr i128 %A, 96
  %5 = trunc i128 %4 to i8
  %.07 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %5, 0
  %.08 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.07, 0
  %.09 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.08, 0
  %6 = lshr i128 %A, 104
  %7 = trunc i128 %6 to i16
  %.010 = insertvalue %"struct.ssdm_int<16, false>" undef, i16 %7, 0
  %.011 = insertvalue %"struct.ap_int_base<16, false>" undef, %"struct.ssdm_int<16, false>" %.010, 0
  %.012 = insertvalue %"struct.ap_uint<16>" undef, %"struct.ap_int_base<16, false>" %.011, 0
  %8 = lshr i128 %A, 120
  %9 = trunc i128 %8 to i8
  %.013 = insertvalue %"struct.ssdm_int<8, false>" undef, i8 %9, 0
  %.014 = insertvalue %"struct.ap_int_base<8, false>" undef, %"struct.ssdm_int<8, false>" %.013, 0
  %.015 = insertvalue %"struct.ap_uint<8>" undef, %"struct.ap_int_base<8, false>" %.014, 0
  %newret = insertvalue { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } undef, %"struct.ap_uint<64>" %.02, 0
  %newret2 = insertvalue { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } %newret, %"struct.ap_uint<32>" %.06, 1
  %newret4 = insertvalue { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } %newret2, %"struct.ap_uint<8>" %.09, 2
  %newret6 = insertvalue { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } %newret4, %"struct.ap_uint<16>" %.012, 3
  %newret8 = insertvalue { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } %newret6, %"struct.ap_uint<8>" %.015, 4
  ret { %"struct.ap_uint<64>", %"struct.ap_uint<32>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<8>" } %newret8
}

; Function Attrs: alwaysinline nounwind readnone
define internal i128 @"_llvm.fpga.pack.bits.i128.s_class.hls::stream<rdma_req_t, 0>s"(%"class.hls::stream<rdma_req_t, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<rdma_req_t, 0>" %A, 0
  %A.0.0 = extractvalue %struct.rdma_req_t %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_uint<64>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_int_base<64, false>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<64, false>" %A.0.0.0.0, 0
  %1 = zext i64 %A.0.0.0.0.0 to i128
  %A.0.1 = extractvalue %struct.rdma_req_t %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_uint<32>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.1.0.0, 0
  %2 = zext i32 %A.0.1.0.0.0 to i128
  %3 = shl i128 %2, 64
  %4 = or i128 %3, %1
  %A.0.2 = extractvalue %struct.rdma_req_t %A.0, 2
  %A.0.2.0 = extractvalue %"struct.ap_uint<8>" %A.0.2, 0
  %A.0.2.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.2.0, 0
  %A.0.2.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.2.0.0, 0
  %5 = zext i8 %A.0.2.0.0.0 to i128
  %6 = shl i128 %5, 96
  %7 = or i128 %4, %6
  %A.0.3 = extractvalue %struct.rdma_req_t %A.0, 3
  %A.0.3.0 = extractvalue %"struct.ap_uint<16>" %A.0.3, 0
  %A.0.3.0.0 = extractvalue %"struct.ap_int_base<16, false>" %A.0.3.0, 0
  %A.0.3.0.0.0 = extractvalue %"struct.ssdm_int<16, false>" %A.0.3.0.0, 0
  %8 = zext i16 %A.0.3.0.0.0 to i128
  %9 = shl i128 %8, 104
  %10 = or i128 %7, %9
  %A.0.4 = extractvalue %struct.rdma_req_t %A.0, 4
  %A.0.4.0 = extractvalue %"struct.ap_uint<8>" %A.0.4, 0
  %A.0.4.0.0 = extractvalue %"struct.ap_int_base<8, false>" %A.0.4.0, 0
  %A.0.4.0.0.0 = extractvalue %"struct.ssdm_int<8, false>" %A.0.4.0.0, 0
  %11 = zext i8 %A.0.4.0.0.0 to i128
  %12 = shl i128 %11, 120
  %13 = or i128 %10, %12
  ret i128 %13
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>.138"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>.141"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i8* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>.141"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<512>"* %8 to i512*
  %10 = bitcast i512* %9 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<64>"* %12 to i64*
  %14 = bitcast i64* %13 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<64>"* %16 to i64*
  %18 = bitcast i64* %17 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_push_8(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 6
  %25 = bitcast %"struct.ap_uint<8>"* %24 to i8*
  call void @fpga_fifo_push_1(i8* %25, i8* %_V_dest_V)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>.150"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i8* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>.150"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"
  %2 = alloca i512
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %7 = bitcast i512* %_V_data_V to i8*
  %8 = call i1 @fpga_fifo_not_empty_64(i8* %7)
  br i1 %8, label %push, label %ret

push:                                             ; preds = %empty
  %9 = bitcast i512* %2 to i8*
  %10 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_pop_64(i8* %9, i8* %10)
  %11 = load volatile i512, i512* %2
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 0
  %13 = bitcast %"struct.ap_uint<512>"* %12 to i512*
  store i512 %11, i512* %13
  %14 = bitcast i64* %4 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %14, i8* %15)
  %16 = load volatile i64, i64* %4
  %17 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 1
  %18 = bitcast %"struct.ap_uint<64>"* %17 to i64*
  store i64 %16, i64* %18
  %19 = bitcast i64* %3 to i8*
  %20 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %19, i8* %20)
  %21 = load volatile i64, i64* %3
  %22 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 2
  %23 = bitcast %"struct.ap_uint<64>"* %22 to i64*
  store i64 %21, i64* %23
  %24 = bitcast i1* %5 to i8*
  %25 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %24, i8* %25)
  %26 = bitcast i1* %5 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i1
  %29 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 4
  %30 = bitcast %"struct.ap_uint<1>"* %29 to i1*
  store i1 %28, i1* %30
  call void @fpga_fifo_pop_1(i8* %6, i8* %_V_dest_V)
  %31 = load volatile i8, i8* %6
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 6
  %33 = bitcast %"struct.ap_uint<8>"* %32 to i8*
  store i8 %31, i8* %33
  %34 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %1 to i8*
  %35 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %34, i8* %35)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>.171"(%"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i104* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i13* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i13* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>.174"(%"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* nonnull align 512 %0, i104* %_V_data_V, i13* %_V_keep_V, i13* %_V_strb_V, i1* %_V_last_V, i8* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>.174"(%"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i104* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i13* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i13* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"
  %2 = alloca i1
  %3 = alloca i8
  %4 = alloca i104
  %5 = alloca i13
  %6 = alloca i13
  br label %empty

empty:                                            ; preds = %push, %entry
  %7 = bitcast i104* %_V_data_V to i8*
  %8 = call i1 @fpga_fifo_not_empty_16(i8* %7)
  br i1 %8, label %push, label %ret

push:                                             ; preds = %empty
  %9 = bitcast i104* %4 to i8*
  %10 = bitcast i104* %_V_data_V to i8*
  call void @fpga_fifo_pop_16(i8* %9, i8* %10)
  %11 = load volatile i104, i104* %4
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 0
  %13 = bitcast %"struct.ap_uint<104>"* %12 to i104*
  store i104 %11, i104* %13
  %14 = bitcast i13* %6 to i8*
  %15 = bitcast i13* %_V_keep_V to i8*
  call void @fpga_fifo_pop_2(i8* %14, i8* %15)
  %16 = bitcast i13* %6 to i16*
  %17 = load i16, i16* %16
  %18 = trunc i16 %17 to i13
  %19 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 1
  %20 = bitcast %"struct.ap_uint<13>"* %19 to i13*
  store i13 %18, i13* %20
  %21 = bitcast i13* %5 to i8*
  %22 = bitcast i13* %_V_strb_V to i8*
  call void @fpga_fifo_pop_2(i8* %21, i8* %22)
  %23 = bitcast i13* %5 to i16*
  %24 = load i16, i16* %23
  %25 = trunc i16 %24 to i13
  %26 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 2
  %27 = bitcast %"struct.ap_uint<13>"* %26 to i13*
  store i13 %25, i13* %27
  %28 = bitcast i1* %2 to i8*
  %29 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %28, i8* %29)
  %30 = bitcast i1* %2 to i8*
  %31 = load i8, i8* %30
  %32 = trunc i8 %31 to i1
  %33 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 4
  %34 = bitcast %"struct.ap_uint<1>"* %33 to i1*
  store i1 %32, i1* %34
  call void @fpga_fifo_pop_1(i8* %3, i8* %_V_dest_V)
  %35 = load volatile i8, i8* %3
  %36 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>", %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1, i32 0, i32 0, i32 6
  %37 = bitcast %"struct.ap_uint<8>"* %36 to i8*
  store i8 %35, i8* %37
  %38 = bitcast %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %1 to i8*
  %39 = bitcast %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %38, i8* %39)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_cyt_rdma_hw(i128*, %"class.hls::stream<eth_notification, 0>"*, i512*, i64*, i64*, i1*, i8*, i512*, i64*, i64*, i1*, i8*, i512*, i64*, i64*, i1*, i8*, i104*, i13*, i13*, i1*, i8*, %"class.hls::stream<ap_uint<32>, 0>"*, i512*, i64*, i64*, i1*, i8*, i512*, i64*, i64*, i1*, i8*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<rdma_req_t, 0>"* noalias, i128* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<eth_notification, 0>"* noalias, %"class.hls::stream<eth_notification, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.4" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.3" %_V_last_V4, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.4" %_V_dest_V5, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.0" %_V_data_V16, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.1" %_V_keep_V27, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.2" %_V_strb_V38, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.3" %_V_last_V49, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="13.4" %_V_dest_V510, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* noalias, i104* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.0" %_V_data_V2, i13* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.1" %_V_keep_V3, i13* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.3" %_V_last_V5, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="23.4" %_V_dest_V6, %"class.hls::stream<ap_uint<32>, 0>"* noalias, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V1611, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V2712, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V3813, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V4914, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.4" %_V_dest_V51015, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* noalias, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.0" %_V_data_V27, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.1" %_V_keep_V38, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.2" %_V_strb_V49, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.3" %_V_last_V510, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="33.4" %_V_dest_V611) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<rdma_req_t, 0>.126"(%"class.hls::stream<rdma_req_t, 0>"* %0, i128* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<eth_notification, 0>"(%"class.hls::stream<eth_notification, 0>"* %2, %"class.hls::stream<eth_notification, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %4, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i8* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %5, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, i8* %_V_dest_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %6, i512* %_V_data_V16, i64* %_V_keep_V27, i64* %_V_strb_V38, i1* %_V_last_V49, i8* %_V_dest_V510)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>.171"(%"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %7, i104* %_V_data_V2, i13* %_V_keep_V3, i13* %_V_strb_V4, i1* %_V_last_V5, i8* %_V_dest_V6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %8, %"class.hls::stream<ap_uint<32>, 0>"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %10, i512* %_V_data_V1611, i64* %_V_keep_V2712, i64* %_V_strb_V3813, i1* %_V_last_V4914, i8* %_V_dest_V51015)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %11, i512* %_V_data_V27, i64* %_V_keep_V38, i64* %_V_strb_V49, i1* %_V_last_V510, i8* %_V_dest_V611)
  ret void
}

define void @cyt_rdma_hw_stub_wrapper(i128*, %"class.hls::stream<eth_notification, 0>"*, i512*, i64*, i64*, i1*, i8*, i512*, i64*, i64*, i1*, i8*, i512*, i64*, i64*, i1*, i8*, i104*, i13*, i13*, i1*, i8*, %"class.hls::stream<ap_uint<32>, 0>"*, i512*, i64*, i64*, i1*, i8*, i512*, i64*, i64*, i1*, i8*) #7 {
entry:
  %33 = alloca %"class.hls::stream<rdma_req_t, 0>"
  %34 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"
  %35 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"
  %36 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"
  %37 = alloca %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"
  %38 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"
  %39 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"
  call void @copy_out(%"class.hls::stream<rdma_req_t, 0>"* %33, i128* %0, %"class.hls::stream<eth_notification, 0>"* null, %"class.hls::stream<eth_notification, 0>"* %1, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %34, i512* %2, i64* %3, i64* %4, i1* %5, i8* %6, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %35, i512* %7, i64* %8, i64* %9, i1* %10, i8* %11, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %36, i512* %12, i64* %13, i64* %14, i1* %15, i8* %16, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %37, i104* %17, i13* %18, i13* %19, i1* %20, i8* %21, %"class.hls::stream<ap_uint<32>, 0>"* null, %"class.hls::stream<ap_uint<32>, 0>"* %22, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %38, i512* %23, i64* %24, i64* %25, i1* %26, i8* %27, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %39, i512* %28, i64* %29, i64* %30, i1* %31, i8* %32)
  call void @cyt_rdma_hw_stub(%"class.hls::stream<rdma_req_t, 0>"* %33, %"class.hls::stream<eth_notification, 0>"* %1, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %34, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %35, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %36, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %37, %"class.hls::stream<ap_uint<32>, 0>"* %22, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %38, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %39)
  call void @copy_in(%"class.hls::stream<rdma_req_t, 0>"* %33, i128* %0, %"class.hls::stream<eth_notification, 0>"* null, %"class.hls::stream<eth_notification, 0>"* %1, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %34, i512* %2, i64* %3, i64* %4, i1* %5, i8* %6, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %35, i512* %7, i64* %8, i64* %9, i1* %10, i8* %11, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %36, i512* %12, i64* %13, i64* %14, i1* %15, i8* %16, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"* %37, i104* %17, i13* %18, i13* %19, i1* %20, i8* %21, %"class.hls::stream<ap_uint<32>, 0>"* null, %"class.hls::stream<ap_uint<32>, 0>"* %22, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %38, i512* %23, i64* %24, i64* %25, i1* %26, i8* %27, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"* %39, i512* %28, i64* %29, i64* %30, i1* %31, i8* %32)
  ret void
}

declare void @cyt_rdma_hw_stub(%"class.hls::stream<rdma_req_t, 0>"*, %"class.hls::stream<eth_notification, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<104>, 0, 0, 8>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 8>, 0>"*)

declare i1 @fpga_fifo_not_empty_24(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_24(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_push_24(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { alwaysinline nounwind readnone }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="128" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="64" "xlx.source"="user" }
attributes #10 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }

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
!10 = distinct !{!10, !6}
