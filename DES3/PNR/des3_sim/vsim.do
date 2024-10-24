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
log -r /* ;
vcd file DES3.vcd
vcd add -r /des3_tb/dut/*
run -all;
#
# should never get here anyway!!
#
quit
