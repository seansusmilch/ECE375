view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 11110110 -range 7 0 -starttime 0ps -endtime 1000ps sim:/lab4/a 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00001011 -range 7 0 -starttime 0ps -endtime 1000ps sim:/lab4/x 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab4/clock 
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/lab4/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 140ps -endtime 1000ps Edit:/lab4/reset 
WaveCollapseAll -1
wave clipboard restore
