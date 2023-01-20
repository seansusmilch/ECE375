onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab5/clock
add wave -noupdate /lab5/reset
add wave -noupdate /lab5/a_in
add wave -noupdate /lab5/x_in
add wave -noupdate /lab5/result
add wave -noupdate /lab5/multiplier
add wave -noupdate /lab5/multiplicand
add wave -noupdate /lab5/a
add wave -noupdate /lab5/na
add wave -noupdate /lab5/a2
add wave -noupdate /lab5/na2
add wave -noupdate /lab5/mux_out
add wave -noupdate /lab5/partial
add wave -noupdate /lab5/mux_en
add wave -noupdate /lab5/mux_sel
add wave -noupdate /lab5/subadd
add wave -noupdate /lab5/Cin
add wave -noupdate /lab5/Cout_trash
add wave -noupdate /lab5/mux_in
add wave -noupdate /lab5/adder_x
add wave -noupdate /lab5/adder_y
add wave -noupdate /lab5/adder_out
add wave -noupdate /lab5/base2
add wave -noupdate /lab5/present_state
add wave -noupdate /lab5/next_state
add wave -noupdate /lab5/x10
add wave -noupdate /lab5/x0n1
add wave -noupdate /lab5/y_next
add wave -noupdate /lab5/y_current
add wave -noupdate /lab5/current_r4
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {50 ps} {1050 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 11110110 -range 7 0 -starttime 0ps -endtime 1000ps sim:/lab4/a 
wave create -driver freeze -pattern constant -value 00001011 -range 7 0 -starttime 0ps -endtime 1000ps sim:/lab4/x 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab4/clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/lab4/reset 
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab5/clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/lab5/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 130ps -endtime 1000ps Edit:/lab5/reset 
wave create -driver freeze -pattern constant -value 000110 -range 5 0 -starttime 0ps -endtime 1000ps sim:/lab5/a_in 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 001010 -range 5 0 -starttime 0ps -endtime 1000ps sim:/lab5/x_in 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 111010 -range 5 0 -starttime 0ps -endtime 1000ps Edit:/lab5/x_in 
wave modify -driver freeze -pattern constant -value 1 -starttime 130ps -endtime 160ps Edit:/lab5/reset 
WaveCollapseAll -1
wave clipboard restore
