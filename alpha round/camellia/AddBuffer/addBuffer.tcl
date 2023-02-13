set VERSION 21
setMultiCpuUsage -localCpu 8

# ecodesign {.end.dat} {top module name} {new gate level netlist file name}
ecoDesign ./db/camellia.enc.dat Camellia ./design.v  

# add buffer to the nets
ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2817_Din_42
ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2816_Kin_50
ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2815_Din_28
ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2814_Din_29
ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2813_Din_38
ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2812_Kin_115
ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2811_Din_39
ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2810_Din_43
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2809_Din_10
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2808_Din_45
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2807_Din_47
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2806_Kin_124
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2805_Kin_96
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2804_Kin_112
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2803_Kin_16
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2802_Kin_110
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2801_Kin_30
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2800_Kin_31
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2799_Kin_33
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2798_Kin_32
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PDN2797_Kin_0
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2796_Kin_29
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2795_randomize_n_64913
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2794_Kin_77
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2793_Kin_92
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2792_FE_RN_132_0
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2791_RSTn
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2790_key_scheduler_n_45788
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2789_key_scheduler_n_45255
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2788_Kin_59
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2787_key_scheduler_n_45627
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2786_randomize_n_64330
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2785_Kin_10
#ecoAddRepeater -cell BUFx2_ASAP7_75t_SL -net FE_PHN2784_key_scheduler_n_45107

# replace and reroute the design
#setNanoRouteMode -quiet -routeWithEco true
ecoPlace
ecoRoute

# output the design
defOut -netlist -routing -allLayers camellia_addBuffer.def
saveNetlist camellia_addBuffer.v