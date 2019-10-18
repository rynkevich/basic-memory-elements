SetActiveLib -work
comp -include "$dsn\src\d_ff_c\d_ff_c.vhd" 
comp -include "$dsn\src\d_ff_c\tb\d_ff_c_tb.vhd"
asim +access +r d_ff_c_tb tb

wave

wave -noreg D
wave -noreg CLR
wave -noreg CLK

wave -noreg Q
wave -noreg nQ

run 160 ns