SetActiveLib -work
comp -include "$dsn\src\gated_d_flip_flop\gated_d_flip_flop.vhd" 
comp -include "$dsn\src\gated_d_flip_flop\tb\gated_d_flip_flop.vhd"
asim +access +r gated_d_flip_flop_tb tb

wave

wave -noreg D
wave -noreg CE
wave -noreg CLK

wave -noreg Q
wave -noreg nQ

run 320 ns