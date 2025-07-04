-- Generated from Simulink block acc_cnt
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_acc_cnt is
  port (
    out_reg : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_acc_cnt_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_acc_cnt;
architecture structural of test_spec_acc_cnt is 
  signal assert_reg_dout_net : std_logic_vector( 32-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal acc_cntr_op_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
begin
  acc_cntr_op_net <= out_reg;
  test_spec_acc_cnt_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => reint1_output_port_net,
    q => io_delay_q_net
  );
  cast_gw : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => io_delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_gw_dout_net
  );
  assert_reg : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 32,
    dout_width => 32
  )
  port map (
    din => acc_cntr_op_net,
    dout => assert_reg_dout_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_reg_dout_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block edge_detect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_edge_detect_x4 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_edge_detect_x4;
architecture structural of test_spec_edge_detect_x4 is 
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= edge_op_y_net;
  register_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  edge_op : entity xil_defaultlib.sysgen_logical_538c1e2075 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay_q_net,
    y => edge_op_y_net
  );
end structural;
-- Generated from Simulink block pipeline15
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pipeline15_x0 is
  port (
    d : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_pipeline15_x0;
architecture structural of test_spec_pipeline15_x0 is 
  signal register0_q_net : std_logic_vector( 32-1 downto 0 );
  signal shift_op_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  q <= register0_q_net;
  shift_op_net <= d;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => shift_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register0_q_net
  );
end structural;
-- Generated from Simulink block acc_cntrl
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_acc_cntrl is
  port (
    acc_len : in std_logic_vector( 32-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    new_acc : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_acc_cntrl;
architecture structural of test_spec_acc_cntrl is 
  signal fft_start_frame_out_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 32-1 downto 0 );
  signal shift_op_net : std_logic_vector( 32-1 downto 0 );
  signal cntr_op_net : std_logic_vector( 32-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
begin
  new_acc <= relational5_op_net;
  reint1_output_port_net <= acc_len;
  fft_start_frame_out_net <= sync;
  edge_op_y_net_x0 <= rst;
  clk_net <= clk_1;
  ce_net <= ce_1;
  edge_detect : entity xil_defaultlib.test_spec_edge_detect_x4 
  port map (
    in_x0 => register_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => edge_op_y_net
  );
  pipeline15 : entity xil_defaultlib.test_spec_pipeline15_x0 
  port map (
    d => shift_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q => register0_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => edge_op_y_net,
    d1 => relational5_op_net,
    y => logical_y_net
  );
  register_x0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => fft_start_frame_out_net,
    rst => edge_op_y_net_x0,
    en => fft_start_frame_out_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  relational5 : entity xil_defaultlib.sysgen_relational_fd99ca3143 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => cntr_op_net,
    b => register0_q_net,
    op => relational5_op_net
  );
  shift : entity xil_defaultlib.sysgen_shift_5b44005b0e 
  port map (
    clr => '0',
    ip => reint1_output_port_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  cntr : entity xil_defaultlib.sysgen_counter_9ca35116ef 
  port map (
    clr => '0',
    rst => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => cntr_op_net
  );
end structural;
-- Generated from Simulink block acc_len
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_acc_len is
  port (
    test_spec_acc_len_user_data_out : in std_logic_vector( 32-1 downto 0 );
    in_reg : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_acc_len;
architecture structural of test_spec_acc_len is 
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal test_spec_acc_len_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal slice_reg_y_net : std_logic_vector( 32-1 downto 0 );
begin
  in_reg <= reint1_output_port_net;
  test_spec_acc_len_user_data_out_net <= test_spec_acc_len_user_data_out;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => test_spec_acc_len_user_data_out_net,
    q => io_delay_q_net
  );
  slice_reg : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 31,
    x_width => 32,
    y_width => 32
  )
  port map (
    x => io_delay_q_net,
    y => slice_reg_y_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_reg_y_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block buscreate
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_buscreate_x1 is
  port (
    in1 : in std_logic_vector( 31-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    bus_out : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_buscreate_x1;
architecture structural of test_spec_buscreate_x1 is 
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal assert_p_acc0_dout_net : std_logic_vector( 31-1 downto 0 );
  signal assert_val_acc0_dout_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 31-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 1-1 downto 0 );
begin
  bus_out <= concatenate_y_net;
  assert_p_acc0_dout_net <= in1;
  assert_val_acc0_dout_net <= in2;
  concatenate : entity xil_defaultlib.sysgen_concat_f40e6ba8db 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    y => concatenate_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_49f26d113a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_p_acc0_dout_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_val_acc0_dout_net,
    output_port => reinterpret2_output_port_net
  );
end structural;
-- Generated from Simulink block edge_detect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_edge_detect_x3 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_edge_detect_x3;
architecture structural of test_spec_edge_detect_x3 is 
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= edge_op_y_net;
  slice3_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  edge_op : entity xil_defaultlib.sysgen_logical_865f8d9b31 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay_q_net,
    y => edge_op_y_net
  );
end structural;
-- Generated from Simulink block add_gen
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_add_gen_x0 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    go : in std_logic_vector( 1-1 downto 0 );
    cont : in std_logic_vector( 1-1 downto 0 );
    init : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    add : out std_logic_vector( 12-1 downto 0 );
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 );
    status : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_add_gen_x0;
architecture structural of test_spec_add_gen_x0 is 
  signal slice1_y_net : std_logic_vector( 14-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal add_gen_op_net : std_logic_vector( 15-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 12-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 32-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal shift_op_net : std_logic_vector( 17-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 14-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal edge_op_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 17-1 downto 0 );
  signal register5_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
begin
  add <= slice2_y_net;
  dout <= delay6_q_net;
  we_o <= logical6_y_net;
  status <= concat_y_net;
  data_choice_y_net <= din;
  we_choice_y_net <= we;
  register6_q_net <= go;
  never_op_net <= cont;
  edge_op_y_net <= init;
  clk_net <= clk_1;
  ce_net <= ce_1;
  edge_detect : entity xil_defaultlib.test_spec_edge_detect_x3 
  port map (
    in_x0 => slice3_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => edge_op_y_net_x0
  );
  concat : entity xil_defaultlib.sysgen_concat_738ae8db00 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => shift_op_net,
    in1 => inverter_op_net,
    in2 => delay1_q_net,
    y => concat_y_net
  );
  convert : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 17,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  delay : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 14
  )
  port map (
    en => '1',
    rst => '0',
    d => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay3 : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => never_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay6 : entity xil_defaultlib.sysgen_delay_6ca894e075 
  port map (
    clr => '0',
    d => data_choice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_6cd792a802 
  port map (
    clr => '0',
    ip => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => edge_op_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_71cd2f8184 
  port map (
    clr => '0',
    d0 => we_choice_y_net,
    d1 => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical4 : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay3_q_net,
    d1 => inverter1_op_net,
    y => logical4_y_net
  );
  logical6 : entity xil_defaultlib.sysgen_logical_a06ef6f5d2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => register5_q_net,
    d1 => logical4_y_net,
    d2 => logical1_y_net,
    y => logical6_y_net
  );
  register5 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"1"
  )
  port map (
    d => delay3_q_net,
    rst => delay_q_net,
    en => edge_op_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register5_q_net
  );
  shift : entity xil_defaultlib.sysgen_shift_3f63cc4867 
  port map (
    clr => '0',
    ip => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  add_gen : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i3",
    op_arith => xlUnsigned,
    op_width => 15
  )
  port map (
    clr => '0',
    rst => delay4_q_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    op => add_gen_op_net
  );
  slice1 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 13,
    x_width => 15,
    y_width => 14
  )
  port map (
    x => add_gen_op_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 13,
    x_width => 15,
    y_width => 12
  )
  port map (
    x => add_gen_op_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 14,
    new_msb => 14,
    x_width => 15,
    y_width => 1
  )
  port map (
    x => add_gen_op_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block dram_munge
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_dram_munge_x0 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    init : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_dram_munge_x0;
architecture structural of test_spec_dram_munge_x0 is 
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
  signal mux1_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal con2_op_net : std_logic_vector( 2-1 downto 0 );
  signal con3_op_net : std_logic_vector( 2-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 80-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal register3_q_net : std_logic_vector( 32-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 80-1 downto 0 );
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 80-1 downto 0 );
  signal dout_count_op_net : std_logic_vector( 1-1 downto 0 );
  signal input_count_op_net : std_logic_vector( 2-1 downto 0 );
  signal con0_op_net : std_logic_vector( 2-1 downto 0 );
  signal con1_op_net : std_logic_vector( 2-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal dram_op_net : std_logic_vector( 1-1 downto 0 );
begin
  dout <= data_choice_y_net;
  we_o <= we_choice_y_net;
  cast_dout_net <= din;
  mux1_y_net_x0 <= we;
  edge_op_y_net <= init;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_0f1805fbe0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => register_q_net,
    in2 => constant_op_net,
    in3 => register1_q_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_0f1805fbe0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => register2_q_net,
    in2 => constant_op_net,
    in3 => register3_q_net,
    y => concat1_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_c62ba0776b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_71cd2f8184 
  port map (
    clr => '0',
    d0 => relational3_op_net,
    d1 => mux1_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => delay_q_net,
    y => logical1_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_0db6dd746b 
  port map (
    clr => '0',
    sel => dout_count_op_net,
    d0 => concat_y_net,
    d1 => concat1_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  register_x0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con0_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con1_op_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con2_op_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con3_op_net,
    op => relational3_op_net
  );
  con0 : entity xil_defaultlib.sysgen_constant_52b0261597 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con0_op_net
  );
  con1 : entity xil_defaultlib.sysgen_constant_c3d244eb8a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con1_op_net
  );
  con2 : entity xil_defaultlib.sysgen_constant_0605642079 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con2_op_net
  );
  con3 : entity xil_defaultlib.sysgen_constant_4082067a31 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con3_op_net
  );
  data_choice : entity xil_defaultlib.sysgen_mux_7277f86949 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => dram_op_net,
    d0 => cast_dout_net,
    d1 => mux1_y_net,
    y => data_choice_y_net
  );
  dout_count : entity xil_defaultlib.sysgen_counter_bb9c12d25e 
  port map (
    clr => '0',
    rst => edge_op_y_net,
    en => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    op => dout_count_op_net
  );
  dram : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => dram_op_net
  );
  input_count : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i4",
    op_arith => xlUnsigned,
    op_width => 2
  )
  port map (
    clr => '0',
    rst => edge_op_y_net,
    en => mux1_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => input_count_op_net
  );
  we_choice : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => dram_op_net,
    d0 => mux1_y_net_x0,
    d1 => delay1_q_net,
    y => we_choice_y_net
  );
end structural;
-- Generated from Simulink block edge_detect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_edge_detect_x2 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_edge_detect_x2;
architecture structural of test_spec_edge_detect_x2 is 
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= edge_op_y_net;
  delay1_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  edge_op : entity xil_defaultlib.sysgen_logical_538c1e2075 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay_q_net,
    y => edge_op_y_net
  );
end structural;
-- Generated from Simulink block basic_ctrl
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_basic_ctrl_x0 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    ctrl : in std_logic_vector( 32-1 downto 0 );
    stopi : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 );
    go : out std_logic_vector( 1-1 downto 0 );
    init : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_basic_ctrl_x0;
architecture structural of test_spec_basic_ctrl_x0 is 
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal trig_src_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal valid_src_y_net : std_logic_vector( 1-1 downto 0 );
  signal enable_y_net : std_logic_vector( 1-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal mux1_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 1-1 downto 0 );
begin
  dout <= data_choice_y_net;
  we_o <= we_choice_y_net;
  go <= register6_q_net;
  init <= edge_op_y_net;
  cast_dout_net <= din;
  constant2_op_net <= we;
  register0_q_net <= trig;
  concatenate_y_net <= ctrl;
  never_op_net <= stopi;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dram_munge : entity xil_defaultlib.test_spec_dram_munge_x0 
  port map (
    din => cast_dout_net,
    we => mux1_y_net,
    init => edge_op_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => data_choice_y_net,
    we_o => we_choice_y_net
  );
  edge_detect : entity xil_defaultlib.test_spec_edge_detect_x2 
  port map (
    in_x0 => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => edge_op_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net_x0
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => enable_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => trig_src_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => valid_src_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_4b738f42cd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => delay3_q_net,
    d0 => constant2_op_net,
    d1 => constant2_op_net_x0,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => delay2_q_net,
    d0 => register0_q_net,
    d1 => constant1_op_net,
    y => mux2_y_net
  );
  register1 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant_op_net,
    rst => logical_y_net,
    en => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register6 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => mux2_y_net,
    rst => edge_op_y_net,
    en => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  enable : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => enable_y_net
  );
  trig_src : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => trig_src_y_net
  );
  valid_src : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => valid_src_y_net
  );
end structural;
-- Generated from Simulink block calc_add
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_calc_add_x0 is
  port (
    in_x0 : in std_logic_vector( 12-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 12-1 downto 0 )
  );
end test_spec_calc_add_x0;
architecture structural of test_spec_calc_add_x0 is 
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal manipulate_op_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal add_sub_s_net : std_logic_vector( 1-1 downto 0 );
  signal const_op_net : std_logic_vector( 1-1 downto 0 );
  signal lsw_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 12-1 downto 0 );
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal clk_net : std_logic;
  signal concat_y_net : std_logic_vector( 12-1 downto 0 );
  signal msw_y_net : std_logic_vector( 11-1 downto 0 );
begin
  out_x0 <= mux_y_net;
  add_del_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  add_sub : entity xil_defaultlib.sysgen_addsub_ec833fec71 
  port map (
    clr => '0',
    a => const_op_net,
    b => lsw_y_net,
    clk => clk_net,
    ce => ce_net,
    s => add_sub_s_net
  );
  concat : entity xil_defaultlib.sysgen_concat_339c82ac9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => msw_y_net,
    in1 => add_sub_s_net,
    y => concat_y_net
  );
  const : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => const_op_net
  );
  convert_addr : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 12,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 12,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => add_del_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_addr_dout_net
  );
  lsw : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 12,
    y_width => 1
  )
  port map (
    x => convert_addr_dout_net,
    y => lsw_y_net
  );
  manipulate : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => manipulate_op_net
  );
  msw : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 11,
    x_width => 12,
    y_width => 11
  )
  port map (
    x => convert_addr_dout_net,
    y => msw_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_c5c11734ab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => manipulate_op_net,
    d0 => convert_addr_dout_net,
    d1 => concat_y_net,
    y => mux_y_net
  );
end structural;
-- Generated from Simulink block munge_in
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_munge_in_x0 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    dout : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_munge_in_x0;
architecture structural of test_spec_munge_in_x0 is 
  signal reinterpret_out_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
begin
  dout <= reinterpret_out_output_port_net;
  dat_del_q_net <= din;
  reinterpret_out : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => dat_del_q_net,
    output_port => reinterpret_out_output_port_net
  );
end structural;
-- Generated from Simulink block bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_bram_x0 is
  port (
    addr : in std_logic_vector( 12-1 downto 0 );
    data_in : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_accum0_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accum0_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accum0_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_bram_x0;
architecture structural of test_spec_bram_x0 is 
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
  signal we_del_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal mux_y_net : std_logic_vector( 12-1 downto 0 );
  signal reinterpret_out_output_port_net : std_logic_vector( 32-1 downto 0 );
begin
  add_del_q_net <= addr;
  dat_del_q_net <= data_in;
  we_del_q_net <= we;
  test_spec_accum0_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_accum0_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_accum0_snap_ss_bram_we <= convert_we_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  calc_add : entity xil_defaultlib.test_spec_calc_add_x0 
  port map (
    in_x0 => add_del_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net
  );
  munge_in : entity xil_defaultlib.test_spec_munge_in_x0 
  port map (
    din => dat_del_q_net,
    dout => reinterpret_out_output_port_net
  );
  convert_addr : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 12,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 12,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_addr_dout_net
  );
  convert_din1 : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret_out_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_din1_dout_net
  );
  convert_we : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => we_del_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_we_dout_net
  );
