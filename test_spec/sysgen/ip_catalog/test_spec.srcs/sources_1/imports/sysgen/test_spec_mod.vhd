-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity test_spec_stub is
  port (
    test_spec_acc_len_user_data_out : in std_logic_vector( 32-1 downto 0 );
    test_spec_accum0_snap_ss_bram_data_out : in std_logic_vector( 32-1 downto 0 );
    test_spec_accum0_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    test_spec_accum1_snap_ss_bram_data_out : in std_logic_vector( 32-1 downto 0 );
    test_spec_accum1_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_data_out : in std_logic_vector( 32-1 downto 0 );
    test_spec_accumdat_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_data_out : in std_logic_vector( 32-1 downto 0 );
    test_spec_adc_voltage_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    test_spec_red_pitaya_adc_adc0_data_i_out : in std_logic_vector( 10-1 downto 0 );
    test_spec_red_pitaya_adc_adc1_data_q_out : in std_logic_vector( 10-1 downto 0 );
    test_spec_red_pitaya_adc_adc_data_val_out : in std_logic_vector( 1-1 downto 0 );
    test_spec_reg_cntrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    test_spec_snap_gap_user_data_out : in std_logic_vector( 32-1 downto 0 );
    clk : in std_logic;
    test_spec_acc_cnt_user_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accum0_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accum0_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accum0_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_accum0_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accum1_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accum1_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accum1_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_accum1_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_accumdat_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_adc_dv_user_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_adc_sample_cnt_user_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_adc_voltage_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_fft_sync_inc0_user_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_fft_sync_inc1_user_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_red_pitaya_adc_adc_reset_in : out std_logic_vector( 1-1 downto 0 );
    test_spec_sync_cnt_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_stub;
architecture structural of test_spec_stub is 
begin
  sysgen_dut : entity xil_defaultlib.test_spec_0 
  port map (
    test_spec_acc_len_user_data_out => test_spec_acc_len_user_data_out,
    test_spec_accum0_snap_ss_bram_data_out => test_spec_accum0_snap_ss_bram_data_out,
    test_spec_accum0_snap_ss_ctrl_user_data_out => test_spec_accum0_snap_ss_ctrl_user_data_out,
    test_spec_accum1_snap_ss_bram_data_out => test_spec_accum1_snap_ss_bram_data_out,
    test_spec_accum1_snap_ss_ctrl_user_data_out => test_spec_accum1_snap_ss_ctrl_user_data_out,
    test_spec_accumdat_snap_ss_bram_data_out => test_spec_accumdat_snap_ss_bram_data_out,
    test_spec_accumdat_snap_ss_ctrl_user_data_out => test_spec_accumdat_snap_ss_ctrl_user_data_out,
    test_spec_adc_voltage_snap_ss_bram_data_out => test_spec_adc_voltage_snap_ss_bram_data_out,
    test_spec_adc_voltage_snap_ss_ctrl_user_data_out => test_spec_adc_voltage_snap_ss_ctrl_user_data_out,
    test_spec_red_pitaya_adc_adc0_data_i_out => test_spec_red_pitaya_adc_adc0_data_i_out,
    test_spec_red_pitaya_adc_adc1_data_q_out => test_spec_red_pitaya_adc_adc1_data_q_out,
    test_spec_red_pitaya_adc_adc_data_val_out => test_spec_red_pitaya_adc_adc_data_val_out,
    test_spec_reg_cntrl_user_data_out => test_spec_reg_cntrl_user_data_out,
    test_spec_snap_gap_user_data_out => test_spec_snap_gap_user_data_out,
    clk => clk,
    test_spec_acc_cnt_user_data_in => test_spec_acc_cnt_user_data_in,
    test_spec_accum0_snap_ss_bram_addr => test_spec_accum0_snap_ss_bram_addr,
    test_spec_accum0_snap_ss_bram_data_in => test_spec_accum0_snap_ss_bram_data_in,
    test_spec_accum0_snap_ss_bram_we => test_spec_accum0_snap_ss_bram_we,
    test_spec_accum0_snap_ss_status_user_data_in => test_spec_accum0_snap_ss_status_user_data_in,
    test_spec_accum1_snap_ss_bram_addr => test_spec_accum1_snap_ss_bram_addr,
    test_spec_accum1_snap_ss_bram_data_in => test_spec_accum1_snap_ss_bram_data_in,
    test_spec_accum1_snap_ss_bram_we => test_spec_accum1_snap_ss_bram_we,
    test_spec_accum1_snap_ss_status_user_data_in => test_spec_accum1_snap_ss_status_user_data_in,
    test_spec_accumdat_snap_ss_bram_addr => test_spec_accumdat_snap_ss_bram_addr,
    test_spec_accumdat_snap_ss_bram_data_in => test_spec_accumdat_snap_ss_bram_data_in,
    test_spec_accumdat_snap_ss_bram_we => test_spec_accumdat_snap_ss_bram_we,
    test_spec_accumdat_snap_ss_status_user_data_in => test_spec_accumdat_snap_ss_status_user_data_in,
    test_spec_adc_dv_user_data_in => test_spec_adc_dv_user_data_in,
    test_spec_adc_sample_cnt_user_data_in => test_spec_adc_sample_cnt_user_data_in,
    test_spec_adc_voltage_snap_ss_bram_addr => test_spec_adc_voltage_snap_ss_bram_addr,
    test_spec_adc_voltage_snap_ss_bram_data_in => test_spec_adc_voltage_snap_ss_bram_data_in,
    test_spec_adc_voltage_snap_ss_bram_we => test_spec_adc_voltage_snap_ss_bram_we,
    test_spec_adc_voltage_snap_ss_status_user_data_in => test_spec_adc_voltage_snap_ss_status_user_data_in,
    test_spec_fft_sync_inc0_user_data_in => test_spec_fft_sync_inc0_user_data_in,
    test_spec_fft_sync_inc1_user_data_in => test_spec_fft_sync_inc1_user_data_in,
    test_spec_red_pitaya_adc_adc_reset_in => test_spec_red_pitaya_adc_adc_reset_in,
    test_spec_sync_cnt_user_data_in => test_spec_sync_cnt_user_data_in
  );
end structural;
