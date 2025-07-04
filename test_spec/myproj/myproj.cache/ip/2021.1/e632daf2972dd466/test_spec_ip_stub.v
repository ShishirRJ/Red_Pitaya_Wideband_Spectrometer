// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Jul  4 12:07:09 2025
// Host        : shishir-HP-Pavilion-Laptop-15-eg3xxx running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ test_spec_ip_stub.v
// Design      : test_spec_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "test_spec,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(test_spec_acc_len_user_data_out, 
  test_spec_accum0_snap_ss_bram_data_out, 
  test_spec_accum0_snap_ss_ctrl_user_data_out, 
  test_spec_accum1_snap_ss_bram_data_out, 
  test_spec_accum1_snap_ss_ctrl_user_data_out, 
  test_spec_accumdat_snap_ss_bram_data_out, 
  test_spec_accumdat_snap_ss_ctrl_user_data_out, 
  test_spec_adc_voltage_snap_ss_bram_data_out, 
  test_spec_adc_voltage_snap_ss_ctrl_user_data_out, 
  test_spec_red_pitaya_adc_adc0_data_i_out, test_spec_red_pitaya_adc_adc1_data_q_out, 
  test_spec_red_pitaya_adc_adc_data_val_out, test_spec_reg_cntrl_user_data_out, 
  test_spec_snap_gap_user_data_out, clk, test_spec_acc_cnt_user_data_in, 
  test_spec_accum0_snap_ss_bram_addr, test_spec_accum0_snap_ss_bram_data_in, 
  test_spec_accum0_snap_ss_bram_we, test_spec_accum0_snap_ss_status_user_data_in, 
  test_spec_accum1_snap_ss_bram_addr, test_spec_accum1_snap_ss_bram_data_in, 
  test_spec_accum1_snap_ss_bram_we, test_spec_accum1_snap_ss_status_user_data_in, 
  test_spec_accumdat_snap_ss_bram_addr, test_spec_accumdat_snap_ss_bram_data_in, 
  test_spec_accumdat_snap_ss_bram_we, test_spec_accumdat_snap_ss_status_user_data_in, 
  test_spec_adc_dv_user_data_in, test_spec_adc_sample_cnt_user_data_in, 
  test_spec_adc_voltage_snap_ss_bram_addr, 
  test_spec_adc_voltage_snap_ss_bram_data_in, test_spec_adc_voltage_snap_ss_bram_we, 
  test_spec_adc_voltage_snap_ss_status_user_data_in, 
  test_spec_fft_sync_inc0_user_data_in, test_spec_fft_sync_inc1_user_data_in, 
  test_spec_red_pitaya_adc_adc_reset_in, test_spec_sync_cnt_user_data_in, 
  test_spec_trig_cnt_user_data_in)
