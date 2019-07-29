EESchema Schematic File Version 4
LIBS:UsbToSerial-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "UsbToSerial"
Date "2019-07-27"
Rev "V.0.1"
Comp "-"
Comment1 "Author: Richard Clubb"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B_Micro J1
U 1 1 5D1BC55B
P 2150 3400
F 0 "J1" H 2205 3867 50  0000 C CNN
F 1 "USB_B_Micro" H 2205 3776 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_GCT_USB3076-30-A" H 2300 3350 50  0001 C CNN
F 3 "~" H 2300 3350 50  0001 C CNN
	1    2150 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3400 4900 3400
Wire Wire Line
	4900 3500 2450 3500
Wire Wire Line
	5900 4800 5900 5000
Wire Wire Line
	5900 5000 5800 5000
Connection ~ 5800 5000
Wire Wire Line
	5800 5000 5800 4800
Wire Wire Line
	5700 4800 5700 5000
Wire Wire Line
	5700 5000 5800 5000
$Comp
L power:GNDREF #PWR0101
U 1 1 5D1BD956
P 2150 4350
F 0 "#PWR0101" H 2150 4100 50  0001 C CNN
F 1 "GNDREF" H 2155 4177 50  0000 C CNN
F 2 "" H 2150 4350 50  0001 C CNN
F 3 "" H 2150 4350 50  0001 C CNN
	1    2150 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0102
U 1 1 5D1BDC01
P 4150 3150
F 0 "#PWR0102" H 4150 2900 50  0001 C CNN
F 1 "GNDREF" H 4155 2977 50  0000 C CNN
F 2 "" H 4150 3150 50  0001 C CNN
F 3 "" H 4150 3150 50  0001 C CNN
	1    4150 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 5D1BE218
P 3700 2900
F 0 "D1" V 3654 2998 50  0000 L CNN
F 1 "PWR_LED" V 3745 2998 50  0000 L CNN
F 2 "LED_SMD:LED_1206_3216Metric" V 3700 2900 50  0001 C CNN
F 3 "~" V 3700 2900 50  0001 C CNN
	1    3700 2900
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5D1BFD16
P 6750 2150
F 0 "JP1" H 6750 2355 50  0000 C CNN
F 1 "PowerSelect" H 6750 2264 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6750 2150 50  0001 C CNN
F 3 "~" H 6750 2150 50  0001 C CNN
	1    6750 2150
	1    0    0    -1  
$EndComp
NoConn ~ 6500 4300
NoConn ~ 6500 4400
NoConn ~ 6500 4500
NoConn ~ 4900 4000
NoConn ~ 4900 4200
$Comp
L Device:LED_Small D2
U 1 1 5D1CD1E4
P 7350 4750
F 0 "D2" V 7304 4848 50  0000 L CNN
F 1 "TX_LED" V 7395 4848 50  0000 L CNN
F 2 "LED_SMD:LED_1206_3216Metric" V 7350 4750 50  0001 C CNN
F 3 "~" V 7350 4750 50  0001 C CNN
	1    7350 4750
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 5D1CD2B1
P 6850 4750
F 0 "D3" V 6804 4848 50  0000 L CNN
F 1 "RX_LED" V 6895 4848 50  0000 L CNN
F 2 "LED_SMD:LED_1206_3216Metric" V 6850 4750 50  0001 C CNN
F 3 "~" V 6850 4750 50  0001 C CNN
	1    6850 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 4200 6850 4200
Wire Wire Line
	6850 4200 6850 4650
Wire Wire Line
	7350 4100 6500 4100
Wire Wire Line
	7350 4100 7350 4650
$Comp
L Device:R_Small R1
U 1 1 5D1D04C6
P 6850 5150
F 0 "R1" H 6909 5196 50  0000 L CNN
F 1 "RX_R" H 6909 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6850 5150 50  0001 C CNN
F 3 "~" H 6850 5150 50  0001 C CNN
	1    6850 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5D1D051F
P 7350 5150
F 0 "R2" H 7409 5196 50  0000 L CNN
F 1 "TX_R" H 7409 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7409 5059 50  0001 L CNN
F 3 "~" H 7350 5150 50  0001 C CNN
	1    7350 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4850 7350 5050
Wire Wire Line
	6850 4850 6850 5050
Wire Wire Line
	6850 5250 6850 5700
Wire Wire Line
	7350 5250 7350 5700
Wire Wire Line
	7350 5700 7100 5700
Wire Wire Line
	5500 5000 5600 5000
Connection ~ 5700 5000
Wire Wire Line
	5500 4800 5500 5000
$Comp
L Device:R_Small R3
U 1 1 5D1E397F
P 3700 2600
F 0 "R3" H 3759 2646 50  0000 L CNN
F 1 "R_Small" H 3759 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3700 2600 50  0001 C CNN
F 3 "~" H 3700 2600 50  0001 C CNN
	1    3700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2800 3700 2700
Wire Wire Line
	3700 2500 3700 2400
