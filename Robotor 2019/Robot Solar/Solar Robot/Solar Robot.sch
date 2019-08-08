EESchema Schematic File Version 4
LIBS:Solar Robot-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Crystal Y1
U 1 1 5D34AF9A
P 3900 2850
F 0 "Y1" H 3900 3118 50  0000 C CNN
F 1 "16Mhz" H 3900 3027 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_MA505-2Pin_12.7x5.1mm_HandSoldering" H 3900 2850 50  0001 C CNN
F 3 "~" H 3900 2850 50  0001 C CNN
	1    3900 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 2900 3750 2900
Wire Wire Line
	3750 2900 3750 3000
Wire Wire Line
	3750 3000 3900 3000
Wire Wire Line
	3250 2800 3750 2800
Wire Wire Line
	3750 2800 3750 2700
Wire Wire Line
	3750 2700 3900 2700
$Comp
L Device:C C3
U 1 1 5D3527FA
P 4500 2500
F 0 "C3" H 4615 2546 50  0000 L CNN
F 1 "22p" H 4615 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4538 2350 50  0001 C CNN
F 3 "~" H 4500 2500 50  0001 C CNN
	1    4500 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 5D3530A4
P 4500 3200
F 0 "C4" V 4248 3200 50  0000 C CNN
F 1 "22p" V 4339 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4538 3050 50  0001 C CNN
F 3 "~" H 4500 3200 50  0001 C CNN
	1    4500 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 2700 4350 2700
Wire Wire Line
	4350 2700 4350 2500
Connection ~ 3900 2700
Wire Wire Line
	3900 3000 4350 3000
Wire Wire Line
	4350 3000 4350 3200
Connection ~ 3900 3000
$Comp
L power:GND #PWR0101
U 1 1 5D354C1E
P 2650 4900
F 0 "#PWR0101" H 2650 4650 50  0001 C CNN
F 1 "GND" H 2655 4727 50  0000 C CNN
F 2 "" H 2650 4900 50  0001 C CNN
F 3 "" H 2650 4900 50  0001 C CNN
	1    2650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2500 4650 2850
$Comp
L power:GND #PWR0102
U 1 1 5D355D3A
P 4900 2850
F 0 "#PWR0102" H 4900 2600 50  0001 C CNN
F 1 "GND" H 4905 2677 50  0000 C CNN
F 2 "" H 4900 2850 50  0001 C CNN
F 3 "" H 4900 2850 50  0001 C CNN
	1    4900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2850 4650 2850
Connection ~ 4650 2850
Wire Wire Line
	4650 2850 4650 3200
Wire Wire Line
	2050 2200 2050 1800
Wire Wire Line
	2050 1800 2650 1800
Wire Wire Line
	2750 1800 2750 1900
Wire Wire Line
	2650 1900 2650 1800
Connection ~ 2650 1800
Wire Wire Line
	2650 1800 2750 1800
Wire Wire Line
	2650 1500 2650 1800
$Comp
L power:+5V #PWR0103
U 1 1 5D356E1F
P 2650 1500
F 0 "#PWR0103" H 2650 1350 50  0001 C CNN
F 1 "+5V" H 2665 1673 50  0000 C CNN
F 2 "" H 2650 1500 50  0001 C CNN
F 3 "" H 2650 1500 50  0001 C CNN
	1    2650 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5D360928
P 1050 1550
F 0 "C1" H 1168 1596 50  0000 L CNN
F 1 "3F" H 1168 1505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 1088 1400 50  0001 C CNN
F 3 "~" H 1050 1550 50  0001 C CNN
	1    1050 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5D360BAA
P 1450 1550
F 0 "C2" H 1568 1596 50  0000 L CNN
F 1 "3F" H 1568 1505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 1488 1400 50  0001 C CNN
F 3 "~" H 1450 1550 50  0001 C CNN
	1    1450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1400 1100 1400
Wire Wire Line
	1450 1700 1450 1900
