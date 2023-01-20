view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/lab3/clock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/lab3/Ld 
wave modify -driver freeze -pattern constant -value 1 -starttime 140ps -endtime 160ps Edit:/lab3/Ld 
wave create -driver freeze -pattern constant -value 10 -range 1 0 -starttime 0ps -endtime 1000ps sim:/lab3/ReadAddr 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 10 -range 1 0 -starttime 0ps -endtime 1000ps sim:/lab3/WriteAddr 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 001100 -range 5 0 -starttime 0ps -endtime 1000ps sim:/lab3/Memin 
WaveExpandAll -1
wave modify -driver freeze -pattern counter -startvalue 00 -endvalue 11 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 1 0 -starttime 0ps -endtime 1000ps Edit:/lab3/ReadAddr 
wave modify -driver freeze -pattern counter -startvalue 00 -endvalue 11 -type Range -direction Up -period 150ps -step 1 -repeat forever -range 1 0 -starttime 0ps -endtime 1000ps Edit:/lab3/ReadAddr 
wave modify -driver freeze -pattern counter -startvalue 00 -endvalue 11 -type Range -direction Up -period 100ps -step 1 -repeat forever -range 1 0 -starttime 0ps -endtime 1000ps Edit:/lab3/WriteAddr 
wave modify -driver freeze -pattern counter -startvalue 000000 -endvalue 111111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 5 0 -starttime 0ps -endtime 1000ps Edit:/lab3/Memin 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps Edit:/lab3/Ld 
wave modify -driver freeze -pattern constant -value 10 -range 1 0 -starttime 0ps -endtime 1000ps Edit:/lab3/ReadAddr 
wave modify -driver freeze -pattern counter -startvalue 00 -endvalue 11 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 1 0 -starttime 0ps -endtime 1000ps Edit:/lab3/ReadAddr 
wave modify -driver freeze -pattern counter -startvalue 00 -endvalue 11 -type Range -direction Up -period 150ps -step 1 -repeat forever -range 1 0 -starttime 0ps -endtime 1000ps Edit:/lab3/ReadAddr 
wave modify -driver freeze -pattern constant -value 10 -range 1 0 -starttime 0ps -endtime 1000ps Edit:/lab3/WriteAddr 
wave modify -driver freeze -pattern counter -startvalue 00 -endvalue 11 -type Range -direction Up -period 100ps -step 1 -repeat forever -range 1 0 -starttime 0ps -endtime 1000ps Edit:/lab3/WriteAddr 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/lab3/clock 
WaveCollapseAll -1
wave clipboard restore
