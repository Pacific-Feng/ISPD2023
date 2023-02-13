set VERSION 21
setMultiCpuUsage -localCpu 8

# ecodesign {.end.dat} {top module name} {new gate level netlist file name}
ecoDesign ./db/sha256.enc.dat sha256 ./design.v  

# add buffer to the nets

ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN360_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN359_write_data_23
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN358_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN357_write_data_23
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN356_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN355_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN354_write_data_8
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN353_write_data_5
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN352_write_data_23
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN351_write_data_5
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN350_write_data_8
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN349_write_data_11
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN348_write_data_23
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN347_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN346_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN345_write_data_8
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN344_write_data_23
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN343_write_data_30
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN342_write_data_11
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN341_write_data_5
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN340_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN339_write_data_11
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN338_write_data_8
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN337_write_data_30
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN336_write_data_5
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN335_write_data_23
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN334_write_data_23
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN333_write_data_5
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN332_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN331_write_data_18
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN330_reset_n
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN329_write_data_11
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN328_write_data_30
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN327_write_data_8
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN326_write_data_5
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN325_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN324_write_data_8
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN323_write_data_11
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN322_write_data_30
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN321_write_data_18
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN320_reset_n
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN319_write_data_23
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN318_write_data_11
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN317_write_data_23
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN316_write_data_30
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN315_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN314_write_data_8
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN313_write_data_5
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN312_write_data_18
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN311_reset_n
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN310_write_data_9
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN309_write_data_18
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN308_write_data_9
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN307_write_data_8
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN306_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN305_write_data_5
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN304_reset_n
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN303_write_data_11
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN302_write_data_30
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN301_write_data_31
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN300_write_data_23
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN299_write_data_21
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN298_write_data_29
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN297_write_data_3
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN296_reset_n
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN295_write_data_5
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN294_write_data_15
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN293_write_data_23
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN292_write_data_29
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN291_write_data_21
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN290_write_data_1
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN289_write_data_30
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN288_write_data_3
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN287_write_data_7
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN286_write_data_11
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN285_write_data_2
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN284_write_data_4
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN283_write_data_9
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN282_write_data_31
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN281_write_data_13
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN280_write_data_8
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN279_write_data_0
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN278_write_data_18
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN277_write_data_22
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN276_write_data_20
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN275_write_data_17
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN274_write_data_25
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN273_write_data_12
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN272_write_data_14
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN271_write_data_19
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN270_write_data_26
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN269_write_data_24
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN268_write_data_27
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN267_write_data_10
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN266_write_data_6
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN265_write_data_16
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net FE_PHN264_write_data_28 

# replace and reroute the design
#setNanoRouteMode -quiet -routeWithEco true
ecoplace
ecoroute

# output the design
defOut -netlist -routing -allLayers sha256_addBuffer.def
saveNetlist sha256_addBuffer.v