Wire Wire Line
	1450 1900 1250 1900
Wire Wire Line
	1050 1900 1050 1700
$Comp
L power:GND #PWR0104
U 1 1 5D3626AF
P 1250 1900
F 0 "#PWR0104" H 1250 1650 50  0001 C CNN
F 1 "GND" H 1255 1727 50  0000 C CNN
F 2 "" H 1250 1900 50  0001 C CNN
F 3 "" H 1250 1900 50  0001 C CNN
	1    1250 1900
	1    0    0    -1  
$EndComp
Connection ~ 1250 1900
Wire Wire Line
	1250 1900 1050 1900
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5D3641D5
P 800 700
F 0 "J1" V 764 512 50  0000 R CNN
F 1 "Conn_01x02" V 673 512 50  0000 R CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P7.62mm_Drill2mm" H 800 700 50  0001 C CNN
F 3 "~" H 800 700 50  0001 C CNN
	1    800  700 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  900  900  1100
Wire Wire Line
	900  1100 1100 1100
Wire Wire Line
	1100 1100 1100 1400
Connection ~ 1100 1400
Wire Wire Line
	800  900  800  1900
Wire Wire Line
	800  1900 1050 1900
Connection ~ 1050 1900
$Comp
L Device:R R2
U 1 1 5D3668DF
P 3950 3700
F 0 "R2" V 3743 3700 50  0000 C CNN
F 1 "10K" V 3834 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3880 3700 50  0001 C CNN
F 3 "~" H 3950 3700 50  0001 C CNN
	1    3950 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 3700 3550 3700
$Comp
L power:+5V #PWR0105
U 1 1 5D368B8F
P 4450 3700
F 0 "#PWR0105" H 4450 3550 50  0001 C CNN
F 1 "+5V" V 4465 3828 50  0000 L CNN
F 2 "" H 4450 3700 50  0001 C CNN
F 3 "" H 4450 3700 50  0001 C CNN
	1    4450 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3700 4450 3700
$Comp
L Switch:SW_Push SW2
U 1 1 5D36AECA
P 3950 4000
F 0 "SW2" H 3950 3900 50  0000 C CNN
F 1 "SW_Push" H 3950 4194 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 3950 4200 50  0001 C CNN
F 3 "~" H 3950 4200 50  0001 C CNN
	1    3950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3700 3550 4000
Wire Wire Line
	3550 4000 3750 4000
Connection ~ 3550 3700
Wire Wire Line
	3550 3700 3800 3700
$Comp
L power:GND #PWR0106
U 1 1 5D36C30A
P 4250 4050
F 0 "#PWR0106" H 4250 3800 50  0001 C CNN
F 1 "GND" H 4255 3877 50  0000 C CNN
F 2 "" H 4250 4050 50  0001 C CNN
F 3 "" H 4250 4050 50  0001 C CNN
	1    4250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4000 4250 4000
Wire Wire Line
	4250 4000 4250 4050
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 5D36E709
P 4100 1050
F 0 "J2" V 4162 1294 50  0000 L CNN
F 1 "Conn_01x06_Male" V 4253 1294 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4100 1050 50  0001 C CNN
F 3 "~" H 4100 1050 50  0001 C CNN
	1    4100 1050
	0    1    1    0   
$EndComp
Text GLabel 3400 2500 2    50   Input ~ 0
MOSI
Text GLabel 3400 2600 2    50   Input ~ 0
MISO
Text GLabel 3400 2700 2    50   Input ~ 0
SCK
Wire Wire Line
	3250 2500 3400 2500
Wire Wire Line
	3250 2600 3400 2600
Wire Wire Line
	3250 2700 3400 2700