end structural;
-- Generated from Simulink block ctrl
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl_x1 is
  port (
    test_spec_accum0_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    in_reg : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ctrl_x1;
architecture structural of test_spec_ctrl_x1 is 
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal test_spec_accum0_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal slice_reg_y_net : std_logic_vector( 32-1 downto 0 );
begin
  in_reg <= reint1_output_port_net;
  test_spec_accum0_snap_ss_ctrl_user_data_out_net <= test_spec_accum0_snap_ss_ctrl_user_data_out;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => test_spec_accum0_snap_ss_ctrl_user_data_out_net,
    q => io_delay_q_net
  );
  slice_reg : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 31,
    x_width => 32,
    y_width => 32
  )
  port map (
    x => io_delay_q_net,
    y => slice_reg_y_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_reg_y_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block ctrl_combine
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl_combine_x1 is
  port (
    in1 : in std_logic_vector( 28-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    in3 : in std_logic_vector( 2-1 downto 0 );
    in4 : in std_logic_vector( 1-1 downto 0 );
    bus_out : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ctrl_combine_x1;
architecture structural of test_spec_ctrl_combine_x1 is 
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret4_output_port_net_x0 : std_logic_vector( 28-1 downto 0 );
  signal circ_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal reinterpret2_output_port_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 1-1 downto 0 );
begin
  bus_out <= concatenate_y_net;
  reinterpret4_output_port_net_x0 <= in1;
  circ_or_y_net <= in2;
  reinterpret2_output_port_net <= in3;
  arm_or_y_net <= in4;
  concatenate : entity xil_defaultlib.sysgen_concat_d7200485ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net_x0,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concatenate_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_4d69058d55 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => reinterpret4_output_port_net_x0,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => circ_or_y_net,
    output_port => reinterpret2_output_port_net_x0
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_02673fd6af 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => reinterpret2_output_port_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => arm_or_y_net,
    output_port => reinterpret4_output_port_net
  );
end structural;
-- Generated from Simulink block ctrl_split
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl_split_x1 is
  port (
    bus_in : in std_logic_vector( 32-1 downto 0 );
    msb_out4 : out std_logic_vector( 28-1 downto 0 );
    out3 : out std_logic_vector( 1-1 downto 0 );
    out2 : out std_logic_vector( 2-1 downto 0 );
    lsb_out1 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_ctrl_split_x1;
architecture structural of test_spec_ctrl_split_x1 is 
  signal slice2_y_net : std_logic_vector( 2-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 28-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
begin
  msb_out4 <= reinterpret4_output_port_net;
  out3 <= slice3_y_net;
  out2 <= reinterpret2_output_port_net;
  lsb_out1 <= slice1_y_net;
  reint1_output_port_net <= bus_in;
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_02673fd6af 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice2_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_4d69058d55 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice4_y_net,
    output_port => reinterpret4_output_port_net
  );
  slice1 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => reint1_output_port_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 2,
    x_width => 32,
    y_width => 2
  )
  port map (
    x => reint1_output_port_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 3,
    new_msb => 3,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => reint1_output_port_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 4,
    new_msb => 31,
    x_width => 32,
    y_width => 28
  )
  port map (
    x => reint1_output_port_net,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block status
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_status_x1 is
  port (
    out_reg : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_accum0_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_status_x1;
architecture structural of test_spec_status_x1 is 
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal assert_reg_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
begin
  concat_y_net <= out_reg;
  test_spec_accum0_snap_ss_status_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => reint1_output_port_net,
    q => io_delay_q_net
  );
  cast_gw : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => io_delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_gw_dout_net
  );
  assert_reg : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 32,
    dout_width => 32
  )
  port map (
    din => concat_y_net,
    dout => assert_reg_dout_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_reg_dout_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block ss
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ss_x0 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    test_spec_accum0_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    arm_out : out std_logic_vector( 1-1 downto 0 );
    goto_31470454_we1 : out std_logic_vector( 1-1 downto 0 );
    goto_31470454_we4 : out std_logic_vector( 1-1 downto 0 );
    test_spec_accum0_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accum0_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accum0_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_accum0_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ss_x0;
architecture structural of test_spec_ss_x0 is 
  signal arm_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_accum0_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal slice2_y_net : std_logic_vector( 12-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 32-1 downto 0 );
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
  signal concatenate_y_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal ri_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal circ_op_net : std_logic_vector( 1-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
  signal we_del_q_net : std_logic_vector( 1-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal circ_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
begin
  arm_out <= arm_or_y_net;
  concatenate_y_net <= din;
  constant2_op_net <= we;
  register0_q_net <= trig;
  goto_31470454_we1 <= we_choice_y_net;
  goto_31470454_we4 <= logical6_y_net;
  test_spec_accum0_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_accum0_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_accum0_snap_ss_bram_we <= convert_we_dout_net;
  test_spec_accum0_snap_ss_ctrl_user_data_out_net <= test_spec_accum0_snap_ss_ctrl_user_data_out;
  test_spec_accum0_snap_ss_status_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  add_gen : entity xil_defaultlib.test_spec_add_gen_x0 
  port map (
    din => data_choice_y_net,
    we => we_choice_y_net,
    go => register6_q_net,
    cont => never_op_net,
    init => edge_op_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    add => slice2_y_net,
    dout => delay6_q_net,
    we_o => logical6_y_net,
    status => concat_y_net
  );
  basic_ctrl : entity xil_defaultlib.test_spec_basic_ctrl_x0 
  port map (
    din => cast_dout_net,
    we => constant2_op_net,
    trig => register0_q_net,
    ctrl => concatenate_y_net_x0,
    stopi => never_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => data_choice_y_net,
    we_o => we_choice_y_net,
    go => register6_q_net,
    init => edge_op_y_net_x0
  );
  bram : entity xil_defaultlib.test_spec_bram_x0 
  port map (
    addr => add_del_q_net,
    data_in => dat_del_q_net,
    we => we_del_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_accum0_snap_ss_bram_addr => convert_addr_dout_net,
    test_spec_accum0_snap_ss_bram_data_in => convert_din1_dout_net,
    test_spec_accum0_snap_ss_bram_we => convert_we_dout_net
  );
  ctrl : entity xil_defaultlib.test_spec_ctrl_x1 
  port map (
    test_spec_accum0_snap_ss_ctrl_user_data_out => test_spec_accum0_snap_ss_ctrl_user_data_out_net,
    in_reg => reint1_output_port_net
  );
  ctrl_combine : entity xil_defaultlib.test_spec_ctrl_combine_x1 
  port map (
    in1 => reinterpret4_output_port_net,
    in2 => circ_or_y_net,
    in3 => reinterpret2_output_port_net,
    in4 => arm_or_y_net,
    bus_out => concatenate_y_net_x0
  );
  ctrl_split : entity xil_defaultlib.test_spec_ctrl_split_x1 
  port map (
    bus_in => reint1_output_port_net,
    msb_out4 => reinterpret4_output_port_net,
    out3 => slice3_y_net,
    out2 => reinterpret2_output_port_net,
    lsb_out1 => slice1_y_net
  );
  status : entity xil_defaultlib.test_spec_status_x1 
  port map (
    out_reg => concat_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_accum0_snap_ss_status_user_data_in => cast_gw_dout_net
  );
  add_del : entity xil_defaultlib.sysgen_delay_1144a62f70 
  port map (
    clr => '0',
    d => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => add_del_q_net
  );
  arm : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => arm_op_net
  );
  arm_or : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice1_y_net,
    d1 => arm_op_net,
    y => arm_or_y_net
  );
  cast : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => ri_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_dout_net
  );
  circ : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => circ_op_net
  );
  circ_or : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice3_y_net,
    d1 => circ_op_net,
    y => circ_or_y_net
  );
  dat_del : entity xil_defaultlib.sysgen_delay_6ca894e075 
  port map (
    clr => '0',
    d => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => dat_del_q_net
  );
  never : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => never_op_net
  );
  ri : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concatenate_y_net,
    output_port => ri_output_port_net
  );
  we_del : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => we_del_q_net
  );
end structural;
-- Generated from Simulink block accum0_snap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_accum0_snap is
  port (
    in_p_acc0 : in std_logic_vector( 31-1 downto 0 );
    in_val_acc0 : in std_logic_vector( 1-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    test_spec_accum0_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    arm_out : out std_logic_vector( 1-1 downto 0 );
    test_spec_accum0_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accum0_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accum0_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_accum0_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 );
    goto_31470454_we1 : out std_logic_vector( 1-1 downto 0 );
    goto_31470454_we4 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_accum0_snap;
architecture structural of test_spec_accum0_snap is 
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 31-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal assert_p_acc0_dout_net : std_logic_vector( 31-1 downto 0 );
  signal assert_val_acc0_dout_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_accum0_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
begin
  arm_out <= arm_or_y_net;
  single_port_ram_data_out_net <= in_p_acc0;
  relational5_op_net <= in_val_acc0;
  constant2_op_net <= we;
  register0_q_net <= trig;
  test_spec_accum0_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_accum0_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_accum0_snap_ss_bram_we <= convert_we_dout_net;
  test_spec_accum0_snap_ss_ctrl_user_data_out_net <= test_spec_accum0_snap_ss_ctrl_user_data_out;
  test_spec_accum0_snap_ss_status_user_data_in <= cast_gw_dout_net;
  goto_31470454_we1 <= we_choice_y_net;
  goto_31470454_we4 <= logical6_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  buscreate : entity xil_defaultlib.test_spec_buscreate_x1 
  port map (
    in1 => assert_p_acc0_dout_net,
    in2 => assert_val_acc0_dout_net,
    bus_out => concatenate_y_net
  );
  ss : entity xil_defaultlib.test_spec_ss_x0 
  port map (
    din => concatenate_y_net,
    we => constant2_op_net,
    trig => register0_q_net,
    test_spec_accum0_snap_ss_ctrl_user_data_out => test_spec_accum0_snap_ss_ctrl_user_data_out_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    arm_out => arm_or_y_net,
    goto_31470454_we1 => we_choice_y_net,
    goto_31470454_we4 => logical6_y_net,
    test_spec_accum0_snap_ss_bram_addr => convert_addr_dout_net,
    test_spec_accum0_snap_ss_bram_data_in => convert_din1_dout_net,
    test_spec_accum0_snap_ss_bram_we => convert_we_dout_net,
    test_spec_accum0_snap_ss_status_user_data_in => cast_gw_dout_net
  );
  assert_p_acc0 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 31,
    dout_width => 31
  )
  port map (
    din => single_port_ram_data_out_net,
    dout => assert_p_acc0_dout_net
  );
  assert_val_acc0 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 1,
    dout_width => 1
  )
  port map (
    din => relational5_op_net,
    dout => assert_val_acc0_dout_net
  );
end structural;
-- Generated from Simulink block buscreate
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_buscreate_x0 is
  port (
    in1 : in std_logic_vector( 31-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    bus_out : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_buscreate_x0;
architecture structural of test_spec_buscreate_x0 is 
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal assert_p_acc1_dout_net : std_logic_vector( 31-1 downto 0 );
  signal assert_val_acc1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 31-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 1-1 downto 0 );
begin
  bus_out <= concatenate_y_net;
  assert_p_acc1_dout_net <= in1;
  assert_val_acc1_dout_net <= in2;
  concatenate : entity xil_defaultlib.sysgen_concat_f40e6ba8db 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    y => concatenate_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_49f26d113a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_p_acc1_dout_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_val_acc1_dout_net,
    output_port => reinterpret2_output_port_net
  );
end structural;
-- Generated from Simulink block edge_detect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_edge_detect_x8 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_edge_detect_x8;
architecture structural of test_spec_edge_detect_x8 is 
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  out_x0 <= edge_op_y_net;
  slice3_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  edge_op : entity xil_defaultlib.sysgen_logical_865f8d9b31 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay_q_net,
    y => edge_op_y_net
  );
end structural;
-- Generated from Simulink block add_gen
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_add_gen_x1 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    go : in std_logic_vector( 1-1 downto 0 );
    cont : in std_logic_vector( 1-1 downto 0 );
    init : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    add : out std_logic_vector( 12-1 downto 0 );
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 );
    status : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_add_gen_x1;
architecture structural of test_spec_add_gen_x1 is 
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 12-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 32-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal edge_op_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 14-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 17-1 downto 0 );
  signal register5_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal add_gen_op_net : std_logic_vector( 15-1 downto 0 );
  signal shift_op_net : std_logic_vector( 17-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 14-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
begin
  add <= slice2_y_net;
  dout <= delay6_q_net;
  we_o <= logical6_y_net;
  status <= concat_y_net;
  data_choice_y_net <= din;
  we_choice_y_net <= we;
  register6_q_net <= go;
  never_op_net <= cont;
  edge_op_y_net <= init;
  clk_net <= clk_1;
  ce_net <= ce_1;
  edge_detect : entity xil_defaultlib.test_spec_edge_detect_x8 
  port map (
    in_x0 => slice3_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => edge_op_y_net_x0
  );
  concat : entity xil_defaultlib.sysgen_concat_738ae8db00 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => shift_op_net,
    in1 => inverter_op_net,
    in2 => delay1_q_net,
    y => concat_y_net
  );
  convert : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 17,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  delay : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 14
  )
  port map (
    en => '1',
    rst => '0',
    d => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay3 : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => never_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay6 : entity xil_defaultlib.sysgen_delay_6ca894e075 
  port map (
    clr => '0',
    d => data_choice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_6cd792a802 
  port map (
    clr => '0',
    ip => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => edge_op_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_71cd2f8184 
  port map (
    clr => '0',
    d0 => we_choice_y_net,
    d1 => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical4 : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay3_q_net,
    d1 => inverter1_op_net,
    y => logical4_y_net
  );
  logical6 : entity xil_defaultlib.sysgen_logical_a06ef6f5d2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => register5_q_net,
    d1 => logical4_y_net,
    d2 => logical1_y_net,
    y => logical6_y_net
  );
  register5 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"1"
  )
  port map (
    d => delay3_q_net,
    rst => delay_q_net,
    en => edge_op_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register5_q_net
  );
  shift : entity xil_defaultlib.sysgen_shift_3f63cc4867 
  port map (
    clr => '0',
    ip => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  add_gen : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i3",
    op_arith => xlUnsigned,
    op_width => 15
  )
  port map (
    clr => '0',
    rst => delay4_q_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    op => add_gen_op_net
  );
  slice1 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 13,
    x_width => 15,
    y_width => 14
  )
  port map (
    x => add_gen_op_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 13,
    x_width => 15,
    y_width => 12
  )
  port map (
    x => add_gen_op_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 14,
    new_msb => 14,
    x_width => 15,
    y_width => 1
  )
  port map (
    x => add_gen_op_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block dram_munge
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_dram_munge_x2 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    init : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_dram_munge_x2;
architecture structural of test_spec_dram_munge_x2 is 
  signal mux1_y_net : std_logic_vector( 80-1 downto 0 );
  signal dout_count_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 80-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal register3_q_net : std_logic_vector( 32-1 downto 0 );
  signal con2_op_net : std_logic_vector( 2-1 downto 0 );
  signal con3_op_net : std_logic_vector( 2-1 downto 0 );
  signal dram_op_net : std_logic_vector( 1-1 downto 0 );
  signal input_count_op_net : std_logic_vector( 2-1 downto 0 );
  signal con0_op_net : std_logic_vector( 2-1 downto 0 );
  signal con1_op_net : std_logic_vector( 2-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 80-1 downto 0 );
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
  signal mux1_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
begin
  dout <= data_choice_y_net;
  we_o <= we_choice_y_net;
  cast_dout_net <= din;
  mux1_y_net_x0 <= we;
  edge_op_y_net <= init;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_0f1805fbe0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => register_q_net,
    in2 => constant_op_net,
    in3 => register1_q_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_0f1805fbe0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => register2_q_net,
    in2 => constant_op_net,
    in3 => register3_q_net,
    y => concat1_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_c62ba0776b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_71cd2f8184 
  port map (
    clr => '0',
    d0 => relational3_op_net,
    d1 => mux1_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => delay_q_net,
    y => logical1_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_0db6dd746b 
  port map (
    clr => '0',
    sel => dout_count_op_net,
    d0 => concat_y_net,
    d1 => concat1_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  register_x0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con0_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con1_op_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con2_op_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con3_op_net,
    op => relational3_op_net
  );
  con0 : entity xil_defaultlib.sysgen_constant_52b0261597 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con0_op_net
  );
  con1 : entity xil_defaultlib.sysgen_constant_c3d244eb8a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con1_op_net
  );
  con2 : entity xil_defaultlib.sysgen_constant_0605642079 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con2_op_net
  );
  con3 : entity xil_defaultlib.sysgen_constant_4082067a31 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con3_op_net
  );
  data_choice : entity xil_defaultlib.sysgen_mux_7277f86949 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => dram_op_net,
    d0 => cast_dout_net,
    d1 => mux1_y_net,
    y => data_choice_y_net
  );
  dout_count : entity xil_defaultlib.sysgen_counter_bb9c12d25e 
  port map (
    clr => '0',
    rst => edge_op_y_net,
    en => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    op => dout_count_op_net
  );
  dram : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => dram_op_net
  );
  input_count : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i4",
    op_arith => xlUnsigned,
    op_width => 2
  )
  port map (
    clr => '0',
    rst => edge_op_y_net,
    en => mux1_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => input_count_op_net
  );
  we_choice : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => dram_op_net,
    d0 => mux1_y_net_x0,
    d1 => delay1_q_net,
    y => we_choice_y_net
  );
end structural;
-- Generated from Simulink block edge_detect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_edge_detect_x7 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_edge_detect_x7;
architecture structural of test_spec_edge_detect_x7 is 
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  out_x0 <= edge_op_y_net;
  delay1_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  edge_op : entity xil_defaultlib.sysgen_logical_538c1e2075 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay_q_net,
    y => edge_op_y_net
  );
end structural;
-- Generated from Simulink block basic_ctrl
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_basic_ctrl_x2 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    ctrl : in std_logic_vector( 32-1 downto 0 );
    stopi : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 );
    go : out std_logic_vector( 1-1 downto 0 );
    init : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_basic_ctrl_x2;
architecture structural of test_spec_basic_ctrl_x2 is 
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal valid_src_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal mux1_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal enable_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal trig_src_y_net : std_logic_vector( 1-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 1-1 downto 0 );
begin
  dout <= data_choice_y_net;
  we_o <= we_choice_y_net;
  go <= register6_q_net;
  init <= edge_op_y_net;
  cast_dout_net <= din;
  constant7_op_net <= we;
  register0_q_net <= trig;
  concatenate_y_net <= ctrl;
  never_op_net <= stopi;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dram_munge : entity xil_defaultlib.test_spec_dram_munge_x2 
  port map (
    din => cast_dout_net,
    we => mux1_y_net,
    init => edge_op_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => data_choice_y_net,
    we_o => we_choice_y_net
  );
  edge_detect : entity xil_defaultlib.test_spec_edge_detect_x7 
  port map (
    in_x0 => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => edge_op_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => enable_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => trig_src_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => valid_src_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_4b738f42cd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => delay3_q_net,
    d0 => constant7_op_net,
    d1 => constant2_op_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => delay2_q_net,
    d0 => register0_q_net,
    d1 => constant1_op_net,
    y => mux2_y_net
  );
  register1 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant_op_net,
    rst => logical_y_net,
    en => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register6 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => mux2_y_net,
    rst => edge_op_y_net,
    en => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  enable : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => enable_y_net
  );
  trig_src : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => trig_src_y_net
  );
  valid_src : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => valid_src_y_net
  );
end structural;
-- Generated from Simulink block calc_add
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_calc_add_x2 is
  port (
    in_x0 : in std_logic_vector( 12-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 12-1 downto 0 )
  );
end test_spec_calc_add_x2;
architecture structural of test_spec_calc_add_x2 is 
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal mux_y_net : std_logic_vector( 12-1 downto 0 );
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal add_sub_s_net : std_logic_vector( 1-1 downto 0 );
  signal const_op_net : std_logic_vector( 1-1 downto 0 );
  signal lsw_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 12-1 downto 0 );
  signal msw_y_net : std_logic_vector( 11-1 downto 0 );
  signal manipulate_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= mux_y_net;
  add_del_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  add_sub : entity xil_defaultlib.sysgen_addsub_ec833fec71 
  port map (
    clr => '0',
    a => const_op_net,
    b => lsw_y_net,
    clk => clk_net,
    ce => ce_net,
    s => add_sub_s_net
  );
  concat : entity xil_defaultlib.sysgen_concat_339c82ac9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => msw_y_net,
    in1 => add_sub_s_net,
    y => concat_y_net
  );
  const : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => const_op_net
  );
  convert_addr : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 12,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 12,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => add_del_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_addr_dout_net
  );
  lsw : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 12,
    y_width => 1
  )
  port map (
    x => convert_addr_dout_net,
    y => lsw_y_net
  );
  manipulate : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => manipulate_op_net
  );
  msw : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 11,
    x_width => 12,
    y_width => 11
  )
  port map (
    x => convert_addr_dout_net,
    y => msw_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_c5c11734ab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => manipulate_op_net,
    d0 => convert_addr_dout_net,
    d1 => concat_y_net,
    y => mux_y_net
  );
