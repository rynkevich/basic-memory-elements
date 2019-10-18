SetActiveLib -work
comp -include "$dsn\src\d_ff\d_ff.vhd" 
comp -include "$dsn\src\d_ff\tb\d_ff_tb.vhd"
asim +access +r d_ff_tb tb

wave

wave -noreg D
wave -noreg CLK

wave -noreg Q
wave -noreg nQ

run 120 ns