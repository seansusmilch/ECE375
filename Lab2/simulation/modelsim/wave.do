onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab2/clock
add wave -noupdate /lab2/reset
add wave -noupdate /lab2/start
add wave -noupdate /lab2/present_state
add wave -noupdate /lab2/red
add wave -noupdate /lab2/yellow
add wave -noupdate /lab2/green
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {626 ps} 0}
quietly wave cursor active 1
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
configure wave -timelineunits ns
update
WaveRestoreZoom {50 ps} {1050 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab2/clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/lab2/reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/lab2/start 
wave create -driver freeze -pattern clock -initialvalue U -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab2/clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/lab2/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ps -endtime 1000ps Edit:/lab2/reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/lab2/start 
wave modify -driver freeze -pattern constant -value 1 -starttime 120ps -endtime 160ps Edit:/lab2/start 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ps -endtime 1000ps Edit:/lab2/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 120ps -endtime 160ps Edit:/lab2/start 
WaveCollapseAll -1
wave clipboard restore