end structural;
-- Generated from Simulink block munge_in
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_munge_in_x2 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    dout : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_munge_in_x2;
architecture structural of test_spec_munge_in_x2 is 
  signal reinterpret_out_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
begin
  dout <= reinterpret_out_output_port_net;
  dat_del_q_net <= din;
  reinterpret_out : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => dat_del_q_net,
    output_port => reinterpret_out_output_port_net
  );
end structural;
-- Generated from Simulink block bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_bram_x2 is
  port (
    addr : in std_logic_vector( 12-1 downto 0 );
    data_in : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_accum1_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accum1_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accum1_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_bram_x2;
architecture structural of test_spec_bram_x2 is 
  signal we_del_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal mux_y_net : std_logic_vector( 12-1 downto 0 );
  signal reinterpret_out_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
begin
  add_del_q_net <= addr;
  dat_del_q_net <= data_in;
  we_del_q_net <= we;
  test_spec_accum1_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_accum1_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_accum1_snap_ss_bram_we <= convert_we_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  calc_add : entity xil_defaultlib.test_spec_calc_add_x2 
  port map (
    in_x0 => add_del_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net
  );
  munge_in : entity xil_defaultlib.test_spec_munge_in_x2 
  port map (
    din => dat_del_q_net,
    dout => reinterpret_out_output_port_net
  );
  convert_addr : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 12,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 12,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_addr_dout_net
  );
  convert_din1 : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret_out_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_din1_dout_net
  );
  convert_we : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => we_del_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_we_dout_net
  );
end structural;
-- Generated from Simulink block ctrl
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl_x2 is
  port (
    test_spec_accum1_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    in_reg : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ctrl_x2;
architecture structural of test_spec_ctrl_x2 is 
  signal slice_reg_y_net : std_logic_vector( 32-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal test_spec_accum1_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
begin
  in_reg <= reint1_output_port_net;
  test_spec_accum1_snap_ss_ctrl_user_data_out_net <= test_spec_accum1_snap_ss_ctrl_user_data_out;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => test_spec_accum1_snap_ss_ctrl_user_data_out_net,
    q => io_delay_q_net
  );
  slice_reg : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 31,
    x_width => 32,
    y_width => 32
  )
  port map (
    x => io_delay_q_net,
    y => slice_reg_y_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_reg_y_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block ctrl_combine
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl_combine_x2 is
  port (
    in1 : in std_logic_vector( 28-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    in3 : in std_logic_vector( 2-1 downto 0 );
    in4 : in std_logic_vector( 1-1 downto 0 );
    bus_out : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ctrl_combine_x2;
architecture structural of test_spec_ctrl_combine_x2 is 
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret4_output_port_net_x0 : std_logic_vector( 28-1 downto 0 );
  signal circ_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal reinterpret2_output_port_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 1-1 downto 0 );
begin
  bus_out <= concatenate_y_net;
  reinterpret4_output_port_net_x0 <= in1;
  circ_or_y_net <= in2;
  reinterpret2_output_port_net <= in3;
  arm_or_y_net <= in4;
  concatenate : entity xil_defaultlib.sysgen_concat_d7200485ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net_x0,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concatenate_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_4d69058d55 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => reinterpret4_output_port_net_x0,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => circ_or_y_net,
    output_port => reinterpret2_output_port_net_x0
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_02673fd6af 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => reinterpret2_output_port_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => arm_or_y_net,
    output_port => reinterpret4_output_port_net
  );
end structural;
-- Generated from Simulink block ctrl_split
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl_split_x2 is
  port (
    bus_in : in std_logic_vector( 32-1 downto 0 );
    msb_out4 : out std_logic_vector( 28-1 downto 0 );
    out3 : out std_logic_vector( 1-1 downto 0 );
    out2 : out std_logic_vector( 2-1 downto 0 );
    lsb_out1 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_ctrl_split_x2;
architecture structural of test_spec_ctrl_split_x2 is 
  signal reinterpret4_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 2-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 28-1 downto 0 );
begin
  msb_out4 <= reinterpret4_output_port_net;
  out3 <= slice3_y_net;
  out2 <= reinterpret2_output_port_net;
  lsb_out1 <= slice1_y_net;
  reint1_output_port_net <= bus_in;
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_02673fd6af 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice2_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_4d69058d55 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice4_y_net,
    output_port => reinterpret4_output_port_net
  );
  slice1 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => reint1_output_port_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 2,
    x_width => 32,
    y_width => 2
  )
  port map (
    x => reint1_output_port_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 3,
    new_msb => 3,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => reint1_output_port_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 4,
    new_msb => 31,
    x_width => 32,
    y_width => 28
  )
  port map (
    x => reint1_output_port_net,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block status
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_status_x2 is
  port (
    out_reg : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_accum1_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_status_x2;
architecture structural of test_spec_status_x2 is 
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal assert_reg_dout_net : std_logic_vector( 32-1 downto 0 );
begin
  concat_y_net <= out_reg;
  test_spec_accum1_snap_ss_status_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => reint1_output_port_net,
    q => io_delay_q_net
  );
  cast_gw : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => io_delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_gw_dout_net
  );
  assert_reg : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 32,
    dout_width => 32
  )
  port map (
    din => concat_y_net,
    dout => assert_reg_dout_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_reg_dout_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block ss
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ss_x2 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    test_spec_accum1_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    arm_out : out std_logic_vector( 1-1 downto 0 );
    goto_103064183_we1 : out std_logic_vector( 1-1 downto 0 );
    goto_103064183_we4 : out std_logic_vector( 1-1 downto 0 );
    test_spec_accum1_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accum1_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accum1_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_accum1_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ss_x2;
architecture structural of test_spec_ss_x2 is 
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal circ_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal arm_op_net : std_logic_vector( 1-1 downto 0 );
  signal ri_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal circ_op_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_accum1_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal slice2_y_net : std_logic_vector( 12-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 32-1 downto 0 );
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
  signal concatenate_y_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
  signal we_del_q_net : std_logic_vector( 1-1 downto 0 );
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  arm_out <= arm_or_y_net;
  concatenate_y_net <= din;
  constant7_op_net <= we;
  register0_q_net <= trig;
  goto_103064183_we1 <= we_choice_y_net;
  goto_103064183_we4 <= logical6_y_net;
  test_spec_accum1_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_accum1_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_accum1_snap_ss_bram_we <= convert_we_dout_net;
  test_spec_accum1_snap_ss_ctrl_user_data_out_net <= test_spec_accum1_snap_ss_ctrl_user_data_out;
  test_spec_accum1_snap_ss_status_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  add_gen : entity xil_defaultlib.test_spec_add_gen_x1 
  port map (
    din => data_choice_y_net,
    we => we_choice_y_net,
    go => register6_q_net,
    cont => never_op_net,
    init => edge_op_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    add => slice2_y_net,
    dout => delay6_q_net,
    we_o => logical6_y_net,
    status => concat_y_net
  );
  basic_ctrl : entity xil_defaultlib.test_spec_basic_ctrl_x2 
  port map (
    din => cast_dout_net,
    we => constant7_op_net,
    trig => register0_q_net,
    ctrl => concatenate_y_net_x0,
    stopi => never_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => data_choice_y_net,
    we_o => we_choice_y_net,
    go => register6_q_net,
    init => edge_op_y_net_x0
  );
  bram : entity xil_defaultlib.test_spec_bram_x2 
  port map (
    addr => add_del_q_net,
    data_in => dat_del_q_net,
    we => we_del_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_accum1_snap_ss_bram_addr => convert_addr_dout_net,
    test_spec_accum1_snap_ss_bram_data_in => convert_din1_dout_net,
    test_spec_accum1_snap_ss_bram_we => convert_we_dout_net
  );
  ctrl : entity xil_defaultlib.test_spec_ctrl_x2 
  port map (
    test_spec_accum1_snap_ss_ctrl_user_data_out => test_spec_accum1_snap_ss_ctrl_user_data_out_net,
    in_reg => reint1_output_port_net
  );
  ctrl_combine : entity xil_defaultlib.test_spec_ctrl_combine_x2 
  port map (
    in1 => reinterpret4_output_port_net,
    in2 => circ_or_y_net,
    in3 => reinterpret2_output_port_net,
    in4 => arm_or_y_net,
    bus_out => concatenate_y_net_x0
  );
  ctrl_split : entity xil_defaultlib.test_spec_ctrl_split_x2 
  port map (
    bus_in => reint1_output_port_net,
    msb_out4 => reinterpret4_output_port_net,
    out3 => slice3_y_net,
    out2 => reinterpret2_output_port_net,
    lsb_out1 => slice1_y_net
  );
  status : entity xil_defaultlib.test_spec_status_x2 
  port map (
    out_reg => concat_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_accum1_snap_ss_status_user_data_in => cast_gw_dout_net
  );
  add_del : entity xil_defaultlib.sysgen_delay_1144a62f70 
  port map (
    clr => '0',
    d => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => add_del_q_net
  );
  arm : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => arm_op_net
  );
  arm_or : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice1_y_net,
    d1 => arm_op_net,
    y => arm_or_y_net
  );
  cast : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => ri_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_dout_net
  );
  circ : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => circ_op_net
  );
  circ_or : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice3_y_net,
    d1 => circ_op_net,
    y => circ_or_y_net
  );
  dat_del : entity xil_defaultlib.sysgen_delay_6ca894e075 
  port map (
    clr => '0',
    d => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => dat_del_q_net
  );
  never : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => never_op_net
  );
  ri : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concatenate_y_net,
    output_port => ri_output_port_net
  );
  we_del : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => we_del_q_net
  );
end structural;
-- Generated from Simulink block accum1_snap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_accum1_snap is
  port (
    in_p_acc1 : in std_logic_vector( 31-1 downto 0 );
    in_val_acc1 : in std_logic_vector( 1-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    test_spec_accum1_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    arm_out : out std_logic_vector( 1-1 downto 0 );
    test_spec_accum1_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accum1_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accum1_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_accum1_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 );
    goto_103064183_we1 : out std_logic_vector( 1-1 downto 0 );
    goto_103064183_we4 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_accum1_snap;
architecture structural of test_spec_accum1_snap is 
  signal assert_p_acc1_dout_net : std_logic_vector( 31-1 downto 0 );
  signal assert_val_acc1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 31-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_accum1_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
begin
  arm_out <= arm_or_y_net;
  single_port_ram_data_out_net <= in_p_acc1;
  relational5_op_net <= in_val_acc1;
  constant7_op_net <= we;
  register0_q_net <= trig;
  test_spec_accum1_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_accum1_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_accum1_snap_ss_bram_we <= convert_we_dout_net;
  test_spec_accum1_snap_ss_ctrl_user_data_out_net <= test_spec_accum1_snap_ss_ctrl_user_data_out;
  test_spec_accum1_snap_ss_status_user_data_in <= cast_gw_dout_net;
  goto_103064183_we1 <= we_choice_y_net;
  goto_103064183_we4 <= logical6_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  buscreate : entity xil_defaultlib.test_spec_buscreate_x0 
  port map (
    in1 => assert_p_acc1_dout_net,
    in2 => assert_val_acc1_dout_net,
    bus_out => concatenate_y_net
  );
  ss : entity xil_defaultlib.test_spec_ss_x2 
  port map (
    din => concatenate_y_net,
    we => constant7_op_net,
    trig => register0_q_net,
    test_spec_accum1_snap_ss_ctrl_user_data_out => test_spec_accum1_snap_ss_ctrl_user_data_out_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    arm_out => arm_or_y_net,
    goto_103064183_we1 => we_choice_y_net,
    goto_103064183_we4 => logical6_y_net,
    test_spec_accum1_snap_ss_bram_addr => convert_addr_dout_net,
    test_spec_accum1_snap_ss_bram_data_in => convert_din1_dout_net,
    test_spec_accum1_snap_ss_bram_we => convert_we_dout_net,
    test_spec_accum1_snap_ss_status_user_data_in => cast_gw_dout_net
  );
  assert_p_acc1 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 31,
    dout_width => 31
  )
  port map (
    din => single_port_ram_data_out_net,
    dout => assert_p_acc1_dout_net
  );
  assert_val_acc1 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 1,
    dout_width => 1
  )
  port map (
    din => relational5_op_net,
    dout => assert_val_acc1_dout_net
  );
end structural;
-- Generated from Simulink block buscreate
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_buscreate_x2 is
  port (
    in1 : in std_logic_vector( 11-1 downto 0 );
    in2 : in std_logic_vector( 8-1 downto 0 );
    bus_out : out std_logic_vector( 19-1 downto 0 )
  );
end test_spec_buscreate_x2;
architecture structural of test_spec_buscreate_x2 is 
  signal concatenate_y_net : std_logic_vector( 19-1 downto 0 );
  signal assert_ch_acc_dout_net : std_logic_vector( 11-1 downto 0 );
  signal assert_ch_count_dout_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 11-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
begin
  bus_out <= concatenate_y_net;
  assert_ch_acc_dout_net <= in1;
  assert_ch_count_dout_net <= in2;
  concatenate : entity xil_defaultlib.sysgen_concat_2dd5b9a483 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    y => concatenate_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_03aeb4677a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_ch_acc_dout_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_8fa7a96b3e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_ch_count_dout_net,
    output_port => reinterpret2_output_port_net
  );
end structural;
-- Generated from Simulink block edge_detect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_edge_detect_x6 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_edge_detect_x6;
architecture structural of test_spec_edge_detect_x6 is 
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  out_x0 <= edge_op_y_net;
  slice3_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  edge_op : entity xil_defaultlib.sysgen_logical_865f8d9b31 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay_q_net,
    y => edge_op_y_net
  );
end structural;
-- Generated from Simulink block add_gen
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_add_gen_x2 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    go : in std_logic_vector( 1-1 downto 0 );
    cont : in std_logic_vector( 1-1 downto 0 );
    init : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    add : out std_logic_vector( 12-1 downto 0 );
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 );
    status : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_add_gen_x2;
architecture structural of test_spec_add_gen_x2 is 
  signal slice2_y_net : std_logic_vector( 12-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 32-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal edge_op_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal shift_op_net : std_logic_vector( 17-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 14-1 downto 0 );
  signal add_gen_op_net : std_logic_vector( 15-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 17-1 downto 0 );
  signal register5_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 14-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
begin
  add <= slice2_y_net;
  dout <= delay6_q_net;
  we_o <= logical6_y_net;
  status <= concat_y_net;
  data_choice_y_net <= din;
  we_choice_y_net <= we;
  register6_q_net <= go;
  never_op_net <= cont;
  edge_op_y_net <= init;
  clk_net <= clk_1;
  ce_net <= ce_1;
  edge_detect : entity xil_defaultlib.test_spec_edge_detect_x6 
  port map (
    in_x0 => slice3_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => edge_op_y_net_x0
  );
  concat : entity xil_defaultlib.sysgen_concat_738ae8db00 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => shift_op_net,
    in1 => inverter_op_net,
    in2 => delay1_q_net,
    y => concat_y_net
  );
  convert : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 17,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  delay : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 14
  )
  port map (
    en => '1',
    rst => '0',
    d => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay3 : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => never_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay6 : entity xil_defaultlib.sysgen_delay_6ca894e075 
  port map (
    clr => '0',
    d => data_choice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_6cd792a802 
  port map (
    clr => '0',
    ip => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => edge_op_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_71cd2f8184 
  port map (
    clr => '0',
    d0 => we_choice_y_net,
    d1 => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical4 : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay3_q_net,
    d1 => inverter1_op_net,
    y => logical4_y_net
  );
  logical6 : entity xil_defaultlib.sysgen_logical_a06ef6f5d2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => register5_q_net,
    d1 => logical4_y_net,
    d2 => logical1_y_net,
    y => logical6_y_net
  );
  register5 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"1"
  )
  port map (
    d => delay3_q_net,
    rst => delay_q_net,
    en => edge_op_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register5_q_net
  );
  shift : entity xil_defaultlib.sysgen_shift_3f63cc4867 
  port map (
    clr => '0',
    ip => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  add_gen : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i3",
    op_arith => xlUnsigned,
    op_width => 15
  )
  port map (
    clr => '0',
    rst => delay4_q_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    op => add_gen_op_net
  );
  slice1 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 13,
    x_width => 15,
    y_width => 14
  )
  port map (
    x => add_gen_op_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 13,
    x_width => 15,
    y_width => 12
  )
  port map (
    x => add_gen_op_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 14,
    new_msb => 14,
    x_width => 15,
    y_width => 1
  )
  port map (
    x => add_gen_op_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block dram_munge
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_dram_munge_x1 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    init : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_dram_munge_x1;
architecture structural of test_spec_dram_munge_x1 is 
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal input_count_op_net : std_logic_vector( 2-1 downto 0 );
  signal con0_op_net : std_logic_vector( 2-1 downto 0 );
  signal con1_op_net : std_logic_vector( 2-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 80-1 downto 0 );
  signal dout_count_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal con2_op_net : std_logic_vector( 2-1 downto 0 );
  signal con3_op_net : std_logic_vector( 2-1 downto 0 );
  signal dram_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 80-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal register3_q_net : std_logic_vector( 32-1 downto 0 );
  signal mux1_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 80-1 downto 0 );
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
begin
  dout <= data_choice_y_net;
  we_o <= we_choice_y_net;
  cast_dout_net <= din;
  mux1_y_net_x0 <= we;
  edge_op_y_net <= init;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_0f1805fbe0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => register_q_net,
    in2 => constant_op_net,
    in3 => register1_q_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_0f1805fbe0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => register2_q_net,
    in2 => constant_op_net,
    in3 => register3_q_net,
    y => concat1_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_c62ba0776b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_71cd2f8184 
  port map (
    clr => '0',
    d0 => relational3_op_net,
    d1 => mux1_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => delay_q_net,
    y => logical1_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_0db6dd746b 
  port map (
    clr => '0',
    sel => dout_count_op_net,
    d0 => concat_y_net,
    d1 => concat1_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  register_x0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con0_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con1_op_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con2_op_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con3_op_net,
    op => relational3_op_net
  );
  con0 : entity xil_defaultlib.sysgen_constant_52b0261597 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con0_op_net
  );
  con1 : entity xil_defaultlib.sysgen_constant_c3d244eb8a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con1_op_net
  );
  con2 : entity xil_defaultlib.sysgen_constant_0605642079 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con2_op_net
  );
  con3 : entity xil_defaultlib.sysgen_constant_4082067a31 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con3_op_net
  );
  data_choice : entity xil_defaultlib.sysgen_mux_7277f86949 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => dram_op_net,
    d0 => cast_dout_net,
    d1 => mux1_y_net,
    y => data_choice_y_net
  );
  dout_count : entity xil_defaultlib.sysgen_counter_bb9c12d25e 
  port map (
    clr => '0',
    rst => edge_op_y_net,
    en => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    op => dout_count_op_net
  );
  dram : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => dram_op_net
  );
  input_count : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i4",
    op_arith => xlUnsigned,
    op_width => 2
  )
  port map (
    clr => '0',
    rst => edge_op_y_net,
    en => mux1_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => input_count_op_net
  );
  we_choice : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => dram_op_net,
    d0 => mux1_y_net_x0,
    d1 => delay1_q_net,
    y => we_choice_y_net
  );