Text GLabel 4000 1250 3    50   Input ~ 0
MOSI
Text GLabel 3900 1250 3    50   Input ~ 0
MISO
Text GLabel 3800 1250 3    50   Input ~ 0
SCK
$Comp
L power:GND #PWR0107
U 1 1 5D372DC5
P 4100 1250
F 0 "#PWR0107" H 4100 1000 50  0001 C CNN
F 1 "GND" H 4105 1077 50  0000 C CNN
F 2 "" H 4100 1250 50  0001 C CNN
F 3 "" H 4100 1250 50  0001 C CNN
	1    4100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5D373435
P 4200 1250
F 0 "#PWR0108" H 4200 1100 50  0001 C CNN
F 1 "+5V" H 4215 1423 50  0000 C CNN
F 2 "" H 4200 1250 50  0001 C CNN
F 3 "" H 4200 1250 50  0001 C CNN
	1    4200 1250
	-1   0    0    1   
$EndComp
Text GLabel 3550 3450 2    50   Input ~ 0
RESET
Text GLabel 4300 1250 3    50   Input ~ 0
RESET
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 5D376032
P 1650 900
F 0 "SW1" H 1650 1167 50  0000 C CNN
F 1 "SW_DIP_x01" H 1650 1076 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 1650 900 50  0001 C CNN
F 3 "~" H 1650 900 50  0001 C CNN
	1    1650 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1400 1350 1400
Wire Wire Line
	1350 900  1350 1400
Connection ~ 1350 1400
Wire Wire Line
	1350 1400 1450 1400
$Comp
L power:+5V #PWR0109
U 1 1 5D379C44
P 1950 900
F 0 "#PWR0109" H 1950 750 50  0001 C CNN
F 1 "+5V" V 1965 1028 50  0000 L CNN
F 2 "" H 1950 900 50  0001 C CNN
F 3 "" H 1950 900 50  0001 C CNN
	1    1950 900 
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5D37A90E
P 850 2650
F 0 "D1" V 889 2533 50  0000 R CNN
F 1 "LED" V 798 2533 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 2650 50  0001 C CNN
F 3 "~" H 850 2650 50  0001 C CNN
	1    850  2650
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5D37EF1D
P 850 2400
F 0 "#PWR0110" H 850 2250 50  0001 C CNN
F 1 "+5V" H 850 2550 50  0000 C CNN
F 2 "" H 850 2400 50  0001 C CNN
F 3 "" H 850 2400 50  0001 C CNN
	1    850  2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D380300
P 850 3100
F 0 "R1" H 780 3054 50  0000 R CNN
F 1 "1K" H 780 3145 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 780 3100 50  0001 C CNN
F 3 "~" H 850 3100 50  0001 C CNN
	1    850  3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 3450 3550 3700
Wire Wire Line
	850  2800 850  2950
Wire Wire Line
	850  3250 850  3400
$Comp
L power:GND #PWR0111
U 1 1 5D383BB5
P 850 3400
F 0 "#PWR0111" H 850 3150 50  0001 C CNN
F 1 "GND" H 855 3227 50  0000 C CNN
F 2 "" H 850 3400 50  0001 C CNN
F 3 "" H 850 3400 50  0001 C CNN
	1    850  3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2400 850  2500
$Comp
L Sensor_Proximity:ITR8307 U2
U 1 1 5D3848AB
P 6800 1650
F 0 "U2" H 6800 1967 50  0000 C CNN
F 1 "ITR8307" H 6800 1876 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 6800 1450 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/ITR8307.pdf" H 6800 1750 50  0001 C CNN
	1    6800 1650
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Proximity:ITR8307 U3
U 1 1 5D3895BE
P 7800 1650
F 0 "U3" H 7800 1967 50  0000 C CNN
F 1 "ITR8307" H 7800 1876 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 7800 1450 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/ITR8307.pdf" H 7800 1750 50  0001 C CNN
	1    7800 1650
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Proximity:ITR8307 U4
U 1 1 5D389C45
P 8800 1650
F 0 "U4" H 8800 1967 50  0000 C CNN
F 1 "ITR8307" H 8800 1876 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 8800 1450 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/ITR8307.pdf" H 8800 1750 50  0001 C CNN
	1    8800 1650
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Proximity:ITR8307 U5
U 1 1 5D38A379
P 9750 1650
F 0 "U5" H 9750 1967 50  0000 C CNN
F 1 "ITR8307" H 9750 1876 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 9750 1450 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/ITR8307.pdf" H 9750 1750 50  0001 C CNN
	1    9750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1750 6500 2000
