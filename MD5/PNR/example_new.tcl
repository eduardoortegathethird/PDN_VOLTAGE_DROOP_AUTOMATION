source Default.globals

init_design

floorPlan -d 300 300 20 20 20 20 


globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}


addWellTap -cell TAPCELL_ASAP7_75t_R -cellInterval 60 -inRowOffset 2 -prefix WELLTAP


addRing -skip_via_on_wire_shape Noshape -exclude_selected 1 -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer M3 -type core_rings -jog_distance 0.56 -threshold 0.56 -nets {VDD VSS} -follow core -stacked_via_bottom_layer M1 -layer {left M3 right M3 bottom M2 top M2} -width 6 -spacing 2 -offset 2

sroute -connect { blockPin padPin padRing corePin floatingStripe } -nets {VDD VSS } -layerChangeRange { M1 M3 } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { M1 M3 } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1 M3 }


getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 0 -layer 2 -spreadType side -pin {{msg_padded[0]} {msg_padded[1]} {msg_padded[2]} {msg_padded[3]} {msg_padded[4]} {msg_padded[5]} {msg_padded[6]} {msg_padded[7]} {msg_padded[8]} {msg_padded[9]} {msg_padded[10]} {msg_padded[11]} {msg_padded[12]} {msg_padded[13]} {msg_padded[14]} {msg_padded[15]} {msg_padded[16]} {msg_padded[17]} {msg_padded[18]} {msg_padded[19]} {msg_padded[20]} {msg_padded[21]} {msg_padded[22]} {msg_padded[23]} {msg_padded[24]} {msg_padded[25]} {msg_padded[26]} {msg_padded[27]} {msg_padded[28]} {msg_padded[29]} {msg_padded[30]} {msg_padded[31]} {msg_padded[32]} {msg_padded[33]} {msg_padded[34]} {msg_padded[35]} {msg_padded[36]} {msg_padded[37]} {msg_padded[38]} {msg_padded[39]} {msg_padded[40]} {msg_padded[41]} {msg_padded[42]} {msg_padded[43]} {msg_padded[44]} {msg_padded[45]} {msg_padded[46]} {msg_padded[47]} {msg_padded[48]} {msg_padded[49]} {msg_padded[50]} {msg_padded[51]} {msg_padded[52]} {msg_padded[53]} {msg_padded[54]} {msg_padded[55]} {msg_padded[56]} {msg_padded[57]} {msg_padded[58]} {msg_padded[59]} {msg_padded[60]} {msg_padded[61]} {msg_padded[62]} {msg_padded[63]} {msg_padded[64]} {msg_padded[65]} {msg_padded[66]} {msg_padded[67]} {msg_padded[68]} {msg_padded[69]} {msg_padded[70]} {msg_padded[71]} {msg_padded[72]} {msg_padded[73]} {msg_padded[74]} {msg_padded[75]} {msg_padded[76]} {msg_padded[77]} {msg_padded[78]} {msg_padded[79]} {msg_padded[80]} {msg_padded[81]} {msg_padded[82]} {msg_padded[83]} {msg_padded[84]} {msg_padded[85]} {msg_padded[86]} {msg_padded[87]} {msg_padded[88]} {msg_padded[89]} {msg_padded[90]} {msg_padded[91]} {msg_padded[92]} {msg_padded[93]} {msg_padded[94]} {msg_padded[95]} {msg_padded[96]} {msg_padded[97]} {msg_padded[98]} {msg_padded[99]} {msg_padded[100]} {msg_padded[101]} {msg_padded[102]} {msg_padded[103]} {msg_padded[104]} {msg_padded[105]} {msg_padded[106]} {msg_padded[107]} {msg_padded[108]} {msg_padded[109]} {msg_padded[110]} {msg_padded[111]} {msg_padded[112]} {msg_padded[113]} {msg_padded[114]} {msg_padded[115]} {msg_padded[116]} {msg_padded[117]} {msg_padded[118]} {msg_padded[119]} {msg_padded[120]} {msg_padded[121]} {msg_padded[122]} {msg_padded[123]} {msg_padded[124]} {msg_padded[125]} {msg_padded[126]} {msg_padded[127]} {msg_padded[128]} {msg_padded[129]} {msg_padded[130]} {msg_padded[131]} {msg_padded[132]} {msg_padded[133]} {msg_padded[134]} {msg_padded[135]} {msg_padded[136]} {msg_padded[137]} {msg_padded[138]} {msg_padded[139]} {msg_padded[140]} {msg_padded[141]} {msg_padded[142]} {msg_padded[143]} {msg_padded[144]} {msg_padded[145]} {msg_padded[146]} {msg_padded[147]} {msg_padded[148]} {msg_padded[149]} {msg_padded[150]} {msg_padded[151]} {msg_padded[152]} {msg_padded[153]} {msg_padded[154]} {msg_padded[155]} {msg_padded[156]} {msg_padded[157]} {msg_padded[158]} {msg_padded[159]} }
setPinAssignMode -pinEditInBatch false

getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 2 -layer 2 -spreadType side -pin { {msg_output[0]} {msg_output[1]} {msg_output[2]} {msg_output[3]} {msg_output[4]} {msg_output[5]} {msg_output[6]} {msg_output[7]} {msg_output[8]} {msg_output[9]} {msg_output[10]} {msg_output[11]} {msg_output[12]} {msg_output[13]} {msg_output[14]} {msg_output[15]} {msg_output[16]} {msg_output[17]} {msg_output[18]} {msg_output[19]} {msg_output[20]} {msg_output[21]} {msg_output[22]} {msg_output[23]} {msg_output[24]} {msg_output[25]} {msg_output[26]} {msg_output[27]} {msg_output[28]} {msg_output[29]} {msg_output[30]} {msg_output[31]} {msg_output[32]} {msg_output[33]} {msg_output[34]} {msg_output[35]} {msg_output[36]} {msg_output[37]} {msg_output[38]} {msg_output[39]} {msg_output[40]} {msg_output[41]} {msg_output[42]} {msg_output[43]} {msg_output[44]} {msg_output[45]} {msg_output[46]} {msg_output[47]} {msg_output[48]} {msg_output[49]} {msg_output[50]} {msg_output[51]} {msg_output[52]} {msg_output[53]} {msg_output[54]} {msg_output[55]} {msg_output[56]} {msg_output[57]} {msg_output[58]} {msg_output[59]} {msg_output[60]} {msg_output[61]} {msg_output[62]} {msg_output[63]} {msg_output[64]} {msg_output[65]} {msg_output[66]} {msg_output[67]} {msg_output[68]} {msg_output[69]} {msg_output[70]} {msg_output[71]} {msg_output[72]} {msg_output[73]} {msg_output[74]} {msg_output[75]} {msg_output[76]} {msg_output[77]} {msg_output[78]} {msg_output[79]} {msg_output[80]} {msg_output[81]} {msg_output[82]} {msg_output[83]} {msg_output[84]} {msg_output[85]} {msg_output[86]} {msg_output[87]} {msg_output[88]} {msg_output[89]} {msg_output[90]} {msg_output[91]} {msg_output[92]} {msg_output[93]} {msg_output[94]} {msg_output[95]} {msg_output[96]} {msg_output[97]} {msg_output[98]} {msg_output[99]} {msg_output[100]} {msg_output[101]} {msg_output[102]} {msg_output[103]} {msg_output[104]} {msg_output[105]} {msg_output[106]} {msg_output[107]} {msg_output[108]} {msg_output[109]} {msg_output[110]} {msg_output[111]} {msg_output[112]} {msg_output[113]} {msg_output[114]} {msg_output[115]} {msg_output[116]} {msg_output[117]} {msg_output[118]} {msg_output[119]} {msg_output[120]} {msg_output[121]} {msg_output[122]} {msg_output[123]} {msg_output[124]} {msg_output[125]} {msg_output[126]} {msg_output[127]} }
setPinAssignMode -pinEditInBatch false

getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 3 -layer 3 -spreadType side -pin {clk rst init msg_in_valid msg_out_valid  ready {msg_padded[160]} {msg_padded[161]} {msg_padded[162]} {msg_padded[163]} {msg_padded[164]} {msg_padded[165]} {msg_padded[166]} {msg_padded[167]} {msg_padded[168]} {msg_padded[169]} {msg_padded[170]} {msg_padded[171]} {msg_padded[172]} {msg_padded[173]} {msg_padded[174]} {msg_padded[175]} {msg_padded[176]} {msg_padded[177]} {msg_padded[178]} {msg_padded[179]} {msg_padded[180]} {msg_padded[181]} {msg_padded[182]} {msg_padded[183]} {msg_padded[184]} {msg_padded[185]} {msg_padded[186]} {msg_padded[187]} {msg_padded[188]} {msg_padded[189]} {msg_padded[190]} {msg_padded[191]} {msg_padded[192]} {msg_padded[193]} {msg_padded[194]} {msg_padded[195]} {msg_padded[196]} {msg_padded[197]} {msg_padded[198]} {msg_padded[199]} {msg_padded[200]} {msg_padded[201]} {msg_padded[202]} {msg_padded[203]} {msg_padded[204]} {msg_padded[205]} {msg_padded[206]} {msg_padded[207]} {msg_padded[208]} {msg_padded[209]} {msg_padded[210]} {msg_padded[211]} {msg_padded[212]} {msg_padded[213]} {msg_padded[214]} {msg_padded[215]} {msg_padded[216]} {msg_padded[217]} {msg_padded[218]} {msg_padded[219]} {msg_padded[220]} {msg_padded[221]} {msg_padded[222]} {msg_padded[223]} {msg_padded[224]} {msg_padded[225]} {msg_padded[226]} {msg_padded[227]} {msg_padded[228]} {msg_padded[229]} {msg_padded[230]} {msg_padded[231]} {msg_padded[232]} {msg_padded[233]} {msg_padded[234]} {msg_padded[235]} {msg_padded[236]} {msg_padded[237]} {msg_padded[238]} {msg_padded[239]} {msg_padded[240]} {msg_padded[241]} {msg_padded[242]} {msg_padded[243]} {msg_padded[244]} {msg_padded[245]} {msg_padded[246]} {msg_padded[247]} {msg_padded[248]} {msg_padded[249]} {msg_padded[250]} {msg_padded[251]} {msg_padded[252]} {msg_padded[253]} {msg_padded[254]} {msg_padded[255]} }
setPinAssignMode -pinEditInBatch false

getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixedPin 1 -fixOverlap 1 -spreadDirection clockwise -edge 1 -layer 3 -spreadType side -pin { {msg_padded[256]} {msg_padded[257]} {msg_padded[258]} {msg_padded[259]} {msg_padded[260]} {msg_padded[261]} {msg_padded[262]} {msg_padded[263]} {msg_padded[264]} {msg_padded[265]} {msg_padded[266]} {msg_padded[267]} {msg_padded[268]} {msg_padded[269]} {msg_padded[270]} {msg_padded[271]} {msg_padded[272]} {msg_padded[273]} {msg_padded[274]} {msg_padded[275]} {msg_padded[276]} {msg_padded[277]} {msg_padded[278]} {msg_padded[279]} {msg_padded[280]} {msg_padded[281]} {msg_padded[282]} {msg_padded[283]} {msg_padded[284]} {msg_padded[285]} {msg_padded[286]} {msg_padded[287]} {msg_padded[288]} {msg_padded[289]} {msg_padded[290]} {msg_padded[291]} {msg_padded[292]} {msg_padded[293]} {msg_padded[294]} {msg_padded[295]} {msg_padded[296]} {msg_padded[297]} {msg_padded[298]} {msg_padded[299]} {msg_padded[300]} {msg_padded[301]} {msg_padded[302]} {msg_padded[303]} {msg_padded[304]} {msg_padded[305]} {msg_padded[306]} {msg_padded[307]} {msg_padded[308]} {msg_padded[309]} {msg_padded[310]} {msg_padded[311]} {msg_padded[312]} {msg_padded[313]} {msg_padded[314]} {msg_padded[315]} {msg_padded[316]} {msg_padded[317]} {msg_padded[318]} {msg_padded[319]} {msg_padded[320]} {msg_padded[321]} {msg_padded[322]} {msg_padded[323]} {msg_padded[324]} {msg_padded[325]} {msg_padded[326]} {msg_padded[327]} {msg_padded[328]} {msg_padded[329]} {msg_padded[330]} {msg_padded[331]} {msg_padded[332]} {msg_padded[333]} {msg_padded[334]} {msg_padded[335]} {msg_padded[336]} {msg_padded[337]} {msg_padded[338]} {msg_padded[339]} {msg_padded[340]} {msg_padded[341]} {msg_padded[342]} {msg_padded[343]} {msg_padded[344]} {msg_padded[345]} {msg_padded[346]} {msg_padded[347]} {msg_padded[348]} {msg_padded[349]} {msg_padded[350]} {msg_padded[351]} {msg_padded[352]} {msg_padded[353]} {msg_padded[354]} {msg_padded[355]} {msg_padded[356]} {msg_padded[357]} {msg_padded[358]} {msg_padded[359]} {msg_padded[360]} {msg_padded[361]} {msg_padded[362]} {msg_padded[363]} {msg_padded[364]} {msg_padded[365]} {msg_padded[366]} {msg_padded[367]} {msg_padded[368]} {msg_padded[369]} {msg_padded[370]} {msg_padded[371]} {msg_padded[372]} {msg_padded[373]} {msg_padded[374]} {msg_padded[375]} {msg_padded[376]} {msg_padded[377]} {msg_padded[378]} {msg_padded[379]} {msg_padded[380]} {msg_padded[381]} {msg_padded[382]} {msg_padded[383]} {msg_padded[384]} {msg_padded[385]} {msg_padded[386]} {msg_padded[387]} {msg_padded[388]} {msg_padded[389]} {msg_padded[390]} {msg_padded[391]} {msg_padded[392]} {msg_padded[393]} {msg_padded[394]} {msg_padded[395]} {msg_padded[396]} {msg_padded[397]} {msg_padded[398]} {msg_padded[399]} {msg_padded[400]} {msg_padded[401]} {msg_padded[402]} {msg_padded[403]} {msg_padded[404]} {msg_padded[405]} {msg_padded[406]} {msg_padded[407]} {msg_padded[408]} {msg_padded[409]} {msg_padded[410]} {msg_padded[411]} {msg_padded[412]} {msg_padded[413]} {msg_padded[414]} {msg_padded[415]} {msg_padded[416]} {msg_padded[417]} {msg_padded[418]} {msg_padded[419]} {msg_padded[420]} {msg_padded[421]} {msg_padded[422]} {msg_padded[423]} {msg_padded[424]} {msg_padded[425]} {msg_padded[426]} {msg_padded[427]} {msg_padded[428]} {msg_padded[429]} {msg_padded[430]} {msg_padded[431]} {msg_padded[432]} {msg_padded[433]} {msg_padded[434]} {msg_padded[435]} {msg_padded[436]} {msg_padded[437]} {msg_padded[438]} {msg_padded[439]} {msg_padded[440]} {msg_padded[441]} {msg_padded[442]} {msg_padded[443]} {msg_padded[444]} {msg_padded[445]} {msg_padded[446]} {msg_padded[447]} {msg_padded[448]} {msg_padded[449]} {msg_padded[450]} {msg_padded[451]} {msg_padded[452]} {msg_padded[453]} {msg_padded[454]} {msg_padded[455]} {msg_padded[456]} {msg_padded[457]} {msg_padded[458]} {msg_padded[459]} {msg_padded[460]} {msg_padded[461]} {msg_padded[462]} {msg_padded[463]} {msg_padded[464]} {msg_padded[465]} {msg_padded[466]} {msg_padded[467]} {msg_padded[468]} {msg_padded[469]} {msg_padded[470]} {msg_padded[471]} {msg_padded[472]} {msg_padded[473]} {msg_padded[474]} {msg_padded[475]} {msg_padded[476]} {msg_padded[477]} {msg_padded[478]} {msg_padded[479]} {msg_padded[480]} {msg_padded[481]} {msg_padded[482]} {msg_padded[483]} {msg_padded[484]} {msg_padded[485]} {msg_padded[486]} {msg_padded[487]} {msg_padded[488]} {msg_padded[489]} {msg_padded[490]} {msg_padded[491]} {msg_padded[492]} {msg_padded[493]} {msg_padded[494]} {msg_padded[495]} {msg_padded[496]} {msg_padded[497]} {msg_padded[498]} {msg_padded[499]} {msg_padded[500]} {msg_padded[501]} {msg_padded[502]} {msg_padded[503]} {msg_padded[504]} {msg_padded[505]} {msg_padded[506]} {msg_padded[507]} {msg_padded[508]} {msg_padded[509]} {msg_padded[510]} {msg_padded[511]}  }
setPinAssignMode -pinEditInBatch false

