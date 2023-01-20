onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fsm/clock
add wave -noupdate /fsm/input
add wave -noupdate /fsm/reset
add wave -noupdate /fsm/output
add wave -noupdate /fsm/present_state
add wave -noupdate /fsm/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14 ps} 0}
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
WaveRestoreZoom {0 ps} {868 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/fsm/clock 
wave create -driver freeze -pattern clock -initialvalue U -period 200ps -dutycycle 40 -starttime 0ps -endtime 1000ps sim:/fsm/input 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ps -dutycycle 40 -starttime 0ps -endtime 1000ps Edit:/fsm/input 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ps -dutycycle 10 -starttime 0ps -endtime 1000ps sim:/fsm/reset 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 1000ps -dutycycle 10 -starttime 0ps -endtime 1000ps Edit:/fsm/reset 
WaveCollapseAll -1
wave clipboard restore