Wire Wire Line
	6500 2000 7100 2000
Wire Wire Line
	7100 2000 7100 1750
Wire Wire Line
	7500 1750 7500 2000
Wire Wire Line
	8100 2000 8100 1750
Wire Wire Line
	8500 1750 8500 2000
Wire Wire Line
	9100 2000 9100 1750
Wire Wire Line
	9450 1750 9450 2000
Wire Wire Line
	9450 2000 10050 2000
Wire Wire Line
	10050 2000 10050 1750
Connection ~ 7100 2000
Connection ~ 9450 2000
Wire Wire Line
	7100 2000 7500 2000
Connection ~ 7500 2000
Wire Wire Line
	7500 2000 8100 2000
Connection ~ 8100 2000
Wire Wire Line
	8100 2000 8300 2000
Connection ~ 8500 2000
Wire Wire Line
	8500 2000 9100 2000
Wire Wire Line
	9100 2000 9450 2000
Connection ~ 9100 2000
$Comp
L power:GND #PWR0112
U 1 1 5D3928FB
P 8300 2050
F 0 "#PWR0112" H 8300 1800 50  0001 C CNN
F 1 "GND" H 8305 1877 50  0000 C CNN
F 2 "" H 8300 2050 50  0001 C CNN
F 3 "" H 8300 2050 50  0001 C CNN
	1    8300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2000 8300 2050
Connection ~ 8300 2000
Wire Wire Line
	8300 2000 8500 2000
$Comp
L Device:R R5
U 1 1 5D3A7463
P 7100 950
F 0 "R5" H 7170 996 50  0000 L CNN
F 1 "220" H 7170 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 950 50  0001 C CNN
F 3 "~" H 7100 950 50  0001 C CNN
	1    7100 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D3A9635
P 6500 950
F 0 "R4" H 6570 996 50  0000 L CNN
F 1 "220" H 6570 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6430 950 50  0001 C CNN
F 3 "~" H 6500 950 50  0001 C CNN
	1    6500 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D3ABB3B
P 7500 950
F 0 "R6" H 7570 996 50  0000 L CNN
F 1 "220" H 7570 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 950 50  0001 C CNN
F 3 "~" H 7500 950 50  0001 C CNN
	1    7500 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5D3ABDE3
P 8100 950
F 0 "R7" H 8170 996 50  0000 L CNN
F 1 "220" H 8170 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8030 950 50  0001 C CNN
F 3 "~" H 8100 950 50  0001 C CNN
	1    8100 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5D3AC1F0
P 8500 950
F 0 "R8" H 8570 996 50  0000 L CNN
F 1 "220" H 8570 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8430 950 50  0001 C CNN
F 3 "~" H 8500 950 50  0001 C CNN
	1    8500 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5D3AC4AC
P 9100 950
F 0 "R9" H 9170 996 50  0000 L CNN
F 1 "220" H 9170 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9030 950 50  0001 C CNN
F 3 "~" H 9100 950 50  0001 C CNN
	1    9100 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5D3AC71E
P 9450 950
F 0 "R10" H 9520 996 50  0000 L CNN
F 1 "220" H 9520 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9380 950 50  0001 C CNN
F 3 "~" H 9450 950 50  0001 C CNN
	1    9450 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D3ACA04
P 10050 950
F 0 "R11" H 10120 996 50  0000 L CNN
F 1 "220" H 10120 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9980 950 50  0001 C CNN
F 3 "~" H 10050 950 50  0001 C CNN
	1    10050 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1550 6500 1100
Wire Wire Line
	7500 1550 7500 1100
Wire Wire Line
	8100 1550 8100 1200
