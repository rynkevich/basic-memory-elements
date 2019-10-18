SetActiveLib -work
comp -include "$dsn\src\gated_d_ff\gated_d_ff.vhd" 
comp -include "$dsn\src\gated_d_ff\tb\gated_d_ff_tb.vhd"
asim +access +r gated_d_ff_tb tb

wave

wave -noreg D
wave -noreg CE
wave -noreg CLK

wave -noreg Q
wave -noreg nQ

run 320 ns