Connection ~ 3700 2400
Wire Wire Line
	5800 2400 5800 2800
$Comp
L Interface_USB:FT232RL U1
U 1 1 5D1B87B5
P 5700 3800
F 0 "U1" H 5700 4978 50  0000 C CNN
F 1 "FT232RL" H 5700 4887 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 5700 3800 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT232RL.htm" H 5700 3800 50  0001 C CNN
	1    5700 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5D1F3F38
P 5300 2000
F 0 "#PWR0103" H 5300 1850 50  0001 C CNN
F 1 "+5V" H 5315 2173 50  0000 C CNN
F 2 "" H 5300 2000 50  0001 C CNN
F 3 "" H 5300 2000 50  0001 C CNN
	1    5300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2000 5300 2400
Connection ~ 5300 2400
Wire Wire Line
	5300 2400 5800 2400
$Comp
L power:+5V #PWR0105
U 1 1 5D1F47D1
P 6400 2150
F 0 "#PWR0105" H 6400 2000 50  0001 C CNN
F 1 "+5V" H 6415 2323 50  0000 C CNN
F 2 "" H 6400 2150 50  0001 C CNN
F 3 "" H 6400 2150 50  0001 C CNN
	1    6400 2150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 5D1F516D
P 4650 2950
F 0 "#PWR0106" H 4650 2800 50  0001 C CNN
F 1 "+3.3V" H 4665 3123 50  0000 C CNN
F 2 "" H 4650 2950 50  0001 C CNN
F 3 "" H 4650 2950 50  0001 C CNN
	1    4650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3100 4650 3100
Wire Wire Line
	4650 3100 4650 2950
$Comp
L power:+3.3V #PWR0107
U 1 1 5D1F5B94
P 7100 2150
F 0 "#PWR0107" H 7100 2000 50  0001 C CNN
F 1 "+3.3V" H 7115 2323 50  0000 C CNN
F 2 "" H 7100 2150 50  0001 C CNN
F 3 "" H 7100 2150 50  0001 C CNN
	1    7100 2150
	0    1    1    0   
$EndComp
Text GLabel 6550 2550 0    50   Input ~ 0
PWR
Wire Wire Line
	6750 2300 6750 2550
Wire Wire Line
	6750 2550 6550 2550
Text GLabel 5200 2600 0    50   Output ~ 0
PWR
Wire Wire Line
	5200 2600 5600 2600
Wire Wire Line
	5600 2600 5600 2800
Text GLabel 6800 3100 2    50   Input ~ 0
TX0
Text GLabel 6800 3200 2    50   Input ~ 0
RXI
Wire Wire Line
	6800 3100 6500 3100
Wire Wire Line
	6500 3200 6800 3200
Text GLabel 6800 3400 2    50   Input ~ 0
CTS
Wire Wire Line
	6800 3400 6500 3400
Text GLabel 6800 3500 2    50   Input ~ 0
DTR
Wire Wire Line
	6800 3500 6500 3500
Wire Wire Line
	4900 4500 4800 4500
Wire Wire Line
	4800 4500 4800 5000
Wire Wire Line
	4800 5000 5500 5000
Connection ~ 5500 5000
Text GLabel 6950 5950 0    50   Output ~ 0
PWR
Wire Wire Line
	6950 5950 7100 5950
Wire Wire Line
	7100 5950 7100 5700
Connection ~ 7100 5700
Wire Wire Line
	7100 5700 6850 5700
Wire Wire Line
	2450 3200 2550 3200
Wire Wire Line
	2550 3200 2550 2400
Wire Wire Line
	2550 2400 2700 2400
Wire Wire Line
	2150 3800 2150 4350
$Comp
L power:GNDREF #PWR0108
U 1 1 5D2140EB
P 5600 5400
F 0 "#PWR0108" H 5600 5150 50  0001 C CNN
F 1 "GNDREF" H 5605 5227 50  0000 C CNN
F 2 "" H 5600 5400 50  0001 C CNN
F 3 "" H 5600 5400 50  0001 C CNN
	1    5600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5400 5600 5000
Connection ~ 5600 5000
Wire Wire Line
	5600 5000 5700 5000
$Comp
L Device:CP_Small C3
U 1 1 5D21513F
P 3050 2700
F 0 "C3" H 3138 2746 50  0000 L CNN
F 1 "10uF" H 3138 2655 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 3050 2700 50  0001 C CNN
F 3 "~" H 3050 2700 50  0001 C CNN
	1    3050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2600 3050 2400
Connection ~ 3050 2400
Wire Wire Line
	3050 2400 3700 2400
$Comp
L Device:C_Small C2
U 1 1 5D218603
P 2700 2700
F 0 "C2" H 2792 2746 50  0000 L CNN
F 1 "100nF" H 2792 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2700 2700 50  0001 C CNN
F 3 "~" H 2700 2700 50  0001 C CNN
	1    2700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2600 2700 2400
Connection ~ 2700 2400
Wire Wire Line
	2700 2400 3050 2400
