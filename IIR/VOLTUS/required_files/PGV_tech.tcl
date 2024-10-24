set lef_files [list \
/home/aavyas1/libs/asap7libs/asap7libs_24/techlef_misc/asap7_tech_4x_170803.lef \
/home/aavyas1/libs/asap7libs/asap7libs_24/lef/scaled/asap7sc7p5t_24_R_4x_170912.lef \
]
set decap_list [list ]
set filler_cells [list \
TAPCELL_WITH_FILLER_ASAP7_75t_R \
FILLER_ASAP7_75t_R  \
FILLERxp5_ASAP7_75t_R \
]
set qrcTech /home/aavyas1/libs/asap7libs/asap7libs_24/qrc/qrcTechFile_typ03_scaled4xV06

## generate tech PGV
read_lib -lef $lef_files

set_pg_library_mode -celltype techonly \
-ground_pins VSS \
-power_pins [list VDD 1.1] \
-filler_cells $filler_cells \
-default_area_cap 0.01 \
-extraction_tech_file $qrcTech

generate_pg_library -output ./tech_pgv


exit
