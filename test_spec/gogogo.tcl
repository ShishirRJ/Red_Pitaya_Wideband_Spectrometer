set impl_dir "/home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/myproj/myproj.runs/impl_1"
set bin_file "/home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/myproj/myproj.runs/impl_1/top.bin"
set bit_file "/home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/myproj/myproj.runs/impl_1/top.bit"
set hex_file "/home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/myproj/myproj.runs/impl_1/top.hex"
set mcs_file "/home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/myproj/myproj.runs/impl_1/top.mcs"
set prm_file "/home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/myproj/myproj.runs/impl_1/top.prm"
set xsa_file "/home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/myproj/myproj.runs/impl_1/top.xsa"
set jbd_name "red_pitaya_bd"

proc check_timing {run} {
  if { [get_property STATS.WNS [get_runs $run] ] < 0 } {
    send_msg_id "CASPER-1" {CRITICAL WARNING} "ERROR: Found timing violations => Worst Negative Slack: [get_property STATS.WNS [get_runs $run]] ns"
  } else {
    puts "No timing violations => Worst Negative Slack: [get_property STATS.WNS [get_runs $run]] ns"
  }

  if { [get_property STATS.TNS [get_runs $run] ] < 0 } {
    send_msg_id "CASPER-1" {CRITICAL WARNING} "ERROR: Found timing violations => Total Negative Slack: [get_property STATS.TNS [get_runs $run]] ns"
  }

  if { [get_property STATS.WHS [get_runs $run] ] < 0 } {
    send_msg_id "CASPER-1" {CRITICAL WARNING} "ERROR: Found timing violations => Worst Hold Slack: [get_property STATS.WHS [get_runs $run]] ns"
  } else {
    puts "No timing violations => Worst Hold Slack: [get_property STATS.WHS [get_runs $run]] ns"
  }

  if { [get_property STATS.THS [get_runs $run] ] < 0 } {
    send_msg_id "CASPER-1" {CRITICAL WARNING} "ERROR: Found timing violations => Total Hold Slack: [get_property STATS.THS [get_runs $run]] ns"
  }
}


proc check_zero_critical {count mess} {
  if {$count > 0} {
    puts "************************************************"
    send_msg_id "CASPER-2" {CRITICAL WARNING} "$mess critical warning count: $count"
    puts "************************************************"
  }
}


proc puts_red {s} {
  puts -nonewline "\[1;31m"; #RED
  puts $s
  puts -nonewline "\[0m";# Reset
}

puts "Starting tcl script"
cd /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec
create_project -f myproj myproj -part xc7z010clg400-1
create_bd_design $jbd_name
current_bd_design $jbd_name
set_property target_language VHDL [current_project]



import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/top.v
import_files -force /home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/wb_register_simulink2ppc
import_files -force /home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/wb_register_ppc2simulink
import_files -force /home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/red_pitaya_adc/red_pitaya_adc.v
import_files -force /home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/red_pitaya_adc/adc_data_fifo/adc_data_fifo.xci
import_files -force /home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/infrastructure/red_pitaya.v
import_files -force /home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/utils/cdc_synchroniser.vhd
import_files -force /home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/sys_block
import_files -force /home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/axi4_lite/axi4lite_slave_logic.vhd
import_files -force /home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/axi4_lite/axi4lite_pkg.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/axi4lite_ic_wrapper.vhdl
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_accum1_snap_ss_bram_pkg.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_accumdat_snap_ss_bram_pkg.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/ipb_accum0_snap_ss_bram_dp_ram.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/ipb_accumdat_snap_ss_bram_dp_ram.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_accum0_snap_ss_bram_muxdemux.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/asym_bram_tdp.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_axi4lite_top_mmap_pkg.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_accum1_snap_ss_bram.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_adc_voltage_snap_ss_bram.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_adc_voltage_snap_ss_bram_muxdemux.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_accumdat_snap_ss_bram_muxdemux.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_axi4lite_top_ic.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_accum0_snap_ss_bram.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_adc_voltage_snap_ss_bram_pkg.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_accum0_snap_ss_bram_pkg.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_sys_muxdemux.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_sys_pkg.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_sw_reg_muxdemux.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_sw_reg.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_accumdat_snap_ss_bram.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/ipb_accum1_snap_ss_bram_dp_ram.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_accum1_snap_ss_bram_muxdemux.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_sys.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_sw_reg_pkg.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/ipb_adc_voltage_snap_ss_bram_dp_ram.vhd
import_files -force /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/xml2vhdl_hdl_output/axi4lite_axi4lite_top_ic_pkg.vhd
set repos [get_property ip_repo_paths [current_project]]
set_property ip_repo_paths "$repos /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/sysgen" [current_project]
update_ip_catalog
create_ip -name test_spec -vendor User_Company -library SysGen -version 1.0 -module_name test_spec_ip
import_files -force -fileset constrs_1 /home/shishir/pythontest/Red-Pitaya-Casper-Toolflow/red_pitaya/test_spec/test_spec/user_const.xdc
set_property top top [current_fileset]
update_compile_order -fileset sources_1
if {[llength [glob -nocomplain [get_property directory [current_project]]/myproj.srcs/sources_1/imports/*.coe]] > 0} {
file copy -force {*}[glob [get_property directory [current_project]]/myproj.srcs/sources_1/imports/*.coe] [get_property directory [current_project]]/myproj.srcs/sources_1/ip/
}
upgrade_ip -quiet [get_ips *]
source /home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/infrastructure/red_pitaya.tcl
generate_target all [get_files [get_property directory [current_project]]/myproj.srcs/sources_1/bd/red_pitaya_bd/red_pitaya_bd.bd]
make_wrapper -files [get_files [get_property directory [current_project]]/myproj.srcs/sources_1/bd/red_pitaya_bd/red_pitaya_bd.bd] -top
add_files -norecurse [get_property directory [current_project]]/myproj.srcs/sources_1/bd/red_pitaya_bd/hdl/red_pitaya_bd_wrapper.vhd
update_compile_order -fileset sources_1
import_files {/home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/axi4_lite/axi4lite_slave_logic.vhd /home/shishir/pythontest/mlib_devel/jasper_library/hdl_sources/axi4_lite/axi4lite_pkg.vhd}
update_compile_order -fileset sources_1
save_bd_design
validate_bd_design
generate_target all [get_files [get_property directory [current_project]]/myproj.srcs/sources_1/bd/red_pitaya_bd/red_pitaya_bd.bd]
make_wrapper -files [get_files [get_property directory [current_project]]/myproj.srcs/sources_1/bd/red_pitaya_bd/red_pitaya_bd.bd] -top
add_files -norecurse [get_property directory [current_project]]/myproj.srcs/sources_1/bd/red_pitaya_bd/hdl/red_pitaya_bd_wrapper.vhd
update_compile_order -fileset sources_1
reset_run synth_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1
open_run synth_1
set synth_critical_count [get_msg_config -count -severity {CRITICAL WARNING}]
set_property STEPS.POST_PLACE_POWER_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
launch_runs impl_1 -jobs 4
wait_on_run impl_1
open_run impl_1
set impl_critical_count [get_msg_config -count -severity {CRITICAL WARNING}]
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
cd [get_property DIRECTORY [current_project]]
check_timing impl_1
check_zero_critical $impl_critical_count implementation
check_zero_critical $synth_critical_count synthesis
