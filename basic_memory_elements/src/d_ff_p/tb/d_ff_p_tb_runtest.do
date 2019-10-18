SetActiveLib -work
comp -include "$dsn\src\d_ff_p\d_ff_p.vhd" 
comp -include "$dsn\src\d_ff_p\tb\d_ff_p_tb.vhd"
asim +access +r d_ff_p_tb tb

wave

wave -noreg D
wave -noreg PRE
wave -noreg CLK

wave -noreg Q
wave -noreg nQ

run 160 ns