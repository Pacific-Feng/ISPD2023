set VERSION 21
setMultiCpuUsage -localCpu 8

# ecodesign {.end.dat} {top module name} {new gate level netlist file name}
ecoDesign ./db/cast.enc.dat CAST128 ./design.v  

# add buffer to the nets

ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8163_Din_60
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8162_Din_62
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8160_Kin_91
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8159_Din_54
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8156_Kin_79
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8155_Din_28
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8154_Din_48
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8150_Kin_66
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8149_Din_36
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8147_Kin_100
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8146_Din_4
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8144_Kin_114
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8142_Kin_119
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8139_Kin_108
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8138_Kin_86
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8136_Din_52
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8135_Din_27
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8133_Kin_52
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8132_Kin_106
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8131_Kin_105
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8130_Kin_117
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8128_Kin_73
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8125_Kin_9
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8120_Kin_43
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8119_Kin_78
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8115_Kin_112
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8113_Kin_72
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8110_Kin_74
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8109_Kin_81
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8108_Kin_127
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8107_Kin_15
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8106_Din_50
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8105_Kin_123
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8103_Din_55
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8102_Kin_21
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8101_Kin_56
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8100_Kin_34
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8099_Din_56
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8098_Din_26
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8097_Din_31
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8096_Din_60
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8095_Din_61
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8094_Kin_102
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8093_Kin_46
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8092_Din_30
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8091_Din_62
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8090_EN
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8089_Din_12
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8088_RSTn
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8087_Din_9
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8086_Din_10
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8085_Din_47
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8084_Din_40
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8083_Din_45
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8082_Din_36
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8081_Din_24
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8080_Din_11
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8079_Din_4
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8078_Din_21
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8077_Din_39
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8076_Din_13
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8075_Din_22
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8074_Kin_9
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8073_Kin_46
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8070_Din_8
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8069_Kin_102
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8068_Kin_15
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8067_Kin_21
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8066_Kin_79
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8065_Kin_78
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8064_Din_53
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8063_Kin_34
ecoAddRepeater -cell BUFx4_ASAP7_75t_SL -net FE_PHN8062_Din_42
# replace and reroute the design
#setNanoRouteMode -quiet -routeWithEco true
ecoPlace
ecoRoute

# output the design
defOut -netlist -routing -allLayers cast_addBuffer.def
saveNetlist cast_addBuffer.v