set SynModuleInfo {
  {SRCNAME tcp_session_handler MODELNAME tcp_session_handler RTLNAME tcp_session_handler IS_TOP 1
    SUBMODULES {
      {MODELNAME tcp_session_handler_control_s_axi RTLNAME tcp_session_handler_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME tcp_session_handler_regslice_both RTLNAME tcp_session_handler_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME tcp_session_handler_regslice_both_U}
    }
  }
}
