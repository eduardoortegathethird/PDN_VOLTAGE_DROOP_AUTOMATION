#//************************************************************************
#// Copyright 2021 Massachusetts Institute of Technology
#//
#// File Name:      vsim.do
#// Program:        Common Evaluation Platform (CEP)
#// Description:    Testbench TCL script
#// Notes:        
#//
#//************************************************************************
set NumericStdNoWarnings 1
set StdArithNoWarnings 1
#
# just run
#
echo "Enable logging";	
###log -r /* ;
vlog /home/aavyas1/adder/ring_adder/adder.v
vsim work.tb_adder ;  ####to simulate the tb_adder
add wave -position insertpoint sim:/tb_adder/*    ##to add tb_adder to wave and to plot waveforms
run -all;   ##to execute simulation for the entire available simulation time
#
# should never get here anyway!!
#
quit
