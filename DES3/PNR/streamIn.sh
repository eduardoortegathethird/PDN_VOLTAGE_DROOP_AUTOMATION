# Source this file within the PDK run directory to import a post-APR GDS
# (GDSPostAPR.gds) into Virtuoso as a design library (with the name
# 'VirtuosoDesignLibName'). 

# The number provided with the switch 'scale' indicates the factor by which
# the post-APR GDS dimensions will be multiplied by when imported into
# Virtuoso. 

# The name provided using the 'topCell' switch must correspond to the
# top-level block name in the synthesized gate level HDL netlist. 

# Supply the correct standard cell/macro library name, referenced during
# the APR, in file strminref.txt. If the referenced standard cell/macro
# library is present within the same PDK run diretory, then the top-cell
# layout in the newly created design library ('VirtuosoDesignLibName') will
# contain cells that point to the referenced standard cell/macro library.
# If this switch is excluded, then all of the macro/standard cells used
# will be created as cell views within the design library.

strmin -library 'VirtuosoDesignLibName'  \
-strmFile 'DES3.gds' \
-attachTechFileOfLib 'asap7_TechLib'  \
-topCell 'DES3'  \
-logFile 'strmIn.log'  \
-layerMap '/home/aavyas1/libs/asap7/asap7PDK/cdslib/asap7_TechLib/asap7_TechLib.layermap'  \
-refLibList 'strminref.txt'  \
-objectMap '/home/aavyas1/libs/asap7/asap7PDK/cdslib/asap7_TechLib/asap7_TechLib.objectmap' \
-scale '0.25' 