/* synthesis syn_black_box black_box_pad_pin="test_spec_acc_len_user_data_out[31:0],test_spec_accum0_snap_ss_bram_data_out[31:0],test_spec_accum0_snap_ss_ctrl_user_data_out[31:0],test_spec_accum1_snap_ss_bram_data_out[31:0],test_spec_accum1_snap_ss_ctrl_user_data_out[31:0],test_spec_accumdat_snap_ss_bram_data_out[31:0],test_spec_accumdat_snap_ss_ctrl_user_data_out[31:0],test_spec_adc_voltage_snap_ss_bram_data_out[31:0],test_spec_adc_voltage_snap_ss_ctrl_user_data_out[31:0],test_spec_red_pitaya_adc_adc0_data_i_out[9:0],test_spec_red_pitaya_adc_adc1_data_q_out[9:0],test_spec_red_pitaya_adc_adc_data_val_out[0:0],test_spec_reg_cntrl_user_data_out[31:0],test_spec_snap_gap_user_data_out[31:0],clk,test_spec_acc_cnt_user_data_in[31:0],test_spec_accum0_snap_ss_bram_addr[7:0],test_spec_accum0_snap_ss_bram_data_in[31:0],test_spec_accum0_snap_ss_bram_we[0:0],test_spec_accum0_snap_ss_status_user_data_in[31:0],test_spec_accum1_snap_ss_bram_addr[11:0],test_spec_accum1_snap_ss_bram_data_in[31:0],test_spec_accum1_snap_ss_bram_we[0:0],test_spec_accum1_snap_ss_status_user_data_in[31:0],test_spec_accumdat_snap_ss_bram_addr[11:0],test_spec_accumdat_snap_ss_bram_data_in[31:0],test_spec_accumdat_snap_ss_bram_we[0:0],test_spec_accumdat_snap_ss_status_user_data_in[31:0],test_spec_adc_dv_user_data_in[31:0],test_spec_adc_sample_cnt_user_data_in[31:0],test_spec_adc_voltage_snap_ss_bram_addr[11:0],test_spec_adc_voltage_snap_ss_bram_data_in[31:0],test_spec_adc_voltage_snap_ss_bram_we[0:0],test_spec_adc_voltage_snap_ss_status_user_data_in[31:0],test_spec_fft_sync_inc0_user_data_in[31:0],test_spec_fft_sync_inc1_user_data_in[31:0],test_spec_red_pitaya_adc_adc_reset_in[0:0],test_spec_sync_cnt_user_data_in[31:0],test_spec_trig_cnt_user_data_in[31:0]" */;
  input [31:0]test_spec_acc_len_user_data_out;
  input [31:0]test_spec_accum0_snap_ss_bram_data_out;
  input [31:0]test_spec_accum0_snap_ss_ctrl_user_data_out;
  input [31:0]test_spec_accum1_snap_ss_bram_data_out;
  input [31:0]test_spec_accum1_snap_ss_ctrl_user_data_out;
  input [31:0]test_spec_accumdat_snap_ss_bram_data_out;
  input [31:0]test_spec_accumdat_snap_ss_ctrl_user_data_out;
  input [31:0]test_spec_adc_voltage_snap_ss_bram_data_out;
  input [31:0]test_spec_adc_voltage_snap_ss_ctrl_user_data_out;
  input [9:0]test_spec_red_pitaya_adc_adc0_data_i_out;
  input [9:0]test_spec_red_pitaya_adc_adc1_data_q_out;
  input [0:0]test_spec_red_pitaya_adc_adc_data_val_out;
  input [31:0]test_spec_reg_cntrl_user_data_out;
  input [31:0]test_spec_snap_gap_user_data_out;
  input clk;
  output [31:0]test_spec_acc_cnt_user_data_in;
  output [7:0]test_spec_accum0_snap_ss_bram_addr;
  output [31:0]test_spec_accum0_snap_ss_bram_data_in;
  output [0:0]test_spec_accum0_snap_ss_bram_we;
  output [31:0]test_spec_accum0_snap_ss_status_user_data_in;
  output [11:0]test_spec_accum1_snap_ss_bram_addr;
  output [31:0]test_spec_accum1_snap_ss_bram_data_in;
  output [0:0]test_spec_accum1_snap_ss_bram_we;
  output [31:0]test_spec_accum1_snap_ss_status_user_data_in;
  output [11:0]test_spec_accumdat_snap_ss_bram_addr;
  output [31:0]test_spec_accumdat_snap_ss_bram_data_in;
  output [0:0]test_spec_accumdat_snap_ss_bram_we;
  output [31:0]test_spec_accumdat_snap_ss_status_user_data_in;
  output [31:0]test_spec_adc_dv_user_data_in;
  output [31:0]test_spec_adc_sample_cnt_user_data_in;
  output [11:0]test_spec_adc_voltage_snap_ss_bram_addr;
  output [31:0]test_spec_adc_voltage_snap_ss_bram_data_in;
  output [0:0]test_spec_adc_voltage_snap_ss_bram_we;
  output [31:0]test_spec_adc_voltage_snap_ss_status_user_data_in;
  output [31:0]test_spec_fft_sync_inc0_user_data_in;
  output [31:0]test_spec_fft_sync_inc1_user_data_in;
  output [0:0]test_spec_red_pitaya_adc_adc_reset_in;
  output [31:0]test_spec_sync_cnt_user_data_in;
  output [31:0]test_spec_trig_cnt_user_data_in;
endmodule