Wire Wire Line
	8500 1550 8500 1100
Wire Wire Line
	9100 1550 9100 1200
Wire Wire Line
	9450 1550 9450 1100
Wire Wire Line
	10050 1550 10050 1200
$Comp
L power:+5V #PWR0113
U 1 1 5D3B9193
P 6600 800
F 0 "#PWR0113" H 6600 650 50  0001 C CNN
F 1 "+5V" H 6615 973 50  0000 C CNN
F 2 "" H 6600 800 50  0001 C CNN
F 3 "" H 6600 800 50  0001 C CNN
	1    6600 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5D3B9882
P 7600 800
F 0 "#PWR0114" H 7600 650 50  0001 C CNN
F 1 "+5V" H 7615 973 50  0000 C CNN
F 2 "" H 7600 800 50  0001 C CNN
F 3 "" H 7600 800 50  0001 C CNN
	1    7600 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5D3B9C2F
P 8600 800
F 0 "#PWR0115" H 8600 650 50  0001 C CNN
F 1 "+5V" H 8615 973 50  0000 C CNN
F 2 "" H 8600 800 50  0001 C CNN
F 3 "" H 8600 800 50  0001 C CNN
	1    8600 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5D3B9E55
P 9550 800
F 0 "#PWR0116" H 9550 650 50  0001 C CNN
F 1 "+5V" H 9565 973 50  0000 C CNN
F 2 "" H 9550 800 50  0001 C CNN
F 3 "" H 9550 800 50  0001 C CNN
	1    9550 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5D3BB35C
P 6800 950
F 0 "C5" H 6915 996 50  0000 L CNN
F 1 "10nF" H 6915 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6838 800 50  0001 C CNN
F 3 "~" H 6800 950 50  0001 C CNN
	1    6800 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5D3BC448
P 7800 950
F 0 "C6" H 7915 996 50  0000 L CNN
F 1 "10nF" H 7915 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7838 800 50  0001 C CNN
F 3 "~" H 7800 950 50  0001 C CNN
	1    7800 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5D3BD4EF
P 8800 950
F 0 "C11" H 8915 996 50  0000 L CNN
F 1 "10nF" H 8915 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8838 800 50  0001 C CNN
F 3 "~" H 8800 950 50  0001 C CNN
	1    8800 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5D3BD7A3
P 9750 950
F 0 "C12" H 9865 996 50  0000 L CNN
F 1 "10nF" H 9865 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9788 800 50  0001 C CNN
F 3 "~" H 9750 950 50  0001 C CNN
	1    9750 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 800  9550 800 
Connection ~ 9550 800 
Wire Wire Line
	9550 800  9750 800 
Wire Wire Line
	8800 800  8600 800 
Connection ~ 8600 800 
Wire Wire Line
	8600 800  8500 800 
Wire Wire Line
	7800 800  7600 800 
Connection ~ 7600 800 
Wire Wire Line
	7600 800  7500 800 
Wire Wire Line
	6800 800  6600 800 
Connection ~ 6600 800 
Wire Wire Line
	6600 800  6500 800 
Wire Wire Line
	7100 1550 7100 1200
Wire Wire Line
	6800 1100 6800 1200
Wire Wire Line
	6800 1200 7100 1200
Connection ~ 7100 1200
Wire Wire Line
	7100 1200 7100 1100
Wire Wire Line
	7800 1100 7800 1200
Wire Wire Line
	7800 1200 8100 1200
Connection ~ 8100 1200
Wire Wire Line
	8100 1200 8100 1100
Wire Wire Line
	8800 1100 8800 1200
Wire Wire Line
	8800 1200 9100 1200
Connection ~ 9100 1200
Wire Wire Line
	9100 1200 9100 1100
Wire Wire Line
	9750 1100 9750 1200
Wire Wire Line
	9750 1200 10050 1200
Connection ~ 10050 1200
Wire Wire Line
	10050 1200 10050 1100
