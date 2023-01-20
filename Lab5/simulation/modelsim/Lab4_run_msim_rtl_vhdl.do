transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/seant/Nextcloud/Documents/School/2022 Fall/ECE 375 Digital Design 2/Labs/Lab5/mux2to1.vhd}
vcom -93 -work work {C:/Users/seant/Nextcloud/Documents/School/2022 Fall/ECE 375 Digital Design 2/Labs/Lab5/components.vhd}
vcom -93 -work work {C:/Users/seant/Nextcloud/Documents/School/2022 Fall/ECE 375 Digital Design 2/Labs/Lab5/mux4to1.vhd}
vcom -93 -work work {C:/Users/seant/Nextcloud/Documents/School/2022 Fall/ECE 375 Digital Design 2/Labs/Lab5/Lab5.vhd}
vcom -93 -work work {C:/Users/seant/Nextcloud/Documents/School/2022 Fall/ECE 375 Digital Design 2/Labs/Lab5/mux8to1.vhd}