saveDesign md5_pins.enc



### Placement of Standard Cells.....without any optimization......
setPlaceMode -fp false
#setPlaceMode -placeIoPins true
placeDesign -noPrePlaceOpt
saveDesign MD5.place.enc




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
create_ccopt_clock_tree -name md5_clk -source clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner delayCorner_slow -early -clock_tree md5_clk 0.1
set_ccopt_property target_max_trans_sdc -delay_corner delayCorner_slow -late -clock_tree md5_clk 0.1
set_ccopt_property clock_period -pin clk 2000
create_ccopt_skew_group -name md5_clk/common -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group md5_clk/common true
set_ccopt_property extracted_from_clock_name -skew_group md5_clk/common fir_clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group md5_clk/common common
set_ccopt_property extracted_from_delay_corners -skew_group md5_clk/common {delayCorner_slow delayCorner_fast}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
setDontUse BUFx16f_ASAP7_75t_R true
ccopt_design -outDir ./cts/
saveDesign md5.cts.enc


timeDesign -postCTS -expandedViews -outDir ./cts/timing/

report_ccopt_clock_trees -filename ./cts/clock_trees.rpt
report_ccopt_skew_groups -filename ./cts/skew_groups.rpt

setDontUse BUFx16f_ASAP7_75t_R true

saveDesign md5.cts.enc



setDontUse BUFx16f_ASAP7_75t_R true
setNanoRouteMode -drouteMinimizeLithoEffectOnLayer {t t t t t t t t t t} -routeTopRoutingLayer 3 -routeWithViaInPin true -routeDesignFixClockNets true
setNanoRouteMode -quiet -drouteFixAntenna 0
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
saveDesign md5.route.enc


report_timing -late -max_path 100 > md5.apr_wc100_timing.txt
report_timing -early -max_path 100 > md5.apr_bc100_timing.txt

addFiller -cell {FILLER_ASAP7_75t_R FILLERxp5_ASAP7_75t_R } -prefix FILLER_
saveDesign md5.filler.enc

verifyConnectivity
#verify_drc

extractRC
rcOut -spf MD5.spf
rcOut -spef MD5.spef.gz
defOut  -floorplan -netlist MD5.def
saveNetlist MD5.apr.v -excludeLeafCell -excludeCellInst {FILLERxp5_ASAP7_75t_R FILLER_ASAP7_75t_R}
saveNetlist MD5.apr_pg.v -includePowerGround -excludeLeafCell -excludeCellInst {FILLERxp5_ASAP7_75t_R FILLER_ASAP7_75t_R}
streamOut MD5.gds -mapFile /home/aavyas1/libs/asap7/asap7PDK/cdslib/asap7_TechLib/asap7_fromAPR.layermap -libName DesignLib -units 4000 -mode ALL

setAnalysisMode -analysisType onchipvariation
saveDesign MD5.enc


