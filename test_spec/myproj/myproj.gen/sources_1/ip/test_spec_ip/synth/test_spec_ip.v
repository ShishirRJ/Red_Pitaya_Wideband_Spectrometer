// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: User_Company:SysGen:test_spec:1.0
// IP Revision: 382529960

(* X_CORE_INFO = "test_spec,Vivado 2021.1" *)
(* CHECK_LICENSE_TYPE = "test_spec_ip,test_spec,{}" *)
(* IP_DEFINITION_SOURCE = "sysgen" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module test_spec_ip (
  test_spec_acc_len_user_data_out,
  test_spec_accum0_snap_ss_bram_data_out,
  test_spec_accum0_snap_ss_ctrl_user_data_out,
  test_spec_accum1_snap_ss_bram_data_out,
  test_spec_accum1_snap_ss_ctrl_user_data_out,
  test_spec_accumdat_snap_ss_bram_data_out,
  test_spec_accumdat_snap_ss_ctrl_user_data_out,
  test_spec_adc_voltage_snap_ss_bram_data_out,
  test_spec_adc_voltage_snap_ss_ctrl_user_data_out,
  test_spec_red_pitaya_adc_adc0_data_i_out,
  test_spec_red_pitaya_adc_adc1_data_q_out,
  test_spec_red_pitaya_adc_adc_data_val_out,
  test_spec_reg_cntrl_user_data_out,
  test_spec_snap_gap_user_data_out,
  clk,
  test_spec_acc_cnt_user_data_in,
  test_spec_accum0_snap_ss_bram_addr,
  test_spec_accum0_snap_ss_bram_data_in,
  test_spec_accum0_snap_ss_bram_we,
  test_spec_accum0_snap_ss_status_user_data_in,
  test_spec_accum1_snap_ss_bram_addr,
  test_spec_accum1_snap_ss_bram_data_in,
  test_spec_accum1_snap_ss_bram_we,
  test_spec_accum1_snap_ss_status_user_data_in,
  test_spec_accumdat_snap_ss_bram_addr,
  test_spec_accumdat_snap_ss_bram_data_in,
  test_spec_accumdat_snap_ss_bram_we,
  test_spec_accumdat_snap_ss_status_user_data_in,
  test_spec_adc_dv_user_data_in,
  test_spec_adc_sample_cnt_user_data_in,
  test_spec_adc_voltage_snap_ss_bram_addr,
  test_spec_adc_voltage_snap_ss_bram_data_in,
  test_spec_adc_voltage_snap_ss_bram_we,
  test_spec_adc_voltage_snap_ss_status_user_data_in,
  test_spec_fft_sync_inc0_user_data_in,
  test_spec_fft_sync_inc1_user_data_in,
  test_spec_red_pitaya_adc_adc_reset_in,
  test_spec_sync_cnt_user_data_in
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_acc_len_user_data_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format l\
ong minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_acc_len_user_data_out DATA" *)
input wire [31 : 0] test_spec_acc_len_user_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum0_snap_ss_bram_data_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} f\
ormat long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum0_snap_ss_bram_data_out DATA" *)
input wire [31 : 0] test_spec_accum0_snap_ss_bram_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum0_snap_ss_ctrl_user_data_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency\
 {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum0_snap_ss_ctrl_user_data_out DATA" *)
input wire [31 : 0] test_spec_accum0_snap_ss_ctrl_user_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum1_snap_ss_bram_data_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} f\
ormat long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum1_snap_ss_bram_data_out DATA" *)
input wire [31 : 0] test_spec_accum1_snap_ss_bram_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum1_snap_ss_ctrl_user_data_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency\
 {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum1_snap_ss_ctrl_user_data_out DATA" *)
input wire [31 : 0] test_spec_accum1_snap_ss_ctrl_user_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accumdat_snap_ss_bram_data_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {}\
 format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accumdat_snap_ss_bram_data_out DATA" *)
input wire [31 : 0] test_spec_accumdat_snap_ss_bram_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accumdat_snap_ss_ctrl_user_data_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependen\
cy {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accumdat_snap_ss_ctrl_user_data_out DATA" *)
input wire [31 : 0] test_spec_accumdat_snap_ss_ctrl_user_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_adc_voltage_snap_ss_bram_data_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency\
 {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_adc_voltage_snap_ss_bram_data_out DATA" *)
input wire [31 : 0] test_spec_adc_voltage_snap_ss_bram_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_adc_voltage_snap_ss_ctrl_user_data_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate depen\
dency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_adc_voltage_snap_ss_ctrl_user_data_out DATA" *)
input wire [31 : 0] test_spec_adc_voltage_snap_ss_ctrl_user_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_red_pitaya_adc_adc0_data_i_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {}\
 format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_red_pitaya_adc_adc0_data_i_out DATA" *)
input wire [9 : 0] test_spec_red_pitaya_adc_adc0_data_i_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_red_pitaya_adc_adc1_data_q_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {}\
 format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_red_pitaya_adc_adc1_data_q_out DATA" *)
input wire [9 : 0] test_spec_red_pitaya_adc_adc1_data_q_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_red_pitaya_adc_adc_data_val_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {}\
 format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_red_pitaya_adc_adc_data_val_out DATA" *)
input wire [0 : 0] test_spec_red_pitaya_adc_adc_data_val_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_reg_cntrl_user_data_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format\
 long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_reg_cntrl_user_data_out DATA" *)
input wire [31 : 0] test_spec_reg_cntrl_user_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_snap_gap_user_data_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format \
long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_snap_gap_user_data_out DATA" *)
input wire [31 : 0] test_spec_snap_gap_user_data_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_acc_cnt_user_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format lo\
ng minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_acc_cnt_user_data_in DATA" *)
output wire [31 : 0] test_spec_acc_cnt_user_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum0_snap_ss_bram_addr, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} forma\
t long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum0_snap_ss_bram_addr DATA" *)
output wire [11 : 0] test_spec_accum0_snap_ss_bram_addr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum0_snap_ss_bram_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} fo\
rmat long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum0_snap_ss_bram_data_in DATA" *)
output wire [31 : 0] test_spec_accum0_snap_ss_bram_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum0_snap_ss_bram_we, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format l\
ong minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum0_snap_ss_bram_we DATA" *)
output wire [0 : 0] test_spec_accum0_snap_ss_bram_we;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum0_snap_ss_status_user_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependenc\
y {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum0_snap_ss_status_user_data_in DATA" *)
output wire [31 : 0] test_spec_accum0_snap_ss_status_user_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum1_snap_ss_bram_addr, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} forma\
t long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum1_snap_ss_bram_addr DATA" *)
output wire [11 : 0] test_spec_accum1_snap_ss_bram_addr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum1_snap_ss_bram_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} fo\
rmat long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum1_snap_ss_bram_data_in DATA" *)
output wire [31 : 0] test_spec_accum1_snap_ss_bram_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum1_snap_ss_bram_we, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format l\
ong minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum1_snap_ss_bram_we DATA" *)
output wire [0 : 0] test_spec_accum1_snap_ss_bram_we;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accum1_snap_ss_status_user_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependenc\
y {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accum1_snap_ss_status_user_data_in DATA" *)
output wire [31 : 0] test_spec_accum1_snap_ss_status_user_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accumdat_snap_ss_bram_addr, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} for\
mat long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accumdat_snap_ss_bram_addr DATA" *)
output wire [11 : 0] test_spec_accumdat_snap_ss_bram_addr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accumdat_snap_ss_bram_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accumdat_snap_ss_bram_data_in DATA" *)
output wire [31 : 0] test_spec_accumdat_snap_ss_bram_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accumdat_snap_ss_bram_we, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format\
 long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accumdat_snap_ss_bram_we DATA" *)
output wire [0 : 0] test_spec_accumdat_snap_ss_bram_we;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_accumdat_snap_ss_status_user_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate depende\
ncy {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_accumdat_snap_ss_status_user_data_in DATA" *)
output wire [31 : 0] test_spec_accumdat_snap_ss_status_user_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_adc_dv_user_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format lon\
g minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_adc_dv_user_data_in DATA" *)
output wire [31 : 0] test_spec_adc_dv_user_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_adc_sample_cnt_user_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} fo\
rmat long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_adc_sample_cnt_user_data_in DATA" *)
output wire [31 : 0] test_spec_adc_sample_cnt_user_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_adc_voltage_snap_ss_bram_addr, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} \
format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_adc_voltage_snap_ss_bram_addr DATA" *)
output wire [11 : 0] test_spec_adc_voltage_snap_ss_bram_addr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_adc_voltage_snap_ss_bram_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency \
{} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_adc_voltage_snap_ss_bram_data_in DATA" *)
output wire [31 : 0] test_spec_adc_voltage_snap_ss_bram_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_adc_voltage_snap_ss_bram_we, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} for\
mat long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_adc_voltage_snap_ss_bram_we DATA" *)
output wire [0 : 0] test_spec_adc_voltage_snap_ss_bram_we;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_adc_voltage_snap_ss_status_user_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate depe\
ndency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_adc_voltage_snap_ss_status_user_data_in DATA" *)
output wire [31 : 0] test_spec_adc_voltage_snap_ss_status_user_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_fft_sync_inc0_user_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} for\
mat long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_fft_sync_inc0_user_data_in DATA" *)
output wire [31 : 0] test_spec_fft_sync_inc0_user_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_fft_sync_inc1_user_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} for\
mat long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_fft_sync_inc1_user_data_in DATA" *)
output wire [31 : 0] test_spec_fft_sync_inc1_user_data_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_red_pitaya_adc_adc_reset_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} for\
mat long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_red_pitaya_adc_adc_reset_in DATA" *)
output wire [0 : 0] test_spec_red_pitaya_adc_adc_reset_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME test_spec_sync_cnt_user_data_in, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format l\
ong minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 test_spec_sync_cnt_user_data_in DATA" *)
output wire [31 : 0] test_spec_sync_cnt_user_data_in;

  test_spec inst (
    .test_spec_acc_len_user_data_out(test_spec_acc_len_user_data_out),
    .test_spec_accum0_snap_ss_bram_data_out(test_spec_accum0_snap_ss_bram_data_out),
    .test_spec_accum0_snap_ss_ctrl_user_data_out(test_spec_accum0_snap_ss_ctrl_user_data_out),
    .test_spec_accum1_snap_ss_bram_data_out(test_spec_accum1_snap_ss_bram_data_out),
    .test_spec_accum1_snap_ss_ctrl_user_data_out(test_spec_accum1_snap_ss_ctrl_user_data_out),
    .test_spec_accumdat_snap_ss_bram_data_out(test_spec_accumdat_snap_ss_bram_data_out),
    .test_spec_accumdat_snap_ss_ctrl_user_data_out(test_spec_accumdat_snap_ss_ctrl_user_data_out),
    .test_spec_adc_voltage_snap_ss_bram_data_out(test_spec_adc_voltage_snap_ss_bram_data_out),
    .test_spec_adc_voltage_snap_ss_ctrl_user_data_out(test_spec_adc_voltage_snap_ss_ctrl_user_data_out),
    .test_spec_red_pitaya_adc_adc0_data_i_out(test_spec_red_pitaya_adc_adc0_data_i_out),
    .test_spec_red_pitaya_adc_adc1_data_q_out(test_spec_red_pitaya_adc_adc1_data_q_out),
    .test_spec_red_pitaya_adc_adc_data_val_out(test_spec_red_pitaya_adc_adc_data_val_out),
    .test_spec_reg_cntrl_user_data_out(test_spec_reg_cntrl_user_data_out),
    .test_spec_snap_gap_user_data_out(test_spec_snap_gap_user_data_out),
    .clk(clk),
    .test_spec_acc_cnt_user_data_in(test_spec_acc_cnt_user_data_in),
    .test_spec_accum0_snap_ss_bram_addr(test_spec_accum0_snap_ss_bram_addr),
    .test_spec_accum0_snap_ss_bram_data_in(test_spec_accum0_snap_ss_bram_data_in),
    .test_spec_accum0_snap_ss_bram_we(test_spec_accum0_snap_ss_bram_we),
    .test_spec_accum0_snap_ss_status_user_data_in(test_spec_accum0_snap_ss_status_user_data_in),
    .test_spec_accum1_snap_ss_bram_addr(test_spec_accum1_snap_ss_bram_addr),
    .test_spec_accum1_snap_ss_bram_data_in(test_spec_accum1_snap_ss_bram_data_in),
    .test_spec_accum1_snap_ss_bram_we(test_spec_accum1_snap_ss_bram_we),
    .test_spec_accum1_snap_ss_status_user_data_in(test_spec_accum1_snap_ss_status_user_data_in),
    .test_spec_accumdat_snap_ss_bram_addr(test_spec_accumdat_snap_ss_bram_addr),
    .test_spec_accumdat_snap_ss_bram_data_in(test_spec_accumdat_snap_ss_bram_data_in),
    .test_spec_accumdat_snap_ss_bram_we(test_spec_accumdat_snap_ss_bram_we),
    .test_spec_accumdat_snap_ss_status_user_data_in(test_spec_accumdat_snap_ss_status_user_data_in),
    .test_spec_adc_dv_user_data_in(test_spec_adc_dv_user_data_in),
    .test_spec_adc_sample_cnt_user_data_in(test_spec_adc_sample_cnt_user_data_in),
    .test_spec_adc_voltage_snap_ss_bram_addr(test_spec_adc_voltage_snap_ss_bram_addr),
    .test_spec_adc_voltage_snap_ss_bram_data_in(test_spec_adc_voltage_snap_ss_bram_data_in),
    .test_spec_adc_voltage_snap_ss_bram_we(test_spec_adc_voltage_snap_ss_bram_we),
    .test_spec_adc_voltage_snap_ss_status_user_data_in(test_spec_adc_voltage_snap_ss_status_user_data_in),
    .test_spec_fft_sync_inc0_user_data_in(test_spec_fft_sync_inc0_user_data_in),
    .test_spec_fft_sync_inc1_user_data_in(test_spec_fft_sync_inc1_user_data_in),
    .test_spec_red_pitaya_adc_adc_reset_in(test_spec_red_pitaya_adc_adc_reset_in),
    .test_spec_sync_cnt_user_data_in(test_spec_sync_cnt_user_data_in)
  );
endmodule
