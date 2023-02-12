set VERSION 21
setMultiCpuUsage -localCpu 8

# ecodesign {.end.dat} {top module name} {new gate level netlist file name}
ecoDesign ./db/seed.enc.dat SEED ./design.v  

# add buffer to the nets
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_100
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_101
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_102
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_103
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_104
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_105
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_106
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_107
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_108
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_109
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_110
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_111
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_112
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_113
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_114
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_115
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_116
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_117
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_118
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_119
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_120
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_121
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_122
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_123
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_124
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_126
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_127
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_128
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_129
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_130
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_131
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_132
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_133
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_134
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_135
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_136
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_137
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_138
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_139
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_140
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_141
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_142
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_143
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_144
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_145
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_146
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_147
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_148
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_149
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_150
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_151
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_152
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_153
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_155
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_156
ecoAddRepeater -cell BUFx4f_ASAP7_75t_SL -net n_157 

# replace and reroute the design
#setNanoRouteMode -quiet -routeWithEco true
ecoplace
ecoroute

# output the design
defOut -netlist -routing -allLayers seed_addBuffer.def
saveNetlist seed_addBuffer.v