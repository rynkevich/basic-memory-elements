SetActiveLib -work
comp -include "$dsn\src\bistable_element\bistable_element.vhd" 
comp -include "$dsn\src\bistable_element\tb\bistable_element.vhd"
asim +access +r bistable_element_tb tb

wave 

wave -noreg Q
wave -noreg nQ
wave -noreg Q_init
wave -noreg nQ_init

run 500 ns