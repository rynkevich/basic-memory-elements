SetActiveLib -work
comp -include "$dsn\src\rs_ff\rs_ff.vhd" 
comp -include "$dsn\src\rs_ff\tb\rs_ff_tb.vhd"
asim +access +r rs_ff_tb tb

wave

wave -noreg R
wave -noreg S
wave -noreg CLK

wave -noreg Q
wave -noreg nQ

run 160 ns