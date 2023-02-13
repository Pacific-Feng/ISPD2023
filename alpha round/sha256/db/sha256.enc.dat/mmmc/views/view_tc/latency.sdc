set_clock_latency -source -early -max -rise  -64.9045 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -65.2151 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -64.9045 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -65.2151 [get_ports {clk}] -clock clk 
