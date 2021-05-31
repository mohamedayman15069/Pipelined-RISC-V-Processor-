
set_property PACKAGE_PIN C4 [get_ports uart_in]
set_property IOSTANDARD LVCMOS33 [get_ports uart_in]



set_property PACKAGE_PIN H17 [get_ports leds[0]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[0]]
set_property PACKAGE_PIN K15 [get_ports leds[1]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[1]]
set_property PACKAGE_PIN J13 [get_ports leds[2]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[2]]
set_property PACKAGE_PIN N14 [get_ports leds[3]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[3]]
set_property PACKAGE_PIN R18 [get_ports leds[4]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[4]]
set_property PACKAGE_PIN V17 [get_ports leds[5]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[5]]
set_property PACKAGE_PIN U17 [get_ports leds[6]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[6]]
set_property PACKAGE_PIN U16 [get_ports leds[7]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[7]]
set_property PACKAGE_PIN V16 [get_ports leds[8]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[8]]
set_property PACKAGE_PIN T15 [get_ports leds[9]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[9]]
set_property PACKAGE_PIN U14 [get_ports leds[10]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[10]]
set_property PACKAGE_PIN T16 [get_ports leds[11]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[11]]
set_property PACKAGE_PIN V15 [get_ports leds[12]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[12]]
set_property PACKAGE_PIN V14 [get_ports leds[13]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[13]]
set_property PACKAGE_PIN V12 [get_ports leds[14]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[14]]
set_property PACKAGE_PIN V11 [get_ports leds[15]]
set_property IOSTANDARD LVCMOS33 [get_ports leds[15]]




set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { LED_out[6] }]; #IO_L24N_T3_A00_D16_14 Sch=ca
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { LED_out[5] }]; #IO_25_14 Sch=cb
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { LED_out[4] }]; #IO_25_15 Sch=cc
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { LED_out[3] }]; #IO_L17P_T2_A26_15 Sch=cd
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { LED_out[2] }]; #IO_L13P_T2_MRCC_14 Sch=ce
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { LED_out[1] }]; #IO_L19P_T3_A10_D26_14 Sch=cf
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { LED_out[0] }]; #IO_L4P_T0_D04_14 Sch=cg


set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { Anode[0] }]; #IO_L23P_T3_FOE_B_15 Sch=an[0]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { Anode[1] }]; #IO_L23N_T3_FWE_B_15 Sch=an[1]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { Anode[2] }]; #IO_L24P_T3_A01_D17_14 Sch=an[2]
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { Anode[3] }]; #IO_L19P_T3_A22_15 Sch=an[3]

