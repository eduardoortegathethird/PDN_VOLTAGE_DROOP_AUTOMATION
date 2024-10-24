source Default.globals
##set init_io_file padframe.io
init_design

floorPlan -d 150 150 20 20 20 20 


globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}


addWellTap -cell TAPCELL_ASAP7_75t_R -cellInterval 60 -inRowOffset 2 -prefix WELLTAP


addRing -skip_via_on_wire_shape Noshape -exclude_selected 1 -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer M3 -type core_rings -jog_distance 0.56 -threshold 0.56 -nets {VDD VSS} -follow core -stacked_via_bottom_layer M1 -layer {left M3 right M3 bottom M2 top M2} -width 6 -spacing 2 -offset 2

sroute -connect { blockPin padPin padRing corePin floatingStripe } -nets {VDD VSS } -layerChangeRange { M1 M3 } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { M1 M3 } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1 M3 }


getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 0 -layer 2 -spreadType side -pin {{desIn[0]} {desIn[1]} {desIn[2]} {desIn[3]} {desIn[4]} {desIn[5]} {desIn[6]} {desIn[7]} {desIn[8]} {desIn[9]} {desIn[10]} {desIn[11]} {desIn[12]} {desIn[13]} {desIn[14]} {desIn[15]} {desIn[16]} {desIn[17]} {desIn[18]} {desIn[19]} {desIn[20]} {desIn[21]} {desIn[22]} {desIn[23]} {desIn[24]} {desIn[25]} {desIn[26]} {desIn[27]} {desIn[28]} {desIn[29]} {desIn[30]} {desIn[31]} {desIn[32]} {desIn[33]} {desIn[34]} {desIn[35]} {desIn[36]} {desIn[37]} {desIn[38]} {desIn[39]} {desIn[40]} {desIn[41]} {desIn[42]} {desIn[43]} {desIn[44]} {desIn[45]} {desIn[46]} {desIn[47]} {desIn[48]} {desIn[49]} {desIn[50]} {desIn[51]} {desIn[52]} {desIn[53]} {desIn[54]} {desIn[55]} {desIn[56]} {desIn[57]} {desIn[58]} {desIn[59]} {desIn[60]} {desIn[61]} {desIn[62]} {desIn[63]}}
setPinAssignMode -pinEditInBatch false

getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 2 -layer 2 -spreadType side -pin { out_valid {desOut[0]} {desOut[1]} {desOut[2]} {desOut[3]} {desOut[4]} {desOut[5]} {desOut[6]} {desOut[7]} {desOut[8]} {desOut[9]} {desOut[10]} {desOut[11]} {desOut[12]} {desOut[13]} {desOut[14]} {desOut[15]} {desOut[16]} {desOut[17]} {desOut[18]} {desOut[19]} {desOut[20]} {desOut[21]} {desOut[22]} {desOut[23]} {desOut[24]} {desOut[25]} {desOut[26]} {desOut[27]} {desOut[28]} {desOut[29]} {desOut[30]} {desOut[31]} {desOut[32]} {desOut[33]} {desOut[34]} {desOut[35]} {desOut[36]} {desOut[37]} {desOut[38]} {desOut[39]} {desOut[40]} {desOut[41]} {desOut[42]} {desOut[43]} {desOut[44]} {desOut[45]} {desOut[46]} {desOut[47]} {desOut[48]} {desOut[49]} {desOut[50]} {desOut[51]} {desOut[52]} {desOut[53]} {desOut[54]} {desOut[55]} {desOut[56]} {desOut[57]} {desOut[58]} {desOut[59]} {desOut[60]} {desOut[61]} {desOut[62]} {desOut[63]}}
setPinAssignMode -pinEditInBatch false

getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 3 -layer 3 -spreadType side -pin {clk reset start decrypt {key2[0]} {key2[1]} {key2[2]} {key2[3]} {key2[4]} {key2[5]} {key2[6]} {key2[7]} {key2[8]} {key2[9]} {key2[10]} {key2[11]} {key2[12]} {key2[13]} {key2[14]} {key2[15]} {key2[16]} {key2[17]} {key2[18]} {key2[19]} {key2[20]} {key2[21]} {key2[22]} {key2[23]} {key2[24]} {key2[25]} {key2[26]} {key2[27]} {key2[28]} {key2[29]} {key2[30]} {key2[31]} {key2[32]} {key2[33]} {key2[34]} {key2[35]} {key2[36]} {key2[37]} {key2[38]} {key2[39]} {key2[40]} {key2[41]} {key2[42]} {key2[43]} {key2[44]} {key2[45]} {key2[46]} {key2[47]} {key2[48]} {key2[49]} {key2[50]} {key2[51]} {key2[52]} {key2[53]} {key2[54]} {key2[55]}}
setPinAssignMode -pinEditInBatch false

getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 1 -layer 3 -spreadType side -pin {{key1[0]} {key1[1]} {key1[2]} {key1[3]} {key1[4]} {key1[5]} {key1[6]} {key1[7]} {key1[8]} {key1[9]} {key1[10]} {key1[11]} {key1[12]} {key1[13]} {key1[14]} {key1[15]} {key1[16]} {key1[17]} {key1[18]} {key1[19]} {key1[20]} {key1[21]} {key1[22]} {key1[23]} {key1[24]} {key1[25]} {key1[26]} {key1[27]} {key1[28]} {key1[29]} {key1[30]} {key1[31]} {key1[32]} {key1[33]} {key1[34]} {key1[35]} {key1[36]} {key1[37]} {key1[38]} {key1[39]} {key1[40]} {key1[41]} {key1[42]} {key1[43]} {key1[44]} {key1[45]} {key1[46]} {key1[47]} {key1[48]} {key1[49]} {key1[50]} {key1[51]} {key1[52]} {key1[53]} {key1[54]} {key1[55]} {key3[0]} {key3[1]} {key3[2]} {key3[3]} {key3[4]} {key3[5]} {key3[6]} {key3[7]} {key3[8]} {key3[9]} {key3[10]} {key3[11]} {key3[12]} {key3[13]} {key3[14]} {key3[15]} {key3[16]} {key3[17]} {key3[18]} {key3[19]} {key3[20]} {key3[21]} {key3[22]} {key3[23]} {key3[24]} {key3[25]} {key3[26]} {key3[27]} {key3[28]} {key3[29]} {key3[30]} {key3[31]} {key3[32]} {key3[33]} {key3[34]} {key3[35]} {key3[36]} {key3[37]} {key3[38]} {key3[39]} {key3[40]} {key3[41]} {key3[42]} {key3[43]} {key3[44]} {key3[45]} {key3[46]} {key3[47]} {key3[48]} {key3[49]} {key3[50]} {key3[51]} {key3[52]} {key3[53]} {key3[54]} {key3[55]}}
setPinAssignMode -pinEditInBatch false

saveDesign des3_pins.enc



### Placement of Standard Cells.....without any optimization......
setPlaceMode -fp false
#setPlaceMode -placeIoPins true
placeDesign -noPrePlaceOpt
saveDesign des3.place.enc




setNanoRouteMode -drouteMinimizeLithoEffectOnLayer {f t t t t t t t t t} -routeTopRoutingLayer 3 -routeBottomRoutingLayer 1 -routeWithViaInPin true
set_ccopt_property buffer_cells {BUFx10_ASAP7_75t_R BUFx12_ASAP7_75t_R BUFx12f_ASAP7_75t_R BUFx24_ASAP7_75t_R BUFx2_ASAP7_75t_R BUFx3_ASAP7_75t_R BUFx4_ASAP7_75t_R BUFx5_ASAP7_75t_R BUFx4f_ASAP7_75t_R BUFx6f_ASAP7_75t_R BUFx8_ASAP7_75t_R HB1xp67_ASAP7_75t_R HB2xp67_ASAP7_75t_R}
set_ccopt_property cts_add_wire_delay_in_detailed_balancer true
set_ccopt_property cts_compute_fastest_drivers_and_slews_for_clustering multi_corner
set_ccopt_property cts_clustering_net_skew_limit_as_proportion_of_skew_target 0.5
set_ccopt_property routing_top_min_fanout 2000
set_ccopt_property cell_density 0.3
set_ccopt_property adjacent_rows_legal false
set_ccopt_property ccopt_auto_limit_insertion_delay_factor 1.0
set_ccopt_property skew_band_size 0.1
set_ccopt_property useful_skew_use_gigaopt_for_mfn_chain_speed true
set_ccopt_property useful_skew_implement_using_wns_windows false
set_ccopt_property target_max_trans 100ps
setDontUse BUFx16f_ASAP7_75t_R true
create_ccopt_clock_tree_spec -filename ./cts/ccopt.spec
ccopt_check_and_flatten_ilms_no_restore
create_ccopt_clock_tree -name des3_clk -source clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner delayCorner_slow -early -clock_tree des3_clk 0.1
set_ccopt_property target_max_trans_sdc -delay_corner delayCorner_slow -late -clock_tree des3_clk 0.1
set_ccopt_property clock_period -pin clk 2000
create_ccopt_skew_group -name des3_clk/common -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group des3_clk/common true
set_ccopt_property extracted_from_clock_name -skew_group des3_clk/common fir_clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group des3_clk/common common
set_ccopt_property extracted_from_delay_corners -skew_group des3_clk/common {delayCorner_slow delayCorner_fast}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
setDontUse BUFx16f_ASAP7_75t_R true
ccopt_design -outDir ./cts/
saveDesign des3.cts.enc


timeDesign -postCTS -expandedViews -outDir ./cts/timing/

report_ccopt_clock_trees -filename ./cts/clock_trees.rpt
report_ccopt_skew_groups -filename ./cts/skew_groups.rpt

setDontUse BUFx16f_ASAP7_75t_R true

saveDesign des3.cts.enc



setDontUse BUFx16f_ASAP7_75t_R true
setNanoRouteMode -drouteMinimizeLithoEffectOnLayer {t t t t t t t t t t} -routeTopRoutingLayer 3 -routeWithViaInPin true -routeDesignFixClockNets true
setNanoRouteMode -quiet -drouteFixAntenna 0
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
saveDesign des3.route.enc


report_timing -late -max_path 100 > fir.apr_wc3_timing.txt
report_timing -early -max_path 100 > fir.apr_bc3_timing.txt

addFiller -cell {FILLER_ASAP7_75t_R FILLERxp5_ASAP7_75t_R } -prefix FILLER_
saveDesign des3.filler.enc

verifyConnectivity
#verify_drc

extractRC
rcOut -spf DES3.spf
rcOut -spef DES3.spef.gz
defOut  -floorplan -netlist DES3.def
saveNetlist DES3.apr.v -excludeLeafCell -excludeCellInst {FILLERxp5_ASAP7_75t_R FILLER_ASAP7_75t_R}
saveNetlist DES3.apr_pg.v -includePowerGround -excludeLeafCell -excludeCellInst {FILLERxp5_ASAP7_75t_R FILLER_ASAP7_75t_R}
streamOut DES3.gds -mapFile /home/aavyas1/libs/asap7/asap7PDK/cdslib/asap7_TechLib/asap7_fromAPR.layermap -libName DesignLib -units 4000 -mode ALL

setAnalysisMode -analysisType onchipvariation
saveDesign DES3.enc


