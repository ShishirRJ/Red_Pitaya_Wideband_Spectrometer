library ieee;
use ieee.std_logic_1164.all;

library xil_defaultlib;
use xil_defaultlib.axi4lite_pkg.all;
use xil_defaultlib.axi4lite_axi4lite_top_ic_pkg.all;
use xil_defaultlib.axi4lite_axi4lite_top_mmap_pkg.all;
use xil_defaultlib.axi4lite_accum0_snap_ss_bram_pkg.all;
use xil_defaultlib.axi4lite_accum1_snap_ss_bram_pkg.all;
use xil_defaultlib.axi4lite_accumdat_snap_ss_bram_pkg.all;
use xil_defaultlib.axi4lite_adc_voltage_snap_ss_bram_pkg.all;
use xil_defaultlib.axi4lite_sw_reg_pkg.all;
use xil_defaultlib.axi4lite_sys_pkg.all;

entity axi4lite_ic_wrapper is
	port (
		axi4lite_aclk : in std_logic;
		axi4lite_aresetn : in std_logic;
		s_axi4lite_awready : out std_logic;
		s_axi4lite_wready : out std_logic;
		s_axi4lite_bresp : out std_logic_vector(1 downto 0);
		s_axi4lite_bvalid : out std_logic;
		s_axi4lite_arready : out std_logic;
		s_axi4lite_rresp : out std_logic_vector(1 downto 0);
		s_axi4lite_rdata : out std_logic_vector(31 downto 0);
		s_axi4lite_rvalid : out std_logic;
		s_axi4lite_awaddr : in std_logic_vector(31 downto 0);
		s_axi4lite_awvalid : in std_logic;
		s_axi4lite_wdata : in std_logic_vector(31 downto 0);
		s_axi4lite_wvalid : in std_logic;
		s_axi4lite_wstrb : in std_logic_vector(3 downto 0);
		s_axi4lite_araddr : in std_logic_vector(31 downto 0);
		s_axi4lite_arvalid : in std_logic;
		s_axi4lite_rready : in std_logic;
		s_axi4lite_bready : in std_logic;
		axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_add : in std_logic_vector(11 downto 0);
		axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_data_in : in std_logic_vector(31 downto 0);
		axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_data_out : out std_logic_vector(31 downto 0);
		axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_we : in std_logic;
		axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_en : in std_logic;
		axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_clk : in std_logic;
		axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_add : in std_logic_vector(11 downto 0);
		axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_data_in : in std_logic_vector(31 downto 0);
		axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_data_out : out std_logic_vector(31 downto 0);
		axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_we : in std_logic;
		axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_en : in std_logic;
		axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_clk : in std_logic;
		axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_add : in std_logic_vector(11 downto 0);
		axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_data_in : in std_logic_vector(31 downto 0);
		axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_data_out : out std_logic_vector(31 downto 0);
		axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_we : in std_logic;
		axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_en : in std_logic;
		axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_clk : in std_logic;
		axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_add : in std_logic_vector(11 downto 0);
		axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_data_in : in std_logic_vector(31 downto 0);
		axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_data_out : out std_logic_vector(31 downto 0);
		axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_we : in std_logic;
		axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_en : in std_logic;
		axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_clk : in std_logic;
		axi4lite_sw_reg_acc_cnt_in : in std_logic_vector(31 downto 0);
		axi4lite_sw_reg_acc_cnt_in_we : in std_logic;
		axi4lite_sw_reg_acc_len_out : out std_logic_vector(31 downto 0);
		axi4lite_sw_reg_acc_len_out_we : out std_logic;
		axi4lite_sw_reg_accum0_snap_ss_ctrl_out : out std_logic_vector(31 downto 0);
		axi4lite_sw_reg_accum0_snap_ss_ctrl_out_we : out std_logic;
		axi4lite_sw_reg_accum0_snap_ss_status_in : in std_logic_vector(31 downto 0);
		axi4lite_sw_reg_accum0_snap_ss_status_in_we : in std_logic;
		axi4lite_sw_reg_accum1_snap_ss_ctrl_out : out std_logic_vector(31 downto 0);
		axi4lite_sw_reg_accum1_snap_ss_ctrl_out_we : out std_logic;
		axi4lite_sw_reg_accum1_snap_ss_status_in : in std_logic_vector(31 downto 0);
		axi4lite_sw_reg_accum1_snap_ss_status_in_we : in std_logic;
		axi4lite_sw_reg_accumdat_snap_ss_ctrl_out : out std_logic_vector(31 downto 0);
		axi4lite_sw_reg_accumdat_snap_ss_ctrl_out_we : out std_logic;
		axi4lite_sw_reg_accumdat_snap_ss_status_in : in std_logic_vector(31 downto 0);
		axi4lite_sw_reg_accumdat_snap_ss_status_in_we : in std_logic;
		axi4lite_sw_reg_adc_dv_in : in std_logic_vector(31 downto 0);
		axi4lite_sw_reg_adc_dv_in_we : in std_logic;
		axi4lite_sw_reg_adc_sample_cnt_in : in std_logic_vector(31 downto 0);
		axi4lite_sw_reg_adc_sample_cnt_in_we : in std_logic;
		axi4lite_sw_reg_adc_voltage_snap_ss_ctrl_out : out std_logic_vector(31 downto 0);
		axi4lite_sw_reg_adc_voltage_snap_ss_ctrl_out_we : out std_logic;
		axi4lite_sw_reg_adc_voltage_snap_ss_status_in : in std_logic_vector(31 downto 0);
		axi4lite_sw_reg_adc_voltage_snap_ss_status_in_we : in std_logic;
		axi4lite_sw_reg_fft_sync_inc0_in : in std_logic_vector(31 downto 0);
		axi4lite_sw_reg_fft_sync_inc0_in_we : in std_logic;
		axi4lite_sw_reg_fft_sync_inc1_in : in std_logic_vector(31 downto 0);
		axi4lite_sw_reg_fft_sync_inc1_in_we : in std_logic;
		axi4lite_sw_reg_reg_cntrl_out : out std_logic_vector(31 downto 0);
		axi4lite_sw_reg_reg_cntrl_out_we : out std_logic;
		axi4lite_sw_reg_snap_gap_out : out std_logic_vector(31 downto 0);
		axi4lite_sw_reg_snap_gap_out_we : out std_logic;
		axi4lite_sw_reg_sync_cnt_in : in std_logic_vector(31 downto 0);
		axi4lite_sw_reg_sync_cnt_in_we : in std_logic;
		axi4lite_sys_board_id_in : in std_logic_vector(31 downto 0);
		axi4lite_sys_board_id_in_we : in std_logic;
		axi4lite_sys_rev_in : in std_logic_vector(31 downto 0);
		axi4lite_sys_rev_in_we : in std_logic;
		axi4lite_sys_rev_rcs_in : in std_logic_vector(31 downto 0);
		axi4lite_sys_rev_rcs_in_we : in std_logic;
		axi4lite_sys_scratchpad_out : out std_logic_vector(31 downto 0);
		axi4lite_sys_scratchpad_out_we : out std_logic;
		axi4lite_sys_clkcounter_in : in std_logic_vector(31 downto 0);
		axi4lite_sys_clkcounter_in_we : in std_logic
	);