$Comp
L Driver_Motor:LB1938FA-BH CI1
U 1 1 5D3DDC2A
P 8950 3500
F 0 "CI1" H 8950 3875 50  0000 C CNN
F 1 "LB1938FA-BH" H 8950 3784 50  0000 C CNN
F 2 "Package_SO:OnSemi_Micro8" H 9000 3350 50  0001 C CNN
F 3 "" H 9000 3350 50  0001 C CNN
	1    8950 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 5D3F35D7
P 8550 3000
F 0 "#PWR0117" H 8550 2850 50  0001 C CNN
F 1 "+5V" H 8565 3173 50  0000 C CNN
F 2 "" H 8550 3000 50  0001 C CNN
F 3 "" H 8550 3000 50  0001 C CNN
	1    8550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3350 8550 3350
Wire Wire Line
	8550 3000 8550 3200
$Comp
L Device:C C7
U 1 1 5D3F35E3
P 7950 3350
F 0 "C7" H 7835 3304 50  0000 R CNN
F 1 "100n" H 7835 3395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7988 3200 50  0001 C CNN
F 3 "~" H 7950 3350 50  0001 C CNN
	1    7950 3350
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C9
U 1 1 5D3F35ED
P 8300 3350
F 0 "C9" H 8418 3396 50  0000 L CNN
F 1 "10uF" H 8418 3305 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.3" H 8338 3200 50  0001 C CNN
F 3 "~" H 8300 3350 50  0001 C CNN
	1    8300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3200 8300 3200
Connection ~ 8550 3200
Wire Wire Line
	8550 3200 8550 3350
Connection ~ 8300 3200
Wire Wire Line
	8300 3200 7950 3200
$Comp
L power:GND #PWR0118
U 1 1 5D3F35FC
P 8150 3500
F 0 "#PWR0118" H 8150 3250 50  0001 C CNN
F 1 "GND" H 8155 3327 50  0000 C CNN
F 2 "" H 8150 3500 50  0001 C CNN
F 3 "" H 8150 3500 50  0001 C CNN
	1    8150 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3500 8150 3500
Connection ~ 8150 3500
Wire Wire Line
	8150 3500 8300 3500
$Comp
L power:GND #PWR0119
U 1 1 5D40B0C5
P 8600 3850
F 0 "#PWR0119" H 8600 3600 50  0001 C CNN
F 1 "GND" H 8605 3677 50  0000 C CNN
F 2 "" H 8600 3850 50  0001 C CNN
F 3 "" H 8600 3850 50  0001 C CNN
	1    8600 3850
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M1
U 1 1 5D422EA6
P 9900 3450
F 0 "M1" H 10058 3446 50  0000 L CNN
F 1 "Motor_DC" H 10058 3355 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 9900 3360 50  0001 C CNN
F 3 "~" H 9900 3360 50  0001 C CNN
	1    9900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3650 8600 3850
Wire Wire Line
	9300 3450 9600 3450
Wire Wire Line
	9600 3450 9600 3250
Wire Wire Line
	9600 3250 9900 3250
Wire Wire Line
	9300 3550 9600 3550
Wire Wire Line
	9600 3550 9600 3750
Wire Wire Line
	9600 3750 9900 3750
$Comp
L power:GND #PWR0120
U 1 1 5D4311D1
P 9450 3150
F 0 "#PWR0120" H 9450 2900 50  0001 C CNN
F 1 "GND" H 9455 2977 50  0000 C CNN
F 2 "" H 9450 3150 50  0001 C CNN
F 3 "" H 9450 3150 50  0001 C CNN
	1    9450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3350 9300 3150
Wire Wire Line
	9300 3150 9450 3150
$Comp
L Driver_Motor:LB1938FA-BH CI2
U 1 1 5D43A37E
P 8950 4950
F 0 "CI2" H 8950 5325 50  0000 C CNN
F 1 "LB1938FA-BH" H 8950 5234 50  0000 C CNN
F 2 "Package_SO:OnSemi_Micro8" H 9000 4800 50  0001 C CNN
F 3 "" H 9000 4800 50  0001 C CNN
	1    8950 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 5D43A388
