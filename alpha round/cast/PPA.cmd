#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Feb 16 01:41:45 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.13-s100_1 (64bit) 03/04/2022 14:32 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.13-s100_1 NR220220-0140/21_13-UB (database version 18.20.572) {superthreading v2.17}
#@(#)CDS: AAE 21.13-s034 (64bit) 03/04/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.13-s042_1 () Mar  4 2022 08:38:36 ( )
#@(#)CDS: SYNTECH 21.13-s014_1 () Feb 17 2022 23:50:03 ( )
#@(#)CDS: CPE v21.13-s074
#@(#)CDS: IQuantus/TQuantus 20.1.2-s656 (64bit) Tue Nov 9 23:11:16 PST 2021 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
setMultiCpuUsage -localCpu 16
set init_mmmc_file scripts/mmmc.tcl
set init_lef_file {ASAP7/asap7_tech_4x_201209.lef ASAP7/asap7sc7p5t_28_L_4x_220121a.lef ASAP7/asap7sc7p5t_28_SL_4x_220121a.lef}
set init_verilog cast_addBuffer.v
init_design -setup view_tc -hold view_tc
setDesignMode -process 7 -node N7
defIn cast_addBuffer.def -preserveShape
set_default_switching_activity -seq_activity 0.2
deleteFiller -cell TAPCELL_ASAP7_75t_L
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
reset_propagated_clock [all_clocks]
update_io_latency -source -verbose
set_propagated_clock [all_clocks]
setAnalysisMode -analysisType onChipVariation
setAnalysisMode -cppr both
timeDesign -postroute
report_power > reports/power.rpt
set_global timing_enable_simultaneous_setup_hold_mode true
