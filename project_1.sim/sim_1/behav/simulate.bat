@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim processor_tb_behav -key {Behavioral:sim_1:Functional:processor_tb} -tclbatch processor_tb.tcl -view C:/Users/CSE.CAL/Desktop/MS3/project_1/exp1_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
