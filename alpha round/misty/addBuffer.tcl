set VERSION 21
setMultiCpuUsage -localCpu 8

# ecodesign {.end.dat} {top module name} {new gate level netlist file name}
ecoDesign ./db/misty.enc.dat top ./design.v  

# add buffer to the nets

ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2681_data_in_22
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2680_data_in_5
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2679_data_in_5
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2678_data_in_76
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2677_data_in_33
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2676_data_in_22
# ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2675_data_in_53
# ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2674_data_in_17
# ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2673_data_in_49
# ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2672_data_in_0
# ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2671_n_417
# ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2670_n_319
# ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2669_n_401
# ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2668_data_in_7
# ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2667_data_in_66
# ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN2666_data_in_121

# replace and reroute the design
#setNanoRouteMode -quiet -routeWithEco true
ecoPlace
ecoRoute

# output the design
defOut -netlist -routing -allLayers misty_addBuffer.def
saveNetlist misty_addBuffer.v