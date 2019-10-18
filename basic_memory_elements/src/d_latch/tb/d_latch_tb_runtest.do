SetActiveLib -work
comp -include "$dsn\src\d_latch\d_latch.vhd" 
comp -include "$dsn\src\d_latch\tb\d_latch_tb.vhd"
asim +access +r d_latch_tb tb

wave

wave -noreg D

wave -noreg Q_beh
wave -noreg nQ_beh
wave -noreg Q_struct
wave -noreg nQ_struct

wave -noreg Error

run 100 ns