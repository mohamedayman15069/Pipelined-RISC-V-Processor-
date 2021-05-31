# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.cache/wt [current_project]
set_property parent.project_path C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.0 [current_project]
set_property ip_output_repo c:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/full_adder.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/ripple_carryadder.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/DataMem.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/ALU.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/ALU_control.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/imm_gen.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/regFile.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/InstMem.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/control_unit.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/Branch_Control.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/shifter.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/mux4x1.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/processor.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/mux32.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/register.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/memory.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/forwarding_unit.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/branch_forward_unit.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/top_module.v
  C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/sources_1/new/uart.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files C:/Users/CSE.CAL/Desktop/MS3/project_1/project_1.srcs/constrs_1/new/constraints.xdc]


synth_design -top Four_Digit_Seven_Segment_Driver_Optimized -part xc7a100tcsg324-1


write_checkpoint -force -noxdef Four_Digit_Seven_Segment_Driver_Optimized.dcp

catch { report_utilization -file Four_Digit_Seven_Segment_Driver_Optimized_utilization_synth.rpt -pb Four_Digit_Seven_Segment_Driver_Optimized_utilization_synth.pb }