end entity;

architecture struct of axi4lite_ic_wrapper is

		signal axi4lite_mosi_arr : t_axi4lite_mosi_arr(0 to c_axi4lite_mmap_nof_slave-1);
		signal axi4lite_miso_arr : t_axi4lite_miso_arr(0 to c_axi4lite_mmap_nof_slave-1);
		signal axi4lite_mosi : t_axi4lite_mosi;
		signal axi4lite_miso : t_axi4lite_miso;
		signal axi4lite_sw_reg_in_we : t_axi4lite_sw_reg_decoded;
		signal axi4lite_sw_reg_in : t_axi4lite_sw_reg;
		signal axi4lite_sw_reg_out_we : t_axi4lite_sw_reg_decoded;
		signal axi4lite_sw_reg_out : t_axi4lite_sw_reg;
		signal axi4lite_sys_in_we : t_axi4lite_sys_decoded;
		signal axi4lite_sys_in : t_axi4lite_sys;
		signal axi4lite_sys_out_we : t_axi4lite_sys_decoded;
		signal axi4lite_sys_out : t_axi4lite_sys;
begin

	axi4lite_axi4lite_ic_inst: entity xil_defaultlib.axi4lite_axi4lite_top_ic
	port map(
		axi4lite_aclk => axi4lite_aclk,
		axi4lite_aresetn => axi4lite_aresetn,
		axi4lite_mosi => axi4lite_mosi,
		axi4lite_mosi_arr => axi4lite_mosi_arr,
		axi4lite_miso => axi4lite_miso,
		axi4lite_miso_arr => axi4lite_miso_arr
	);

	axi4lite_accum0_snap_ss_bram_inst: entity xil_defaultlib.axi4lite_accum0_snap_ss_bram
	port map(
		axi4lite_aclk => axi4lite_aclk,
		axi4lite_aresetn => axi4lite_aresetn,
		axi4lite_mosi => axi4lite_mosi_arr(axi4lite_mmap_get_id(id_accum0_snap_ss_bram)),
		axi4lite_miso => axi4lite_miso_arr(axi4lite_mmap_get_id(id_accum0_snap_ss_bram)),
		accum0_snap_ss_bram_accum0_snap_ss_bram_add => axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_add,
		accum0_snap_ss_bram_accum0_snap_ss_bram_wdat => axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_data_in,
		accum0_snap_ss_bram_accum0_snap_ss_bram_rdat => axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_data_out,
		accum0_snap_ss_bram_accum0_snap_ss_bram_clk => axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_clk,
		accum0_snap_ss_bram_accum0_snap_ss_bram_en => axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_en,
		accum0_snap_ss_bram_accum0_snap_ss_bram_we => axi4lite_accum0_snap_ss_bram_accum0_snap_ss_bram_we
	);

	axi4lite_accum1_snap_ss_bram_inst: entity xil_defaultlib.axi4lite_accum1_snap_ss_bram
	port map(
		axi4lite_aclk => axi4lite_aclk,
		axi4lite_aresetn => axi4lite_aresetn,
		axi4lite_mosi => axi4lite_mosi_arr(axi4lite_mmap_get_id(id_accum1_snap_ss_bram)),
		axi4lite_miso => axi4lite_miso_arr(axi4lite_mmap_get_id(id_accum1_snap_ss_bram)),
		accum1_snap_ss_bram_accum1_snap_ss_bram_add => axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_add,
		accum1_snap_ss_bram_accum1_snap_ss_bram_wdat => axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_data_in,
		accum1_snap_ss_bram_accum1_snap_ss_bram_rdat => axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_data_out,
		accum1_snap_ss_bram_accum1_snap_ss_bram_clk => axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_clk,
		accum1_snap_ss_bram_accum1_snap_ss_bram_en => axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_en,
		accum1_snap_ss_bram_accum1_snap_ss_bram_we => axi4lite_accum1_snap_ss_bram_accum1_snap_ss_bram_we
	);

	axi4lite_accumdat_snap_ss_bram_inst: entity xil_defaultlib.axi4lite_accumdat_snap_ss_bram
	port map(
		axi4lite_aclk => axi4lite_aclk,
		axi4lite_aresetn => axi4lite_aresetn,
		axi4lite_mosi => axi4lite_mosi_arr(axi4lite_mmap_get_id(id_accumdat_snap_ss_bram)),
		axi4lite_miso => axi4lite_miso_arr(axi4lite_mmap_get_id(id_accumdat_snap_ss_bram)),
		accumdat_snap_ss_bram_accumdat_snap_ss_bram_add => axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_add,
		accumdat_snap_ss_bram_accumdat_snap_ss_bram_wdat => axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_data_in,
		accumdat_snap_ss_bram_accumdat_snap_ss_bram_rdat => axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_data_out,
		accumdat_snap_ss_bram_accumdat_snap_ss_bram_clk => axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_clk,
		accumdat_snap_ss_bram_accumdat_snap_ss_bram_en => axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_en,
		accumdat_snap_ss_bram_accumdat_snap_ss_bram_we => axi4lite_accumdat_snap_ss_bram_accumdat_snap_ss_bram_we
	);

	axi4lite_adc_voltage_snap_ss_bram_inst: entity xil_defaultlib.axi4lite_adc_voltage_snap_ss_bram
	port map(
		axi4lite_aclk => axi4lite_aclk,
		axi4lite_aresetn => axi4lite_aresetn,
		axi4lite_mosi => axi4lite_mosi_arr(axi4lite_mmap_get_id(id_adc_voltage_snap_ss_bram)),
		axi4lite_miso => axi4lite_miso_arr(axi4lite_mmap_get_id(id_adc_voltage_snap_ss_bram)),
		adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_add => axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_add,
		adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_wdat => axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_data_in,
		adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_rdat => axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_data_out,
		adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_clk => axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_clk,
		adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_en => axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_en,
		adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_we => axi4lite_adc_voltage_snap_ss_bram_adc_voltage_snap_ss_bram_we
	);

	axi4lite_sw_reg_inst: entity xil_defaultlib.axi4lite_sw_reg
	port map(
		axi4lite_aclk => axi4lite_aclk,
		axi4lite_aresetn => axi4lite_aresetn,
		axi4lite_mosi => axi4lite_mosi_arr(axi4lite_mmap_get_id(id_sw_reg)),
		axi4lite_miso => axi4lite_miso_arr(axi4lite_mmap_get_id(id_sw_reg)),
		axi4lite_sw_reg_in_we => axi4lite_sw_reg_in_we,
		axi4lite_sw_reg_in => axi4lite_sw_reg_in,
		axi4lite_sw_reg_out_we => axi4lite_sw_reg_out_we,
		axi4lite_sw_reg_out => axi4lite_sw_reg_out
	);

	axi4lite_sys_inst: entity xil_defaultlib.axi4lite_sys
	port map(
		axi4lite_aclk => axi4lite_aclk,
		axi4lite_aresetn => axi4lite_aresetn,
		axi4lite_mosi => axi4lite_mosi_arr(axi4lite_mmap_get_id(id_sys)),
		axi4lite_miso => axi4lite_miso_arr(axi4lite_mmap_get_id(id_sys)),
		axi4lite_sys_in_we => axi4lite_sys_in_we,
		axi4lite_sys_in => axi4lite_sys_in,
		axi4lite_sys_out_we => axi4lite_sys_out_we,
		axi4lite_sys_out => axi4lite_sys_out
	);


	axi4lite_sw_reg_in.acc_cnt <= axi4lite_sw_reg_acc_cnt_in;
	axi4lite_sw_reg_in_we.acc_cnt <= axi4lite_sw_reg_acc_cnt_in_we;
	axi4lite_sw_reg_acc_len_out <= axi4lite_sw_reg_out.acc_len;
	axi4lite_sw_reg_acc_len_out_we <= axi4lite_sw_reg_out_we.acc_len;
	axi4lite_sw_reg_accum0_snap_ss_ctrl_out <= axi4lite_sw_reg_out.accum0_snap_ss_ctrl;
	axi4lite_sw_reg_accum0_snap_ss_ctrl_out_we <= axi4lite_sw_reg_out_we.accum0_snap_ss_ctrl;
	axi4lite_sw_reg_in.accum0_snap_ss_status <= axi4lite_sw_reg_accum0_snap_ss_status_in;
	axi4lite_sw_reg_in_we.accum0_snap_ss_status <= axi4lite_sw_reg_accum0_snap_ss_status_in_we;
	axi4lite_sw_reg_accum1_snap_ss_ctrl_out <= axi4lite_sw_reg_out.accum1_snap_ss_ctrl;
	axi4lite_sw_reg_accum1_snap_ss_ctrl_out_we <= axi4lite_sw_reg_out_we.accum1_snap_ss_ctrl;
	axi4lite_sw_reg_in.accum1_snap_ss_status <= axi4lite_sw_reg_accum1_snap_ss_status_in;
	axi4lite_sw_reg_in_we.accum1_snap_ss_status <= axi4lite_sw_reg_accum1_snap_ss_status_in_we;
	axi4lite_sw_reg_accumdat_snap_ss_ctrl_out <= axi4lite_sw_reg_out.accumdat_snap_ss_ctrl;
	axi4lite_sw_reg_accumdat_snap_ss_ctrl_out_we <= axi4lite_sw_reg_out_we.accumdat_snap_ss_ctrl;
	axi4lite_sw_reg_in.accumdat_snap_ss_status <= axi4lite_sw_reg_accumdat_snap_ss_status_in;
	axi4lite_sw_reg_in_we.accumdat_snap_ss_status <= axi4lite_sw_reg_accumdat_snap_ss_status_in_we;
	axi4lite_sw_reg_in.adc_dv <= axi4lite_sw_reg_adc_dv_in;
	axi4lite_sw_reg_in_we.adc_dv <= axi4lite_sw_reg_adc_dv_in_we;
	axi4lite_sw_reg_in.adc_sample_cnt <= axi4lite_sw_reg_adc_sample_cnt_in;
	axi4lite_sw_reg_in_we.adc_sample_cnt <= axi4lite_sw_reg_adc_sample_cnt_in_we;
	axi4lite_sw_reg_adc_voltage_snap_ss_ctrl_out <= axi4lite_sw_reg_out.adc_voltage_snap_ss_ctrl;
	axi4lite_sw_reg_adc_voltage_snap_ss_ctrl_out_we <= axi4lite_sw_reg_out_we.adc_voltage_snap_ss_ctrl;
	axi4lite_sw_reg_in.adc_voltage_snap_ss_status <= axi4lite_sw_reg_adc_voltage_snap_ss_status_in;
	axi4lite_sw_reg_in_we.adc_voltage_snap_ss_status <= axi4lite_sw_reg_adc_voltage_snap_ss_status_in_we;
	axi4lite_sw_reg_in.fft_sync_inc0 <= axi4lite_sw_reg_fft_sync_inc0_in;
	axi4lite_sw_reg_in_we.fft_sync_inc0 <= axi4lite_sw_reg_fft_sync_inc0_in_we;
	axi4lite_sw_reg_in.fft_sync_inc1 <= axi4lite_sw_reg_fft_sync_inc1_in;
	axi4lite_sw_reg_in_we.fft_sync_inc1 <= axi4lite_sw_reg_fft_sync_inc1_in_we;
	axi4lite_sw_reg_reg_cntrl_out <= axi4lite_sw_reg_out.reg_cntrl;
	axi4lite_sw_reg_reg_cntrl_out_we <= axi4lite_sw_reg_out_we.reg_cntrl;
	axi4lite_sw_reg_snap_gap_out <= axi4lite_sw_reg_out.snap_gap;
	axi4lite_sw_reg_snap_gap_out_we <= axi4lite_sw_reg_out_we.snap_gap;
	axi4lite_sw_reg_in.sync_cnt <= axi4lite_sw_reg_sync_cnt_in;
	axi4lite_sw_reg_in_we.sync_cnt <= axi4lite_sw_reg_sync_cnt_in_we;
	axi4lite_sys_in.board_id <= axi4lite_sys_board_id_in;
	axi4lite_sys_in_we.board_id <= axi4lite_sys_board_id_in_we;
	axi4lite_sys_in.rev <= axi4lite_sys_rev_in;
	axi4lite_sys_in_we.rev <= axi4lite_sys_rev_in_we;
	axi4lite_sys_in.rev_rcs <= axi4lite_sys_rev_rcs_in;
	axi4lite_sys_in_we.rev_rcs <= axi4lite_sys_rev_rcs_in_we;
	axi4lite_sys_scratchpad_out <= axi4lite_sys_out.scratchpad;
	axi4lite_sys_scratchpad_out_we <= axi4lite_sys_out_we.scratchpad;
	axi4lite_sys_in.clkcounter <= axi4lite_sys_clkcounter_in;
	axi4lite_sys_in_we.clkcounter <= axi4lite_sys_clkcounter_in_we;
	s_axi4lite_arready <= axi4lite_miso.arready;
	s_axi4lite_awready <= axi4lite_miso.awready;
	s_axi4lite_bresp <= axi4lite_miso.bresp;
	s_axi4lite_bvalid <= axi4lite_miso.bvalid;
	s_axi4lite_rdata <= axi4lite_miso.rdata;
	s_axi4lite_rresp <= axi4lite_miso.rresp;
	s_axi4lite_rvalid <= axi4lite_miso.rvalid;
	s_axi4lite_wready <= axi4lite_miso.wready;
	axi4lite_mosi.araddr <= s_axi4lite_araddr;
	axi4lite_mosi.arvalid <= s_axi4lite_arvalid;
	axi4lite_mosi.awaddr <= s_axi4lite_awaddr;
	axi4lite_mosi.awvalid <= s_axi4lite_awvalid;
	axi4lite_mosi.bready <= s_axi4lite_bready;
	axi4lite_mosi.rready <= s_axi4lite_rready;
	axi4lite_mosi.wdata <= s_axi4lite_wdata;
	axi4lite_mosi.wstrb <= s_axi4lite_wstrb;
	axi4lite_mosi.wvalid <= s_axi4lite_wvalid;
end architecture;