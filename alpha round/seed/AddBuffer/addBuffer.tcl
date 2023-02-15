set VERSION 21
setMultiCpuUsage -localCpu 8

# ecodesign {.end.dat} {top module name} {new gate level netlist file name}
ecoDesign ./db/seed.enc.dat SEED ./design.v  

# add buffer to the nets

ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3611_RSTn
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3610_Kin_44
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3608_Kin_64
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3607_Kin_74
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3604_Kin_104
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3603_Din_77
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3602_Din_88
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3601_Din_110
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3600_Kin_42
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3599_Din_76
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3598_Din_126
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3596_Din_40
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3595_Din_112
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3592_Din_111
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3590_Din_7
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN3589_Din_26

# replace and reroute the design
#setNanoRouteMode -quiet -routeWithEco true
ecoplace
ecoroute

# output the design
defOut -netlist -routing -allLayers seed_addBuffer.def
saveNetlist seed_addBuffer.v