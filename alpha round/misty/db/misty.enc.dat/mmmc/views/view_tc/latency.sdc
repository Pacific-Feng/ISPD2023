set_clock_latency -source -early -max -rise  -46.5702 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -46.3018 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -46.5702 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -46.3018 [get_ports {clk}] -clock clk 