end structural;
-- Generated from Simulink block edge_detect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_edge_detect_x5 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_edge_detect_x5;
architecture structural of test_spec_edge_detect_x5 is 
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  out_x0 <= edge_op_y_net;
  delay1_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  edge_op : entity xil_defaultlib.sysgen_logical_538c1e2075 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay_q_net,
    y => edge_op_y_net
  );
end structural;
-- Generated from Simulink block basic_ctrl
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_basic_ctrl_x1 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    ctrl : in std_logic_vector( 32-1 downto 0 );
    stopi : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 );
    go : out std_logic_vector( 1-1 downto 0 );
    init : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_basic_ctrl_x1;
architecture structural of test_spec_basic_ctrl_x1 is 
  signal ce_net : std_logic;
  signal mux1_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal trig_src_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal valid_src_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal enable_y_net : std_logic_vector( 1-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
begin
  dout <= data_choice_y_net;
  we_o <= we_choice_y_net;
  go <= register6_q_net;
  init <= edge_op_y_net;
  cast_dout_net <= din;
  constant6_op_net <= we;
  register0_q_net <= trig;
  concatenate_y_net <= ctrl;
  never_op_net <= stopi;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dram_munge : entity xil_defaultlib.test_spec_dram_munge_x1 
  port map (
    din => cast_dout_net,
    we => mux1_y_net,
    init => edge_op_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => data_choice_y_net,
    we_o => we_choice_y_net
  );
  edge_detect : entity xil_defaultlib.test_spec_edge_detect_x5 
  port map (
    in_x0 => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => edge_op_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => enable_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => trig_src_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => valid_src_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_4b738f42cd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => delay3_q_net,
    d0 => constant6_op_net,
    d1 => constant2_op_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => delay2_q_net,
    d0 => register0_q_net,
    d1 => constant1_op_net,
    y => mux2_y_net
  );
  register1 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant_op_net,
    rst => logical_y_net,
    en => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register6 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => mux2_y_net,
    rst => edge_op_y_net,
    en => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  enable : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => enable_y_net
  );
  trig_src : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => trig_src_y_net
  );
  valid_src : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => valid_src_y_net
  );
end structural;
-- Generated from Simulink block calc_add
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_calc_add_x1 is
  port (
    in_x0 : in std_logic_vector( 12-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 12-1 downto 0 )
  );
end test_spec_calc_add_x1;
architecture structural of test_spec_calc_add_x1 is 
  signal mux_y_net : std_logic_vector( 12-1 downto 0 );
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal manipulate_op_net : std_logic_vector( 1-1 downto 0 );
  signal add_sub_s_net : std_logic_vector( 1-1 downto 0 );
  signal const_op_net : std_logic_vector( 1-1 downto 0 );
  signal lsw_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 12-1 downto 0 );
  signal msw_y_net : std_logic_vector( 11-1 downto 0 );
begin
  out_x0 <= mux_y_net;
  add_del_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  add_sub : entity xil_defaultlib.sysgen_addsub_ec833fec71 
  port map (
    clr => '0',
    a => const_op_net,
    b => lsw_y_net,
    clk => clk_net,
    ce => ce_net,
    s => add_sub_s_net
  );
  concat : entity xil_defaultlib.sysgen_concat_339c82ac9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => msw_y_net,
    in1 => add_sub_s_net,
    y => concat_y_net
  );
  const : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => const_op_net
  );
  convert_addr : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 12,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 12,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => add_del_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_addr_dout_net
  );
  lsw : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 12,
    y_width => 1
  )
  port map (
    x => convert_addr_dout_net,
    y => lsw_y_net
  );
  manipulate : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => manipulate_op_net
  );
  msw : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 11,
    x_width => 12,
    y_width => 11
  )
  port map (
    x => convert_addr_dout_net,
    y => msw_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_c5c11734ab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => manipulate_op_net,
    d0 => convert_addr_dout_net,
    d1 => concat_y_net,
    y => mux_y_net
  );
end structural;
-- Generated from Simulink block munge_in
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_munge_in_x1 is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    dout : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_munge_in_x1;
architecture structural of test_spec_munge_in_x1 is 
  signal reinterpret_out_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
begin
  dout <= reinterpret_out_output_port_net;
  dat_del_q_net <= din;
  reinterpret_out : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => dat_del_q_net,
    output_port => reinterpret_out_output_port_net
  );
end structural;
-- Generated from Simulink block bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_bram_x1 is
  port (
    addr : in std_logic_vector( 12-1 downto 0 );
    data_in : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_accumdat_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_bram_x1;
architecture structural of test_spec_bram_x1 is 
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
  signal we_del_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal mux_y_net : std_logic_vector( 12-1 downto 0 );
  signal reinterpret_out_output_port_net : std_logic_vector( 32-1 downto 0 );
begin
  add_del_q_net <= addr;
  dat_del_q_net <= data_in;
  we_del_q_net <= we;
  test_spec_accumdat_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_accumdat_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_accumdat_snap_ss_bram_we <= convert_we_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  calc_add : entity xil_defaultlib.test_spec_calc_add_x1 
  port map (
    in_x0 => add_del_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net
  );
  munge_in : entity xil_defaultlib.test_spec_munge_in_x1 
  port map (
    din => dat_del_q_net,
    dout => reinterpret_out_output_port_net
  );
  convert_addr : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 12,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 12,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_addr_dout_net
  );
  convert_din1 : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret_out_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_din1_dout_net
  );
  convert_we : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => we_del_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_we_dout_net
  );
end structural;
-- Generated from Simulink block ctrl
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl_x0 is
  port (
    test_spec_accumdat_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    in_reg : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ctrl_x0;
architecture structural of test_spec_ctrl_x0 is 
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal slice_reg_y_net : std_logic_vector( 32-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal test_spec_accumdat_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
begin
  in_reg <= reint1_output_port_net;
  test_spec_accumdat_snap_ss_ctrl_user_data_out_net <= test_spec_accumdat_snap_ss_ctrl_user_data_out;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => test_spec_accumdat_snap_ss_ctrl_user_data_out_net,
    q => io_delay_q_net
  );
  slice_reg : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 31,
    x_width => 32,
    y_width => 32
  )
  port map (
    x => io_delay_q_net,
    y => slice_reg_y_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_reg_y_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block ctrl_combine
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl_combine_x0 is
  port (
    in1 : in std_logic_vector( 28-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    in3 : in std_logic_vector( 2-1 downto 0 );
    in4 : in std_logic_vector( 1-1 downto 0 );
    bus_out : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ctrl_combine_x0;
architecture structural of test_spec_ctrl_combine_x0 is 
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal reinterpret2_output_port_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 1-1 downto 0 );
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret4_output_port_net_x0 : std_logic_vector( 28-1 downto 0 );
  signal circ_or_y_net : std_logic_vector( 1-1 downto 0 );
begin
  bus_out <= concatenate_y_net;
  reinterpret4_output_port_net_x0 <= in1;
  circ_or_y_net <= in2;
  reinterpret2_output_port_net <= in3;
  arm_or_y_net <= in4;
  concatenate : entity xil_defaultlib.sysgen_concat_d7200485ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net_x0,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concatenate_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_4d69058d55 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => reinterpret4_output_port_net_x0,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => circ_or_y_net,
    output_port => reinterpret2_output_port_net_x0
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_02673fd6af 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => reinterpret2_output_port_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => arm_or_y_net,
    output_port => reinterpret4_output_port_net
  );
end structural;
-- Generated from Simulink block ctrl_split
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl_split_x0 is
  port (
    bus_in : in std_logic_vector( 32-1 downto 0 );
    msb_out4 : out std_logic_vector( 28-1 downto 0 );
    out3 : out std_logic_vector( 1-1 downto 0 );
    out2 : out std_logic_vector( 2-1 downto 0 );
    lsb_out1 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_ctrl_split_x0;
architecture structural of test_spec_ctrl_split_x0 is 
  signal slice2_y_net : std_logic_vector( 2-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 28-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
begin
  msb_out4 <= reinterpret4_output_port_net;
  out3 <= slice3_y_net;
  out2 <= reinterpret2_output_port_net;
  lsb_out1 <= slice1_y_net;
  reint1_output_port_net <= bus_in;
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_02673fd6af 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice2_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_4d69058d55 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice4_y_net,
    output_port => reinterpret4_output_port_net
  );
  slice1 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => reint1_output_port_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 2,
    x_width => 32,
    y_width => 2
  )
  port map (
    x => reint1_output_port_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 3,
    new_msb => 3,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => reint1_output_port_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 4,
    new_msb => 31,
    x_width => 32,
    y_width => 28
  )
  port map (
    x => reint1_output_port_net,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block status
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_status_x0 is
  port (
    out_reg : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_accumdat_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_status_x0;
architecture structural of test_spec_status_x0 is 
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal assert_reg_dout_net : std_logic_vector( 32-1 downto 0 );
begin
  concat_y_net <= out_reg;
  test_spec_accumdat_snap_ss_status_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => reint1_output_port_net,
    q => io_delay_q_net
  );
  cast_gw : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => io_delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_gw_dout_net
  );
  assert_reg : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 32,
    dout_width => 32
  )
  port map (
    din => concat_y_net,
    dout => assert_reg_dout_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_reg_dout_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block ss
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ss_x1 is
  port (
    din : in std_logic_vector( 19-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    test_spec_accumdat_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    arm_out : out std_logic_vector( 1-1 downto 0 );
    goto_121630685_we1 : out std_logic_vector( 1-1 downto 0 );
    goto_121630685_we4 : out std_logic_vector( 1-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_accumdat_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ss_x1;
architecture structural of test_spec_ss_x1 is 
  signal slice2_y_net : std_logic_vector( 12-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 32-1 downto 0 );
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
  signal concatenate_y_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
  signal we_del_q_net : std_logic_vector( 1-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal circ_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal ri_output_port_net : std_logic_vector( 19-1 downto 0 );
  signal circ_op_net : std_logic_vector( 1-1 downto 0 );
  signal arm_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_accumdat_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal concatenate_y_net : std_logic_vector( 19-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
begin
  arm_out <= arm_or_y_net;
  concatenate_y_net <= din;
  constant6_op_net <= we;
  register0_q_net <= trig;
  goto_121630685_we1 <= we_choice_y_net;
  goto_121630685_we4 <= logical6_y_net;
  test_spec_accumdat_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_accumdat_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_accumdat_snap_ss_bram_we <= convert_we_dout_net;
  test_spec_accumdat_snap_ss_ctrl_user_data_out_net <= test_spec_accumdat_snap_ss_ctrl_user_data_out;
  test_spec_accumdat_snap_ss_status_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  add_gen : entity xil_defaultlib.test_spec_add_gen_x2 
  port map (
    din => data_choice_y_net,
    we => we_choice_y_net,
    go => register6_q_net,
    cont => never_op_net,
    init => edge_op_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    add => slice2_y_net,
    dout => delay6_q_net,
    we_o => logical6_y_net,
    status => concat_y_net
  );
  basic_ctrl : entity xil_defaultlib.test_spec_basic_ctrl_x1 
  port map (
    din => cast_dout_net,
    we => constant6_op_net,
    trig => register0_q_net,
    ctrl => concatenate_y_net_x0,
    stopi => never_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => data_choice_y_net,
    we_o => we_choice_y_net,
    go => register6_q_net,
    init => edge_op_y_net_x0
  );
  bram : entity xil_defaultlib.test_spec_bram_x1 
  port map (
    addr => add_del_q_net,
    data_in => dat_del_q_net,
    we => we_del_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_accumdat_snap_ss_bram_addr => convert_addr_dout_net,
    test_spec_accumdat_snap_ss_bram_data_in => convert_din1_dout_net,
    test_spec_accumdat_snap_ss_bram_we => convert_we_dout_net
  );
  ctrl : entity xil_defaultlib.test_spec_ctrl_x0 
  port map (
    test_spec_accumdat_snap_ss_ctrl_user_data_out => test_spec_accumdat_snap_ss_ctrl_user_data_out_net,
    in_reg => reint1_output_port_net
  );
  ctrl_combine : entity xil_defaultlib.test_spec_ctrl_combine_x0 
  port map (
    in1 => reinterpret4_output_port_net,
    in2 => circ_or_y_net,
    in3 => reinterpret2_output_port_net,
    in4 => arm_or_y_net,
    bus_out => concatenate_y_net_x0
  );
  ctrl_split : entity xil_defaultlib.test_spec_ctrl_split_x0 
  port map (
    bus_in => reint1_output_port_net,
    msb_out4 => reinterpret4_output_port_net,
    out3 => slice3_y_net,
    out2 => reinterpret2_output_port_net,
    lsb_out1 => slice1_y_net
  );
  status : entity xil_defaultlib.test_spec_status_x0 
  port map (
    out_reg => concat_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_accumdat_snap_ss_status_user_data_in => cast_gw_dout_net
  );
  add_del : entity xil_defaultlib.sysgen_delay_1144a62f70 
  port map (
    clr => '0',
    d => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => add_del_q_net
  );
  arm : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => arm_op_net
  );
  arm_or : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice1_y_net,
    d1 => arm_op_net,
    y => arm_or_y_net
  );
  cast : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 19,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => ri_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_dout_net
  );
  circ : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => circ_op_net
  );
  circ_or : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice3_y_net,
    d1 => circ_op_net,
    y => circ_or_y_net
  );
  dat_del : entity xil_defaultlib.sysgen_delay_6ca894e075 
  port map (
    clr => '0',
    d => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => dat_del_q_net
  );
  never : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => never_op_net
  );
  ri : entity xil_defaultlib.sysgen_reinterpret_26520be010 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concatenate_y_net,
    output_port => ri_output_port_net
  );
  we_del : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => we_del_q_net
  );
end structural;
-- Generated from Simulink block accumdat_snap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_accumdat_snap is
  port (
    in_ch_acc : in std_logic_vector( 11-1 downto 0 );
    in_ch_count : in std_logic_vector( 8-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    test_spec_accumdat_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    arm_out : out std_logic_vector( 1-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_accumdat_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_accumdat_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 );
    goto_121630685_we1 : out std_logic_vector( 1-1 downto 0 );
    goto_121630685_we4 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_accumdat_snap;
architecture structural of test_spec_accumdat_snap is 
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal spect_cnt_op_net : std_logic_vector( 11-1 downto 0 );
  signal register0_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_accumdat_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concatenate_y_net : std_logic_vector( 19-1 downto 0 );
  signal assert_ch_acc_dout_net : std_logic_vector( 11-1 downto 0 );
  signal assert_ch_count_dout_net : std_logic_vector( 8-1 downto 0 );
begin
  arm_out <= arm_or_y_net;
  spect_cnt_op_net <= in_ch_acc;
  register0_q_net_x0 <= in_ch_count;
  constant6_op_net <= we;
  register0_q_net <= trig;
  test_spec_accumdat_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_accumdat_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_accumdat_snap_ss_bram_we <= convert_we_dout_net;
  test_spec_accumdat_snap_ss_ctrl_user_data_out_net <= test_spec_accumdat_snap_ss_ctrl_user_data_out;
  test_spec_accumdat_snap_ss_status_user_data_in <= cast_gw_dout_net;
  goto_121630685_we1 <= we_choice_y_net;
  goto_121630685_we4 <= logical6_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  buscreate : entity xil_defaultlib.test_spec_buscreate_x2 
  port map (
    in1 => assert_ch_acc_dout_net,
    in2 => assert_ch_count_dout_net,
    bus_out => concatenate_y_net
  );
  ss : entity xil_defaultlib.test_spec_ss_x1 
  port map (
    din => concatenate_y_net,
    we => constant6_op_net,
    trig => register0_q_net,
    test_spec_accumdat_snap_ss_ctrl_user_data_out => test_spec_accumdat_snap_ss_ctrl_user_data_out_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    arm_out => arm_or_y_net,
    goto_121630685_we1 => we_choice_y_net,
    goto_121630685_we4 => logical6_y_net,
    test_spec_accumdat_snap_ss_bram_addr => convert_addr_dout_net,
    test_spec_accumdat_snap_ss_bram_data_in => convert_din1_dout_net,
    test_spec_accumdat_snap_ss_bram_we => convert_we_dout_net,
    test_spec_accumdat_snap_ss_status_user_data_in => cast_gw_dout_net
  );
  assert_ch_acc : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 11,
    dout_width => 11
  )
  port map (
    din => spect_cnt_op_net,
    dout => assert_ch_acc_dout_net
  );
  assert_ch_count : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 8,
    dout_width => 8
  )
  port map (
    din => register0_q_net_x0,
    dout => assert_ch_count_dout_net
  );
end structural;
-- Generated from Simulink block adc_dv
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_adc_dv is
  port (
    out_reg : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_adc_dv_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_adc_dv;
architecture structural of test_spec_adc_dv is 
  signal assert_reg_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal io_delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 1-1 downto 0 );
begin
  convert2_dout_net <= out_reg;
  test_spec_adc_dv_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  io_delay : entity xil_defaultlib.sysgen_delay_89771eb536 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => reint1_output_port_net,
    q => io_delay_q_net
  );
  cast_gw : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => io_delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_gw_dout_net
  );
  assert_reg : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 1,
    dout_width => 1
  )
  port map (
    din => convert2_dout_net,
    dout => assert_reg_dout_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_reg_dout_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block adc_sample_cnt
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_adc_sample_cnt is
  port (
    out_reg : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_adc_sample_cnt_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_adc_sample_cnt;
architecture structural of test_spec_adc_sample_cnt is 
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal assert_reg_dout_net : std_logic_vector( 32-1 downto 0 );
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
begin
  delay1_q_net <= out_reg;
  test_spec_adc_sample_cnt_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => reint1_output_port_net,
    q => io_delay_q_net
  );
  cast_gw : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => io_delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_gw_dout_net
  );
  assert_reg : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 32,
    dout_width => 32
  )
  port map (
    din => delay1_q_net,
    dout => assert_reg_dout_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_reg_dout_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block buscreate
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_buscreate is
  port (
    in1 : in std_logic_vector( 10-1 downto 0 );
    in2 : in std_logic_vector( 10-1 downto 0 );
    in3 : in std_logic_vector( 1-1 downto 0 );
    bus_out : out std_logic_vector( 21-1 downto 0 )
  );
end test_spec_buscreate;
architecture structural of test_spec_buscreate is 
  signal reinterpret1_output_port_net : std_logic_vector( 10-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 10-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 1-1 downto 0 );
  signal concatenate_y_net : std_logic_vector( 21-1 downto 0 );
  signal assert_adc_di_dout_net : std_logic_vector( 10-1 downto 0 );
  signal assert_adc_dq_dout_net : std_logic_vector( 10-1 downto 0 );
  signal assert_adc_valid_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  bus_out <= concatenate_y_net;
  assert_adc_di_dout_net <= in1;
  assert_adc_dq_dout_net <= in2;
  assert_adc_valid_dout_net <= in3;
  concatenate : entity xil_defaultlib.sysgen_concat_ff04ccae13 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    y => concatenate_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_72741ca770 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_adc_di_dout_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_72741ca770 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_adc_dq_dout_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_adc_valid_dout_net,
    output_port => reinterpret3_output_port_net
  );
