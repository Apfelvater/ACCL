
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [11:0] axis_block_sigs;
wire [9:0] inst_idle_sigs;
wire [2:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~cyt_rdma_tx_U0.rdma_sq_TDATA_blk_n;
assign axis_block_sigs[1] = ~cyt_rdma_tx_U0.tx_TDATA_blk_n;
assign axis_block_sigs[2] = ~cyt_rdma_tx_U0.grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197.send_data_TDATA_blk_n;
assign axis_block_sigs[3] = ~cyt_rdma_tx_U0.grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197.tx_TDATA_blk_n;
assign axis_block_sigs[4] = ~cyt_rdma_rx_U0.notif_TDATA_blk_n;
assign axis_block_sigs[5] = ~cyt_rdma_rx_U0.wr_cmd_TDATA_blk_n;
assign axis_block_sigs[6] = ~cyt_rdma_rx_U0.rx_TDATA_blk_n;
assign axis_block_sigs[7] = ~cyt_rdma_rx_U0.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187.rx_TDATA_blk_n;
assign axis_block_sigs[8] = ~cyt_rdma_rx_U0.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187.recv_data_TDATA_blk_n;
assign axis_block_sigs[9] = ~cyt_rdma_rx_U0.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211.rx_TDATA_blk_n;
assign axis_block_sigs[10] = ~cyt_rdma_rx_U0.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211.wr_data_TDATA_blk_n;
assign axis_block_sigs[11] = ~cyt_rdma_wr_sts_U0.wr_sts_TDATA_blk_n;

assign inst_idle_sigs[0] = cyt_rdma_tx_U0.ap_idle;
assign inst_block_sigs[0] = (cyt_rdma_tx_U0.ap_done & ~cyt_rdma_tx_U0.ap_continue);
assign inst_idle_sigs[1] = cyt_rdma_rx_U0.ap_idle;
assign inst_block_sigs[1] = (cyt_rdma_rx_U0.ap_done & ~cyt_rdma_rx_U0.ap_continue);
assign inst_idle_sigs[2] = cyt_rdma_wr_sts_U0.ap_idle;
assign inst_block_sigs[2] = (cyt_rdma_wr_sts_U0.ap_done & ~cyt_rdma_wr_sts_U0.ap_continue);

assign inst_idle_sigs[3] = 1'b0;
assign inst_idle_sigs[4] = cyt_rdma_tx_U0.ap_idle;
assign inst_idle_sigs[5] = cyt_rdma_tx_U0.grp_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2_fu_197.ap_idle;
assign inst_idle_sigs[6] = cyt_rdma_rx_U0.ap_idle;
assign inst_idle_sigs[7] = cyt_rdma_rx_U0.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2_fu_187.ap_idle;
assign inst_idle_sigs[8] = cyt_rdma_rx_U0.grp_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1_fu_211.ap_idle;
assign inst_idle_sigs[9] = cyt_rdma_wr_sts_U0.ap_idle;

cyt_rdma_hls_deadlock_idx0_monitor cyt_rdma_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
