#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Mar  7 21:19:45 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.10-p004_1 (64bit) 05/07/2020 20:02 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.10-p004_1 NR200413-0234/20_10-UB (database version 18.20.505) {superthreading v1.69}
#@(#)CDS: AAE 20.10-p005 (64bit) 05/07/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.10-p005_1 () Apr 14 2020 09:14:28 ( )
#@(#)CDS: SYNTECH 20.10-b004_1 () Mar 12 2020 22:18:21 ( )
#@(#)CDS: CPE v20.10-p006
#@(#)CDS: IQuantus/TQuantus 19.1.3-s155 (64bit) Sun Nov 3 18:26:52 PST 2019 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_design_uniquify 1
set init_verilog ./design.v
set init_design_netlisttype Verilog
set init_design_settop 1
set init_top_cell sha256
set init_lef_file {./ASAP7//asap7_tech_4x_201209.lef ./ASAP7//asap7sc7p5t_28_L_4x_220121a.lef ./ASAP7//asap7sc7p5t_28_SL_4x_220121a.lef}
set fp_core_cntl aspect
set fp_aspect_ratio 1.0000
set extract_shrink_factor 1.0
set init_assign_buffer 0
set init_pwr_net VDD
set init_gnd_net VSS
set init_cpf_file {}
set init_mmmc_file ./sha256.mmmc
init_design
setDesignMode -process 7 -node N7
setMultiCpuUsage -localCpu 8
setNanoRouteMode -routeBottomRoutingLayer 2
setNanoRouteMode -routeTopRoutingLayer 7
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
floorPlan -site asap7sc7p5t -s 178.2 178.2 6.22 6.22 6.22 6.22 -noSnap
addWellTap -cell TAPCELL_ASAP7_75t_L -cellInterval 12.960 -inRowOffset 1.296
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 3 -spreadType center -spacing 2.016 -pin {{address[0]} {address[1]} {address[2]} {address[3]} {address[4]} {address[5]} {address[6]} {address[7]} clk reset_n cs we {write_data[0]} {write_data[1]} {write_data[2]} {write_data[3]} {write_data[4]} {write_data[5]} {write_data[6]} {write_data[7]} {write_data[8]} {write_data[9]} {write_data[10]} {write_data[11]} {write_data[12]} {write_data[13]} {write_data[14]} {write_data[15]} {write_data[16]} {write_data[17]} {write_data[18]} {write_data[19]} {write_data[20]} {write_data[21]} {write_data[22]} {write_data[23]} {write_data[24]} {write_data[25]} {write_data[26]} {write_data[27]} {write_data[28]} {write_data[29]} {write_data[30]} {write_data[31]}}
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType center -spacing 2 -pin {{read_data[0]} {read_data[1]} {read_data[2]} {read_data[3]} {read_data[4]} {read_data[5]} {read_data[6]} {read_data[7]} {read_data[8]} {read_data[9]} {read_data[10]} {read_data[11]} {read_data[12]} {read_data[13]} {read_data[14]} {read_data[15]} {read_data[16]} {read_data[17]} {read_data[18]} {read_data[19]} {read_data[20]} {read_data[21]} {read_data[22]} {read_data[23]} {read_data[24]} {read_data[25]} {read_data[26]} {read_data[27]} {read_data[28]} {read_data[29]} {read_data[30]} {read_data[31]} error}
editPin -snap TRACK -pin *
setPinAssignMode -pinEditInBatch false
legalizePin
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Pad -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top M7 bottom M7 left M6 right M6} -width 2.176 -spacing 0.384 -offset 0.384 -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
addStripe -skip_via_on_wire_shape blockring -direction horizontal -set_to_set_distance 2.16 -skip_via_on_pin Standardcell -stacked_via_top_layer M1 -layer M2 -width 0.072 -nets VDD -stacked_via_bottom_layer M1 -start_from bottom -snap_wire_center_to_grid None -start_offset -0.044 -stop_offset -0.044
addStripe -skip_via_on_wire_shape blockring -direction horizontal -set_to_set_distance 2.16 -skip_via_on_pin Standardcell -stacked_via_top_layer M1 -layer M2 -width 0.072 -nets VSS -stacked_via_bottom_layer M1 -start_from bottom -snap_wire_center_to_grid None -start_offset 1.036 -stop_offset -0.044
addStripe -skip_via_on_wire_shape Noshape -set_to_set_distance 12.960 -skip_via_on_pin Standardcell -stacked_via_top_layer Pad -spacing 0.360 -xleft_offset 0.360 -layer M3 -width 0.936 -nets {VDD VSS} -stacked_via_bottom_layer M2 -start_from left
addStripe -skip_via_on_wire_shape Noshape -direction horizontal -set_to_set_distance 21.6 -skip_via_on_pin Standardcell -stacked_via_top_layer M7 -spacing 0.864 -layer M4 -width 0.864 -nets {VDD VSS} -stacked_via_bottom_layer M3 -start_from bottom
setSrouteMode -reset
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { corePin } -layerChangeRange { M1(1) M7(1) } -blockPinTarget { nearestTarget } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -deleteExistingRoutes -allowJogging 0 -crossoverViaLayerRange { M1(1) Pad(10) } -nets { VDD VSS } -allowLayerChange 0 -targetViaLayerRange { M1(1) Pad(10) }
editPowerVia -add_vias 1 -orthogonal_only 0
verify_drc
setOptMode -holdTargetSlack 0.020
setOptMode -setupTargetSlack 0.020
colorizePowerMesh
place_opt_design
setTieHiLoMode -maxFanout 5
addTieHiLo -prefix TIE -cell {TIELOx1_ASAP7_75t_SL TIEHIx1_ASAP7_75t_SL}
ccopt_design
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
reset_propagated_clock [all_clocks]
set_propagated_clock [all_clocks]
legalizePin
routeDesign
editPowerVia -delete_vias 1 -top_layer 7 -bottom_layer 6
editPowerVia -delete_vias 1 -top_layer 6 -bottom_layer 5
editPowerVia -delete_vias 1 -top_layer 5 -bottom_layer 4
editPowerVia -delete_vias 1 -top_layer 4 -bottom_layer 3
editPowerVia -delete_vias 1 -top_layer 3 -bottom_layer 2
editPowerVia -delete_vias 1 -top_layer 2 -bottom_layer 1
editPowerVia -add_vias 1
setAnalysisMode -analysisType onChipVariation
setSIMode -enable_glitch_report true
setSIMode -enable_glitch_propagation true
setSIMode -enable_delay_report true
optDesign -postRoute
optDesign -postRoute -hold
report_noise -threshold 0.2
report_noise -bumpy_waveform
set defOutLefVia 1
set defOutLefNDR 1
defOut -netlist -routing -allLayers ./db/sha256_v20.def
saveNetlist ./db/sha256_v20.v
fit
setLayerPreference node_route -isVisible 0
zoomBox 120.27875 121.40750 131.81750 110.62125
zoomBox 113.18850 110.02475 138.43150 122.71450
zoomBox 107.73125 108.49700 142.67025 126.06100
selectInst g18009__4296
deleteSelectedFromFPlan
deselectAll
selectInst g8532__2250
deleteSelectedFromFPlan
deselectAll
selectInst {block_reg_reg[6][24]}
deleteSelectedFromFPlan
deselectAll
selectInst TIE_LTIEHI_196
deleteSelectedFromFPlan
deselectAll
selectInst g18158__2391
deleteSelectedFromFPlan
deselectAll
selectInst core_g49231
deleteSelectedFromFPlan
deselectAll
selectInst core_g64896
deleteSelectedFromFPlan
deselectAll
selectInst core_g64928
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[7][24]}
deleteSelectedFromFPlan
deselectAll
selectInst {block_reg_reg[7][24]}
deleteSelectedFromFPlan
deselectAll
selectInst core_g48959
deleteSelectedFromFPlan
deselectAll
selectInst core_g49238
deleteSelectedFromFPlan
deselectAll
selectInst g18152__4547
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deselectAll
selectInst g8389__5703
deselectAll
selectInst {block_reg_reg[7][16]}
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deselectAll
selectInst core_g64928
deleteSelectedFromFPlan
deselectAll
selectInst core_g49215
deleteSelectedFromFPlan
deselectAll
selectInst FE_OCPC210_core_n_48325
deselectAll
selectInst g8303__1786
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deselectAll
selectInst core_g49240
deselectAll
selectInst core_g49240
deleteSelectedFromFPlan
fit
zoomBox 160.41350 89.04900 169.19300 85.03550
zoomBox 156.56525 83.21100 173.38425 91.66600
deselectAll
selectInst g9113
deleteSelectedFromFPlan
deselectAll
selectInst {core_b_reg_reg[31]}
deleteSelectedFromFPlan
deselectAll
selectInst FE_OFC119_core_n_1138
deleteSelectedFromFPlan
deselectAll
selectInst g9112
deleteSelectedFromFPlan
deselectAll
selectInst g9344
deleteSelectedFromFPlan
deselectAll
selectInst FE_OFC39_reset_n
deleteSelectedFromFPlan
deselectAll
selectInst FE_OFC112_core_n_1138
deleteSelectedFromFPlan
deselectAll
selectInst g9306
deleteSelectedFromFPlan
deselectAll
selectInst g9345
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deselectAll
selectInst {digest_reg_reg[251]}
deleteSelectedFromFPlan
deselectAll
selectInst {digest_reg_reg[217]}
deleteSelectedFromFPlan
deselectAll
selectInst core_g64109
deleteSelectedFromFPlan
deselectAll
selectInst {digest_reg_reg[250]}
deleteSelectedFromFPlan
deselectAll
selectInst core_g65514
deselectAll
selectInst core_g65514
deleteSelectedFromFPlan
deselectAll
selectInst {core_H3_reg_reg[31]}
deleteSelectedFromFPlan
deselectAll
selectInst {digest_reg_reg[189]}
deleteSelectedFromFPlan
deselectAll
selectInst {core_H0_reg_reg[31]}
deleteSelectedFromFPlan
fit
zoomBox 53.55475 68.22900 62.58500 58.69700
deselectAll
selectInst core_g64147
deleteSelectedFromFPlan
deselectAll
selectInst core_g64155
deleteSelectedFromFPlan
deselectAll
selectInst {digest_reg_reg[105]}
deleteSelectedFromFPlan
deselectAll
selectInst {core_H6_reg_reg[10]}
deleteSelectedFromFPlan
deselectAll
selectInst {digest_reg_reg[73]}
deleteSelectedFromFPlan
deselectAll
selectInst {core_H5_reg_reg[10]}
deleteSelectedFromFPlan
deselectAll
selectInst {digest_reg_reg[42]}
deleteSelectedFromFPlan
deselectAll
selectInst core_g65341
deleteSelectedFromFPlan
deselectAll
selectInst g9096
deleteSelectedFromFPlan
deselectAll
selectInst {core_H6_reg_reg[11]}
deleteSelectedFromFPlan
deselectAll
selectInst {digest_reg_reg[10]}
deleteSelectedFromFPlan
deselectAll
selectInst g9194
deleteSelectedFromFPlan
deselectAll
selectInst {core_H4_reg_reg[9]}
deleteSelectedFromFPlan
deselectAll
selectInst g9291
deselectAll
selectInst g9291
deleteSelectedFromFPlan
fit
zoomBox 58.82250 24.58250 64.84275 15.55225
zoomBox 49.96325 14.56450 74.82650 27.06350
deselectAll
selectInst core_g49578
deleteSelectedFromFPlan
deselectAll
selectInst core_g49487
deleteSelectedFromFPlan
deselectAll
selectInst core_g49028
deleteSelectedFromFPlan
deselectAll
selectInst core_g48910
deleteSelectedFromFPlan
deselectAll
selectInst core_g49655
deleteSelectedFromFPlan
deselectAll
selectInst core_g49457
deleteSelectedFromFPlan
deselectAll
selectInst core_g48993
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deselectAll
selectInst core_g49675
deleteSelectedFromFPlan
deselectAll
selectInst core_g49035
deleteSelectedFromFPlan
deselectAll
selectInst core_g49608
deleteSelectedFromFPlan
deselectAll
selectObject Pin core_g48981/A1
deleteSelectedFromFPlan
deselectAll
selectInst core_g49023
deleteSelectedFromFPlan
deselectAll
selectInst core_g49319
deleteSelectedFromFPlan
deselectAll
selectInst core_g49617
deleteSelectedFromFPlan
deselectAll
selectObject Pin core_g49308/B
deleteSelectedFromFPlan
deselectAll
selectInst core_g49597
deleteSelectedFromFPlan
deselectAll
selectInst core_g49552
deleteSelectedFromFPlan
deselectAll
selectInst core_g49025
deleteSelectedFromFPlan
gui_select -rect {57.84225 20.63450 57.87200 20.75425}
deselectAll
deleteSelectedFromFPlan
selectInst core_g49333
deleteSelectedFromFPlan
deselectAll
selectInst core_g49045
deleteSelectedFromFPlan
deselectAll
selectInst core_g49486
deleteSelectedFromFPlan
deselectAll
selectInst g68936
deleteSelectedFromFPlan
deselectAll
selectInst core_g49032
deleteSelectedFromFPlan
deselectAll
selectInst core_g49491
deleteSelectedFromFPlan
deselectAll
selectInst core_g48977
deleteSelectedFromFPlan
deselectAll
selectInst core_g49308
deleteSelectedFromFPlan
deselectAll
selectInst core_g48981
deleteSelectedFromFPlan
deselectAll
selectInst core_g49322
deselectAll
selectInst g346
deleteSelectedFromFPlan
deselectAll
selectInst core_g49472
deleteSelectedFromFPlan
deselectAll
selectObject Pin core_g49322/B
deleteSelectedFromFPlan
deselectAll
selectInst core_g49342
deleteSelectedFromFPlan
deselectAll
selectInst core_g49314
deleteSelectedFromFPlan
deselectAll
selectInst core_g49667
deselectAll
selectInst core_g49469
deleteSelectedFromFPlan
deselectAll
selectInst core_g49322
deleteSelectedFromFPlan
deselectAll
selectInst core_g49667
deleteSelectedFromFPlan
fit
ecoPlace
ecoRoute
ecoRoute -fix_drc
zoomBox 55.81225 29.85025 68.35450 14.29800
selectInst core_g49028
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deselectAll
selectInst core_g49487
deleteSelectedFromFPlan
deselectAll
selectInst core_g49322
deleteSelectedFromFPlan
deselectAll
selectInst core_g49045
deleteSelectedFromFPlan
deselectAll
selectInst core_g49023
deleteSelectedFromFPlan
deselectAll
selectInst core_g48981
deleteSelectedFromFPlan
deselectAll
selectInst core_g49472
deselectAll
selectInst core_g49667
deleteSelectedFromFPlan
deselectAll
selectInst core_g49035
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deselectAll
selectInst core_g49617
deleteSelectedFromFPlan
deselectAll
selectInst core_g49675
deselectAll
selectInst core_g49552
deleteSelectedFromFPlan
deselectAll
selectInst core_g49314
deleteSelectedFromFPlan
deselectAll
selectInst core_g49457
deleteSelectedFromFPlan
gui_select -rect {60.47400 20.75325 60.64150 20.80900}
deselectAll
deleteSelectedFromFPlan
selectInst core_g49675
deleteSelectedFromFPlan
deselectAll
selectInst core_g49472
deleteSelectedFromFPlan
deselectAll
selectInst core_g49356
deleteSelectedFromFPlan
deselectAll
selectInst core_g49468
deleteSelectedFromFPlan
deselectAll
selectInst core_g49305
deleteSelectedFromFPlan
deselectAll
selectInst core_g49469
deleteSelectedFromFPlan
deselectAll
selectInst core_g49292
deleteSelectedFromFPlan
deselectAll
selectInst core_g49655
deleteSelectedFromFPlan
deselectAll
selectInst core_g49333
deleteSelectedFromFPlan
deselectAll
selectInst core_g49486
deleteSelectedFromFPlan
deselectAll
selectInst core_g49297
deleteSelectedFromFPlan
deselectAll
selectInst FE_OFC167_core_n_48725
deleteSelectedFromFPlan
deselectAll
selectInst g352
deleteSelectedFromFPlan
deselectAll
deleteSelectedFromFPlan
selectInst core_g49055
deleteSelectedFromFPlan
deselectAll
selectInst core_g49318
deleteSelectedFromFPlan
deselectAll
selectInst g68936
deleteSelectedFromFPlan
deselectAll
deleteSelectedFromFPlan
selectInst core_g49609
deleteSelectedFromFPlan
deselectAll
selectInst core_g48993
deleteSelectedFromFPlan
deselectAll
selectInst core_g49308
deleteSelectedFromFPlan
deselectAll
selectInst core_g49578
deleteSelectedFromFPlan
deselectAll
selectInst core_g49342
deleteSelectedFromFPlan
deselectAll
selectInst core_g49032
deleteSelectedFromFPlan
deselectAll
selectInst core_g48977
deleteSelectedFromFPlan
deselectAll
selectInst core_g48901
deleteSelectedFromFPlan
deselectAll
selectInst core_g49025
deleteSelectedFromFPlan
deselectAll
selectInst g346
deleteSelectedFromFPlan
deselectAll
selectInst core_g49680
deleteSelectedFromFPlan
deselectAll
selectInst core_g49042
deleteSelectedFromFPlan
deselectAll
selectInst core_g67675
deleteSelectedFromFPlan
deselectAll
selectInst g223
deleteSelectedFromFPlan
deselectAll
selectInst core_g49597
deleteSelectedFromFPlan
deselectAll
selectInst core_g48984
deleteSelectedFromFPlan
deselectAll
selectInst core_g49488
deselectAll
selectInst core_g48902
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deselectAll
selectInst core_g49477
deleteSelectedFromFPlan
deselectAll
selectInst core_g49475
deleteSelectedFromFPlan
deselectAll
selectInst core_g48918
deleteSelectedFromFPlan
deselectAll
selectInst core_g48932
deleteSelectedFromFPlan
deselectAll
selectInst core_g49579
deleteSelectedFromFPlan
deselectAll
selectInst core_g67653
deleteSelectedFromFPlan
deselectAll
selectInst core_g67652
deleteSelectedFromFPlan
deselectAll
selectInst core_g49303
deleteSelectedFromFPlan
deselectAll
selectInst core_g49488
deselectAll
selectInst core_g49488
deleteSelectedFromFPlan
ecoPlace
ecoRoute
verify_drc
report_timing
defOut -netlist -routing -allLayers sha256_innovus.def
saveNetlist sha256_innovus.v
