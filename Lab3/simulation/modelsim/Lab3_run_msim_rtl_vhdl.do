transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/seant/Nextcloud/Documents/School/2022 Fall/ECE 375 Digital Design 2/Labs/Lab3/Lab3.vhd}
vcom -93 -work work {C:/Users/seant/Nextcloud/Documents/School/2022 Fall/ECE 375 Digital Design 2/Labs/Lab3/regN.vhd}
vcom -93 -work work {C:/Users/seant/Nextcloud/Documents/School/2022 Fall/ECE 375 Digital Design 2/Labs/Lab3/tristateN.vhd}

