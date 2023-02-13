####
#
# Script for ISPD'23 contest. Mohammad Eslami and Samuel Pagliarini, TalTech, in collaboration with Johann Knechtel, NYUAD
#
####

#####################
# general settings
#####################
#
setMultiCpuUsage -localCpu 16

set mmmc_path scripts/mmmc.tcl
set lef_path "ASAP7/asap7_tech_4x_201209.lef ASAP7/asap7sc7p5t_28_L_4x_220121a.lef ASAP7/asap7sc7p5t_28_SL_4x_220121a.lef"
set def_path design.def
set netlist_path design.v

#####################
# init
#####################
#
set init_mmmc_file $mmmc_path
set init_lef_file $lef_path
set init_verilog $netlist_path

set setup_analysis_views "view_tc"
set hold_analysis_views  "view_tc"
set power_analysis_view  "view_tc"

init_design -setup ${setup_analysis_views} -hold ${hold_analysis_views}

setDesignMode -process 7 -node N7

# preserve shapes/layout as is
defIn $def_path -preserveShape

# required for proper power analysis; default activity factor for PIs, 0.2, is not propagated automatically
set_default_switching_activity -seq_activity 0.2

# delete all kinds of fillers (decaps, tap cells, filler cells)
deleteFiller -cell [ get_db -u [ get_db insts -if { .is_physical } ] .base_cell.name ]

#####################
# clock propagation
#####################
#
set_interactive_constraint_modes [all_constraint_modes -active]
reset_propagated_clock [all_clocks]
update_io_latency -source -verbose
set_propagated_clock [all_clocks]

#####################
# timing
#####################
#
setAnalysisMode -analysisType onChipVariation
# removes clock pessimism
setAnalysisMode -cppr both 
timeDesign -postroute 

#####################
# reports
#####################
#
report_power > reports/power.rpt

# simultaneous setup, hold analysis
# NOTE applicable for (faster) timing analysis, but not for subsequent ECO runs or so -- OK for our scope of DEF loading and evaluating
set_global timing_enable_simultaneous_setup_hold_mode true
report_timing_summary > reports/timing.rpt

#die area
set out [open reports/area.rpt w]
puts $out [get_db current_design .bbox.area]
close $out

#####################
# mark done; exit
#####################
#
date > DONE.inv_PPA
exit
