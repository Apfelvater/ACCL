`timescale 1 ns / 1 ps

module cyt_rdma_hls_deadlock_idx3_monitor ( // for module cyt_rdma_cyt_rdma_inst.cyt_rdma_rx_U0
    input wire clock,
    input wire reset,
    input wire [11:0] axis_block_sigs,
    input wire [9:0] inst_idle_sigs,
    input wire [2:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx4_block;
wire idx5_block;
wire sub_parallel_block;
wire all_sub_parallel_has_block;
wire all_sub_single_has_block;
wire cur_axis_has_block;
wire seq_is_axis_block;

assign block = monitor_find_block;
assign all_sub_parallel_has_block = 1'b0;
assign all_sub_single_has_block = 1'b0 | (idx4_block & (axis_block_sigs[7] | axis_block_sigs[8])) | (idx5_block & (axis_block_sigs[9] | axis_block_sigs[10]));
assign cur_axis_has_block = 1'b0 | axis_block_sigs[4] | axis_block_sigs[5] | axis_block_sigs[6];
assign seq_is_axis_block = all_sub_parallel_has_block | all_sub_single_has_block | cur_axis_has_block;

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (seq_is_axis_block == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 cyt_rdma_hls_deadlock_idx4_monitor cyt_rdma_hls_deadlock_idx4_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx4_block)
);

 cyt_rdma_hls_deadlock_idx5_monitor cyt_rdma_hls_deadlock_idx5_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx5_block)
);

endmodule
