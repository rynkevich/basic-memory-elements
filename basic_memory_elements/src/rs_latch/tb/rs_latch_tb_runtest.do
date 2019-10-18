SetActiveLib -work
comp -include "$dsn\src\rs_latch\rs_latch.vhd" 
comp -include "$dsn\src\rs_latch\tb\rs_latch_tb.vhd"
asim +access +r rs_latch_tb tb

wave

wave -noreg R
wave -noreg S

wave -noreg Q_beh
wave -noreg nQ_beh
wave -noreg Q_struct
wave -noreg nQ_struct

wave -noreg Error

run 120 ns