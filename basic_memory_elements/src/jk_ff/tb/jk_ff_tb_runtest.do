SetActiveLib -work
comp -include "$dsn\src\jk_ff\jk_ff.vhd" 
comp -include "$dsn\src\jk_ff\tb\jk_ff_tb.vhd"
asim +access +r jk_ff_tb tb

wave

wave -noreg J
wave -noreg K
wave -noreg CLK

wave -noreg Q
wave -noreg nQ

run 160 ns