P 8550 4450
F 0 "#PWR0121" H 8550 4300 50  0001 C CNN
F 1 "+5V" H 8565 4623 50  0000 C CNN
F 2 "" H 8550 4450 50  0001 C CNN
F 3 "" H 8550 4450 50  0001 C CNN
	1    8550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4800 8550 4800
Wire Wire Line
	8550 4450 8550 4650
$Comp
L Device:C C8
U 1 1 5D43A394
P 7950 4800
F 0 "C8" H 7835 4754 50  0000 R CNN
F 1 "100n" H 7835 4845 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7988 4650 50  0001 C CNN
F 3 "~" H 7950 4800 50  0001 C CNN
	1    7950 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C10
U 1 1 5D43A39E
P 8300 4800
F 0 "C10" H 8418 4846 50  0000 L CNN
F 1 "10uF" H 8418 4755 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.3" H 8338 4650 50  0001 C CNN
F 3 "~" H 8300 4800 50  0001 C CNN
	1    8300 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4650 8300 4650
Connection ~ 8550 4650
Wire Wire Line
	8550 4650 8550 4800
Connection ~ 8300 4650
Wire Wire Line
	8300 4650 7950 4650
$Comp
L power:GND #PWR0122
U 1 1 5D43A3AD
P 8150 4950
F 0 "#PWR0122" H 8150 4700 50  0001 C CNN
F 1 "GND" H 8155 4777 50  0000 C CNN
F 2 "" H 8150 4950 50  0001 C CNN
F 3 "" H 8150 4950 50  0001 C CNN
	1    8150 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4950 8150 4950
Connection ~ 8150 4950
Wire Wire Line
	8150 4950 8300 4950
$Comp
L power:GND #PWR0123
U 1 1 5D43A3BA
P 8600 5300
F 0 "#PWR0123" H 8600 5050 50  0001 C CNN
F 1 "GND" H 8605 5127 50  0000 C CNN
F 2 "" H 8600 5300 50  0001 C CNN
F 3 "" H 8600 5300 50  0001 C CNN
	1    8600 5300
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M2
U 1 1 5D43A3C4
P 9900 4900
F 0 "M2" H 10058 4896 50  0000 L CNN
F 1 "Motor_DC" H 10058 4805 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 9900 4810 50  0001 C CNN
F 3 "~" H 9900 4810 50  0001 C CNN
	1    9900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5100 8600 5300
Wire Wire Line
	9300 4900 9600 4900
Wire Wire Line
	9600 4900 9600 4700
Wire Wire Line
	9600 4700 9900 4700
Wire Wire Line
	9300 5000 9600 5000
Wire Wire Line
	9600 5000 9600 5200
Wire Wire Line
	9600 5200 9900 5200
$Comp
L power:GND #PWR0124
U 1 1 5D43A3D5
P 9450 4600
F 0 "#PWR0124" H 9450 4350 50  0001 C CNN
F 1 "GND" H 9455 4427 50  0000 C CNN
F 2 "" H 9450 4600 50  0001 C CNN
F 3 "" H 9450 4600 50  0001 C CNN
	1    9450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4800 9300 4600
Wire Wire Line
	9300 4600 9450 4600
$Comp
L Switch:SW_Push SW3
U 1 1 5D44817E
P 4600 5600
F 0 "SW3" H 4600 5885 50  0000 C CNN
F 1 "SW_Push" H 4600 5794 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 4600 5800 50  0001 C CNN
F 3 "~" H 4600 5800 50  0001 C CNN
	1    4600 5600
	1    0    0    -1  
$EndComp
Text GLabel 3250 4100 2    50   Input ~ 0
StartBtn
Text GLabel 4050 5600 0    50   Input ~ 0
StartBtn
Wire Wire Line
	4050 5600 4200 5600
