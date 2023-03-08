set VERSION 21
setMultiCpuUsage -localCpu 8

# ecodesign {.end.dat} {top module name} {new gate level netlist file name}
ecoDesign ./db/aes.enc.dat aes_128 ./design.v  

# add buffer to the nets

#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN53421_state_112
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN53420_key_75
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN53419_state_0
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN53418_key_74
ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN53417_key_48

# replace and reroute the design
#setNanoRouteMode -quiet -routeWithEco true
ecoPlace
ecoRoute

# output the design
defOut -netlist -routing -allLayers aes_addBuffer.def
saveNetlist aes_addBuffer.v