$Comp
L Device:C C1
U 1 1 5D1BD4CB
P 4400 3100
F 0 "C1" H 4515 3146 50  0000 L CNN
F 1 "100nf" H 4515 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 2950 50  0001 C CNN
F 3 "~" H 4400 3100 50  0001 C CNN
	1    4400 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 2400 5300 2400
Wire Wire Line
	4550 3100 4650 3100
Connection ~ 4650 3100
Wire Wire Line
	4250 3100 4150 3100
Wire Wire Line
	4150 3100 4150 3150
Wire Wire Line
	4150 3100 3700 3100
Wire Wire Line
	3700 3000 3700 3100
Connection ~ 4150 3100
Wire Wire Line
	3050 3100 3700 3100
Wire Wire Line
	3050 2800 3050 3100
Connection ~ 3700 3100
Wire Wire Line
	2700 3100 3050 3100
Wire Wire Line
	2700 2800 2700 3100
Connection ~ 3050 3100
Text GLabel 6800 3300 2    50   Input ~ 0
RTS
Text GLabel 6800 3700 2    50   Input ~ 0
DCD
Text GLabel 6800 3600 2    50   Input ~ 0
DCR
Wire Wire Line
	6500 3700 6800 3700
Wire Wire Line
	6800 3600 6500 3600
Wire Wire Line
	6800 3300 6500 3300
Text GLabel 8700 3350 0    50   Output ~ 0
TX0
Text GLabel 8700 4750 0    50   Output ~ 0
RXI
Text GLabel 8700 3150 0    50   Output ~ 0
RTS
Text GLabel 8700 4350 0    50   Output ~ 0
CTS
Text GLabel 8700 3250 0    50   Output ~ 0
DTR
Text GLabel 8700 4550 0    50   Output ~ 0
DCR
Text GLabel 8700 4450 0    50   Output ~ 0
DCD
Text GLabel 8700 2850 0    50   Output ~ 0
PWR
$Comp
L power:GNDREF #PWR0109
U 1 1 5D228737
P 8300 2800
F 0 "#PWR0109" H 8300 2550 50  0001 C CNN
F 1 "GNDREF" H 8305 2627 50  0000 C CNN
F 2 "" H 8300 2800 50  0001 C CNN
F 3 "" H 8300 2800 50  0001 C CNN
	1    8300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4350 8700 4350
Wire Wire Line
	8700 4450 9050 4450
Wire Wire Line
	9050 4550 8700 4550
Wire Wire Line
	7100 2150 6950 2150
Wire Wire Line
	6550 2150 6400 2150
Text GLabel 4200 3800 0    50   Input ~ 0
PWR
Wire Wire Line
	4900 3800 4200 3800
Wire Wire Line
	9050 4650 8700 4650
Wire Wire Line
	8700 4750 9050 4750
Wire Wire Line
	8700 3150 9050 3150
Wire Wire Line
	9050 3250 8700 3250
Wire Wire Line
	8700 3350 9050 3350
Wire Wire Line
	9050 2850 8700 2850
Wire Wire Line
	9050 2750 8450 2750
Wire Wire Line
	8300 2750 8300 2800
$Comp
L Connector:Conn_01x08_Male J3
U 1 1 5D288061
P 9250 4650
F 0 "J3" H 9277 4676 50  0000 L CNN
F 1 "Conn_01x08_Male" H 9277 4585 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9250 4650 50  0001 C CNN
F 3 "~" H 9250 4650 50  0001 C CNN
	1    9250 4650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J2
U 1 1 5D28816E
P 9250 3050
F 0 "J2" H 9277 3076 50  0000 L CNN
F 1 "Conn_01x08_Male" H 9277 2985 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9250 3050 50  0001 C CNN
F 3 "~" H 9250 3050 50  0001 C CNN
	1    9250 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9050 2950 8450 2950
Wire Wire Line
	8450 2950 8450 2750
Connection ~ 8450 2750
Wire Wire Line
	8450 2750 8300 2750
NoConn ~ 2450 3600
$Comp
L power:GNDREF #PWR0104
U 1 1 5D3C4B10
P 8600 5100
F 0 "#PWR0104" H 8600 4850 50  0001 C CNN
F 1 "GNDREF" H 8605 4927 50  0000 C CNN
F 2 "" H 8600 5100 50  0001 C CNN
F 3 "" H 8600 5100 50  0001 C CNN
	1    8600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5050 8600 5050
Wire Wire Line
	8600 5050 8600 5100
Text GLabel 8700 4850 0    50   Output ~ 0
PWR
Wire Wire Line
	9050 4850 8700 4850
Text GLabel 8700 4950 0    50   Output ~ 0
TX0
Wire Wire Line
	9050 4950 8700 4950
Text GLabel 8700 3450 0    50   Output ~ 0
RXI
Wire Wire Line
	8700 3450 9050 3450
NoConn ~ 6500 3800
NoConn ~ 2050 3800
Text GLabel 8700 4650 0    50   Output ~ 0
DTR
$EndSCHEMATC