end structural;
-- Generated from Simulink block edge_detect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_edge_detect_x1 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_edge_detect_x1;
architecture structural of test_spec_edge_detect_x1 is 
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= edge_op_y_net;
  slice3_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  edge_op : entity xil_defaultlib.sysgen_logical_865f8d9b31 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay_q_net,
    y => edge_op_y_net
  );
end structural;
-- Generated from Simulink block add_gen
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_add_gen is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    go : in std_logic_vector( 1-1 downto 0 );
    cont : in std_logic_vector( 1-1 downto 0 );
    init : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    add : out std_logic_vector( 12-1 downto 0 );
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 );
    status : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_add_gen;
architecture structural of test_spec_add_gen is 
  signal slice1_y_net : std_logic_vector( 14-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal add_gen_op_net : std_logic_vector( 15-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 12-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 32-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal edge_op_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal shift_op_net : std_logic_vector( 17-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 14-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 17-1 downto 0 );
  signal register5_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
begin
  add <= slice2_y_net;
  dout <= delay6_q_net;
  we_o <= logical6_y_net;
  status <= concat_y_net;
  data_choice_y_net <= din;
  we_choice_y_net <= we;
  register6_q_net <= go;
  never_op_net <= cont;
  edge_op_y_net <= init;
  clk_net <= clk_1;
  ce_net <= ce_1;
  edge_detect : entity xil_defaultlib.test_spec_edge_detect_x1 
  port map (
    in_x0 => slice3_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => edge_op_y_net_x0
  );
  concat : entity xil_defaultlib.sysgen_concat_738ae8db00 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => shift_op_net,
    in1 => inverter_op_net,
    in2 => delay1_q_net,
    y => concat_y_net
  );
  convert : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 17,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  delay : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 14
  )
  port map (
    en => '1',
    rst => '0',
    d => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay3 : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => never_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay6 : entity xil_defaultlib.sysgen_delay_6ca894e075 
  port map (
    clr => '0',
    d => data_choice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_6cd792a802 
  port map (
    clr => '0',
    ip => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => edge_op_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_71cd2f8184 
  port map (
    clr => '0',
    d0 => we_choice_y_net,
    d1 => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical4 : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay3_q_net,
    d1 => inverter1_op_net,
    y => logical4_y_net
  );
  logical6 : entity xil_defaultlib.sysgen_logical_a06ef6f5d2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => register5_q_net,
    d1 => logical4_y_net,
    d2 => logical1_y_net,
    y => logical6_y_net
  );
  register5 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"1"
  )
  port map (
    d => delay3_q_net,
    rst => delay_q_net,
    en => edge_op_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register5_q_net
  );
  shift : entity xil_defaultlib.sysgen_shift_3f63cc4867 
  port map (
    clr => '0',
    ip => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  add_gen : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i3",
    op_arith => xlUnsigned,
    op_width => 15
  )
  port map (
    clr => '0',
    rst => delay4_q_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    op => add_gen_op_net
  );
  slice1 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 13,
    x_width => 15,
    y_width => 14
  )
  port map (
    x => add_gen_op_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 13,
    x_width => 15,
    y_width => 12
  )
  port map (
    x => add_gen_op_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 14,
    new_msb => 14,
    x_width => 15,
    y_width => 1
  )
  port map (
    x => add_gen_op_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block dram_munge
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_dram_munge is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    init : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_dram_munge;
architecture structural of test_spec_dram_munge is 
  signal con2_op_net : std_logic_vector( 2-1 downto 0 );
  signal con3_op_net : std_logic_vector( 2-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
  signal mux1_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal input_count_op_net : std_logic_vector( 2-1 downto 0 );
  signal con0_op_net : std_logic_vector( 2-1 downto 0 );
  signal con1_op_net : std_logic_vector( 2-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 80-1 downto 0 );
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 80-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal register3_q_net : std_logic_vector( 32-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 80-1 downto 0 );
  signal dout_count_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal dram_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
begin
  dout <= data_choice_y_net;
  we_o <= we_choice_y_net;
  cast_dout_net <= din;
  mux1_y_net_x0 <= we;
  edge_op_y_net <= init;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_0f1805fbe0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => register_q_net,
    in2 => constant_op_net,
    in3 => register1_q_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_0f1805fbe0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => register2_q_net,
    in2 => constant_op_net,
    in3 => register3_q_net,
    y => concat1_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_c62ba0776b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_71cd2f8184 
  port map (
    clr => '0',
    d0 => relational3_op_net,
    d1 => mux1_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => delay_q_net,
    y => logical1_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_0db6dd746b 
  port map (
    clr => '0',
    sel => dout_count_op_net,
    d0 => concat_y_net,
    d1 => concat1_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  register_x0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => cast_dout_net,
    en => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con0_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con1_op_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con2_op_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_720575a401 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => input_count_op_net,
    b => con3_op_net,
    op => relational3_op_net
  );
  con0 : entity xil_defaultlib.sysgen_constant_52b0261597 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con0_op_net
  );
  con1 : entity xil_defaultlib.sysgen_constant_c3d244eb8a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con1_op_net
  );
  con2 : entity xil_defaultlib.sysgen_constant_0605642079 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con2_op_net
  );
  con3 : entity xil_defaultlib.sysgen_constant_4082067a31 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => con3_op_net
  );
  data_choice : entity xil_defaultlib.sysgen_mux_7277f86949 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => dram_op_net,
    d0 => cast_dout_net,
    d1 => mux1_y_net,
    y => data_choice_y_net
  );
  dout_count : entity xil_defaultlib.sysgen_counter_bb9c12d25e 
  port map (
    clr => '0',
    rst => edge_op_y_net,
    en => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    op => dout_count_op_net
  );
  dram : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => dram_op_net
  );
  input_count : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i4",
    op_arith => xlUnsigned,
    op_width => 2
  )
  port map (
    clr => '0',
    rst => edge_op_y_net,
    en => mux1_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => input_count_op_net
  );
  we_choice : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => dram_op_net,
    d0 => mux1_y_net_x0,
    d1 => delay1_q_net,
    y => we_choice_y_net
  );
end structural;
-- Generated from Simulink block edge_detect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_edge_detect is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_edge_detect;
architecture structural of test_spec_edge_detect is 
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= edge_op_y_net;
  delay1_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  edge_op : entity xil_defaultlib.sysgen_logical_538c1e2075 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay_q_net,
    y => edge_op_y_net
  );
end structural;
-- Generated from Simulink block basic_ctrl
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_basic_ctrl is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    ctrl : in std_logic_vector( 32-1 downto 0 );
    stopi : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 32-1 downto 0 );
    we_o : out std_logic_vector( 1-1 downto 0 );
    go : out std_logic_vector( 1-1 downto 0 );
    init : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_basic_ctrl;
architecture structural of test_spec_basic_ctrl is 
  signal constant11_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal mux1_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal enable_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal trig_src_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal valid_src_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
begin
  dout <= data_choice_y_net;
  we_o <= we_choice_y_net;
  go <= register6_q_net;
  init <= edge_op_y_net;
  cast_dout_net <= din;
  constant11_op_net <= we;
  register0_q_net <= trig;
  concatenate_y_net <= ctrl;
  never_op_net <= stopi;
  clk_net <= clk_1;
  ce_net <= ce_1;
  dram_munge : entity xil_defaultlib.test_spec_dram_munge 
  port map (
    din => cast_dout_net,
    we => mux1_y_net,
    init => edge_op_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => data_choice_y_net,
    we_o => we_choice_y_net
  );
  edge_detect : entity xil_defaultlib.test_spec_edge_detect 
  port map (
    in_x0 => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => edge_op_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => enable_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => trig_src_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => valid_src_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_4b738f42cd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => delay3_q_net,
    d0 => constant11_op_net,
    d1 => constant2_op_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_877d5369c5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => delay2_q_net,
    d0 => register0_q_net,
    d1 => constant1_op_net,
    y => mux2_y_net
  );
  register1 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant_op_net,
    rst => logical_y_net,
    en => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register6 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => mux2_y_net,
    rst => edge_op_y_net,
    en => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  enable : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => enable_y_net
  );
  trig_src : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => trig_src_y_net
  );
  valid_src : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => concatenate_y_net,
    y => valid_src_y_net
  );
end structural;
-- Generated from Simulink block calc_add
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_calc_add is
  port (
    in_x0 : in std_logic_vector( 12-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 12-1 downto 0 )
  );
end test_spec_calc_add;
architecture structural of test_spec_calc_add is 
  signal mux_y_net : std_logic_vector( 12-1 downto 0 );
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal add_sub_s_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal manipulate_op_net : std_logic_vector( 1-1 downto 0 );
  signal const_op_net : std_logic_vector( 1-1 downto 0 );
  signal lsw_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 12-1 downto 0 );
  signal msw_y_net : std_logic_vector( 11-1 downto 0 );
begin
  out_x0 <= mux_y_net;
  add_del_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  add_sub : entity xil_defaultlib.sysgen_addsub_ec833fec71 
  port map (
    clr => '0',
    a => const_op_net,
    b => lsw_y_net,
    clk => clk_net,
    ce => ce_net,
    s => add_sub_s_net
  );
  concat : entity xil_defaultlib.sysgen_concat_339c82ac9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => msw_y_net,
    in1 => add_sub_s_net,
    y => concat_y_net
  );
  const : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => const_op_net
  );
  convert_addr : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 12,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 12,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => add_del_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_addr_dout_net
  );
  lsw : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 12,
    y_width => 1
  )
  port map (
    x => convert_addr_dout_net,
    y => lsw_y_net
  );
  manipulate : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => manipulate_op_net
  );
  msw : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 11,
    x_width => 12,
    y_width => 11
  )
  port map (
    x => convert_addr_dout_net,
    y => msw_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_c5c11734ab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => manipulate_op_net,
    d0 => convert_addr_dout_net,
    d1 => concat_y_net,
    y => mux_y_net
  );
end structural;
-- Generated from Simulink block munge_in
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_munge_in is
  port (
    din : in std_logic_vector( 32-1 downto 0 );
    dout : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_munge_in;
architecture structural of test_spec_munge_in is 
  signal reinterpret_out_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
begin
  dout <= reinterpret_out_output_port_net;
  dat_del_q_net <= din;
  reinterpret_out : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => dat_del_q_net,
    output_port => reinterpret_out_output_port_net
  );
end structural;
-- Generated from Simulink block bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_bram is
  port (
    addr : in std_logic_vector( 12-1 downto 0 );
    data_in : in std_logic_vector( 32-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_adc_voltage_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_bram;
architecture structural of test_spec_bram is 
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
  signal we_del_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal mux_y_net : std_logic_vector( 12-1 downto 0 );
  signal reinterpret_out_output_port_net : std_logic_vector( 32-1 downto 0 );
begin
  add_del_q_net <= addr;
  dat_del_q_net <= data_in;
  we_del_q_net <= we;
  test_spec_adc_voltage_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_adc_voltage_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_adc_voltage_snap_ss_bram_we <= convert_we_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  calc_add : entity xil_defaultlib.test_spec_calc_add 
  port map (
    in_x0 => add_del_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net
  );
  munge_in : entity xil_defaultlib.test_spec_munge_in 
  port map (
    din => dat_del_q_net,
    dout => reinterpret_out_output_port_net
  );
  convert_addr : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 12,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 12,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_addr_dout_net
  );
  convert_din1 : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret_out_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_din1_dout_net
  );
  convert_we : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => we_del_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_we_dout_net
  );
end structural;
-- Generated from Simulink block ctrl
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl is
  port (
    test_spec_adc_voltage_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    in_reg : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ctrl;
architecture structural of test_spec_ctrl is 
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal slice_reg_y_net : std_logic_vector( 32-1 downto 0 );
begin
  in_reg <= reint1_output_port_net;
  test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net <= test_spec_adc_voltage_snap_ss_ctrl_user_data_out;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net,
    q => io_delay_q_net
  );
  slice_reg : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 31,
    x_width => 32,
    y_width => 32
  )
  port map (
    x => io_delay_q_net,
    y => slice_reg_y_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_reg_y_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block ctrl_combine
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl_combine is
  port (
    in1 : in std_logic_vector( 28-1 downto 0 );
    in2 : in std_logic_vector( 1-1 downto 0 );
    in3 : in std_logic_vector( 2-1 downto 0 );
    in4 : in std_logic_vector( 1-1 downto 0 );
    bus_out : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ctrl_combine;
architecture structural of test_spec_ctrl_combine is 
  signal concatenate_y_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret4_output_port_net_x0 : std_logic_vector( 28-1 downto 0 );
  signal circ_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal reinterpret2_output_port_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 1-1 downto 0 );
begin
  bus_out <= concatenate_y_net;
  reinterpret4_output_port_net_x0 <= in1;
  circ_or_y_net <= in2;
  reinterpret2_output_port_net <= in3;
  arm_or_y_net <= in4;
  concatenate : entity xil_defaultlib.sysgen_concat_d7200485ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net_x0,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concatenate_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_4d69058d55 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => reinterpret4_output_port_net_x0,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => circ_or_y_net,
    output_port => reinterpret2_output_port_net_x0
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_02673fd6af 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => reinterpret2_output_port_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => arm_or_y_net,
    output_port => reinterpret4_output_port_net
  );
end structural;
-- Generated from Simulink block ctrl_split
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ctrl_split is
  port (
    bus_in : in std_logic_vector( 32-1 downto 0 );
    msb_out4 : out std_logic_vector( 28-1 downto 0 );
    out3 : out std_logic_vector( 1-1 downto 0 );
    out2 : out std_logic_vector( 2-1 downto 0 );
    lsb_out1 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_ctrl_split;
architecture structural of test_spec_ctrl_split is 
  signal reinterpret4_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 2-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 28-1 downto 0 );
begin
  msb_out4 <= reinterpret4_output_port_net;
  out3 <= slice3_y_net;
  out2 <= reinterpret2_output_port_net;
  lsb_out1 <= slice1_y_net;
  reint1_output_port_net <= bus_in;
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_02673fd6af 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice2_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_4d69058d55 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice4_y_net,
    output_port => reinterpret4_output_port_net
  );
  slice1 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => reint1_output_port_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 2,
    x_width => 32,
    y_width => 2
  )
  port map (
    x => reint1_output_port_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 3,
    new_msb => 3,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => reint1_output_port_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 4,
    new_msb => 31,
    x_width => 32,
    y_width => 28
  )
  port map (
    x => reint1_output_port_net,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block status
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_status is
  port (
    out_reg : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_adc_voltage_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_status;
architecture structural of test_spec_status is 
  signal ce_net : std_logic;
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal assert_reg_dout_net : std_logic_vector( 32-1 downto 0 );
begin
  concat_y_net <= out_reg;
  test_spec_adc_voltage_snap_ss_status_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => reint1_output_port_net,
    q => io_delay_q_net
  );
  cast_gw : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => io_delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_gw_dout_net
  );
  assert_reg : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 32,
    dout_width => 32
  )
  port map (
    din => concat_y_net,
    dout => assert_reg_dout_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_reg_dout_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block ss
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ss is
  port (
    din : in std_logic_vector( 21-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    test_spec_adc_voltage_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    arm_out : out std_logic_vector( 1-1 downto 0 );
    goto_28719212_we1 : out std_logic_vector( 1-1 downto 0 );
    goto_28719212_we4 : out std_logic_vector( 1-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_adc_voltage_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_ss;
architecture structural of test_spec_ss is 
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal slice2_y_net : std_logic_vector( 12-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 32-1 downto 0 );
  signal concat_y_net : std_logic_vector( 32-1 downto 0 );
  signal data_choice_y_net : std_logic_vector( 32-1 downto 0 );
  signal ri_output_port_net : std_logic_vector( 21-1 downto 0 );
  signal circ_op_net : std_logic_vector( 1-1 downto 0 );
  signal arm_op_net : std_logic_vector( 1-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal never_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal cast_dout_net : std_logic_vector( 32-1 downto 0 );
  signal concatenate_y_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal add_del_q_net : std_logic_vector( 12-1 downto 0 );
  signal dat_del_q_net : std_logic_vector( 32-1 downto 0 );
  signal we_del_q_net : std_logic_vector( 1-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 28-1 downto 0 );
  signal circ_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 2-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal concatenate_y_net : std_logic_vector( 21-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
begin
  arm_out <= arm_or_y_net;
  concatenate_y_net <= din;
  constant11_op_net <= we;
  register0_q_net <= trig;
  goto_28719212_we1 <= we_choice_y_net;
  goto_28719212_we4 <= logical6_y_net;
  test_spec_adc_voltage_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_adc_voltage_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_adc_voltage_snap_ss_bram_we <= convert_we_dout_net;
  test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net <= test_spec_adc_voltage_snap_ss_ctrl_user_data_out;
  test_spec_adc_voltage_snap_ss_status_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  add_gen : entity xil_defaultlib.test_spec_add_gen 
  port map (
    din => data_choice_y_net,
    we => we_choice_y_net,
    go => register6_q_net,
    cont => never_op_net,
    init => edge_op_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    add => slice2_y_net,
    dout => delay6_q_net,
    we_o => logical6_y_net,
    status => concat_y_net
  );
  basic_ctrl : entity xil_defaultlib.test_spec_basic_ctrl 
  port map (
    din => cast_dout_net,
    we => constant11_op_net,
    trig => register0_q_net,
    ctrl => concatenate_y_net_x0,
    stopi => never_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => data_choice_y_net,
    we_o => we_choice_y_net,
    go => register6_q_net,
    init => edge_op_y_net_x0
  );
  bram : entity xil_defaultlib.test_spec_bram 
  port map (
    addr => add_del_q_net,
    data_in => dat_del_q_net,
    we => we_del_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_adc_voltage_snap_ss_bram_addr => convert_addr_dout_net,
    test_spec_adc_voltage_snap_ss_bram_data_in => convert_din1_dout_net,
    test_spec_adc_voltage_snap_ss_bram_we => convert_we_dout_net
  );
  ctrl : entity xil_defaultlib.test_spec_ctrl 
  port map (
    test_spec_adc_voltage_snap_ss_ctrl_user_data_out => test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net,
    in_reg => reint1_output_port_net
  );
  ctrl_combine : entity xil_defaultlib.test_spec_ctrl_combine 
  port map (
    in1 => reinterpret4_output_port_net,
    in2 => circ_or_y_net,
    in3 => reinterpret2_output_port_net,
    in4 => arm_or_y_net,
    bus_out => concatenate_y_net_x0
  );
  ctrl_split : entity xil_defaultlib.test_spec_ctrl_split 
  port map (
    bus_in => reint1_output_port_net,
    msb_out4 => reinterpret4_output_port_net,
    out3 => slice3_y_net,
    out2 => reinterpret2_output_port_net,
    lsb_out1 => slice1_y_net
  );
  status : entity xil_defaultlib.test_spec_status 
  port map (
    out_reg => concat_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_adc_voltage_snap_ss_status_user_data_in => cast_gw_dout_net
  );
  add_del : entity xil_defaultlib.sysgen_delay_1144a62f70 
  port map (
    clr => '0',
    d => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => add_del_q_net
  );
  arm : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => arm_op_net
  );
  arm_or : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice1_y_net,
    d1 => arm_op_net,
    y => arm_or_y_net
  );
  cast : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 21,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => ri_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_dout_net
  );
  circ : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => circ_op_net
  );
  circ_or : entity xil_defaultlib.sysgen_logical_7d1b638e69 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice3_y_net,
    d1 => circ_op_net,
    y => circ_or_y_net
  );
  dat_del : entity xil_defaultlib.sysgen_delay_6ca894e075 
  port map (
    clr => '0',
    d => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => dat_del_q_net
  );
  never : entity xil_defaultlib.sysgen_constant_4de8b4b74b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => never_op_net
  );
  ri : entity xil_defaultlib.sysgen_reinterpret_3ec7e8fd2e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concatenate_y_net,
    output_port => ri_output_port_net
  );
  we_del : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => we_del_q_net
  );
