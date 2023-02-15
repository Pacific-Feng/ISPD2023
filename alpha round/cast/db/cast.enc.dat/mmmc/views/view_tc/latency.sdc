set_clock_latency -source -early -max -rise  -204 [get_ports {CLK}] -clock clk 
set_clock_latency -source -early -max -fall  -207.524 [get_ports {CLK}] -clock clk 
set_clock_latency -source -late -max -rise  -204 [get_ports {CLK}] -clock clk 
set_clock_latency -source -late -max -fall  -207.524 [get_ports {CLK}] -clock clk 
