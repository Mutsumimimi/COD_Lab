# This file is a general .xdc for FPGAOL_BOARD (adopted from Nexys4 DDR Rev. C)
# To use it in a project:
# - uncomment the lines corresponding to used pins
# - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
set_property -dict { PACKAGE_PIN V18  IOSTANDARD LVCMOS33 } [get_ports { clk }]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

# FPGAOL LED (signle-digit-SEGPLAY)
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]
set_property -dict { PACKAGE_PIN C13   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]
set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]
set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { led[4] }]
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { led[5] }]
set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { led[6] }]
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { led[7] }]


# FPGAOL SWITCH
set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]
set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]
set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]
set_property -dict { PACKAGE_PIN C18   IOSTANDARD LVCMOS33 } [get_ports { sw[4] }]
set_property -dict { PACKAGE_PIN C19   IOSTANDARD LVCMOS33 } [get_ports { sw[5] }]
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports { sw[6] }]
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { rst }]


# FPGAOL HEXPLAY
set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { seg_data[0] }]
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { seg_data[1] }]
set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { seg_data[2] }]
set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { seg_data[3] }]
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { seg_an[0] }]
set_property -dict { PACKAGE_PIN A19   IOSTANDARD LVCMOS33 } [get_ports { seg_an[1] }]
set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { seg_an[2] }]


# FPGAOL BUTTON & SOFT_CLOCK
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports { btn }]


# USB-RS232 Interface
set_property -dict { PACKAGE_PIN F15  IOSTANDARD LVCMOS33 } [get_ports { uart_rxd }]
set_property -dict { PACKAGE_PIN F13  IOSTANDARD LVCMOS33 } [get_ports { uart_txd }]
# set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { uart_rxd }]; #IO_L7P_T1_AD6P_35 Sch=uart_txd_in
# set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { uart_txd }]; #IO_L11N_T1_SRCC_35 Sch=uart_rxd_out
# set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { UART_CTS }]; #IO_L12N_T1_MRCC_35 Sch=uart_cts
# set_property -dict { PACKAGE_PIN E5    IOSTANDARD LVCMOS33 } [get_ports { UART_RTS }]; #IO_L5N_T0_AD13N_35 Sch=uart_rts
