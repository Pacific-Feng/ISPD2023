#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Feb 13 08:35:37 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.13-s100_1 (64bit) 03/04/2022 14:32 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.13-s100_1 NR220220-0140/21_13-UB (database version 18.20.572) {superthreading v2.17}
#@(#)CDS: AAE 21.13-s034 (64bit) 03/04/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.13-s042_1 () Mar  4 2022 08:38:36 ( )
#@(#)CDS: SYNTECH 21.13-s014_1 () Feb 17 2022 23:50:03 ( )
#@(#)CDS: CPE v21.13-s074
#@(#)CDS: IQuantus/TQuantus 20.1.2-s656 (64bit) Tue Nov 9 23:11:16 PST 2021 (Linux 2.6.32-431.11.2.el6.x86_64)

#@ source scripts/check_seed.tcl
#@ Begin verbose source (pre): source scripts/check_seed.tcl
set_multi_cpu_usage -local_cpu 24
set_db design_process_node 7
set_db design_tech_node N7
set lef_path "ASAP7/asap7_tech_4x_201209.lef ASAP7/asap7sc7p5t_28_L_4x_220121a.lef ASAP7/asap7sc7p5t_28_SL_4x_220121a.lef"
set def_path seed_addBuffer.def
set netlist_path seed_addBuffer.v
read_physical -lefs $lef_path
read_netlist $netlist_path
read_def $def_path -preserve_shape
init_design
delete_filler -cells [ get_db -u [ get_db insts -if { .is_physical } ] .base_cell.name ]
check_connectivity -error 100000 -warning 100000 -check_wire_loops
mv *.conn.rpt reports/
check_pin_assignment
mv *.checkPin.rpt reports/
check_drc -limit 100000
mv *.geom.rpt reports/
check_design -type {place route} > reports/check_design.rpt
set out [open reports/check_stripes.rpt w]
puts $out "PDN stripes checks"
puts $out "=================="
close $out
#@ source scripts/check_stripes_area_stylus.tcl
#@ Begin verbose source scripts/check_stripes_area_stylus.tcl (pre)
set out [open reports/check_stripes.rpt a]
puts $out "Check by area"
puts $out "-------------"
set p_names {VDD VSS}
set c_flag "valid"
for {set j 2} {$j < 10} {incr j} {

  set stripe_area  ""
  set refrence ""

 for {set k 0} {$k < 2} {incr k} {
select_routes -nets [lindex $p_names $k] -shapes stripe -layer M$j
 
 set stripe_area [get_db selected .area]

 for {set i 0} {$i < [expr [llength $stripe_area] - 1]} {incr i} {
    if {$i == 0} {
     set refrence [lindex $stripe_area $i]
    }
    if {($refrence) == [lindex $stripe_area [ expr $i + 1]]} {
     set compare "valid"
    } else {
      set compare "false"
	  set c_flag "false"
      }
 }
  deselect_obj -all
# detailed report 
  puts $out "M$j ---- [lindex $p_names $k]  ---> $compare"
 }
}
puts $out "Final result: $c_flag" 
puts $out ""
close $out
#@ End verbose source scripts/check_stripes_area_stylus.tcl
#@ source scripts/check_stripes_coors_stylus.tcl
#@ Begin verbose source scripts/check_stripes_coors_stylus.tcl (pre)
set out [open reports/check_stripes.rpt a]
puts $out "Check by coordinates"
puts $out "--------------------"
set p_names {VDD VSS}
set c_flag "valid"
for {set j 2} {$j < 10} {incr j} {

 set coors  ""
 set sub_result ""
 set refrence ""

# a loop for selecting VDD and VSS for each metal layer 
 for {set k 0} {$k < 2} {incr k} {
select_routes -nets [lindex $p_names $k] -shapes stripe -layer M$j
# the stripes on the even layers are horizontal while the rest are vertical
 if {[expr $j / 2] == 0} {
# if the stripe is horizontal, we capture the lly coordinates of the stripes
  set coors [get_db selected .rect.ll.y]
  } else {
# if the stripe is vertical, we capture the llx coordinates of the stripes
   set coors [get_db selected .rect.ll.x]
   }

 set coors [lsort -dictionary $coors]
 for {set i 0} {$i < [expr [llength $coors] - 1]} {incr i} {
  set sub_result [expr [lindex $coors [ expr $i + 1]] - [lindex $coors $i] ]
     if {$i == 0} {
      set refrence [expr int($sub_result)]
     }
# here we compare the integer part for each coordinate pair to measure the distance
     if {[expr int($sub_result)] == $refrence} {
      set compare "valid"
     } else {
  puts $out "Final result: $c_flag" 
puts $out ""
close $out
#@ End verbose source scripts/check_stripes_coors_stylus.tcl
#@ source scripts/check_stripes_width_stylus.tcl
#@ Begin verbose source scripts/check_stripes_width_stylus.tcl (pre)
set out [open reports/check_stripes.rpt a]
puts $out "Check by box width"
puts $out "------------------"
set p_names {VDD VSS}
set c_flag "valid"
for {set j 2} {$j < 10} {incr j} {

 set coors  ""
 set sub_result ""
 set refrence ""

# a loop for selecting VDD and VSS for each metal layer 
 for {set k 0} {$k < 2} {incr k} {
select_routes -nets [lindex $p_names $k] -shapes stripe -layer M$j

  set stripe_wid [get_db selected .rect.width]

  for {set i 0} {$i < [expr [llength $stripe_wid] - 1]} {incr i} {
    if {$i == 0} {
     set refrence [lindex $stripe_wid $i]
    }
    if {($refrence) == [lindex $stripe_wid [ expr $i + 1]]} {
     set compare "valid"
    } else {
      set compare "false"
	  set c_flag "false"
      }
    }
	 deselect_obj -all
# detailed report 
  puts $out "M$j ---- [lindex $p_names $k]  ---> $compare"
 } 
}
puts $out "Final result: $c_flag" 
puts $out ""
close $out
#@ End verbose source scripts/check_stripes_width_stylus.tcl
#@ source scripts/exploitable_regions.tcl
#@ Begin verbose source scripts/exploitable_regions.tcl (pre)
set out [open "placement.info" w+]
set core_rect [get_db designs .core_bbox]
set x_l_core [lindex $core_rect 0 0]
set y_l_core [lindex $core_rect 0 1]
set x_unit [lindex [get_db sites .size] 0 0]
set y_unit [lindex [get_db sites .size] 0 1]
puts $out "CORE_BBOX [lindex [get_db designs .core_bbox] 0]"
puts $out "NUM_ROWS [llength [get_db rows]]"
puts $out "NUM_SITES_PER_ROW [get_db [lindex [get_db rows] 0] .num_x]"
puts $out "SITE_WIDTH $x_unit "
puts $out "SITE_HEIGHT $y_unit "
foreach cell [get_db insts] {

	set cell_rect [lindex [get_db $cell .bbox] 0]

	set x_pos_core [expr [lindex $cell_rect 0] - $x_l_core]
	set y_pos_core [expr [lindex $cell_rect 1] - $y_l_core]
	set x_width [expr [lindex $cell_rect 2] - [lindex $cell_rect 0]]

	set x_idx [expr int(($x_pos_core + 0.001) / $x_unit)]
	set y_idx [expr int(($y_pos_core + 0.001) / $y_unit)]
	set width [expr int(($x_width + 0.001) / $x_unit)]

	puts $out "[get_db $cell] $x_idx $y_idx $width"
}
close $out
set pipe [open |[list scripts/exploitable_regions.bin placement.info 20 | tee reports/exploitable_regions.rpt 2>@1]]
while {[gets $pipe line] >= 0} {
	puts "$line"
}
close $pipe
#@ End verbose source scripts/exploitable_regions.tcl
report_route -include_regular_routes -track_utilization > reports/track_utilization.rpt
date > DONE.inv_checks
exit
