--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
--Date        : Fri Jul  4 10:19:35 2025
--Host        : shishir-HP-Pavilion-Laptop-15-eg3xxx running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target test_spec_bd_wrapper.bd
--Design      : test_spec_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_spec_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    test_spec_acc_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_acc_len_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum0_snap_ss_bram_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
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
    test_spec_sync_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end test_spec_bd_wrapper;

architecture STRUCTURE of test_spec_bd_wrapper is
  component test_spec_bd is
  port (
    clk : in STD_LOGIC;
    test_spec_acc_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_acc_len_user_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    test_spec_accum0_snap_ss_bram_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
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
    test_spec_sync_cnt_user_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component test_spec_bd;
begin
test_spec_bd_i: component test_spec_bd
     port map (
      clk => clk,
      test_spec_acc_cnt_user_data_in(31 downto 0) => test_spec_acc_cnt_user_data_in(31 downto 0),
      test_spec_acc_len_user_data_out(31 downto 0) => test_spec_acc_len_user_data_out(31 downto 0),
      test_spec_accum0_snap_ss_bram_addr(11 downto 0) => test_spec_accum0_snap_ss_bram_addr(11 downto 0),
      test_spec_accum0_snap_ss_bram_data_in(31 downto 0) => test_spec_accum0_snap_ss_bram_data_in(31 downto 0),
      test_spec_accum0_snap_ss_bram_data_out(31 downto 0) => test_spec_accum0_snap_ss_bram_data_out(31 downto 0),
      test_spec_accum0_snap_ss_bram_we(0) => test_spec_accum0_snap_ss_bram_we(0),
      test_spec_accum0_snap_ss_ctrl_user_data_out(31 downto 0) => test_spec_accum0_snap_ss_ctrl_user_data_out(31 downto 0),
      test_spec_accum0_snap_ss_status_user_data_in(31 downto 0) => test_spec_accum0_snap_ss_status_user_data_in(31 downto 0),
      test_spec_accum1_snap_ss_bram_addr(11 downto 0) => test_spec_accum1_snap_ss_bram_addr(11 downto 0),
      test_spec_accum1_snap_ss_bram_data_in(31 downto 0) => test_spec_accum1_snap_ss_bram_data_in(31 downto 0),
      test_spec_accum1_snap_ss_bram_data_out(31 downto 0) => test_spec_accum1_snap_ss_bram_data_out(31 downto 0),
      test_spec_accum1_snap_ss_bram_we(0) => test_spec_accum1_snap_ss_bram_we(0),
      test_spec_accum1_snap_ss_ctrl_user_data_out(31 downto 0) => test_spec_accum1_snap_ss_ctrl_user_data_out(31 downto 0),
      test_spec_accum1_snap_ss_status_user_data_in(31 downto 0) => test_spec_accum1_snap_ss_status_user_data_in(31 downto 0),
      test_spec_accumdat_snap_ss_bram_addr(11 downto 0) => test_spec_accumdat_snap_ss_bram_addr(11 downto 0),
      test_spec_accumdat_snap_ss_bram_data_in(31 downto 0) => test_spec_accumdat_snap_ss_bram_data_in(31 downto 0),
      test_spec_accumdat_snap_ss_bram_data_out(31 downto 0) => test_spec_accumdat_snap_ss_bram_data_out(31 downto 0),
      test_spec_accumdat_snap_ss_bram_we(0) => test_spec_accumdat_snap_ss_bram_we(0),
      test_spec_accumdat_snap_ss_ctrl_user_data_out(31 downto 0) => test_spec_accumdat_snap_ss_ctrl_user_data_out(31 downto 0),
      test_spec_accumdat_snap_ss_status_user_data_in(31 downto 0) => test_spec_accumdat_snap_ss_status_user_data_in(31 downto 0),
      test_spec_adc_dv_user_data_in(31 downto 0) => test_spec_adc_dv_user_data_in(31 downto 0),
      test_spec_adc_sample_cnt_user_data_in(31 downto 0) => test_spec_adc_sample_cnt_user_data_in(31 downto 0),
      test_spec_adc_voltage_snap_ss_bram_addr(11 downto 0) => test_spec_adc_voltage_snap_ss_bram_addr(11 downto 0),
      test_spec_adc_voltage_snap_ss_bram_data_in(31 downto 0) => test_spec_adc_voltage_snap_ss_bram_data_in(31 downto 0),
      test_spec_adc_voltage_snap_ss_bram_data_out(31 downto 0) => test_spec_adc_voltage_snap_ss_bram_data_out(31 downto 0),
      test_spec_adc_voltage_snap_ss_bram_we(0) => test_spec_adc_voltage_snap_ss_bram_we(0),
      test_spec_adc_voltage_snap_ss_ctrl_user_data_out(31 downto 0) => test_spec_adc_voltage_snap_ss_ctrl_user_data_out(31 downto 0),
      test_spec_adc_voltage_snap_ss_status_user_data_in(31 downto 0) => test_spec_adc_voltage_snap_ss_status_user_data_in(31 downto 0),
      test_spec_fft_sync_inc0_user_data_in(31 downto 0) => test_spec_fft_sync_inc0_user_data_in(31 downto 0),
      test_spec_fft_sync_inc1_user_data_in(31 downto 0) => test_spec_fft_sync_inc1_user_data_in(31 downto 0),
      test_spec_red_pitaya_adc_adc0_data_i_out(9 downto 0) => test_spec_red_pitaya_adc_adc0_data_i_out(9 downto 0),
      test_spec_red_pitaya_adc_adc1_data_q_out(9 downto 0) => test_spec_red_pitaya_adc_adc1_data_q_out(9 downto 0),
      test_spec_red_pitaya_adc_adc_data_val_out(0) => test_spec_red_pitaya_adc_adc_data_val_out(0),
      test_spec_red_pitaya_adc_adc_reset_in(0) => test_spec_red_pitaya_adc_adc_reset_in(0),
      test_spec_reg_cntrl_user_data_out(31 downto 0) => test_spec_reg_cntrl_user_data_out(31 downto 0),
      test_spec_snap_gap_user_data_out(31 downto 0) => test_spec_snap_gap_user_data_out(31 downto 0),
      test_spec_sync_cnt_user_data_in(31 downto 0) => test_spec_sync_cnt_user_data_in(31 downto 0)
    );
end STRUCTURE;
