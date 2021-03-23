transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/ip/SYSTEM_PLL {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/ip/SYSTEM_PLL/SYSTEM_PLL.v}
vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/projects/vidor_ADC_DAC {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ADC_DAC/MKRVIDOR4000_top.v}
vlog -sv -work work +incdir+C:/Users/TOSHIBA/Desktop/Maestria\ Docs\ Ingreso/semestre\ 2/Quartus/VidorFPGA-master/projects/vidor_ADC_DAC/db {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ADC_DAC/db/system_pll_altpll.v}
vcom -93 -work work {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ADC_DAC/MCP4921_cnt.vhd}
vcom -93 -work work {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ADC_DAC/MCP4921_TestModule.vhd}

vcom -93 -work work {C:/Users/TOSHIBA/Desktop/Maestria Docs Ingreso/semestre 2/Quartus/VidorFPGA-master/projects/vidor_ADC_DAC/simulation/modelsim/mcp4921_testmodule_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone10lp -L rtl_work -L work -voptargs="+acc"  mcp4921_testmodule_tb

add wave *
view structure
view signals
run -all
