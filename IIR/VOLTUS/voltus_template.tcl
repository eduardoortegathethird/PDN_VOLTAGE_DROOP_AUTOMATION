# Launch Voltus
#   voltus -no_gui -init <TCL file> -log <log path>

# 1. Import design
#   Enc.dat from Innovus
#   DEF from Innovus (after place and route)
#   SPEF from Innovus (after synthesis / place and route)
#   SET DC source POWER/GROUND nets
read_design -physical_data /home/aavyas1/research/IIR/IIR/apr/IIR_filter.enc.dat IIR_filter 
read_def "/home/aavyas1/research/IIR/IIR/apr/IIR_filter.def"
set_dc_sources VDD -power -voltage 1.1 -force
set_dc_sources VSS -ground
read_spef "/home/aavyas1/research/IIR/IIR/apr/IIR_filter.spef.gz"

# 2. Power simulation
#
set_power_analysis_mode -reset
set_power_analysis_mode -method dynamic_vectorbased \
	  -create_binary_db true \
   -transition_time_method max \
   -disable_static false \
   -write_static_currents true
set_dynamic_power_simulation -reset
set_dynamic_power_simulation -resolution 1ns
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.0 
read_activity_file -reset
read_activity_file -format VCD /home/aavyas1/research/IIR/IIR/apr/iir_sim/IIR_filter.vcd -start start_time -end end_time -scope IIR_filter_tb/dut
set_power_output_dir -reset
set_power_output_dir output_directory_power
report_power


# 3. Rail simulation
#   Must be run after power simulation
set_rail_analysis_mode -method dynamic \
   -accuracy hd \
   -power_grid_library {/home/aavyas1/research/IIR/IIR/voltus/required_files/tech_pgv/techonly.cl} \
   -temp_directory_name ./tmp \
   -temperature 25 \
	  -limit_number_of_steps false \
	  -save_voltage_waveforms false \
	  -generate_movies false
set_pg_nets -net VDD -voltage 1.1 -threshold 0.4
set_pg_nets -net VSS -voltage 0.00 -threshold 0.2
set_rail_analysis_domain -name PD -pwrnets VDD -gndnets VSS -threshold 0.1
set_power_data -reset
set_power_data -scale 1 -format current output_directory_power/dynamic_VDD.ptiavg
set_power_data -scale 1 -format current output_directory_power/dynamic_VSS.ptiavg
set_power_pads -reset
set_power_pads -net VDD -format xy -file /home/aavyas1/research/IIR/IIR/voltus/required_files/VDD.pp
set_power_pads -net VSS -format xy -file /home/aavyas1/research/IIR/IIR/voltus/required_files/VSS.pp
analyze_rail -type domain -output output_directory_rail PD
exit

#lines to be taken care of line number: 14, 17, 32, 34, 52, 53, 55, 56, 57

