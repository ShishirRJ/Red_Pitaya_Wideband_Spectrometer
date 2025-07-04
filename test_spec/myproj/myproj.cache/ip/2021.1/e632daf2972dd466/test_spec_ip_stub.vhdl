-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Jul  4 12:07:09 2025
-- Host        : shishir-HP-Pavilion-Laptop-15-eg3xxx running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ test_spec_ip_stub.vhdl
-- Design      : test_spec_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "test_spec_acc_len_user_data_out[31:0],test_spec_accum0_snap_ss_bram_data_out[31:0],test_spec_accum0_snap_ss_ctrl_user_data_out[31:0],test_spec_accum1_snap_ss_bram_data_out[31:0],test_spec_accum1_snap_ss_ctrl_user_data_out[31:0],test_spec_accumdat_snap_ss_bram_data_out[31:0],test_spec_accumdat_snap_ss_ctrl_user_data_out[31:0],test_spec_adc_voltage_snap_ss_bram_data_out[31:0],test_spec_adc_voltage_snap_ss_ctrl_user_data_out[31:0],test_spec_red_pitaya_adc_adc0_data_i_out[9:0],test_spec_red_pitaya_adc_adc1_data_q_out[9:0],test_spec_red_pitaya_adc_adc_data_val_out[0:0],test_spec_reg_cntrl_user_data_out[31:0],test_spec_snap_gap_user_data_out[31:0],clk,test_spec_acc_cnt_user_data_in[31:0],test_spec_accum0_snap_ss_bram_addr[7:0],test_spec_accum0_snap_ss_bram_data_in[31:0],test_spec_accum0_snap_ss_bram_we[0:0],test_spec_accum0_snap_ss_status_user_data_in[31:0],test_spec_accum1_snap_ss_bram_addr[11:0],test_spec_accum1_snap_ss_bram_data_in[31:0],test_spec_accum1_snap_ss_bram_we[0:0],test_spec_accum1_snap_ss_status_user_data_in[31:0],test_spec_accumdat_snap_ss_bram_addr[11:0],test_spec_accumdat_snap_ss_bram_data_in[31:0],test_spec_accumdat_snap_ss_bram_we[0:0],test_spec_accumdat_snap_ss_status_user_data_in[31:0],test_spec_adc_dv_user_data_in[31:0],test_spec_adc_sample_cnt_user_data_in[31:0],test_spec_adc_voltage_snap_ss_bram_addr[11:0],test_spec_adc_voltage_snap_ss_bram_data_in[31:0],test_spec_adc_voltage_snap_ss_bram_we[0:0],test_spec_adc_voltage_snap_ss_status_user_data_in[31:0],test_spec_fft_sync_inc0_user_data_in[31:0],test_spec_fft_sync_inc1_user_data_in[31:0],test_spec_red_pitaya_adc_adc_reset_in[0:0],test_spec_sync_cnt_user_data_in[31:0],test_spec_trig_cnt_user_data_in[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "test_spec,Vivado 2021.1";
begin
end;
