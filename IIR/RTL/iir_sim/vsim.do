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
vcd file IIR_filter.vcd
vcd add -r /IIR_filter_tb/dut/*

#vsim work.fir_tb
#add wave -position insertpoint sim:/IIR_filter_tb/*
run -all;
#
# should never get here anyway!!
#
quit