Wire Wire Line
	4200 5600 4200 5900
Connection ~ 4200 5600
Wire Wire Line
	4200 5600 4400 5600
$Comp
L Device:R R3
U 1 1 5D454E46
P 4600 5900
F 0 "R3" V 4393 5900 50  0000 C CNN
F 1 "10K" V 4484 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4530 5900 50  0001 C CNN
F 3 "~" H 4600 5900 50  0001 C CNN
	1    4600 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 5900 4450 5900
$Comp
L power:GND #PWR0125
U 1 1 5D459AB6
P 4900 5600
F 0 "#PWR0125" H 4900 5350 50  0001 C CNN
F 1 "GND" H 4905 5427 50  0000 C CNN
F 2 "" H 4900 5600 50  0001 C CNN
F 3 "" H 4900 5600 50  0001 C CNN
	1    4900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5600 4900 5600
$Comp
L power:+5V #PWR0126
U 1 1 5D45E7D8
P 4850 5900
F 0 "#PWR0126" H 4850 5750 50  0001 C CNN
F 1 "+5V" V 4865 6028 50  0000 L CNN
F 2 "" H 4850 5900 50  0001 C CNN
F 3 "" H 4850 5900 50  0001 C CNN
	1    4850 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 5900 4850 5900
Text GLabel 3350 3100 2    50   Input ~ 0
S1
Text GLabel 3350 3200 2    50   Input ~ 0
S3
Text GLabel 3350 3300 2    50   Input ~ 0
S2
Text GLabel 3350 3400 2    50   Input ~ 0
S4
Wire Wire Line
	3250 3100 3350 3100
Wire Wire Line
	3250 3200 3350 3200
Wire Wire Line
	3250 3300 3350 3300
Wire Wire Line
	3250 3400 3350 3400
Text GLabel 7100 800  1    50   Input ~ 0
S1
Text GLabel 8100 800  1    50   Input ~ 0
S2
Text GLabel 9100 800  1    50   Input ~ 0
S3
Text GLabel 10050 800  1    50   Input ~ 0
S4
Text GLabel 3400 2300 2    50   Input ~ 0
M1IN1
Text GLabel 3450 4500 2    50   Input ~ 0
M1IN2
Wire Wire Line
	3250 4500 3450 4500
Wire Wire Line
	3250 2300 3400 2300
Text GLabel 8000 3850 0    50   Input ~ 0
M1IN1
Text GLabel 8000 3950 0    50   Input ~ 0
M1IN2
Wire Wire Line
	8600 3450 8400 3450
Wire Wire Line
	8400 3450 8400 3850
Wire Wire Line
	8400 3850 8000 3850
Wire Wire Line
	8600 3550 8500 3550
Wire Wire Line
	8500 3550 8500 3950
Wire Wire Line
	8500 3950 8000 3950
Text GLabel 8100 5300 0    50   Input ~ 0
M2IN1
Text GLabel 8100 5400 0    50   Input ~ 0
M2IN2
Wire Wire Line
	8600 4900 8400 4900
Wire Wire Line
	8400 4900 8400 5300
Wire Wire Line
	8400 5300 8100 5300
Wire Wire Line
	8100 5400 8500 5400
Wire Wire Line
	8500 5400 8500 5000
Wire Wire Line
	8500 5000 8600 5000
Text GLabel 3450 4200 2    50   Input ~ 0
M2IN1
Text GLabel 3450 4400 2    50   Input ~ 0
M2IN2
Wire Wire Line
	3250 4200 3450 4200
Wire Wire Line
	3250 4400 3450 4400
$Comp
L MCU_Microchip_ATmega:ATmega328-PU U1
U 1 1 5D348BDA
P 2650 3400
F 0 "U1" H 2006 3446 50  0000 R CNN
F 1 "ATmega328-PU" H 2006 3355 50  0000 R CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2650 3400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2650 3400 50  0001 C CNN
	1    2650 3400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
