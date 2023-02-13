#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Feb 13 09:01:31 2023                
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
win
setMultiCpuUsage -localCpu 8
ecoDesign ./db/sha256.enc.dat sha256 ./design.v
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
ecoPlace
ecoRoute
defOut -netlist -routing -allLayers sha256_addBuffer.def
saveNetlist sha256_addBuffer.v
verify_drc
