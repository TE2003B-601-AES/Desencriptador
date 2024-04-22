transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/PROYECTOS_QUARTUS/[proyquatus]/InvAddRoundKey/InvAddRoundKey.vhd}

vcom -93 -work work {C:/PROYECTOS_QUARTUS/[proyquatus]/InvAddRoundKey/InvAddRoundKey_tb3.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  InvAddRoundKey_tb3

add wave *
view structure
view signals
run 400 ns
