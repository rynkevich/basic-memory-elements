SetActiveLib -work
comp -include "$dsn\src\ms_d_flip_flop\ms_d_flip_flop.vhd" 
comp -include "$dsn\src\ms_d_flip_flop\tb\ms_d_flip_flop_tb.vhd"
asim +access +r ms_d_flip_flop_tb tb

wave

wave -noreg D
wave -noreg CLK

wave -noreg Q
wave -noreg nQ

run 120 ns