end structural;
-- Generated from Simulink block adc_voltage_snap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_adc_voltage_snap is
  port (
    in_adc_di : in std_logic_vector( 10-1 downto 0 );
    in_adc_dq : in std_logic_vector( 10-1 downto 0 );
    in_adc_valid : in std_logic_vector( 1-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    test_spec_adc_voltage_snap_ss_ctrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    arm_out : out std_logic_vector( 1-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_addr : out std_logic_vector( 12-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_data_in : out std_logic_vector( 32-1 downto 0 );
    test_spec_adc_voltage_snap_ss_bram_we : out std_logic_vector( 1-1 downto 0 );
    test_spec_adc_voltage_snap_ss_status_user_data_in : out std_logic_vector( 32-1 downto 0 );
    goto_28719212_we1 : out std_logic_vector( 1-1 downto 0 );
    goto_28719212_we4 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_adc_voltage_snap;
architecture structural of test_spec_adc_voltage_snap is 
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 10-1 downto 0 );
  signal convert18_dout_net : std_logic_vector( 10-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concatenate_y_net : std_logic_vector( 21-1 downto 0 );
  signal assert_adc_di_dout_net : std_logic_vector( 10-1 downto 0 );
  signal assert_adc_dq_dout_net : std_logic_vector( 10-1 downto 0 );
  signal assert_adc_valid_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  arm_out <= arm_or_y_net;
  convert6_dout_net <= in_adc_di;
  convert18_dout_net <= in_adc_dq;
  convert2_dout_net <= in_adc_valid;
  constant11_op_net <= we;
  register0_q_net <= trig;
  test_spec_adc_voltage_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_adc_voltage_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_adc_voltage_snap_ss_bram_we <= convert_we_dout_net;
  test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net <= test_spec_adc_voltage_snap_ss_ctrl_user_data_out;
  test_spec_adc_voltage_snap_ss_status_user_data_in <= cast_gw_dout_net;
  goto_28719212_we1 <= we_choice_y_net;
  goto_28719212_we4 <= logical6_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  buscreate : entity xil_defaultlib.test_spec_buscreate 
  port map (
    in1 => assert_adc_di_dout_net,
    in2 => assert_adc_dq_dout_net,
    in3 => assert_adc_valid_dout_net,
    bus_out => concatenate_y_net
  );
  ss : entity xil_defaultlib.test_spec_ss 
  port map (
    din => concatenate_y_net,
    we => constant11_op_net,
    trig => register0_q_net,
    test_spec_adc_voltage_snap_ss_ctrl_user_data_out => test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    arm_out => arm_or_y_net,
    goto_28719212_we1 => we_choice_y_net,
    goto_28719212_we4 => logical6_y_net,
    test_spec_adc_voltage_snap_ss_bram_addr => convert_addr_dout_net,
    test_spec_adc_voltage_snap_ss_bram_data_in => convert_din1_dout_net,
    test_spec_adc_voltage_snap_ss_bram_we => convert_we_dout_net,
    test_spec_adc_voltage_snap_ss_status_user_data_in => cast_gw_dout_net
  );
  assert_adc_di : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 10,
    dout_width => 10
  )
  port map (
    din => convert6_dout_net,
    dout => assert_adc_di_dout_net
  );
  assert_adc_dq : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 10,
    dout_width => 10
  )
  port map (
    din => convert18_dout_net,
    dout => assert_adc_dq_dout_net
  );
  assert_adc_valid : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 1,
    dout_width => 1
  )
  port map (
    din => convert2_dout_net,
    dout => assert_adc_valid_dout_net
  );
end structural;
-- Generated from Simulink block edge_detect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_edge_detect_x0 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_edge_detect_x0;
architecture structural of test_spec_edge_detect_x0 is 
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_reg_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  out_x0 <= edge_op_y_net;
  slice_reg_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => slice_reg_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => slice_reg_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  edge_op : entity xil_defaultlib.sysgen_logical_538c1e2075 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay_q_net,
    y => edge_op_y_net
  );
end structural;
-- Generated from Simulink block edge_detect2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_edge_detect2 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_edge_detect2;
architecture structural of test_spec_edge_detect2 is 
  signal ce_net : std_logic;
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
begin
  out_x0 <= edge_op_y_net;
  relational1_op_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  edge_op : entity xil_defaultlib.sysgen_logical_538c1e2075 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => delay_q_net,
    y => edge_op_y_net
  );
end structural;
-- Generated from Simulink block fft_sync_inc0
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_fft_sync_inc0 is
  port (
    out_reg : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_fft_sync_inc0_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_fft_sync_inc0;
architecture structural of test_spec_fft_sync_inc0 is 
  signal assert_reg_dout_net : std_logic_vector( 8-1 downto 0 );
  signal spect_cnt3_op_net : std_logic_vector( 8-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal io_delay_q_net : std_logic_vector( 8-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 8-1 downto 0 );
begin
  spect_cnt3_op_net <= out_reg;
  test_spec_fft_sync_inc0_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  io_delay : entity xil_defaultlib.sysgen_delay_e2947765a8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => reint1_output_port_net,
    q => io_delay_q_net
  );
  cast_gw : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 8,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => io_delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_gw_dout_net
  );
  assert_reg : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 8,
    dout_width => 8
  )
  port map (
    din => spect_cnt3_op_net,
    dout => assert_reg_dout_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_8fa7a96b3e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_reg_dout_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block fft_sync_inc1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_fft_sync_inc1 is
  port (
    out_reg : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_fft_sync_inc1_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_fft_sync_inc1;
architecture structural of test_spec_fft_sync_inc1 is 
  signal spect_cnt4_op_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal assert_reg_dout_net : std_logic_vector( 32-1 downto 0 );
begin
  spect_cnt4_op_net <= out_reg;
  test_spec_fft_sync_inc1_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => reint1_output_port_net,
    q => io_delay_q_net
  );
  cast_gw : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => io_delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_gw_dout_net
  );
  assert_reg : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 32,
    dout_width => 32
  )
  port map (
    din => spect_cnt4_op_net,
    dout => assert_reg_dout_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_reg_dout_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block pipeline1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pipeline1 is
  port (
    d : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_pipeline1;
architecture structural of test_spec_pipeline1 is 
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  q <= register0_q_net;
  relational_op_net <= d;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register0_q_net
  );
end structural;
-- Generated from Simulink block pipeline10
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pipeline10 is
  port (
    d : in std_logic_vector( 31-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q : out std_logic_vector( 31-1 downto 0 )
  );
end test_spec_pipeline10;
architecture structural of test_spec_pipeline10 is 
  signal register0_q_net : std_logic_vector( 31-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 31-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  q <= register0_q_net;
  addsub_s_net <= d;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 31,
    init_value => b"0000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => register0_q_net
  );
end structural;
-- Generated from Simulink block pipeline11
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pipeline11 is
  port (
    d : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_pipeline11;
architecture structural of test_spec_pipeline11 is 
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  q <= register0_q_net;
  relational5_op_net <= d;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register0_q_net
  );
end structural;
-- Generated from Simulink block pipeline12
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pipeline12 is
  port (
    d : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_pipeline12;
architecture structural of test_spec_pipeline12 is 
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  q <= register0_q_net;
  relational5_op_net <= d;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register0_q_net
  );
end structural;
-- Generated from Simulink block pipeline13
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pipeline13 is
  port (
    d : in std_logic_vector( 31-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q : out std_logic_vector( 31-1 downto 0 )
  );
end test_spec_pipeline13;
architecture structural of test_spec_pipeline13 is 
  signal register0_q_net_x0 : std_logic_vector( 31-1 downto 0 );
  signal register0_q_net : std_logic_vector( 31-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  q <= register0_q_net_x0;
  register0_q_net <= d;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 31,
    init_value => b"0000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register0_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register0_q_net_x0
  );
end structural;
-- Generated from Simulink block pipeline14
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pipeline14 is
  port (
    d : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_pipeline14;
architecture structural of test_spec_pipeline14 is 
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  q <= register0_q_net;
  relational5_op_net <= d;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register0_q_net
  );
end structural;
-- Generated from Simulink block pipeline15
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pipeline15 is
  port (
    d : in std_logic_vector( 31-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q : out std_logic_vector( 31-1 downto 0 )
  );
end test_spec_pipeline15;
architecture structural of test_spec_pipeline15 is 
  signal register0_q_net : std_logic_vector( 31-1 downto 0 );
  signal register0_q_net_x0 : std_logic_vector( 31-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  q <= register0_q_net;
  register0_q_net_x0 <= d;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 31,
    init_value => b"0000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register0_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register0_q_net
  );
end structural;
-- Generated from Simulink block pipeline2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pipeline2 is
  port (
    d : in std_logic_vector( 31-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q : out std_logic_vector( 31-1 downto 0 )
  );
end test_spec_pipeline2;
architecture structural of test_spec_pipeline2 is 
  signal register0_q_net : std_logic_vector( 31-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 31-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  q <= register0_q_net;
  addsub_s_net <= d;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 31,
    init_value => b"0000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => register0_q_net
  );
end structural;
-- Generated from Simulink block pipeline7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pipeline7 is
  port (
    d : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q : out std_logic_vector( 8-1 downto 0 )
  );
end test_spec_pipeline7;
architecture structural of test_spec_pipeline7 is 
  signal register0_q_net : std_logic_vector( 8-1 downto 0 );
  signal spect_cnt2_op_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  q <= register0_q_net;
  spect_cnt2_op_net <= d;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => spect_cnt2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register0_q_net
  );
end structural;
-- Generated from Simulink block pipeline8
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pipeline8 is
  port (
    d : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q : out std_logic_vector( 8-1 downto 0 )
  );
end test_spec_pipeline8;
architecture structural of test_spec_pipeline8 is 
  signal register0_q_net : std_logic_vector( 8-1 downto 0 );
  signal register0_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  q <= register0_q_net;
  register0_q_net_x0 <= d;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register0 : entity xil_defaultlib.test_spec_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register0_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register0_q_net
  );
end structural;
-- Generated from Simulink block c_to_ri
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_c_to_ri_x0 is
  port (
    c : in std_logic_vector( 30-1 downto 0 );
    re : out std_logic_vector( 15-1 downto 0 );
    im : out std_logic_vector( 15-1 downto 0 )
  );
end test_spec_c_to_ri_x0;
architecture structural of test_spec_c_to_ri_x0 is 
  signal force_re_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal force_im_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal concat_y_net : std_logic_vector( 30-1 downto 0 );
  signal slice_im_y_net : std_logic_vector( 15-1 downto 0 );
  signal slice_re_y_net : std_logic_vector( 15-1 downto 0 );
begin
  re <= force_re_output_port_net;
  im <= force_im_output_port_net;
  concat_y_net <= c;
  force_im : entity xil_defaultlib.sysgen_reinterpret_cc371c4266 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_im_y_net,
    output_port => force_im_output_port_net
  );
  force_re : entity xil_defaultlib.sysgen_reinterpret_cc371c4266 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_re_y_net,
    output_port => force_re_output_port_net
  );
  slice_im : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 14,
    x_width => 30,
    y_width => 15
  )
  port map (
    x => concat_y_net,
    y => slice_im_y_net
  );
  slice_re : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 29,
    x_width => 30,
    y_width => 15
  )
  port map (
    x => concat_y_net,
    y => slice_re_y_net
  );
end structural;
-- Generated from Simulink block power_out
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_power_out is
  port (
    in1 : in std_logic_vector( 30-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 31-1 downto 0 )
  );
end test_spec_power_out;
architecture structural of test_spec_power_out is 
  signal addsub_s_net : std_logic_vector( 31-1 downto 0 );
  signal concat_y_net : std_logic_vector( 30-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal force_re_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal force_im_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal mult_p_net : std_logic_vector( 30-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 30-1 downto 0 );
begin
  out1 <= addsub_s_net;
  concat_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  c_to_ri : entity xil_defaultlib.test_spec_c_to_ri_x0 
  port map (
    c => concat_y_net,
    re => force_re_output_port_net,
    im => force_im_output_port_net
  );
  addsub : entity xil_defaultlib.test_spec_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 30,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 30,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 31,
    core_name0 => "test_spec_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 31,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 31
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult1_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  mult : entity xil_defaultlib.test_spec_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 15,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 15,
    c_a_type => 0,
    c_a_width => 15,
    c_b_type => 0,
    c_b_width => 15,
    c_baat => 15,
    c_output_width => 30,
    c_type => 0,
    core_name0 => "test_spec_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 30,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => force_re_output_port_net,
    b => force_re_output_port_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.test_spec_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 15,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 15,
    c_a_type => 0,
    c_a_width => 15,
    c_b_type => 0,
    c_b_width => 15,
    c_baat => 15,
    c_output_width => 30,
    c_type => 0,
    core_name0 => "test_spec_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 30,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => force_im_output_port_net,
    b => force_im_output_port_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
end structural;
-- Generated from Simulink block c_to_ri
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_c_to_ri is
  port (
    c : in std_logic_vector( 30-1 downto 0 );
    re : out std_logic_vector( 15-1 downto 0 );
    im : out std_logic_vector( 15-1 downto 0 )
  );
end test_spec_c_to_ri;
architecture structural of test_spec_c_to_ri is 
  signal slice_re_y_net : std_logic_vector( 15-1 downto 0 );
  signal force_re_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal force_im_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal concat_y_net : std_logic_vector( 30-1 downto 0 );
  signal slice_im_y_net : std_logic_vector( 15-1 downto 0 );
begin
  re <= force_re_output_port_net;
  im <= force_im_output_port_net;
  concat_y_net <= c;
  force_im : entity xil_defaultlib.sysgen_reinterpret_cc371c4266 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_im_y_net,
    output_port => force_im_output_port_net
  );
  force_re : entity xil_defaultlib.sysgen_reinterpret_cc371c4266 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_re_y_net,
    output_port => force_re_output_port_net
  );
  slice_im : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 14,
    x_width => 30,
    y_width => 15
  )
  port map (
    x => concat_y_net,
    y => slice_im_y_net
  );
  slice_re : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 29,
    x_width => 30,
    y_width => 15
  )
  port map (
    x => concat_y_net,
    y => slice_re_y_net
  );
end structural;
-- Generated from Simulink block power_out1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_power_out1 is
  port (
    in1 : in std_logic_vector( 30-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 31-1 downto 0 )
  );
end test_spec_power_out1;
architecture structural of test_spec_power_out1 is 
  signal ce_net : std_logic;
  signal force_re_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal force_im_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal mult_p_net : std_logic_vector( 30-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 30-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 31-1 downto 0 );
  signal concat_y_net : std_logic_vector( 30-1 downto 0 );
  signal clk_net : std_logic;
begin
  out1 <= addsub_s_net;
  concat_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  c_to_ri : entity xil_defaultlib.test_spec_c_to_ri 
  port map (
    c => concat_y_net,
    re => force_re_output_port_net,
    im => force_im_output_port_net
  );
  addsub : entity xil_defaultlib.test_spec_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 30,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 30,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 31,
    core_name0 => "test_spec_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 31,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 31
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult1_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  mult : entity xil_defaultlib.test_spec_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 15,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 15,
    c_a_type => 0,
    c_a_width => 15,
    c_b_type => 0,
    c_b_width => 15,
    c_baat => 15,
    c_output_width => 30,
    c_type => 0,
    core_name0 => "test_spec_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 30,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => force_re_output_port_net,
    b => force_re_output_port_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.test_spec_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 15,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 15,
    c_a_type => 0,
    c_a_width => 15,
    c_b_type => 0,
    c_b_width => 15,
    c_baat => 15,
    c_output_width => 30,
    c_type => 0,
    core_name0 => "test_spec_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 0,
    p_width => 30,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => force_im_output_port_net,
    b => force_im_output_port_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
