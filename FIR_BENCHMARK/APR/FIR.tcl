source Default.globals
init_design

floorPlan -d 180 180 20 20 20 20 


globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}


addWellTap -cell TAPCELL_ASAP7_75t_R -cellInterval 60 -inRowOffset 2 -prefix WELLTAP


addRing -skip_via_on_wire_shape Noshape -exclude_selected 1 -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer M3 -type core_rings -jog_distance 0.56 -threshold 0.56 -nets {VDD VSS} -follow core -stacked_via_bottom_layer M1 -layer {left M3 right M3 bottom M2 top M2} -width 6 -spacing 2 -offset 2

sroute -connect { blockPin padPin padRing corePin floatingStripe } -nets {VDD VSS } -layerChangeRange { M1 M3 } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { M1 M3 } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1 M3 }

getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 0 -layer 2 -spreadType side -pin {{inData[0]} {inData[1]} {inData[2]} {inData[3]} {inData[4]} {inData[5]} {inData[6]} {inData[7]} {inData[8]} {inData[9]} {inData[10]} {inData[11]} {inData[12]} {inData[13]} {inData[14]} {inData[15]} {inData[16]} {inData[17]} {inData[18]} {inData[19]} {inData[20]} {inData[21]} {inData[22]} {inData[23]} {inData[24]} {inData[25]} {inData[26]} {inData[27]} {inData[28]} {inData[29]} {inData[30]} {inData[31]}}
setPinAssignMode -pinEditInBatch false

getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 2 -layer 2 -spreadType side -pin {{outData[0]} {outData[1]} {outData[2]} {outData[3]} {outData[4]} {outData[5]} {outData[6]} {outData[7]} {outData[8]} {outData[9]} {outData[10]} {outData[11]} {outData[12]} {outData[13]} {outData[14]} {outData[15]} {outData[16]} {outData[17]} {outData[18]} {outData[19]} {outData[20]} {outData[21]} {outData[22]} {outData[23]} {outData[24]} {outData[25]} {outData[26]} {outData[27]} {outData[28]} {outData[29]} {outData[30]} {outData[31]}}
setPinAssignMode -pinEditInBatch false

getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 3 -layer 3 -spreadType side -pin {reset}
setPinAssignMode -pinEditInBatch false

getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 1 -layer 3 -spreadType side -pin {clk}
setPinAssignMode -pinEditInBatch false

saveDesign fir_pins.enc

### Placement of Standard Cells.....without any optimization......
setPlaceMode -fp false
placeDesign -noPrePlaceOpt
saveDesign fir.place.enc




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
create_ccopt_clock_tree -name fir_clk -source clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner delayCorner_slow -early -clock_tree fir_clk 0.1
set_ccopt_property target_max_trans_sdc -delay_corner delayCorner_slow -late -clock_tree fir_clk 0.1
set_ccopt_property clock_period -pin clk 2000
create_ccopt_skew_group -name fir_clk/common -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group fir_clk/common true
set_ccopt_property extracted_from_clock_name -skew_group fir_clk/common fir_clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group fir_clk/common common
set_ccopt_property extracted_from_delay_corners -skew_group fir_clk/common {delayCorner_slow delayCorner_fast}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
setDontUse BUFx16f_ASAP7_75t_R true
ccopt_design -outDir ./cts/
saveDesign fir.cts.enc


timeDesign -postCTS -expandedViews -outDir ./cts/timing/

report_ccopt_clock_trees -filename ./cts/clock_trees.rpt
report_ccopt_skew_groups -filename ./cts/skew_groups.rpt

setDontUse BUFx16f_ASAP7_75t_R true

saveDesign fir.cts.enc



setDontUse BUFx16f_ASAP7_75t_R true
setNanoRouteMode -drouteMinimizeLithoEffectOnLayer {t t t t t t t t t t} -routeTopRoutingLayer 3 -routeWithViaInPin true -routeDesignFixClockNets true
setNanoRouteMode -quiet -drouteFixAntenna 0
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
saveDesign fir.route.enc


report_timing -late -max_path 100 > fir.apr_wc3_timing.txt
report_timing -early -max_path 100 > fir.apr_bc3_timing.txt

addFiller -cell {FILLER_ASAP7_75t_R FILLERxp5_ASAP7_75t_R } -prefix FILLER_
saveDesign fir.filler.enc

verifyConnectivity
#verify_drc

extractRC
rcOut -spf FIR.spf
rcOut -spef FIR.spef.gz
defOut  -floorplan -netlist FIR.def
saveNetlist FIR.apr.v -excludeLeafCell -excludeCellInst {FILLERxp5_ASAP7_75t_R FILLER_ASAP7_75t_R}
saveNetlist FIR.apr_pg.v -includePowerGround -excludeLeafCell -excludeCellInst {FILLERxp5_ASAP7_75t_R FILLER_ASAP7_75t_R}
streamOut FIR.gds -mapFile /home/aavyas1/libs/asap7/asap7PDK/cdslib/asap7_TechLib/asap7_fromAPR.layermap -libName DesignLib -units 4000 -mode ALL

setAnalysisMode -analysisType onchipvariation
saveDesign FIR.enc
