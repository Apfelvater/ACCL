set SynModuleInfo {
  {SRCNAME cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2 MODELNAME cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2 RTLNAME cyt_rdma_cyt_rdma_tx_Pipeline_VITIS_LOOP_65_2
    SUBMODULES {
      {MODELNAME cyt_rdma_flow_control_loop_pipe_sequential_init RTLNAME cyt_rdma_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cyt_rdma_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cyt_rdma_tx MODELNAME cyt_rdma_tx RTLNAME cyt_rdma_cyt_rdma_tx
    SUBMODULES {
      {MODELNAME cyt_rdma_regslice_both RTLNAME cyt_rdma_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME cyt_rdma_regslice_both_U}
    }
  }
  {SRCNAME cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2 MODELNAME cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2 RTLNAME cyt_rdma_cyt_rdma_rx_Pipeline_VITIS_LOOP_128_2}
  {SRCNAME cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1 MODELNAME cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1 RTLNAME cyt_rdma_cyt_rdma_rx_Pipeline_VITIS_LOOP_119_1}
  {SRCNAME cyt_rdma_rx MODELNAME cyt_rdma_rx RTLNAME cyt_rdma_cyt_rdma_rx}
  {SRCNAME cyt_rdma_wr_sts MODELNAME cyt_rdma_wr_sts RTLNAME cyt_rdma_cyt_rdma_wr_sts}
  {SRCNAME cyt_rdma MODELNAME cyt_rdma RTLNAME cyt_rdma IS_TOP 1}
}