end structural;
-- Generated from Simulink block power_calc
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_power_calc is
  port (
    pol0 : in std_logic_vector( 30-1 downto 0 );
    pol1 : in std_logic_vector( 30-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    p0 : out std_logic_vector( 31-1 downto 0 );
    p1 : out std_logic_vector( 31-1 downto 0 )
  );
end test_spec_power_calc;
architecture structural of test_spec_power_calc is 
  signal addsub_s_net_x0 : std_logic_vector( 31-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 31-1 downto 0 );
  signal concat_y_net_x0 : std_logic_vector( 30-1 downto 0 );
  signal concat_y_net : std_logic_vector( 30-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  p0 <= addsub_s_net_x0;
  p1 <= addsub_s_net;
  concat_y_net_x0 <= pol0;
  concat_y_net <= pol1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  power_out : entity xil_defaultlib.test_spec_power_out 
  port map (
    in1 => concat_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub_s_net_x0
  );
  power_out1 : entity xil_defaultlib.test_spec_power_out1 
  port map (
    in1 => concat_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub_s_net
  );
end structural;
-- Generated from Simulink block red_pitaya_adc
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_red_pitaya_adc is
  port (
    adc_reset_in : in std_logic_vector( 1-1 downto 0 );
    test_spec_red_pitaya_adc_adc0_data_i_out : in std_logic_vector( 10-1 downto 0 );
    test_spec_red_pitaya_adc_adc1_data_q_out : in std_logic_vector( 10-1 downto 0 );
    test_spec_red_pitaya_adc_adc_data_val_out : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    adc_data_val_out : out std_logic_vector( 1-1 downto 0 );
    adc0_data_i_out : out std_logic_vector( 10-1 downto 0 );
    adc1_data_q_out : out std_logic_vector( 10-1 downto 0 );
    test_spec_red_pitaya_adc_adc_reset_in : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_red_pitaya_adc;
architecture structural of test_spec_red_pitaya_adc is 
  signal reinterpret5_output_port_net : std_logic_vector( 10-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 10-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 10-1 downto 0 );
  signal convert18_dout_net : std_logic_vector( 10-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_red_pitaya_adc_adc0_data_i_out_net : std_logic_vector( 10-1 downto 0 );
  signal test_spec_red_pitaya_adc_adc1_data_q_out_net : std_logic_vector( 10-1 downto 0 );
  signal test_spec_red_pitaya_adc_adc_data_val_out_net : std_logic_vector( 1-1 downto 0 );
  signal convert_adc_reset_in_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  adc_data_val_out <= convert2_dout_net;
  adc0_data_i_out <= convert6_dout_net;
  adc1_data_q_out <= convert18_dout_net;
  edge_op_y_net <= adc_reset_in;
  test_spec_red_pitaya_adc_adc0_data_i_out_net <= test_spec_red_pitaya_adc_adc0_data_i_out;
  test_spec_red_pitaya_adc_adc1_data_q_out_net <= test_spec_red_pitaya_adc_adc1_data_q_out;
  test_spec_red_pitaya_adc_adc_data_val_out_net <= test_spec_red_pitaya_adc_adc_data_val_out;
  test_spec_red_pitaya_adc_adc_reset_in <= convert_adc_reset_in_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  convert18 : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 10,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 10,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret5_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert18_dout_net
  );
  convert2 : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret2_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert6 : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 10,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 10,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret6_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9e29a4b9e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => test_spec_red_pitaya_adc_adc_data_val_out_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_e42a5b51c1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => test_spec_red_pitaya_adc_adc1_data_q_out_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_e42a5b51c1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => test_spec_red_pitaya_adc_adc0_data_i_out_net,
    output_port => reinterpret6_output_port_net
  );
  convert_adc_reset_in : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_adc_reset_in_dout_net
  );
end structural;
-- Generated from Simulink block reg_cntrl
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_reg_cntrl is
  port (
    test_spec_reg_cntrl_user_data_out : in std_logic_vector( 32-1 downto 0 );
    in_reg : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_reg_cntrl;
architecture structural of test_spec_reg_cntrl is 
  signal slice_reg_y_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_reg_cntrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
begin
  in_reg <= slice_reg_y_net;
  test_spec_reg_cntrl_user_data_out_net <= test_spec_reg_cntrl_user_data_out;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => test_spec_reg_cntrl_user_data_out_net,
    q => io_delay_q_net
  );
  slice_reg : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => io_delay_q_net,
    y => slice_reg_y_net
  );
end structural;
-- Generated from Simulink block ri_to_c
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ri_to_c is
  port (
    re : in std_logic_vector( 15-1 downto 0 );
    im : in std_logic_vector( 15-1 downto 0 );
    c : out std_logic_vector( 30-1 downto 0 )
  );
end test_spec_ri_to_c;
architecture structural of test_spec_ri_to_c is 
  signal force_re_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal force_im_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal concat_y_net : std_logic_vector( 30-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 15-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 15-1 downto 0 );
begin
  c <= concat_y_net;
  convert_dout_net <= re;
  convert2_dout_net <= im;
  concat : entity xil_defaultlib.sysgen_concat_2048d3704a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => force_re_output_port_net,
    in1 => force_im_output_port_net,
    y => concat_y_net
  );
  force_im : entity xil_defaultlib.sysgen_reinterpret_c2fb1616f7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert2_dout_net,
    output_port => force_im_output_port_net
  );
  force_re : entity xil_defaultlib.sysgen_reinterpret_c2fb1616f7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_dout_net,
    output_port => force_re_output_port_net
  );
end structural;
-- Generated from Simulink block ri_to_c1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_ri_to_c1 is
  port (
    re : in std_logic_vector( 15-1 downto 0 );
    im : in std_logic_vector( 15-1 downto 0 );
    c : out std_logic_vector( 30-1 downto 0 )
  );
end test_spec_ri_to_c1;
architecture structural of test_spec_ri_to_c1 is 
  signal concat_y_net : std_logic_vector( 30-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 15-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 15-1 downto 0 );
  signal force_re_output_port_net : std_logic_vector( 15-1 downto 0 );
  signal force_im_output_port_net : std_logic_vector( 15-1 downto 0 );
begin
  c <= concat_y_net;
  convert3_dout_net <= re;
  convert4_dout_net <= im;
  concat : entity xil_defaultlib.sysgen_concat_2048d3704a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => force_re_output_port_net,
    in1 => force_im_output_port_net,
    y => concat_y_net
  );
  force_im : entity xil_defaultlib.sysgen_reinterpret_c2fb1616f7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert4_dout_net,
    output_port => force_im_output_port_net
  );
  force_re : entity xil_defaultlib.sysgen_reinterpret_c2fb1616f7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert3_dout_net,
    output_port => force_re_output_port_net
  );
end structural;
-- Generated from Simulink block delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_delay_bram_x0 is
  port (
    in1 : in std_logic_vector( 31-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 31-1 downto 0 )
  );
end test_spec_delay_bram_x0;
architecture structural of test_spec_delay_bram_x0 is 
  signal single_port_ram_data_out_net : std_logic_vector( 31-1 downto 0 );
  signal adder_s_net : std_logic_vector( 31-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 8-1 downto 0 );
