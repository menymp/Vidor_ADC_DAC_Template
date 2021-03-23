transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/ip/SYSTEM_PLL {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/ip/SYSTEM_PLL/SYSTEM_PLL.v}
vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/projects/vidor_ADC_DAC {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ADC_DAC/MKRVIDOR4000_top.v}
vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/projects/vidor_ADC_DAC/db {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ADC_DAC/db/system_pll_altpll.v}

