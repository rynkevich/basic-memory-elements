SetActiveLib -work
comp -include "$dsn\src\gated_d_latch\gated_d_latch.vhd" 
comp -include "$dsn\src\gated_d_latch\tb\gated_d_latch.vhd"
asim +access +r gated_d_latch_tb tb

wave

wave -noreg D
wave -noreg E

wave -noreg Q_beh
wave -noreg nQ_beh
wave -noreg Q_struct
wave -noreg nQ_struct

wave -noreg Error

run 150 ns