#######################################################
#                                                     
#  Voltus IC Power Integrity Solution Command Logging File                     
#  Created on Sun Aug 20 20:46:27 2023                
#                                                     
#######################################################

#@(#)CDS: Voltus IC Power Integrity Solution v20.10-p003_1 (64bit) 04/29/2020 15:56 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.10-p003_1 NR200413-0234/20_10-UB (database version 18.20.505) {superthreading v1.69}
#@(#)CDS: AAE 20.10-p005 (64bit) 04/29/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.10-p005_1 () Apr 14 2020 09:14:28 ( )
#@(#)CDS: SYNTECH 20.10-b004_1 () Mar 12 2020 22:18:21 ( )
#@(#)CDS: CPE v20.10-p006

setLayerPreference instanceCell -isVisible 1
setLayerPreference instanceCell -isSelectable 1
setLayerPreference instanceFunction -isVisible 1
setLayerPreference instanceFunction -isSelectable 1
setLayerPreference instanceStatus -isVisible 1
setLayerPreference instanceStatus -isSelectable 1
setLayerPreference net -isVisible 0
setLayerPreference clock -isVisible 0
read_lib -lef {/home/aavyas1/libs/asap7libs/asap7libs_24/techlef_misc/asap7_tech_4x_170803.lef /home/aavyas1/libs/asap7libs/asap7libs_24/lef/scaled/asap7sc7p5t_24_R_4x_170912.lef}
set_pg_library_mode -celltype techonly -ground_pins VSS -power_pins {VDD 1.1} -filler_cells {TAPCELL_WITH_FILLER_ASAP7_75t_R FILLER_ASAP7_75t_R FILLERxp5_ASAP7_75t_R} -default_area_cap 0.01 -extraction_tech_file /home/aavyas1/libs/asap7libs/asap7libs_24/qrc/qrcTechFile_typ03_scaled4xV06
generate_pg_library -output ./tech_pgv
exit