begin
  out1 <= single_port_ram_data_out_net;
  adder_s_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant2 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  counter : entity xil_defaultlib.test_spec_xlcounter_limit 
  generic map (
    cnt_15_0 => 251,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "test_spec_c_counter_binary_v12_0_i0",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 8
  )
  port map (
    en => "1",
    rst => "0",
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  single_port_ram : entity xil_defaultlib.test_spec_xlspram 
  generic map (
    init_value => b"0000000000000000000000000000000",
    latency => 2,
    mem_init_file => "xpm_4dd9cf_vivado.mem",
    mem_size => 7936,
    mem_type => "block",
    read_reset_val => "0",
    width => 31,
    width_addr => 8,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => adder_s_net,
    we => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => single_port_ram_data_out_net
  );
end structural;
-- Generated from Simulink block posedge
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_posedge_x0 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_posedge_x0;
architecture structural of test_spec_posedge_x0 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= logical_y_net;
  register0_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register0_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_4b738f42cd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => register0_q_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block pulse_ext
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pulse_ext_x0 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_pulse_ext_x0;
architecture structural of test_spec_pulse_ext_x0 is 
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 9-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 9-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= relational5_op_net;
  register0_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  posedge : entity xil_defaultlib.test_spec_posedge_x0 
  port map (
    in_x0 => register0_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => logical_y_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_9882c5878a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  counter3 : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i5",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  relational5 : entity xil_defaultlib.sysgen_relational_719637cb68 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter3_op_net,
    b => constant5_op_net,
    op => relational5_op_net
  );
end structural;
-- Generated from Simulink block simple_bram_vacc
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_simple_bram_vacc is
  port (
    new_acc : in std_logic_vector( 1-1 downto 0 );
    din : in std_logic_vector( 31-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 31-1 downto 0 );
    valid : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_simple_bram_vacc;
architecture structural of test_spec_simple_bram_vacc is 
  signal mux_y_net : std_logic_vector( 31-1 downto 0 );
  signal constant_op_net : std_logic_vector( 31-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 31-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 31-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal adder_s_net : std_logic_vector( 31-1 downto 0 );
begin
  dout <= single_port_ram_data_out_net;
  valid <= relational5_op_net;
  register0_q_net_x0 <= new_acc;
  register0_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.test_spec_delay_bram_x0 
  port map (
    in1 => adder_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => single_port_ram_data_out_net
  );
  pulse_ext : entity xil_defaultlib.test_spec_pulse_ext_x0 
  port map (
    in_x0 => register0_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => relational5_op_net
  );
  adder : entity xil_defaultlib.sysgen_addsub_c6ac0c3e71 
  port map (
    clr => '0',
    a => register0_q_net,
    b => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    s => adder_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_5cf3c3656e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  mux : entity xil_defaultlib.sysgen_mux_d47024cd86 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational5_op_net,
    d0 => single_port_ram_data_out_net,
    d1 => constant_op_net,
    y => mux_y_net
  );
end structural;
-- Generated from Simulink block delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_delay_bram is
  port (
    in1 : in std_logic_vector( 31-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 31-1 downto 0 )
  );
end test_spec_delay_bram;
architecture structural of test_spec_delay_bram is 
  signal single_port_ram_data_out_net : std_logic_vector( 31-1 downto 0 );
  signal counter_op_net : std_logic_vector( 8-1 downto 0 );
  signal adder_s_net : std_logic_vector( 31-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= single_port_ram_data_out_net;
  adder_s_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant2 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  counter : entity xil_defaultlib.test_spec_xlcounter_limit 
  generic map (
    cnt_15_0 => 251,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "test_spec_c_counter_binary_v12_0_i0",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 8
  )
  port map (
    en => "1",
    rst => "0",
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  single_port_ram : entity xil_defaultlib.test_spec_xlspram 
  generic map (
    init_value => b"0000000000000000000000000000000",
    latency => 2,
    mem_init_file => "xpm_4dd9cf_vivado.mem",
    mem_size => 7936,
    mem_type => "block",
    read_reset_val => "0",
    width => 31,
    width_addr => 8,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => adder_s_net,
    we => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => single_port_ram_data_out_net
  );
end structural;
-- Generated from Simulink block posedge
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_posedge is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_posedge;
architecture structural of test_spec_posedge is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= logical_y_net;
  register0_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register0_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_074be447a5 
  port map (
    clr => '0',
    ip => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_4b738f42cd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => register0_q_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block pulse_ext
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_pulse_ext is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_pulse_ext;
architecture structural of test_spec_pulse_ext is 
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 9-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 9-1 downto 0 );
begin
  out_x0 <= relational5_op_net;
  register0_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  posedge : entity xil_defaultlib.test_spec_posedge 
  port map (
    in_x0 => register0_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => logical_y_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_9882c5878a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  counter3 : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i5",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  relational5 : entity xil_defaultlib.sysgen_relational_719637cb68 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter3_op_net,
    b => constant5_op_net,
    op => relational5_op_net
  );
end structural;
-- Generated from Simulink block simple_bram_vacc1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_simple_bram_vacc1 is
  port (
    new_acc : in std_logic_vector( 1-1 downto 0 );
    din : in std_logic_vector( 31-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 31-1 downto 0 );
    valid : out std_logic_vector( 1-1 downto 0 )
  );
end test_spec_simple_bram_vacc1;
architecture structural of test_spec_simple_bram_vacc1 is 
  signal register0_q_net : std_logic_vector( 31-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal adder_s_net : std_logic_vector( 31-1 downto 0 );
  signal mux_y_net : std_logic_vector( 31-1 downto 0 );
  signal constant_op_net : std_logic_vector( 31-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 31-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net_x0 : std_logic_vector( 1-1 downto 0 );
begin
  dout <= single_port_ram_data_out_net;
  valid <= relational5_op_net;
  register0_q_net_x0 <= new_acc;
  register0_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.test_spec_delay_bram 
  port map (
    in1 => adder_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => single_port_ram_data_out_net
  );
  pulse_ext : entity xil_defaultlib.test_spec_pulse_ext 
  port map (
    in_x0 => register0_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => relational5_op_net
  );
  adder : entity xil_defaultlib.sysgen_addsub_c6ac0c3e71 
  port map (
    clr => '0',
    a => register0_q_net,
    b => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    s => adder_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_5cf3c3656e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  mux : entity xil_defaultlib.sysgen_mux_d47024cd86 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => relational5_op_net,
    d0 => single_port_ram_data_out_net,
    d1 => constant_op_net,
    y => mux_y_net
  );
end structural;
-- Generated from Simulink block snap_gap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_snap_gap is
  port (
    test_spec_snap_gap_user_data_out : in std_logic_vector( 32-1 downto 0 );
    in_reg : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_snap_gap;
architecture structural of test_spec_snap_gap is 
  signal slice_reg_y_net : std_logic_vector( 32-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal test_spec_snap_gap_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
begin
  in_reg <= reint1_output_port_net;
  test_spec_snap_gap_user_data_out_net <= test_spec_snap_gap_user_data_out;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => test_spec_snap_gap_user_data_out_net,
    q => io_delay_q_net
  );
  slice_reg : entity xil_defaultlib.test_spec_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 31,
    x_width => 32,
    y_width => 32
  )
  port map (
    x => io_delay_q_net,
    y => slice_reg_y_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_reg_y_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block sync_cnt
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_sync_cnt is
  port (
    out_reg : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    test_spec_sync_cnt_user_data_in : out std_logic_vector( 32-1 downto 0 )
  );
end test_spec_sync_cnt;
architecture structural of test_spec_sync_cnt is 
  signal sync_cntr_op_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal io_delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal assert_reg_dout_net : std_logic_vector( 32-1 downto 0 );
begin
  sync_cntr_op_net <= out_reg;
  test_spec_sync_cnt_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  io_delay : entity xil_defaultlib.sysgen_delay_4584cd3e10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d => reint1_output_port_net,
    q => io_delay_q_net
  );
  cast_gw : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 32,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => io_delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => cast_gw_dout_net
  );
  assert_reg : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 32,
    dout_width => 32
  )
  port map (
    din => sync_cntr_op_net,
    dout => assert_reg_dout_net
  );
  reint1 : entity xil_defaultlib.sysgen_reinterpret_f8bd0fe7f0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => assert_reg_dout_net,
    output_port => reint1_output_port_net
  );
end structural;
-- Generated from Simulink block test_spec_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_struct is
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
    clk_1 : in std_logic;
    ce_1 : in std_logic;
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
end test_spec_struct;
architecture structural of test_spec_struct is 
  signal fft_op_re_net : std_logic_vector( 19-1 downto 0 );
  signal cast_gw_dout_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal convert_addr_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal test_spec_adc_voltage_snap_ss_bram_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net_x5 : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net_x4 : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net_x3 : std_logic_vector( 32-1 downto 0 );
  signal convert_addr_dout_net_x2 : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal test_spec_accum1_snap_ss_bram_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal test_spec_accum1_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net_x7 : std_logic_vector( 32-1 downto 0 );
  signal convert_addr_dout_net_x0 : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal test_spec_accumdat_snap_ss_bram_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal test_spec_accumdat_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 10-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 15-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 15-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 15-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 15-1 downto 0 );
  signal reint1_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal sync_cntr_op_net : std_logic_vector( 32-1 downto 0 );
  signal counter_led1_op_net : std_logic_vector( 8-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 8-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay28_q_net : std_logic_vector( 1-1 downto 0 );
  signal fft_op_im_net : std_logic_vector( 19-1 downto 0 );
  signal fft1_op_re_net : std_logic_vector( 19-1 downto 0 );
  signal fft1_op_im_net : std_logic_vector( 19-1 downto 0 );
  signal adc_sample_counter_op_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net_x6 : std_logic_vector( 32-1 downto 0 );
  signal test_spec_acc_len_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal convert_addr_dout_net_x1 : std_logic_vector( 12-1 downto 0 );
  signal convert_din1_dout_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal test_spec_accum0_snap_ss_bram_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal convert_we_dout_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal test_spec_accum0_snap_ss_ctrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net_x8 : std_logic_vector( 32-1 downto 0 );
  signal spect_cnt1_op_net : std_logic_vector( 11-1 downto 0 );
  signal edge_op_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal arm_or_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal single_port_ram_data_out_net_x0 : std_logic_vector( 31-1 downto 0 );
  signal relational5_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net_x7 : std_logic_vector( 1-1 downto 0 );
  signal we_choice_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal arm_or_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 31-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal we_choice_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal arm_or_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal spect_cnt_op_net : std_logic_vector( 11-1 downto 0 );
  signal register0_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal we_choice_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal arm_or_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 10-1 downto 0 );
  signal convert18_dout_net : std_logic_vector( 10-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 1-1 downto 0 );
  signal we_choice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_reg_y_net : std_logic_vector( 1-1 downto 0 );
  signal edge_op_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal spect_cnt3_op_net : std_logic_vector( 8-1 downto 0 );
  signal spect_cnt4_op_net : std_logic_vector( 32-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net_x6 : std_logic_vector( 31-1 downto 0 );
  signal addsub_s_net_x0 : std_logic_vector( 31-1 downto 0 );
  signal register0_q_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net_x3 : std_logic_vector( 31-1 downto 0 );
  signal register0_q_net_x0 : std_logic_vector( 31-1 downto 0 );
  signal register0_q_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal register0_q_net_x1 : std_logic_vector( 31-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 31-1 downto 0 );
  signal register0_q_net : std_logic_vector( 8-1 downto 0 );
  signal spect_cnt2_op_net : std_logic_vector( 8-1 downto 0 );
  signal concat_y_net_x0 : std_logic_vector( 30-1 downto 0 );
  signal concat_y_net : std_logic_vector( 30-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal fft1_start_frame_out_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_red_pitaya_adc_adc0_data_i_out_net : std_logic_vector( 10-1 downto 0 );
  signal test_spec_red_pitaya_adc_adc1_data_q_out_net : std_logic_vector( 10-1 downto 0 );
  signal test_spec_red_pitaya_adc_adc_data_val_out_net : std_logic_vector( 1-1 downto 0 );
  signal convert_adc_reset_in_dout_net : std_logic_vector( 1-1 downto 0 );
  signal test_spec_reg_cntrl_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal test_spec_snap_gap_user_data_out_net : std_logic_vector( 32-1 downto 0 );
  signal cast_gw_dout_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal acc_cntr_op_net : std_logic_vector( 32-1 downto 0 );
  signal relational5_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal reint1_output_port_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal fft_start_frame_out_net : std_logic_vector( 1-1 downto 0 );
  signal constant12_op_net : std_logic_vector( 10-1 downto 0 );
begin
  test_spec_acc_cnt_user_data_in <= cast_gw_dout_net_x6;
  test_spec_acc_len_user_data_out_net <= test_spec_acc_len_user_data_out;
  test_spec_accum0_snap_ss_bram_addr <= convert_addr_dout_net_x1;
  test_spec_accum0_snap_ss_bram_data_in <= convert_din1_dout_net_x1;
  test_spec_accum0_snap_ss_bram_data_out_net <= test_spec_accum0_snap_ss_bram_data_out;
  test_spec_accum0_snap_ss_bram_we <= convert_we_dout_net_x2;
  test_spec_accum0_snap_ss_ctrl_user_data_out_net <= test_spec_accum0_snap_ss_ctrl_user_data_out;
  test_spec_accum0_snap_ss_status_user_data_in <= cast_gw_dout_net_x8;
  test_spec_accum1_snap_ss_bram_addr <= convert_addr_dout_net_x2;
  test_spec_accum1_snap_ss_bram_data_in <= convert_din1_dout_net_x2;
  test_spec_accum1_snap_ss_bram_data_out_net <= test_spec_accum1_snap_ss_bram_data_out;
  test_spec_accum1_snap_ss_bram_we <= convert_we_dout_net_x1;
  test_spec_accum1_snap_ss_ctrl_user_data_out_net <= test_spec_accum1_snap_ss_ctrl_user_data_out;
  test_spec_accum1_snap_ss_status_user_data_in <= cast_gw_dout_net_x7;
  test_spec_accumdat_snap_ss_bram_addr <= convert_addr_dout_net_x0;
  test_spec_accumdat_snap_ss_bram_data_in <= convert_din1_dout_net_x0;
  test_spec_accumdat_snap_ss_bram_data_out_net <= test_spec_accumdat_snap_ss_bram_data_out;
  test_spec_accumdat_snap_ss_bram_we <= convert_we_dout_net_x0;
  test_spec_accumdat_snap_ss_ctrl_user_data_out_net <= test_spec_accumdat_snap_ss_ctrl_user_data_out;
  test_spec_accumdat_snap_ss_status_user_data_in <= cast_gw_dout_net_x0;
  test_spec_adc_dv_user_data_in <= cast_gw_dout_net_x2;
  test_spec_adc_sample_cnt_user_data_in <= cast_gw_dout_net_x1;
  test_spec_adc_voltage_snap_ss_bram_addr <= convert_addr_dout_net;
  test_spec_adc_voltage_snap_ss_bram_data_in <= convert_din1_dout_net;
  test_spec_adc_voltage_snap_ss_bram_data_out_net <= test_spec_adc_voltage_snap_ss_bram_data_out;
  test_spec_adc_voltage_snap_ss_bram_we <= convert_we_dout_net;
  test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net <= test_spec_adc_voltage_snap_ss_ctrl_user_data_out;
  test_spec_adc_voltage_snap_ss_status_user_data_in <= cast_gw_dout_net_x5;
  test_spec_fft_sync_inc0_user_data_in <= cast_gw_dout_net_x4;
  test_spec_fft_sync_inc1_user_data_in <= cast_gw_dout_net_x3;
  test_spec_red_pitaya_adc_adc0_data_i_out_net <= test_spec_red_pitaya_adc_adc0_data_i_out;
  test_spec_red_pitaya_adc_adc1_data_q_out_net <= test_spec_red_pitaya_adc_adc1_data_q_out;
  test_spec_red_pitaya_adc_adc_data_val_out_net <= test_spec_red_pitaya_adc_adc_data_val_out;
  test_spec_red_pitaya_adc_adc_reset_in <= convert_adc_reset_in_dout_net;
  test_spec_reg_cntrl_user_data_out_net <= test_spec_reg_cntrl_user_data_out;
  test_spec_snap_gap_user_data_out_net <= test_spec_snap_gap_user_data_out;
  test_spec_sync_cnt_user_data_in <= cast_gw_dout_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  acc_cnt : entity xil_defaultlib.test_spec_acc_cnt 
  port map (
    out_reg => acc_cntr_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_acc_cnt_user_data_in => cast_gw_dout_net_x6
  );
  acc_cntrl : entity xil_defaultlib.test_spec_acc_cntrl 
  port map (
    acc_len => reint1_output_port_net_x0,
    sync => fft_start_frame_out_net,
    rst => edge_op_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    new_acc => relational5_op_net_x1
  );
  acc_len : entity xil_defaultlib.test_spec_acc_len 
  port map (
    test_spec_acc_len_user_data_out => test_spec_acc_len_user_data_out_net,
    in_reg => reint1_output_port_net_x0
  );
  accum0_snap : entity xil_defaultlib.test_spec_accum0_snap 
  port map (
    in_p_acc0 => single_port_ram_data_out_net_x0,
    in_val_acc0 => relational5_op_net_x0,
    we => constant2_op_net,
    trig => register0_q_net_x7,
    test_spec_accum0_snap_ss_ctrl_user_data_out => test_spec_accum0_snap_ss_ctrl_user_data_out_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    arm_out => arm_or_y_net_x1,
    test_spec_accum0_snap_ss_bram_addr => convert_addr_dout_net_x1,
    test_spec_accum0_snap_ss_bram_data_in => convert_din1_dout_net_x1,
    test_spec_accum0_snap_ss_bram_we => convert_we_dout_net_x2,
    test_spec_accum0_snap_ss_status_user_data_in => cast_gw_dout_net_x8,
    goto_31470454_we1 => we_choice_y_net_x1,
    goto_31470454_we4 => logical6_y_net_x0
  );
  accum1_snap : entity xil_defaultlib.test_spec_accum1_snap 
  port map (
    in_p_acc1 => single_port_ram_data_out_net,
    in_val_acc1 => relational5_op_net,
    we => constant7_op_net,
    trig => register0_q_net_x7,
    test_spec_accum1_snap_ss_ctrl_user_data_out => test_spec_accum1_snap_ss_ctrl_user_data_out_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    arm_out => arm_or_y_net_x2,
    test_spec_accum1_snap_ss_bram_addr => convert_addr_dout_net_x2,
    test_spec_accum1_snap_ss_bram_data_in => convert_din1_dout_net_x2,
    test_spec_accum1_snap_ss_bram_we => convert_we_dout_net_x1,
    test_spec_accum1_snap_ss_status_user_data_in => cast_gw_dout_net_x7,
    goto_103064183_we1 => we_choice_y_net_x2,
    goto_103064183_we4 => logical6_y_net_x2
  );
  accumdat_snap : entity xil_defaultlib.test_spec_accumdat_snap 
  port map (
    in_ch_acc => spect_cnt_op_net,
    in_ch_count => register0_q_net_x8,
    we => constant6_op_net,
    trig => register0_q_net_x7,
    test_spec_accumdat_snap_ss_ctrl_user_data_out => test_spec_accumdat_snap_ss_ctrl_user_data_out_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    arm_out => arm_or_y_net_x0,
    test_spec_accumdat_snap_ss_bram_addr => convert_addr_dout_net_x0,
    test_spec_accumdat_snap_ss_bram_data_in => convert_din1_dout_net_x0,
    test_spec_accumdat_snap_ss_bram_we => convert_we_dout_net_x0,
    test_spec_accumdat_snap_ss_status_user_data_in => cast_gw_dout_net_x0,
    goto_121630685_we1 => we_choice_y_net_x0,
    goto_121630685_we4 => logical6_y_net_x1
  );
  adc_dv : entity xil_defaultlib.test_spec_adc_dv 
  port map (
    out_reg => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_adc_dv_user_data_in => cast_gw_dout_net_x2
  );
  adc_sample_cnt : entity xil_defaultlib.test_spec_adc_sample_cnt 
  port map (
    out_reg => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_adc_sample_cnt_user_data_in => cast_gw_dout_net_x1
  );
  adc_voltage_snap : entity xil_defaultlib.test_spec_adc_voltage_snap 
  port map (
    in_adc_di => convert6_dout_net,
    in_adc_dq => convert18_dout_net,
    in_adc_valid => convert2_dout_net,
    we => constant11_op_net,
    trig => register0_q_net_x7,
    test_spec_adc_voltage_snap_ss_ctrl_user_data_out => test_spec_adc_voltage_snap_ss_ctrl_user_data_out_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    arm_out => arm_or_y_net,
    test_spec_adc_voltage_snap_ss_bram_addr => convert_addr_dout_net,
    test_spec_adc_voltage_snap_ss_bram_data_in => convert_din1_dout_net,
    test_spec_adc_voltage_snap_ss_bram_we => convert_we_dout_net,
    test_spec_adc_voltage_snap_ss_status_user_data_in => cast_gw_dout_net_x5,
    goto_28719212_we1 => we_choice_y_net,
    goto_28719212_we4 => logical6_y_net
  );
  edge_detect : entity xil_defaultlib.test_spec_edge_detect_x0 
  port map (
    in_x0 => slice_reg_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => edge_op_y_net_x0
  );
  edge_detect2 : entity xil_defaultlib.test_spec_edge_detect2 
  port map (
    in_x0 => relational1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => edge_op_y_net
  );
  fft_sync_inc0 : entity xil_defaultlib.test_spec_fft_sync_inc0 
  port map (
    out_reg => spect_cnt3_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_fft_sync_inc0_user_data_in => cast_gw_dout_net_x4
  );
  fft_sync_inc1 : entity xil_defaultlib.test_spec_fft_sync_inc1 
  port map (
    out_reg => spect_cnt4_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_fft_sync_inc1_user_data_in => cast_gw_dout_net_x3
  );
  pipeline1 : entity xil_defaultlib.test_spec_pipeline1 
  port map (
    d => relational_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q => register0_q_net_x7
  );
  pipeline10 : entity xil_defaultlib.test_spec_pipeline10 
  port map (
    d => addsub_s_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q => register0_q_net_x6
  );
  pipeline11 : entity xil_defaultlib.test_spec_pipeline11 
  port map (
    d => relational5_op_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q => register0_q_net_x5
  );
  pipeline12 : entity xil_defaultlib.test_spec_pipeline12 
  port map (
    d => relational5_op_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q => register0_q_net_x4
  );
  pipeline13 : entity xil_defaultlib.test_spec_pipeline13 
  port map (
    d => register0_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q => register0_q_net_x3
  );
  pipeline14 : entity xil_defaultlib.test_spec_pipeline14 
  port map (
    d => relational5_op_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q => register0_q_net_x2
  );
  pipeline15 : entity xil_defaultlib.test_spec_pipeline15 
  port map (
    d => register0_q_net_x6,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q => register0_q_net_x1
  );
  pipeline2 : entity xil_defaultlib.test_spec_pipeline2 
  port map (
    d => addsub_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q => register0_q_net_x0
  );
  pipeline7 : entity xil_defaultlib.test_spec_pipeline7 
  port map (
    d => spect_cnt2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q => register0_q_net
  );
  pipeline8 : entity xil_defaultlib.test_spec_pipeline8 
  port map (
    d => register0_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q => register0_q_net_x8
  );
  power_calc : entity xil_defaultlib.test_spec_power_calc 
  port map (
    pol0 => concat_y_net_x0,
    pol1 => concat_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    p0 => addsub_s_net,
    p1 => addsub_s_net_x0
  );
  red_pitaya_adc : entity xil_defaultlib.test_spec_red_pitaya_adc 
  port map (
    adc_reset_in => edge_op_y_net_x0,
    test_spec_red_pitaya_adc_adc0_data_i_out => test_spec_red_pitaya_adc_adc0_data_i_out_net,
    test_spec_red_pitaya_adc_adc1_data_q_out => test_spec_red_pitaya_adc_adc1_data_q_out_net,
    test_spec_red_pitaya_adc_adc_data_val_out => test_spec_red_pitaya_adc_adc_data_val_out_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    adc_data_val_out => convert2_dout_net,
    adc0_data_i_out => convert6_dout_net,
    adc1_data_q_out => convert18_dout_net,
    test_spec_red_pitaya_adc_adc_reset_in => convert_adc_reset_in_dout_net
  );
  reg_cntrl : entity xil_defaultlib.test_spec_reg_cntrl 
  port map (
    test_spec_reg_cntrl_user_data_out => test_spec_reg_cntrl_user_data_out_net,
    in_reg => slice_reg_y_net
  );
  ri_to_c : entity xil_defaultlib.test_spec_ri_to_c 
  port map (
    re => convert_dout_net,
    im => convert2_dout_net_x0,
    c => concat_y_net_x0
  );
  ri_to_c1 : entity xil_defaultlib.test_spec_ri_to_c1 
  port map (
    re => convert3_dout_net,
    im => convert4_dout_net,
    c => concat_y_net
  );
  simple_bram_vacc : entity xil_defaultlib.test_spec_simple_bram_vacc 
  port map (
    new_acc => register0_q_net_x4,
    din => register0_q_net_x3,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => single_port_ram_data_out_net_x0,
    valid => relational5_op_net_x0
  );
  simple_bram_vacc1 : entity xil_defaultlib.test_spec_simple_bram_vacc1 
  port map (
    new_acc => register0_q_net_x2,
    din => register0_q_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => single_port_ram_data_out_net,
    valid => relational5_op_net
  );
  snap_gap : entity xil_defaultlib.test_spec_snap_gap 
  port map (
    test_spec_snap_gap_user_data_out => test_spec_snap_gap_user_data_out_net,
    in_reg => reint1_output_port_net
  );
  sync_cnt : entity xil_defaultlib.test_spec_sync_cnt 
  port map (
    out_reg => sync_cntr_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    test_spec_sync_cnt_user_data_in => cast_gw_dout_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_7c10521c5f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_led1_op_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
  counter_led1 : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 8
  )
  port map (
    en => "1",
    rst => "0",
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_led1_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_799c70ed2a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant11 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant11_op_net
  );
  constant12 : entity xil_defaultlib.sysgen_constant_c5b59c8c10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant12_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_c5b59c8c10 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_36e74fd40d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  convert : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 19,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 15,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => fft_op_re_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert2 : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 19,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 15,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => fft_op_im_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net_x0
  );
  convert3 : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 19,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 15,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => fft1_op_re_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.test_spec_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 19,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 15,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => fft1_op_im_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  delay1 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => adc_sample_counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => fft_start_frame_out_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay28 : entity xil_defaultlib.sysgen_delay_ef3bcde098 
  port map (
    clr => '0',
    d => relational5_op_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => delay28_q_net
  );
  delay3 : entity xil_defaultlib.test_spec_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => fft1_start_frame_out_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  fft : entity xil_defaultlib.xltest_spec_xfft_v9_1_i0_9b2dece57ee61ac8362d8aa5c105b38d_wrapper 
  port map (
    in_re => convert6_dout_net,
    in_im => constant3_op_net,
    start_frame_in => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    op_re => fft_op_re_net,
    op_im => fft_op_im_net,
    start_frame_out => fft_start_frame_out_net
  );
  fft1 : entity xil_defaultlib.xltest_spec_xfft_v9_1_i0_9b2dece57ee61ac8362d8aa5c105b38d_wrapper 
  port map (
    in_re => convert18_dout_net,
    in_im => constant12_op_net,
    start_frame_in => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    op_re => fft1_op_re_net,
    op_im => fft1_op_im_net,
    start_frame_out => fft1_start_frame_out_net
  );
  relational : entity xil_defaultlib.sysgen_relational_ad97dea8d3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => reint1_output_port_net,
    b => spect_cnt1_op_net,
    op => relational_op_net
  );
  acc_cntr : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 32
  )
  port map (
    clr => '0',
    rst => edge_op_y_net_x0,
    en => delay28_q_net,
    clk => clk_net,
    ce => ce_net,
    op => acc_cntr_op_net
  );
  adc_sample_counter : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 32
  )
  port map (
    clr => '0',
    rst => edge_op_y_net_x0,
    en => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => adc_sample_counter_op_net
  );
  spect_cnt : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 11
  )
  port map (
    clr => '0',
    rst => register0_q_net_x5,
    en => relational5_op_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => spect_cnt_op_net
  );
  spect_cnt1 : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 11
  )
  port map (
    clr => '0',
    rst => edge_op_y_net_x0,
    en => fft_start_frame_out_net,
    clk => clk_net,
    ce => ce_net,
    op => spect_cnt1_op_net
  );
  spect_cnt2 : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 8
  )
  port map (
    en => "1",
    clr => '0',
    rst => fft_start_frame_out_net,
    clk => clk_net,
    ce => ce_net,
    op => spect_cnt2_op_net
  );
  spect_cnt3 : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 8
  )
  port map (
    rst => "0",
    clr => '0',
    en => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => spect_cnt3_op_net
  );
  spect_cnt4 : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 32
  )
  port map (
    rst => "0",
    clr => '0',
    en => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    op => spect_cnt4_op_net
  );
  sync_cntr : entity xil_defaultlib.test_spec_xlcounter_free 
  generic map (
    core_name0 => "test_spec_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 32
  )
  port map (
    clr => '0',
    rst => edge_op_y_net_x0,
    en => edge_op_y_net,
    clk => clk_net,
    ce => ce_net,
    op => sync_cntr_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec_default_clock_driver is
  port (
    test_spec_sysclk : in std_logic;
    test_spec_sysce : in std_logic;
    test_spec_sysclr : in std_logic;
    test_spec_clk1 : out std_logic;
    test_spec_ce1 : out std_logic
  );
end test_spec_default_clock_driver;
architecture structural of test_spec_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => test_spec_sysclk,
    sysce => test_spec_sysce,
    sysclr => test_spec_sysclr,
    clk => test_spec_clk1,
    ce => test_spec_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity test_spec is
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
end test_spec;
architecture structural of test_spec is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "test_spec,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z010,speed=-1,package=clg400,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=8,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10000,addsub=8,assert=19,concat=26,constant=81,convert=42,counter=26,delay=108,inv=29,logical=58,mult=4,mux=30,register=56,reinterpret=72,relational=21,shift=5,slice=59,spram=2,xfft_forward=2,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  test_spec_default_clock_driver : entity xil_defaultlib.test_spec_default_clock_driver 
  port map (
    test_spec_sysclk => clk,
    test_spec_sysce => '1',
    test_spec_sysclr => '0',
    test_spec_clk1 => clk_1_net,
    test_spec_ce1 => ce_1_net
  );
  test_spec_struct : entity xil_defaultlib.test_spec_struct 
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
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
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
