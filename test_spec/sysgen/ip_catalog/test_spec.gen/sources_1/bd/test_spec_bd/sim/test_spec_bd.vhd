--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
--Date        : Fri Jul  4 12:04:59 2025
--Host        : shishir-HP-Pavilion-Laptop-15-eg3xxx running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target test_spec_bd.bd
--Design      : test_spec_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_spec_bd is
  port (
    clk : in STD_LOGIC;
    test_spec_acc_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_acc_len_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum0_snap_ss_bram_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    test_spec_accum0_snap_ss_bram_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum0_snap_ss_bram_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum0_snap_ss_bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_accum0_snap_ss_ctrl_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum0_snap_ss_status_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum1_snap_ss_bram_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    test_spec_accum1_snap_ss_bram_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum1_snap_ss_bram_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum1_snap_ss_bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_accum1_snap_ss_ctrl_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum1_snap_ss_status_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accumdat_snap_ss_bram_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    test_spec_accumdat_snap_ss_bram_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accumdat_snap_ss_bram_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accumdat_snap_ss_bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_accumdat_snap_ss_ctrl_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accumdat_snap_ss_status_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_dv_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_sample_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_adc_voltage_snap_ss_ctrl_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_voltage_snap_ss_status_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_fft_sync_inc0_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_fft_sync_inc1_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_red_pitaya_adc_adc0_data_i_out : in STD_LOGIC_VECTOR ( 9 downto 0 );
    test_spec_red_pitaya_adc_adc1_data_q_out : in STD_LOGIC_VECTOR ( 9 downto 0 );
    test_spec_red_pitaya_adc_adc_data_val_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_red_pitaya_adc_adc_reset_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_reg_cntrl_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_snap_gap_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_sync_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_trig_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of test_spec_bd : entity is "test_spec_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=test_spec_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of test_spec_bd : entity is "test_spec_bd.hwdef";
end test_spec_bd;

architecture STRUCTURE of test_spec_bd is
  component test_spec_bd_test_spec_1_0 is
  port (
    test_spec_acc_len_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum0_snap_ss_bram_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum0_snap_ss_ctrl_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum1_snap_ss_bram_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum1_snap_ss_ctrl_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accumdat_snap_ss_bram_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accumdat_snap_ss_ctrl_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_voltage_snap_ss_ctrl_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_red_pitaya_adc_adc0_data_i_out : in STD_LOGIC_VECTOR ( 9 downto 0 );
    test_spec_red_pitaya_adc_adc1_data_q_out : in STD_LOGIC_VECTOR ( 9 downto 0 );
    test_spec_red_pitaya_adc_adc_data_val_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_reg_cntrl_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_snap_gap_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    test_spec_acc_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum0_snap_ss_bram_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    test_spec_accum0_snap_ss_bram_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum0_snap_ss_bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_accum0_snap_ss_status_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum1_snap_ss_bram_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    test_spec_accum1_snap_ss_bram_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum1_snap_ss_bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_accum1_snap_ss_status_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accumdat_snap_ss_bram_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    test_spec_accumdat_snap_ss_bram_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accumdat_snap_ss_bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_accumdat_snap_ss_status_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_dv_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_sample_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_adc_voltage_snap_ss_status_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_fft_sync_inc0_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_fft_sync_inc1_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_red_pitaya_adc_adc_reset_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    test_spec_sync_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_trig_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component test_spec_bd_test_spec_1_0;
  signal clk_1 : STD_LOGIC;
  signal test_spec_1_test_spec_acc_cnt_user_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_accum0_snap_ss_bram_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal test_spec_1_test_spec_accum0_snap_ss_bram_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_accum0_snap_ss_bram_we : STD_LOGIC_VECTOR ( 0 to 0 );
  signal test_spec_1_test_spec_accum0_snap_ss_status_user_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_accum1_snap_ss_bram_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal test_spec_1_test_spec_accum1_snap_ss_bram_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_accum1_snap_ss_bram_we : STD_LOGIC_VECTOR ( 0 to 0 );
  signal test_spec_1_test_spec_accum1_snap_ss_status_user_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_accumdat_snap_ss_bram_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal test_spec_1_test_spec_accumdat_snap_ss_bram_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_accumdat_snap_ss_bram_we : STD_LOGIC_VECTOR ( 0 to 0 );
  signal test_spec_1_test_spec_accumdat_snap_ss_status_user_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_adc_dv_user_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_adc_sample_cnt_user_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_adc_voltage_snap_ss_bram_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal test_spec_1_test_spec_adc_voltage_snap_ss_bram_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_adc_voltage_snap_ss_bram_we : STD_LOGIC_VECTOR ( 0 to 0 );
  signal test_spec_1_test_spec_adc_voltage_snap_ss_status_user_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_fft_sync_inc0_user_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_fft_sync_inc1_user_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_red_pitaya_adc_adc_reset_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal test_spec_1_test_spec_sync_cnt_user_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_1_test_spec_trig_cnt_user_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_acc_len_user_data_out_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_accum0_snap_ss_bram_data_out_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_accum0_snap_ss_ctrl_user_data_out_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_accum1_snap_ss_bram_data_out_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_accum1_snap_ss_ctrl_user_data_out_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_accumdat_snap_ss_bram_data_out_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_accumdat_snap_ss_ctrl_user_data_out_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_adc_voltage_snap_ss_bram_data_out_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_adc_voltage_snap_ss_ctrl_user_data_out_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_red_pitaya_adc_adc0_data_i_out_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal test_spec_red_pitaya_adc_adc1_data_q_out_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal test_spec_red_pitaya_adc_adc_data_val_out_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal test_spec_reg_cntrl_user_data_out_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_spec_snap_gap_user_data_out_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN test_spec_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of test_spec_acc_cnt_user_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACC_CNT_USER_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_acc_cnt_user_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACC_CNT_USER_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_acc_len_user_data_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACC_LEN_USER_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_acc_len_user_data_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACC_LEN_USER_DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_accum0_snap_ss_bram_addr : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM0_SNAP_SS_BRAM_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum0_snap_ss_bram_addr : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM0_SNAP_SS_BRAM_ADDR, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_accum0_snap_ss_bram_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM0_SNAP_SS_BRAM_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum0_snap_ss_bram_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM0_SNAP_SS_BRAM_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_accum0_snap_ss_bram_data_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM0_SNAP_SS_BRAM_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum0_snap_ss_bram_data_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM0_SNAP_SS_BRAM_DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_accum0_snap_ss_bram_we : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM0_SNAP_SS_BRAM_WE DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum0_snap_ss_bram_we : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM0_SNAP_SS_BRAM_WE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_accum0_snap_ss_ctrl_user_data_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM0_SNAP_SS_CTRL_USER_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum0_snap_ss_ctrl_user_data_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM0_SNAP_SS_CTRL_USER_DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_accum0_snap_ss_status_user_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM0_SNAP_SS_STATUS_USER_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum0_snap_ss_status_user_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM0_SNAP_SS_STATUS_USER_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_accum1_snap_ss_bram_addr : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM1_SNAP_SS_BRAM_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum1_snap_ss_bram_addr : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM1_SNAP_SS_BRAM_ADDR, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_accum1_snap_ss_bram_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM1_SNAP_SS_BRAM_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum1_snap_ss_bram_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM1_SNAP_SS_BRAM_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_accum1_snap_ss_bram_data_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM1_SNAP_SS_BRAM_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum1_snap_ss_bram_data_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM1_SNAP_SS_BRAM_DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_accum1_snap_ss_bram_we : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM1_SNAP_SS_BRAM_WE DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum1_snap_ss_bram_we : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM1_SNAP_SS_BRAM_WE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_accum1_snap_ss_ctrl_user_data_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM1_SNAP_SS_CTRL_USER_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum1_snap_ss_ctrl_user_data_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM1_SNAP_SS_CTRL_USER_DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_accum1_snap_ss_status_user_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUM1_SNAP_SS_STATUS_USER_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accum1_snap_ss_status_user_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUM1_SNAP_SS_STATUS_USER_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_accumdat_snap_ss_bram_addr : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_BRAM_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accumdat_snap_ss_bram_addr : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_BRAM_ADDR, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_accumdat_snap_ss_bram_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_BRAM_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accumdat_snap_ss_bram_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_BRAM_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_accumdat_snap_ss_bram_data_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_BRAM_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accumdat_snap_ss_bram_data_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_BRAM_DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_accumdat_snap_ss_bram_we : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_BRAM_WE DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accumdat_snap_ss_bram_we : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_BRAM_WE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_accumdat_snap_ss_ctrl_user_data_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_CTRL_USER_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accumdat_snap_ss_ctrl_user_data_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_CTRL_USER_DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_accumdat_snap_ss_status_user_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_STATUS_USER_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_accumdat_snap_ss_status_user_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ACCUMDAT_SNAP_SS_STATUS_USER_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_adc_dv_user_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ADC_DV_USER_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_adc_dv_user_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ADC_DV_USER_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_adc_sample_cnt_user_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ADC_SAMPLE_CNT_USER_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_adc_sample_cnt_user_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ADC_SAMPLE_CNT_USER_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_adc_voltage_snap_ss_bram_addr : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_BRAM_ADDR DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_adc_voltage_snap_ss_bram_addr : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_BRAM_ADDR, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_adc_voltage_snap_ss_bram_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_BRAM_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_adc_voltage_snap_ss_bram_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_BRAM_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_adc_voltage_snap_ss_bram_data_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_BRAM_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_adc_voltage_snap_ss_bram_data_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_BRAM_DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_adc_voltage_snap_ss_bram_we : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_BRAM_WE DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_adc_voltage_snap_ss_bram_we : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_BRAM_WE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_adc_voltage_snap_ss_ctrl_user_data_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_CTRL_USER_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_adc_voltage_snap_ss_ctrl_user_data_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_CTRL_USER_DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_adc_voltage_snap_ss_status_user_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_STATUS_USER_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_adc_voltage_snap_ss_status_user_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_ADC_VOLTAGE_SNAP_SS_STATUS_USER_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_fft_sync_inc0_user_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_FFT_SYNC_INC0_USER_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_fft_sync_inc0_user_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_FFT_SYNC_INC0_USER_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_fft_sync_inc1_user_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_FFT_SYNC_INC1_USER_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_fft_sync_inc1_user_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_FFT_SYNC_INC1_USER_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_red_pitaya_adc_adc0_data_i_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_RED_PITAYA_ADC_ADC0_DATA_I_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_red_pitaya_adc_adc0_data_i_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_RED_PITAYA_ADC_ADC0_DATA_I_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_red_pitaya_adc_adc1_data_q_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_RED_PITAYA_ADC_ADC1_DATA_Q_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_red_pitaya_adc_adc1_data_q_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_RED_PITAYA_ADC_ADC1_DATA_Q_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_red_pitaya_adc_adc_data_val_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_RED_PITAYA_ADC_ADC_DATA_VAL_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_red_pitaya_adc_adc_data_val_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_RED_PITAYA_ADC_ADC_DATA_VAL_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_red_pitaya_adc_adc_reset_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_RED_PITAYA_ADC_ADC_RESET_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_red_pitaya_adc_adc_reset_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_RED_PITAYA_ADC_ADC_RESET_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_reg_cntrl_user_data_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_REG_CNTRL_USER_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_reg_cntrl_user_data_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_REG_CNTRL_USER_DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_snap_gap_user_data_out : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_SNAP_GAP_USER_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_snap_gap_user_data_out : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_SNAP_GAP_USER_DATA_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of test_spec_sync_cnt_user_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_SYNC_CNT_USER_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_sync_cnt_user_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_SYNC_CNT_USER_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of test_spec_trig_cnt_user_data_in : signal is "xilinx.com:signal:data:1.0 DATA.TEST_SPEC_TRIG_CNT_USER_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of test_spec_trig_cnt_user_data_in : signal is "XIL_INTERFACENAME DATA.TEST_SPEC_TRIG_CNT_USER_DATA_IN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
begin
  clk_1 <= clk;
  test_spec_acc_cnt_user_data_in(31 downto 0) <= test_spec_1_test_spec_acc_cnt_user_data_in(31 downto 0);
  test_spec_acc_len_user_data_out_1(31 downto 0) <= test_spec_acc_len_user_data_out(31 downto 0);
  test_spec_accum0_snap_ss_bram_addr(7 downto 0) <= test_spec_1_test_spec_accum0_snap_ss_bram_addr(7 downto 0);
  test_spec_accum0_snap_ss_bram_data_in(31 downto 0) <= test_spec_1_test_spec_accum0_snap_ss_bram_data_in(31 downto 0);
  test_spec_accum0_snap_ss_bram_data_out_1(31 downto 0) <= test_spec_accum0_snap_ss_bram_data_out(31 downto 0);
  test_spec_accum0_snap_ss_bram_we(0) <= test_spec_1_test_spec_accum0_snap_ss_bram_we(0);
  test_spec_accum0_snap_ss_ctrl_user_data_out_1(31 downto 0) <= test_spec_accum0_snap_ss_ctrl_user_data_out(31 downto 0);
  test_spec_accum0_snap_ss_status_user_data_in(31 downto 0) <= test_spec_1_test_spec_accum0_snap_ss_status_user_data_in(31 downto 0);
  test_spec_accum1_snap_ss_bram_addr(11 downto 0) <= test_spec_1_test_spec_accum1_snap_ss_bram_addr(11 downto 0);
  test_spec_accum1_snap_ss_bram_data_in(31 downto 0) <= test_spec_1_test_spec_accum1_snap_ss_bram_data_in(31 downto 0);
  test_spec_accum1_snap_ss_bram_data_out_1(31 downto 0) <= test_spec_accum1_snap_ss_bram_data_out(31 downto 0);
  test_spec_accum1_snap_ss_bram_we(0) <= test_spec_1_test_spec_accum1_snap_ss_bram_we(0);
  test_spec_accum1_snap_ss_ctrl_user_data_out_1(31 downto 0) <= test_spec_accum1_snap_ss_ctrl_user_data_out(31 downto 0);
  test_spec_accum1_snap_ss_status_user_data_in(31 downto 0) <= test_spec_1_test_spec_accum1_snap_ss_status_user_data_in(31 downto 0);
  test_spec_accumdat_snap_ss_bram_addr(11 downto 0) <= test_spec_1_test_spec_accumdat_snap_ss_bram_addr(11 downto 0);
  test_spec_accumdat_snap_ss_bram_data_in(31 downto 0) <= test_spec_1_test_spec_accumdat_snap_ss_bram_data_in(31 downto 0);
  test_spec_accumdat_snap_ss_bram_data_out_1(31 downto 0) <= test_spec_accumdat_snap_ss_bram_data_out(31 downto 0);
  test_spec_accumdat_snap_ss_bram_we(0) <= test_spec_1_test_spec_accumdat_snap_ss_bram_we(0);
  test_spec_accumdat_snap_ss_ctrl_user_data_out_1(31 downto 0) <= test_spec_accumdat_snap_ss_ctrl_user_data_out(31 downto 0);
  test_spec_accumdat_snap_ss_status_user_data_in(31 downto 0) <= test_spec_1_test_spec_accumdat_snap_ss_status_user_data_in(31 downto 0);
  test_spec_adc_dv_user_data_in(31 downto 0) <= test_spec_1_test_spec_adc_dv_user_data_in(31 downto 0);
  test_spec_adc_sample_cnt_user_data_in(31 downto 0) <= test_spec_1_test_spec_adc_sample_cnt_user_data_in(31 downto 0);
  test_spec_adc_voltage_snap_ss_bram_addr(11 downto 0) <= test_spec_1_test_spec_adc_voltage_snap_ss_bram_addr(11 downto 0);
  test_spec_adc_voltage_snap_ss_bram_data_in(31 downto 0) <= test_spec_1_test_spec_adc_voltage_snap_ss_bram_data_in(31 downto 0);
  test_spec_adc_voltage_snap_ss_bram_data_out_1(31 downto 0) <= test_spec_adc_voltage_snap_ss_bram_data_out(31 downto 0);
  test_spec_adc_voltage_snap_ss_bram_we(0) <= test_spec_1_test_spec_adc_voltage_snap_ss_bram_we(0);
  test_spec_adc_voltage_snap_ss_ctrl_user_data_out_1(31 downto 0) <= test_spec_adc_voltage_snap_ss_ctrl_user_data_out(31 downto 0);
  test_spec_adc_voltage_snap_ss_status_user_data_in(31 downto 0) <= test_spec_1_test_spec_adc_voltage_snap_ss_status_user_data_in(31 downto 0);
  test_spec_fft_sync_inc0_user_data_in(31 downto 0) <= test_spec_1_test_spec_fft_sync_inc0_user_data_in(31 downto 0);
  test_spec_fft_sync_inc1_user_data_in(31 downto 0) <= test_spec_1_test_spec_fft_sync_inc1_user_data_in(31 downto 0);
  test_spec_red_pitaya_adc_adc0_data_i_out_1(9 downto 0) <= test_spec_red_pitaya_adc_adc0_data_i_out(9 downto 0);
  test_spec_red_pitaya_adc_adc1_data_q_out_1(9 downto 0) <= test_spec_red_pitaya_adc_adc1_data_q_out(9 downto 0);
  test_spec_red_pitaya_adc_adc_data_val_out_1(0) <= test_spec_red_pitaya_adc_adc_data_val_out(0);
  test_spec_red_pitaya_adc_adc_reset_in(0) <= test_spec_1_test_spec_red_pitaya_adc_adc_reset_in(0);
  test_spec_reg_cntrl_user_data_out_1(31 downto 0) <= test_spec_reg_cntrl_user_data_out(31 downto 0);
  test_spec_snap_gap_user_data_out_1(31 downto 0) <= test_spec_snap_gap_user_data_out(31 downto 0);
  test_spec_sync_cnt_user_data_in(31 downto 0) <= test_spec_1_test_spec_sync_cnt_user_data_in(31 downto 0);
  test_spec_trig_cnt_user_data_in(31 downto 0) <= test_spec_1_test_spec_trig_cnt_user_data_in(31 downto 0);
test_spec_1: component test_spec_bd_test_spec_1_0
     port map (
      clk => clk_1,
      test_spec_acc_cnt_user_data_in(31 downto 0) => test_spec_1_test_spec_acc_cnt_user_data_in(31 downto 0),
      test_spec_acc_len_user_data_out(31 downto 0) => test_spec_acc_len_user_data_out_1(31 downto 0),
      test_spec_accum0_snap_ss_bram_addr(7 downto 0) => test_spec_1_test_spec_accum0_snap_ss_bram_addr(7 downto 0),
      test_spec_accum0_snap_ss_bram_data_in(31 downto 0) => test_spec_1_test_spec_accum0_snap_ss_bram_data_in(31 downto 0),
      test_spec_accum0_snap_ss_bram_data_out(31 downto 0) => test_spec_accum0_snap_ss_bram_data_out_1(31 downto 0),
      test_spec_accum0_snap_ss_bram_we(0) => test_spec_1_test_spec_accum0_snap_ss_bram_we(0),
      test_spec_accum0_snap_ss_ctrl_user_data_out(31 downto 0) => test_spec_accum0_snap_ss_ctrl_user_data_out_1(31 downto 0),
      test_spec_accum0_snap_ss_status_user_data_in(31 downto 0) => test_spec_1_test_spec_accum0_snap_ss_status_user_data_in(31 downto 0),
      test_spec_accum1_snap_ss_bram_addr(11 downto 0) => test_spec_1_test_spec_accum1_snap_ss_bram_addr(11 downto 0),
      test_spec_accum1_snap_ss_bram_data_in(31 downto 0) => test_spec_1_test_spec_accum1_snap_ss_bram_data_in(31 downto 0),
      test_spec_accum1_snap_ss_bram_data_out(31 downto 0) => test_spec_accum1_snap_ss_bram_data_out_1(31 downto 0),
      test_spec_accum1_snap_ss_bram_we(0) => test_spec_1_test_spec_accum1_snap_ss_bram_we(0),
      test_spec_accum1_snap_ss_ctrl_user_data_out(31 downto 0) => test_spec_accum1_snap_ss_ctrl_user_data_out_1(31 downto 0),
      test_spec_accum1_snap_ss_status_user_data_in(31 downto 0) => test_spec_1_test_spec_accum1_snap_ss_status_user_data_in(31 downto 0),
      test_spec_accumdat_snap_ss_bram_addr(11 downto 0) => test_spec_1_test_spec_accumdat_snap_ss_bram_addr(11 downto 0),
      test_spec_accumdat_snap_ss_bram_data_in(31 downto 0) => test_spec_1_test_spec_accumdat_snap_ss_bram_data_in(31 downto 0),
      test_spec_accumdat_snap_ss_bram_data_out(31 downto 0) => test_spec_accumdat_snap_ss_bram_data_out_1(31 downto 0),
      test_spec_accumdat_snap_ss_bram_we(0) => test_spec_1_test_spec_accumdat_snap_ss_bram_we(0),
      test_spec_accumdat_snap_ss_ctrl_user_data_out(31 downto 0) => test_spec_accumdat_snap_ss_ctrl_user_data_out_1(31 downto 0),
      test_spec_accumdat_snap_ss_status_user_data_in(31 downto 0) => test_spec_1_test_spec_accumdat_snap_ss_status_user_data_in(31 downto 0),
      test_spec_adc_dv_user_data_in(31 downto 0) => test_spec_1_test_spec_adc_dv_user_data_in(31 downto 0),
      test_spec_adc_sample_cnt_user_data_in(31 downto 0) => test_spec_1_test_spec_adc_sample_cnt_user_data_in(31 downto 0),
      test_spec_adc_voltage_snap_ss_bram_addr(11 downto 0) => test_spec_1_test_spec_adc_voltage_snap_ss_bram_addr(11 downto 0),
      test_spec_adc_voltage_snap_ss_bram_data_in(31 downto 0) => test_spec_1_test_spec_adc_voltage_snap_ss_bram_data_in(31 downto 0),
      test_spec_adc_voltage_snap_ss_bram_data_out(31 downto 0) => test_spec_adc_voltage_snap_ss_bram_data_out_1(31 downto 0),
      test_spec_adc_voltage_snap_ss_bram_we(0) => test_spec_1_test_spec_adc_voltage_snap_ss_bram_we(0),
      test_spec_adc_voltage_snap_ss_ctrl_user_data_out(31 downto 0) => test_spec_adc_voltage_snap_ss_ctrl_user_data_out_1(31 downto 0),
      test_spec_adc_voltage_snap_ss_status_user_data_in(31 downto 0) => test_spec_1_test_spec_adc_voltage_snap_ss_status_user_data_in(31 downto 0),
      test_spec_fft_sync_inc0_user_data_in(31 downto 0) => test_spec_1_test_spec_fft_sync_inc0_user_data_in(31 downto 0),
      test_spec_fft_sync_inc1_user_data_in(31 downto 0) => test_spec_1_test_spec_fft_sync_inc1_user_data_in(31 downto 0),
      test_spec_red_pitaya_adc_adc0_data_i_out(9 downto 0) => test_spec_red_pitaya_adc_adc0_data_i_out_1(9 downto 0),
      test_spec_red_pitaya_adc_adc1_data_q_out(9 downto 0) => test_spec_red_pitaya_adc_adc1_data_q_out_1(9 downto 0),
      test_spec_red_pitaya_adc_adc_data_val_out(0) => test_spec_red_pitaya_adc_adc_data_val_out_1(0),
      test_spec_red_pitaya_adc_adc_reset_in(0) => test_spec_1_test_spec_red_pitaya_adc_adc_reset_in(0),
      test_spec_reg_cntrl_user_data_out(31 downto 0) => test_spec_reg_cntrl_user_data_out_1(31 downto 0),
      test_spec_snap_gap_user_data_out(31 downto 0) => test_spec_snap_gap_user_data_out_1(31 downto 0),
      test_spec_sync_cnt_user_data_in(31 downto 0) => test_spec_1_test_spec_sync_cnt_user_data_in(31 downto 0),
      test_spec_trig_cnt_user_data_in(31 downto 0) => test_spec_1_test_spec_trig_cnt_user_data_in(31 downto 0)
    );
end STRUCTURE;
