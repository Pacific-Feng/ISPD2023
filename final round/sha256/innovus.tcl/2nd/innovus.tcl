#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Mar  8 17:49:53 2023                
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
floorPlan -site asap7sc7p5t -s 172.8 172.8 6.22 6.22 6.22 6.22 -noSnap
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
selectObject Wire {core_a_reg[17](409168,406432,409552,671344)}
fit
fit
fit
fit
deselectAll
selectInst WELLTAP_1353
fit
deselectAll
selectObject Wire {write_data[16](288,422896,21568,423184)}
fit
fit
fit
fit
deselectAll
selectObject Wire n_855(122320,295840,122704,392992)
fit
zoomBox 73.24275 148.92325 75.43650 145.02350
deselectAll
selectInst WELLTAP_1840
setLayerPreference node_net -isVisible 0
setLayerPreference node_net -isVisible 1
setLayerPreference node_route -isVisible 0
setLayerPreference node_net -isVisible 0
zoomBox 69.92475 144.59300 79.05125 149.18100
setLayerPreference node_net -isVisible 1
zoomBox 67.01350 143.05450 81.87550 150.52575
deselectAll
selectInst {block_reg_reg[2][11]}
zoomBox 48.95025 131.97775 113.11650 164.23450
zoomBox 44.05425 129.21325 119.54425 167.16250
fit
deselectAll
selectInst g18203__9906
zoomBox 69.58675 152.09175 76.89900 143.31725
deselectAll
selectInst core_g64915
deleteSelectedFromFPlan
deselectAll
selectInst g8737__8780
deleteSelectedFromFPlan
deselectAll
selectInst g18204__8780
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deselectAll
selectInst {block_reg_reg[7][11]}
deselectAll
selectInst {block_reg_reg[7][11]}
deleteSelectedFromFPlan
deselectAll
selectInst g17970__5266
deleteSelectedFromFPlan
deselectAll
selectInst g18207__1474
deleteSelectedFromFPlan
deselectAll
selectInst {block_reg_reg[8][11]}
deselectAll
selectInst core_g64883
deleteSelectedFromFPlan
deselectAll
selectInst g8801
deleteSelectedFromFPlan
deselectAll
selectInst CTS_ccl_a_buf_00243
deleteSelectedFromFPlan
zoomSelected
zoomSelected
zoomSelected
zoomSelected
zoomSelected
zoomSelected
zoomSelected
zoomSelected
viewLast
viewNext
redraw
undo
deselectAll
selectInst g8705__1840
deleteSelectedFromFPlan
fit
zoomBox 68.12450 30.95450 73.48650 23.64250
zoomBox 60.86650 21.97825 80.99900 32.09900
deselectAll
selectInst core_g64876
fit
deselectAll
selectInst core_g67245
zoomBox 66.17450 30.71075 75.92400 24.13000
deselectAll
selectInst core_g64876
deleteSelectedFromFPlan
zoomBox 61.86150 22.63200 79.98000 31.74025
deselectAll
selectInst core_g64908
zoomBox 58.55950 20.68200 83.63750 33.28875
deleteSelectedFromFPlan
deselectAll
selectInst core_g64700
deleteSelectedFromFPlan
deselectAll
selectInst g8762
deselectAll
selectInst g8762
deleteSelectedFromFPlan
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[8][4]}
deleteSelectedFromFPlan
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[6][1]}
deleteSelectedFromFPlan
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[8][1]}
deleteSelectedFromFPlan
deselectAll
selectInst {block_reg_reg[5][4]}
deleteSelectedFromFPlan
deselectAll
selectInst g8730__2703
deleteSelectedFromFPlan
ecoPlace
ecoRoute
ecoRoute -fix_drc
fit
zoomBox 83.23600 144.04850 89.08575 137.71125
zoomBox 77.10600 136.24375 94.55450 145.01525
selectInst core_g64921
deleteSelectedFromFPlan
deselectAll
selectInst core_g49007
deleteSelectedFromFPlan
deselectAll
selectInst core_g49091
deleteSelectedFromFPlan
deselectAll
selectInst core_g64958
deleteSelectedFromFPlan
deselectAll
selectInst core_g48925
deleteSelectedFromFPlan
deselectAll
selectInst core_g64925
deleteSelectedFromFPlan
deselectAll
selectInst core_g65051
deleteSelectedFromFPlan
deselectAll
selectInst core_g49086
deleteSelectedFromFPlan
deselectAll
selectInst core_g49105
deleteSelectedFromFPlan
deselectAll
selectInst core_g49085
deleteSelectedFromFPlan
deselectAll
selectInst core_g48940
deleteSelectedFromFPlan
deselectAll
selectInst core_g49100
deleteSelectedFromFPlan
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[10][21]}
deleteSelectedFromFPlan
deselectAll
selectInst core_g65055
deleteSelectedFromFPlan
deselectAll
selectInst core_g65086
deleteSelectedFromFPlan
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[11][21]}
deleteSelectedFromFPlan
ecoPlace
ecoRoute
report_timing
defOut -netlist -routing -allLayers sha256_innovus.def
saveNetlist sha256_innovus.v
selectInst core_g49086
fit
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[14][7]}
fit
fit
fit
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[14][7]}
fit
fit
fit
fit
fit
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[14][7]}
fit
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[14][7]}
fit
fit
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[14][7]}
fit
deselectAll
selectInst {core_w_mem_inst_w_mem_reg[14][7]}
deselectAll
