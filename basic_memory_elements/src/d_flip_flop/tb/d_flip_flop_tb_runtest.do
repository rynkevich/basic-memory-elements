SetActiveLib -work
comp -include "$dsn\src\d_flip_flop_tb\d_flip_flop_tb.vhd" 
comp -include "$dsn\src\d_flip_flop_tb\tb\d_flip_flop_tb.vhd"
asim +access +r d_flip_flop_tb tb

wave

wave -noreg D
wave -noreg CLK

wave -noreg Q
wave -noreg nQ

run 120 ns