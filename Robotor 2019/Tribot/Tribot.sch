EESchema Schematic File Version 4
LIBS:Tribot-cache
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
L MCU_ST_STM32F1:STM32F103C8Tx U4
U 1 1 5D35AE48
P 3650 3650
F 0 "U4" H 3600 2061 50  0000 C CNN
F 1 "STM32F103C8Tx" H 3600 1970 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 3050 2250 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 3650 3650 50  0001 C CNN
	1    3650 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5D35B64E
P 950 800
F 0 "J1" V 1012 944 50  0000 L CNN
F 1 "Conn_01x03_Male" V 1103 944 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x03_P5.715mm_Drill2mm" H 950 800 50  0001 C CNN
F 3 "~" H 950 800 50  0001 C CNN
	1    950  800 
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:AMS1117-5.0 U1
U 1 1 5D366490
P 1550 1300
F 0 "U1" H 1550 1542 50  0000 C CNN
F 1 "AMS1117-3V3" H 1550 1451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1550 1500 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1650 1050 50  0001 C CNN
	1    1550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1000 1050 1300
Wire Wire Line
	1050 1300 1150 1300
$Comp
L power:GND #PWR0101
U 1 1 5D3695D7
P 1550 1950
F 0 "#PWR0101" H 1550 1700 50  0001 C CNN
F 1 "GND" H 1555 1777 50  0000 C CNN
F 2 "" H 1550 1950 50  0001 C CNN
F 3 "" H 1550 1950 50  0001 C CNN
	1    1550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1600 1550 1950
Wire Wire Line
	1850 1300 2000 1300
Connection ~ 1150 1300
Wire Wire Line
	1150 1300 1250 1300
Wire Wire Line
	2000 1300 2000 1650
Connection ~ 2000 1300
Wire Wire Line
	2000 1300 2150 1300
Wire Wire Line
	1150 1300 1150 1500
$Comp
L Device:CP CP2
U 1 1 5D36AC75
P 1150 1800
F 0 "CP2" H 1268 1846 50  0000 L CNN
F 1 "10uF" H 1268 1755 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.3" H 1188 1650 50  0001 C CNN
F 3 "~" H 1150 1800 50  0001 C CNN
	1    1150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1950 1550 1950
Connection ~ 1550 1950
Wire Wire Line
	1150 1950 1550 1950
$Comp
L power:GND #PWR0102
U 1 1 5D36D140
P 850 1000
F 0 "#PWR0102" H 850 750 50  0001 C CNN
F 1 "GND" H 855 827 50  0000 C CNN
F 2 "" H 850 1000 50  0001 C CNN
F 3 "" H 850 1000 50  0001 C CNN
	1    850  1000
	1    0    0    -1  
$EndComp
Connection ~ 1150 1500
Wire Wire Line
	1150 1500 1150 1650
Wire Wire Line
	800  1500 800  1600
Wire Wire Line
	800  1500 1150 1500
Wire Wire Line
	3550 2150 3550 1950
Wire Wire Line
	3550 1950 3650 1950
Wire Wire Line
	3650 2150 3650 1950
Connection ~ 3650 1950
Wire Wire Line
	3750 2150 3750 1950
Wire Wire Line
	3750 1950 3650 1950
Wire Wire Line
	3650 1800 3650 1950
$Comp
L Device:C C2
U 1 1 5D370B75
P 4150 1800
F 0 "C2" H 4265 1846 50  0000 L CNN
F 1 "100n" H 4265 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4188 1650 50  0001 C CNN
F 3 "~" H 4150 1800 50  0001 C CNN
	1    4150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1650 4150 1650
Wire Wire Line
	3850 1650 3850 2150
$Comp
L power:GND #PWR0103
U 1 1 5D3719E4
P 4150 1950
F 0 "#PWR0103" H 4150 1700 50  0001 C CNN
F 1 "GND" H 4155 1777 50  0000 C CNN
F 2 "" H 4150 1950 50  0001 C CNN
F 3 "" H 4150 1950 50  0001 C CNN
	1    4150 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D37205A
P 4500 1650
F 0 "R6" V 4293 1650 50  0000 C CNN
F 1 "1R" V 4384 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4430 1650 50  0001 C CNN
F 3 "~" H 4500 1650 50  0001 C CNN
	1    4500 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 1650 4350 1650
Connection ~ 4150 1650
$Comp
L Device:CP CP4
U 1 1 5D372E37
P 4750 1800
F 0 "CP4" H 4868 1846 50  0000 L CNN
F 1 "220uF" H 4868 1755 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.3" H 4788 1650 50  0001 C CNN
F 3 "~" H 4750 1800 50  0001 C CNN
	1    4750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1650 4750 1650
$Comp
L power:GND #PWR0104
U 1 1 5D37366E
P 4750 1950
F 0 "#PWR0104" H 4750 1700 50  0001 C CNN
F 1 "GND" H 4755 1777 50  0000 C CNN
F 2 "" H 4750 1950 50  0001 C CNN
F 3 "" H 4750 1950 50  0001 C CNN
	1    4750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1650 4750 1500
Connection ~ 4750 1650
$Comp
L power:GND #PWR0105
U 1 1 5D374029
P 4000 5150
F 0 "#PWR0105" H 4000 4900 50  0001 C CNN
F 1 "GND" H 4005 4977 50  0000 C CNN
F 2 "" H 4000 5150 50  0001 C CNN
F 3 "" H 4000 5150 50  0001 C CNN
	1    4000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5150 3550 5150
Connection ~ 3550 5150
Wire Wire Line
	3550 5150 3650 5150
Connection ~ 3650 5150
Wire Wire Line
	3650 5150 3750 5150
Connection ~ 3750 5150
Wire Wire Line
	3750 5150 4000 5150
Text GLabel 2950 2550 0    50   Input ~ 0
BOOT0_B
Text GLabel 1100 6000 0    50   Input ~ 0
BOOT0
Wire Wire Line
	1100 6000 1500 6000
Wire Wire Line
	1500 6000 1500 6150
Wire Wire Line
	1500 6000 1500 5850
Wire Wire Line
	1500 5850 1600 5850
Connection ~ 1500 6000
$Comp
L power:GND #PWR0106
U 1 1 5D375FB3
P 1800 6150
F 0 "#PWR0106" H 1800 5900 50  0001 C CNN
F 1 "GND" V 1805 6022 50  0000 R CNN
F 2 "" H 1800 6150 50  0001 C CNN
F 3 "" H 1800 6150 50  0001 C CNN
	1    1800 6150
	0    -1   -1   0   
$EndComp
Text GLabel 2950 2350 0    50   Input ~ 0
RST
Text GLabel 1000 6450 0    50   Input ~ 0
RST
Wire Wire Line
	1000 6450 1350 6450
Wire Wire Line
	1350 6450 1350 6400
Wire Wire Line
	1350 6400 1450 6400
Connection ~ 1350 6450
$Comp
L Device:R R4
U 1 1 5D375B02
P 1650 6150
F 0 "R4" V 1443 6150 50  0000 C CNN
F 1 "10K" V 1550 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1580 6150 50  0001 C CNN
F 3 "~" H 1650 6150 50  0001 C CNN
	1    1650 6150
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5D37C396
P 1600 6650
F 0 "C1" V 1852 6650 50  0000 C CNN
F 1 "100n" V 1761 6650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1638 6500 50  0001 C CNN
F 3 "~" H 1600 6650 50  0001 C CNN
	1    1600 6650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5D37C90B
P 1750 6650
F 0 "#PWR0107" H 1750 6400 50  0001 C CNN
F 1 "GND" V 1755 6522 50  0000 R CNN
F 2 "" H 1750 6650 50  0001 C CNN
F 3 "" H 1750 6650 50  0001 C CNN
	1    1750 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 6650 1450 6650
Wire Wire Line
	1350 6450 1350 6650
Text GLabel 2950 3150 0    50   Input ~ 0
OSC32-IN
Text GLabel 2950 3250 0    50   Input ~ 0
OSC32-OUT
Text GLabel 1250 7050 0    50   Input ~ 0
OSC32-IN
Text GLabel 1250 7150 0    50   Input ~ 0
OSC32-OUT
$Comp
L Device:Crystal Y1
U 1 1 5D37FB0D
P 1700 7100
F 0 "Y1" V 1654 7231 50  0000 L CNN
F 1 "32.768Khz" V 1745 7231 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_MA505-2Pin_12.7x5.1mm" H 1700 7100 50  0001 C CNN
F 3 "~" H 1700 7100 50  0001 C CNN
	1    1700 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 7050 1450 7050
Wire Wire Line
	1450 7050 1450 6950
Wire Wire Line
	1450 6950 1700 6950
Wire Wire Line
	1250 7150 1450 7150
Wire Wire Line
	1450 7150 1450 7250
Wire Wire Line
	1450 7250 1700 7250
$Comp
L Device:C C5
U 1 1 5D3818FB
P 2200 7300
F 0 "C5" H 2315 7346 50  0000 L CNN
F 1 "10p" H 2315 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2238 7150 50  0001 C CNN
F 3 "~" H 2200 7300 50  0001 C CNN
	1    2200 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5D382889
P 2200 6900
F 0 "C4" H 2315 6946 50  0000 L CNN
F 1 "10p" H 2315 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2238 6750 50  0001 C CNN
F 3 "~" H 2200 6900 50  0001 C CNN
	1    2200 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6950 2000 6950
Wire Wire Line
	2000 6950 2000 6750
Wire Wire Line
	2000 6750 2200 6750
Connection ~ 1700 6950
Wire Wire Line
	1700 7250 2000 7250
Wire Wire Line
	2000 7250 2000 7450
Wire Wire Line
	2000 7450 2200 7450
Connection ~ 1700 7250
$Comp
L power:GND #PWR0108
U 1 1 5D385FC8
P 2250 7100
F 0 "#PWR0108" H 2250 6850 50  0001 C CNN
F 1 "GND" V 2255 6972 50  0000 R CNN
F 2 "" H 2250 7100 50  0001 C CNN
F 3 "" H 2250 7100 50  0001 C CNN
	1    2250 7100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 7050 2200 7100
Wire Wire Line
	2200 7100 2250 7100
Connection ~ 2200 7100
Wire Wire Line
	2200 7100 2200 7150
Text GLabel 2950 2750 0    50   Input ~ 0
OSC-IN
Text GLabel 2950 2850 0    50   Input ~ 0
OSC-OUT
Text GLabel 3400 7050 0    50   Input ~ 0
OSC-IN
Text GLabel 3400 7150 0    50   Input ~ 0
OSC-OUT
$Comp
L Device:Crystal Y2
U 1 1 5D38AF2A
P 3850 7100
F 0 "Y2" V 3804 7231 50  0000 L CNN
F 1 "8Mhz" V 3895 7231 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_MA505-2Pin_12.7x5.1mm" H 3850 7100 50  0001 C CNN
F 3 "~" H 3850 7100 50  0001 C CNN
	1    3850 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 7050 3600 7050
Wire Wire Line
	3600 7050 3600 6950
Wire Wire Line
	3600 6950 3850 6950
Wire Wire Line
	3400 7150 3600 7150
Wire Wire Line
	3600 7150 3600 7250
Wire Wire Line
	3600 7250 3850 7250
$Comp
L Device:C C6
U 1 1 5D38AF44
P 4350 6900
F 0 "C6" H 4465 6946 50  0000 L CNN
F 1 "22p" H 4465 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4388 6750 50  0001 C CNN
F 3 "~" H 4350 6900 50  0001 C CNN
	1    4350 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6950 4150 6950
Wire Wire Line
	4150 6950 4150 6750
Connection ~ 3850 6950
Wire Wire Line
	3850 7250 4150 7250
Wire Wire Line
	4150 7250 4150 7450
Wire Wire Line
	4150 7450 4350 7450
Connection ~ 3850 7250
$Comp
L power:GND #PWR0109
U 1 1 5D38AF55
P 4400 7100
F 0 "#PWR0109" H 4400 6850 50  0001 C CNN
F 1 "GND" V 4405 6972 50  0000 R CNN
F 2 "" H 4400 7100 50  0001 C CNN
F 3 "" H 4400 7100 50  0001 C CNN
	1    4400 7100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 7050 4350 7100
Wire Wire Line
	4350 7100 4400 7100
Connection ~ 4350 7100
Wire Wire Line
	4350 7100 4350 7150
Wire Wire Line
	4150 6750 4350 6750
$Comp
L Sensor_Proximity:ITR8307 U5
U 1 1 5D393C47
P 7250 1750
F 0 "U5" H 7250 2067 50  0000 C CNN
F 1 "ITR8307" H 7250 1976 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 7250 1550 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/ITR8307.pdf" H 7250 1850 50  0001 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1850 6950 2100
Wire Wire Line
	6950 2100 7550 2100
Wire Wire Line
	7550 2100 7550 1850
Wire Wire Line
	6950 1650 6950 1300
$Comp
L Device:R R12
U 1 1 5D399D45
P 6950 1150
F 0 "R12" H 7020 1196 50  0000 L CNN
F 1 "220" H 7020 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6880 1150 50  0001 C CNN
F 3 "~" H 6950 1150 50  0001 C CNN
	1    6950 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5D39C47F
P 7250 1150
F 0 "C15" H 7365 1196 50  0000 L CNN
F 1 "10n" H 7365 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7288 1000 50  0001 C CNN
F 3 "~" H 7250 1150 50  0001 C CNN
	1    7250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1300 7550 1300
Wire Wire Line
	7550 1300 7550 1650
Connection ~ 7550 1300
$Comp
L Sensor_Proximity:ITR8307 U7
U 1 1 5D3A0E68
P 8250 1750
F 0 "U7" H 8250 2067 50  0000 C CNN
F 1 "ITR8307" H 8250 1976 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 8250 1550 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/ITR8307.pdf" H 8250 1850 50  0001 C CNN
	1    8250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1850 7950 2100
Wire Wire Line
	8550 2100 8550 1850
Wire Wire Line
	7950 1650 7950 1300
$Comp
L Device:C C17
U 1 1 5D3A0E81
P 8250 1150
F 0 "C17" H 8365 1196 50  0000 L CNN
F 1 "10n" H 8365 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8288 1000 50  0001 C CNN
F 3 "~" H 8250 1150 50  0001 C CNN
	1    8250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1300 8550 1300
Wire Wire Line
	8550 1300 8550 1650
$Comp
L Sensor_Proximity:ITR8307 U8
U 1 1 5D3A2A61
P 9250 1750
F 0 "U8" H 9250 2067 50  0000 C CNN
F 1 "ITR8307" H 9250 1976 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 9250 1550 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/ITR8307.pdf" H 9250 1850 50  0001 C CNN
	1    9250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1850 8950 2100
Wire Wire Line
	9550 2100 9550 1850
Wire Wire Line
	8950 1650 8950 1300
$Comp
L Device:C C18
U 1 1 5D3A2A7A
P 9250 1150
F 0 "C18" H 9365 1196 50  0000 L CNN
F 1 "10n" H 9365 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9288 1000 50  0001 C CNN
F 3 "~" H 9250 1150 50  0001 C CNN
	1    9250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1300 9550 1300
Wire Wire Line
	9550 1300 9550 1650
$Comp
L Sensor_Proximity:ITR8307 U9
U 1 1 5D3A6550
P 10250 1750
F 0 "U9" H 10250 2067 50  0000 C CNN
F 1 "ITR8307" H 10250 1976 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 10250 1550 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/ITR8307.pdf" H 10250 1850 50  0001 C CNN
	1    10250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1850 9950 2100
Wire Wire Line
	9950 2100 10550 2100
Wire Wire Line
	10550 2100 10550 1850
Wire Wire Line
	9950 1650 9950 1300
$Comp
L Device:C C21
U 1 1 5D3A6569
P 10250 1150
F 0 "C21" H 10365 1196 50  0000 L CNN
F 1 "10n" H 10365 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10288 1000 50  0001 C CNN
F 3 "~" H 10250 1150 50  0001 C CNN
	1    10250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1300 10550 1300
Wire Wire Line
	10550 1300 10550 1650
Wire Wire Line
	7550 2100 7950 2100
Connection ~ 7550 2100
Connection ~ 9950 2100
Connection ~ 7950 2100
Wire Wire Line
	7950 2100 8550 2100
Connection ~ 8550 2100
Wire Wire Line
	8550 2100 8750 2100
Connection ~ 8950 2100
Wire Wire Line
	8950 2100 9550 2100
Connection ~ 9550 2100
Wire Wire Line
	9550 2100 9950 2100
$Comp
L power:GND #PWR0115
U 1 1 5D3AB3EB
P 8750 2100
F 0 "#PWR0115" H 8750 1850 50  0001 C CNN
F 1 "GND" H 8755 1927 50  0000 C CNN
F 2 "" H 8750 2100 50  0001 C CNN
F 3 "" H 8750 2100 50  0001 C CNN
	1    8750 2100
	1    0    0    -1  
$EndComp
Connection ~ 8750 2100
Wire Wire Line
	8750 2100 8950 2100
Text GLabel 4250 3450 2    50   Input ~ 0
S1
Text GLabel 4250 3550 2    50   Input ~ 0
S2
Text GLabel 4250 3650 2    50   Input ~ 0
S3
Text GLabel 4250 3750 2    50   Input ~ 0
S4
Text GLabel 7550 1000 1    50   Input ~ 0
S1
Text GLabel 8550 1000 1    50   Input ~ 0
S2
Text GLabel 9550 1000 1    50   Input ~ 0
S3
Text GLabel 10550 1000 1    50   Input ~ 0
S4
$Comp
L power:+7.5V #PWR0116
U 1 1 5D363B94
P 800 1600
F 0 "#PWR0116" H 800 1450 50  0001 C CNN
F 1 "+7.5V" H 815 1773 50  0000 C CNN
F 2 "" H 800 1600 50  0001 C CNN
F 3 "" H 800 1600 50  0001 C CNN
	1    800  1600
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 5D364752
P 2150 1300
F 0 "#PWR0117" H 2150 1150 50  0001 C CNN
F 1 "+3V3" V 2165 1428 50  0000 L CNN
F 2 "" H 2150 1300 50  0001 C CNN
F 3 "" H 2150 1300 50  0001 C CNN
	1    2150 1300
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0121
U 1 1 5D36E140
P 2200 5850
F 0 "#PWR0121" H 2200 5700 50  0001 C CNN
F 1 "+3V3" H 2215 6023 50  0000 C CNN
F 2 "" H 2200 5850 50  0001 C CNN
F 3 "" H 2200 5850 50  0001 C CNN
	1    2200 5850
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5D373492
P 4350 7300
F 0 "C7" H 4465 7346 50  0000 L CNN
F 1 "22p" H 4465 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4388 7150 50  0001 C CNN
F 3 "~" H 4350 7300 50  0001 C CNN
	1    4350 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D37BC93
P 1600 6400
F 0 "R1" V 1393 6400 50  0000 C CNN
F 1 "10K" V 1484 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1530 6400 50  0001 C CNN
F 3 "~" H 1600 6400 50  0001 C CNN
	1    1600 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D37FD70
P 3450 2000
F 0 "R2" H 3300 2050 50  0000 L CNN
F 1 "1R" H 3300 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3380 2000 50  0001 C CNN
F 3 "~" H 3450 2000 50  0001 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J3
U 1 1 5D38F69E
P 5950 1150
F 0 "J3" H 5720 1047 50  0000 R CNN
F 1 "USB_B_Mini" H 5720 1138 50  0000 R CNN
F 2 "Connector_USB:USB_Mini-B_Lumberg_2486_01_Horizontal" H 6100 1100 50  0001 C CNN
F 3 "~" H 6100 1100 50  0001 C CNN
	1    5950 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5D390EB8
P 5350 1150
F 0 "#PWR0123" H 5350 900 50  0001 C CNN
F 1 "GND" H 5355 977 50  0000 C CNN
F 2 "" H 5350 1150 50  0001 C CNN
F 3 "" H 5350 1150 50  0001 C CNN
	1    5350 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 1050 5450 1050
Wire Wire Line
	5450 1050 5450 1150
Wire Wire Line
	5450 1150 5350 1150
Wire Wire Line
	5450 1150 5550 1150
Connection ~ 5450 1150
$Comp
L Device:R R11
U 1 1 5D397BF9
P 5600 1450
F 0 "R11" H 5670 1496 50  0000 L CNN
F 1 "100k" H 5670 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5530 1450 50  0001 C CNN
F 3 "~" H 5600 1450 50  0001 C CNN
	1    5600 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 1450 5450 1150
Wire Wire Line
	5950 1450 5950 1600
$Comp
L Device:R R10
U 1 1 5D3A9D99
P 5950 1750
F 0 "R10" V 5850 1750 50  0000 C CNN
F 1 "1R" V 5750 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5880 1750 50  0001 C CNN
F 3 "~" H 5950 1750 50  0001 C CNN
	1    5950 1750
	-1   0    0    1   
$EndComp
Text GLabel 4250 4650 2    50   Input ~ 0
USB+
Wire Wire Line
	5950 1900 5950 2000
Wire Wire Line
	5950 1600 6200 1600
$Comp
L Device:R R3
U 1 1 5D3B47B0
P 6350 1600
F 0 "R3" H 6150 1650 50  0000 L CNN
F 1 "1K5" H 6150 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6280 1600 50  0001 C CNN
F 3 "~" H 6350 1600 50  0001 C CNN
	1    6350 1600
	0    -1   -1   0   
$EndComp
Connection ~ 5950 1600
Wire Wire Line
	5850 1450 5850 1600
$Comp
L Device:R R9
U 1 1 5D3BDD3D
P 5850 1750
F 0 "R9" V 5650 1750 50  0000 C CNN
F 1 "1R" V 5750 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5780 1750 50  0001 C CNN
F 3 "~" H 5850 1750 50  0001 C CNN
	1    5850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1900 5850 2000
Text GLabel 4250 4550 2    50   Input ~ 0
USB-
$Comp
L power:+3V3 #PWR0124
U 1 1 5D3D809D
P 6500 1600
F 0 "#PWR0124" H 6500 1450 50  0001 C CNN
F 1 "+3V3" H 6515 1773 50  0000 C CNN
F 2 "" H 6500 1600 50  0001 C CNN
F 3 "" H 6500 1600 50  0001 C CNN
	1    6500 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 1450 6200 1450
Text GLabel 6200 1450 2    50   Input ~ 0
EXT_VCC
Text GLabel 650  1300 3    50   Input ~ 0
EXT_VCC
$Comp
L Device:C C9
U 1 1 5D3DD5BE
P 2000 1800
F 0 "C9" H 2115 1846 50  0000 L CNN
F 1 "100n" H 2115 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2038 1650 50  0001 C CNN
F 3 "~" H 2000 1800 50  0001 C CNN
	1    2000 1800
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L298P U6
U 1 1 5D412420
P 8500 5000
F 0 "U6" H 8500 5881 50  0000 C CNN
F 1 "L298P" H 8500 5790 50  0000 C CNN
F 2 "Package_SO:HSOP-20-1EP_11.0x15.9mm_P1.27mm_SlugUp" H 8650 5250 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000240.pdf" H 8650 5250 50  0001 C CNN
	1    8500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5700 8400 5800
Wire Wire Line
	8500 5700 8500 5800
Wire Wire Line
	8700 5700 8700 5800
$Comp
L Regulator_Linear:AMS1117-5.0 U3
U 1 1 5D4403DC
P 1500 2800
F 0 "U3" H 1500 3042 50  0000 C CNN
F 1 "AMS1117-5.0" H 1500 2951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1500 3000 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1600 2550 50  0001 C CNN
	1    1500 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5D4403E8
P 1500 3450
F 0 "#PWR0128" H 1500 3200 50  0001 C CNN
F 1 "GND" H 1505 3277 50  0000 C CNN
F 2 "" H 1500 3450 50  0001 C CNN
F 3 "" H 1500 3450 50  0001 C CNN
	1    1500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3100 1500 3450
Wire Wire Line
	1800 2800 1950 2800
Wire Wire Line
	1100 2800 1200 2800
Wire Wire Line
	1950 2800 1950 3150
Connection ~ 1950 2800
Wire Wire Line
	1950 2800 2100 2800
$Comp
L Device:CP CP3
U 1 1 5D4403FA
P 1100 3300
F 0 "CP3" H 1218 3346 50  0000 L CNN
F 1 "10uF" H 1218 3255 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.3" H 1138 3150 50  0001 C CNN
F 3 "~" H 1100 3300 50  0001 C CNN
	1    1100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3450 1500 3450
Connection ~ 1500 3450
Wire Wire Line
	1100 3450 1500 3450
$Comp
L Device:C C13
U 1 1 5D440429
P 1950 3300
F 0 "C13" H 2065 3346 50  0000 L CNN
F 1 "100n" H 2065 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1988 3150 50  0001 C CNN
F 3 "~" H 1950 3300 50  0001 C CNN
	1    1950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3000 1100 3150
Wire Wire Line
	1100 2800 1100 3000
Connection ~ 1100 3000
Wire Wire Line
	750  3000 1100 3000
$Comp
L power:+7.5V #PWR0129
U 1 1 5D440415
P 750 3100
F 0 "#PWR0129" H 750 2950 50  0001 C CNN
F 1 "+7.5V" H 765 3273 50  0000 C CNN
F 2 "" H 750 3100 50  0001 C CNN
F 3 "" H 750 3100 50  0001 C CNN
	1    750  3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	750  3000 750  3100
$Comp
L power:+5V #PWR0130
U 1 1 5D456510
P 2100 2800
F 0 "#PWR0130" H 2100 2650 50  0001 C CNN
F 1 "+5V" V 2115 2928 50  0000 L CNN
F 2 "" H 2100 2800 50  0001 C CNN
F 3 "" H 2100 2800 50  0001 C CNN
	1    2100 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 4300 8500 3800
Connection ~ 8500 3800
Wire Wire Line
	8500 3800 8500 3650
Wire Wire Line
	7950 4100 8150 4100
Connection ~ 7950 4100
$Comp
L power:GND #PWR0132
U 1 1 5D46ACC8
P 7950 4100
F 0 "#PWR0132" H 7950 3850 50  0001 C CNN
F 1 "GND" H 7955 3927 50  0000 C CNN
F 2 "" H 7950 4100 50  0001 C CNN
F 3 "" H 7950 4100 50  0001 C CNN
	1    7950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4100 7950 4100
Wire Wire Line
	8600 3650 8600 3800
Connection ~ 8600 3800
Wire Wire Line
	8600 3800 8600 4300
Wire Wire Line
	10400 4100 10600 4100
Connection ~ 10400 4100
$Comp
L power:GND #PWR0134
U 1 1 5D4DA015
P 10400 4100
F 0 "#PWR0134" H 10400 3850 50  0001 C CNN
F 1 "GND" H 10405 3927 50  0000 C CNN
F 2 "" H 10400 4100 50  0001 C CNN
F 3 "" H 10400 4100 50  0001 C CNN
	1    10400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 4100 10400 4100
$Comp
L Device:CP CP6
U 1 1 5D4DA020
P 10200 3950
F 0 "CP6" H 10318 3996 50  0000 L CNN
F 1 "100uF" H 10318 3905 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.3" H 10238 3800 50  0001 C CNN
F 3 "~" H 10200 3950 50  0001 C CNN
	1    10200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3800 9350 3800
Wire Wire Line
	10200 3800 10600 3800
Connection ~ 10200 3800
$Comp
L Motor:Motor_DC M1
U 1 1 5D51C9CE
P 10600 4700
F 0 "M1" H 10758 4696 50  0000 L CNN
F 1 "Motor_DC" H 10758 4605 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 10600 4610 50  0001 C CNN
F 3 "~" H 10600 4610 50  0001 C CNN
	1    10600 4700
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M2
U 1 1 5D51DBCC
P 10600 5300
F 0 "M2" H 10758 5296 50  0000 L CNN
F 1 "Motor_DC" H 10758 5205 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 10600 5210 50  0001 C CNN
F 3 "~" H 10600 5210 50  0001 C CNN
	1    10600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 5200 10350 5600
Wire Wire Line
	10350 5600 10600 5600
Wire Wire Line
	8100 5700 8100 6250
Wire Wire Line
	8100 6250 8200 6250
Wire Wire Line
	9950 6250 9950 5900
Connection ~ 9950 3800
Wire Wire Line
	9950 3800 10200 3800
Wire Wire Line
	8200 5700 8200 6250
Connection ~ 8200 6250
Wire Wire Line
	8200 6250 8650 6250
Wire Wire Line
	9750 6250 9750 5900
Connection ~ 9750 6250
Wire Wire Line
	9750 6250 9950 6250
Connection ~ 9750 3800
Wire Wire Line
	9750 3800 9950 3800
Wire Wire Line
	9550 6250 9550 5900
Connection ~ 9550 6250
Wire Wire Line
	9550 6250 9750 6250
Connection ~ 9550 3800
Wire Wire Line
	9550 3800 9750 3800
Wire Wire Line
	9350 6250 9350 5900
Connection ~ 9350 6250
Wire Wire Line
	9350 6250 9550 6250
Connection ~ 9350 3800
Wire Wire Line
	9350 3800 9550 3800
Wire Wire Line
	9100 5200 9950 5200
Connection ~ 9950 5200
Wire Wire Line
	9950 5200 9950 4450
Wire Wire Line
	9950 5200 10350 5200
Wire Wire Line
	9100 5100 9750 5100
Connection ~ 9750 5100
Wire Wire Line
	9750 5100 9750 4450
Wire Wire Line
	9750 5100 10600 5100
Wire Wire Line
	9100 4900 9550 4900
Connection ~ 9550 4900
Wire Wire Line
	9550 4900 9550 4450
Wire Wire Line
	9550 4900 10350 4900
Wire Wire Line
	9100 4800 9350 4800
Connection ~ 9350 4800
Wire Wire Line
	9350 4800 9350 4450
Wire Wire Line
	9350 4800 10350 4800
Wire Wire Line
	9950 5600 9950 5200
$Comp
L Device:D D8
U 1 1 5D595511
P 9950 5750
F 0 "D8" V 9904 5829 50  0000 L CNN
F 1 "D" V 9995 5829 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_AnodeUp" H 9950 5750 50  0001 C CNN
F 3 "~" H 9950 5750 50  0001 C CNN
	1    9950 5750
	0    1    1    0   
$EndComp
$Comp
L Device:D D6
U 1 1 5D597E60
P 9750 5750
F 0 "D6" V 9704 5829 50  0000 L CNN
F 1 "D" V 9795 5829 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_AnodeUp" H 9750 5750 50  0001 C CNN
F 3 "~" H 9750 5750 50  0001 C CNN
	1    9750 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 5600 9750 5100
$Comp
L Device:D D4
U 1 1 5D59809A
P 9550 5750
F 0 "D4" V 9504 5829 50  0000 L CNN
F 1 "D" V 9595 5829 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_AnodeUp" H 9550 5750 50  0001 C CNN
F 3 "~" H 9550 5750 50  0001 C CNN
	1    9550 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 5600 9550 4900
$Comp
L Device:D D2
U 1 1 5D598324
P 9350 5750
F 0 "D2" V 9304 5829 50  0000 L CNN
F 1 "D" V 9395 5829 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_AnodeUp" H 9350 5750 50  0001 C CNN
F 3 "~" H 9350 5750 50  0001 C CNN
	1    9350 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 5600 9350 4800
$Comp
L Device:D D1
U 1 1 5D59863F
P 9350 4300
F 0 "D1" V 9304 4379 50  0000 L CNN
F 1 "D" V 9395 4379 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_AnodeUp" H 9350 4300 50  0001 C CNN
F 3 "~" H 9350 4300 50  0001 C CNN
	1    9350 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 4150 9350 3800
$Comp
L Device:D D3
U 1 1 5D598FDD
P 9550 4300
F 0 "D3" V 9504 4379 50  0000 L CNN
F 1 "D" V 9595 4379 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_AnodeUp" H 9550 4300 50  0001 C CNN
F 3 "~" H 9550 4300 50  0001 C CNN
	1    9550 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4150 9550 3800
$Comp
L Device:D D5
U 1 1 5D599AD3
P 9750 4300
F 0 "D5" V 9704 4379 50  0000 L CNN
F 1 "D" V 9795 4379 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_AnodeUp" H 9750 4300 50  0001 C CNN
F 3 "~" H 9750 4300 50  0001 C CNN
	1    9750 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 4150 9750 3800
$Comp
L Device:D D7
U 1 1 5D599CAE
P 9950 4300
F 0 "D7" V 9904 4379 50  0000 L CNN
F 1 "D" V 9995 4379 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_AnodeUp" H 9950 4300 50  0001 C CNN
F 3 "~" H 9950 4300 50  0001 C CNN
	1    9950 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 4150 9950 3800
Text GLabel 7900 4700 0    50   Input ~ 0
EnA
Text GLabel 7900 5100 0    50   Input ~ 0
EnB
Text GLabel 2950 3450 0    50   Input ~ 0
EnA_B
Text GLabel 2950 3550 0    50   Input ~ 0
EnB_B
Text GLabel 2950 3950 0    50   Input ~ 0
M1IN1_B
Text GLabel 2950 3850 0    50   Input ~ 0
M1IN2_B
Text GLabel 2950 3750 0    50   Input ~ 0
M2IN1_B
Text GLabel 4250 4950 2    50   Input ~ 0
M2IN2_B
Text GLabel 7900 5000 0    50   Input ~ 0
M2IN2
Text GLabel 7900 4900 0    50   Input ~ 0
M2IN1
Text GLabel 7900 4500 0    50   Input ~ 0
M1IN1
Text GLabel 7900 4600 0    50   Input ~ 0
M1IN2
$Comp
L power:GND #PWR0137
U 1 1 5D5B8614
P 8650 6250
F 0 "#PWR0137" H 8650 6000 50  0001 C CNN
F 1 "GND" H 8655 6077 50  0000 C CNN
F 2 "" H 8650 6250 50  0001 C CNN
F 3 "" H 8650 6250 50  0001 C CNN
	1    8650 6250
	1    0    0    -1  
$EndComp
Connection ~ 8650 6250
Wire Wire Line
	8650 6250 9350 6250
$Comp
L Connector:Conn_01x03_Female J8
U 1 1 5D41C02F
P 9050 2500
F 0 "J8" V 8990 2312 50  0000 R CNN
F 1 "Conn_01x03_Female" V 8899 2312 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9050 2500 50  0001 C CNN
F 3 "~" H 9050 2500 50  0001 C CNN
	1    9050 2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Female J7
U 1 1 5D486551
P 10250 2500
F 0 "J7" V 10190 2312 50  0000 R CNN
F 1 "Conn_01x03_Female" V 10099 2312 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10250 2500 50  0001 C CNN
F 3 "~" H 10250 2500 50  0001 C CNN
	1    10250 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 5D4B119C
P 9050 2700
F 0 "#PWR0140" H 9050 2450 50  0001 C CNN
F 1 "GND" H 9055 2527 50  0000 C CNN
F 2 "" H 9050 2700 50  0001 C CNN
F 3 "" H 9050 2700 50  0001 C CNN
	1    9050 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 5D4B1236
P 10250 2700
F 0 "#PWR0141" H 10250 2450 50  0001 C CNN
F 1 "GND" H 10255 2527 50  0000 C CNN
F 2 "" H 10250 2700 50  0001 C CNN
F 3 "" H 10250 2700 50  0001 C CNN
	1    10250 2700
	1    0    0    -1  
$EndComp
Text GLabel 8650 2950 3    50   Input ~ 0
H1
Text GLabel 9850 3000 3    50   Input ~ 0
H2
Text GLabel 4250 3850 2    50   Input ~ 0
H2
Text GLabel 4250 3950 2    50   Input ~ 0
H1
Wire Wire Line
	10600 2700 10350 2700
Wire Wire Line
	9850 2700 10150 2700
Wire Wire Line
	9850 3000 10100 3000
$Comp
L Device:R R5
U 1 1 5D596B91
P 10250 3150
F 0 "R5" V 10043 3150 50  0000 C CNN
F 1 "1K" V 10134 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10180 3150 50  0001 C CNN
F 3 "~" H 10250 3150 50  0001 C CNN
	1    10250 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	10400 3000 10600 3000
$Comp
L Device:R R7
U 1 1 5D5D4F29
P 9050 3150
F 0 "R7" V 8843 3150 50  0000 C CNN
F 1 "1K" V 8934 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8980 3150 50  0001 C CNN
F 3 "~" H 9050 3150 50  0001 C CNN
	1    9050 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 2950 9400 2950
Wire Wire Line
	10100 3000 10100 3150
Wire Wire Line
	10400 3150 10400 3000
Wire Wire Line
	9200 2950 9200 3150
Wire Wire Line
	8900 2950 8900 3150
Wire Wire Line
	8650 2950 8900 2950
Wire Wire Line
	8150 3800 8500 3800
$Comp
L Device:C C8
U 1 1 5D632070
P 10600 3950
F 0 "C8" H 10715 3996 50  0000 L CNN
F 1 "100n" H 10715 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10638 3800 50  0001 C CNN
F 3 "~" H 10600 3950 50  0001 C CNN
	1    10600 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D9
U 1 1 5D6363AF
P 5100 2950
F 0 "D9" V 5138 2833 50  0000 R CNN
F 1 "LED" V 5047 2833 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5100 2950 50  0001 C CNN
F 3 "~" H 5100 2950 50  0001 C CNN
	1    5100 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 2650 5100 2800
Wire Wire Line
	5100 3100 5100 3250
$Comp
L power:GND #PWR0145
U 1 1 5D64FCBC
P 5100 3600
F 0 "#PWR0145" H 5100 3350 50  0001 C CNN
F 1 "GND" H 5105 3427 50  0000 C CNN
F 2 "" H 5100 3600 50  0001 C CNN
F 3 "" H 5100 3600 50  0001 C CNN
	1    5100 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5D64FD88
P 5100 3400
F 0 "R20" H 5170 3446 50  0000 L CNN
F 1 "R" H 5170 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 3400 50  0001 C CNN
F 3 "~" H 5100 3400 50  0001 C CNN
	1    5100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3600 5100 3550
Wire Wire Line
	8600 5700 8600 5800
Wire Wire Line
	8400 5800 8500 5800
Connection ~ 8500 5800
Wire Wire Line
	8500 5800 8600 5800
Connection ~ 8600 5800
Wire Wire Line
	8600 5800 8700 5800
$Comp
L power:GND #PWR0127
U 1 1 5D676B77
P 8700 5800
F 0 "#PWR0127" H 8700 5550 50  0001 C CNN
F 1 "GND" H 8705 5627 50  0000 C CNN
F 2 "" H 8700 5800 50  0001 C CNN
F 3 "" H 8700 5800 50  0001 C CNN
	1    8700 5800
	1    0    0    -1  
$EndComp
Connection ~ 8700 5800
$Comp
L power:+3V3 #PWR0142
U 1 1 5D3E9D75
P 5100 2650
F 0 "#PWR0142" H 5100 2500 50  0001 C CNN
F 1 "+3V3" H 5115 2823 50  0000 C CNN
F 2 "" H 5100 2650 50  0001 C CNN
F 3 "" H 5100 2650 50  0001 C CNN
	1    5100 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5D3FEA50
P 7550 1150
F 0 "R13" H 7620 1196 50  0000 L CNN
F 1 "220" H 7620 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7480 1150 50  0001 C CNN
F 3 "~" H 7550 1150 50  0001 C CNN
	1    7550 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5D3FED78
P 7950 1150
F 0 "R14" H 8020 1196 50  0000 L CNN
F 1 "220" H 8020 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7880 1150 50  0001 C CNN
F 3 "~" H 7950 1150 50  0001 C CNN
	1    7950 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5D3FF1B4
P 8550 1150
F 0 "R15" H 8620 1196 50  0000 L CNN
F 1 "220" H 8620 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8480 1150 50  0001 C CNN
F 3 "~" H 8550 1150 50  0001 C CNN
	1    8550 1150
	1    0    0    -1  
$EndComp
Connection ~ 8550 1300
$Comp
L Device:R R16
U 1 1 5D3FF53E
P 8950 1150
F 0 "R16" H 9020 1196 50  0000 L CNN
F 1 "220" H 9020 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8880 1150 50  0001 C CNN
F 3 "~" H 8950 1150 50  0001 C CNN
	1    8950 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5D3FF916
P 9550 1150
F 0 "R17" H 9620 1196 50  0000 L CNN
F 1 "220" H 9620 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 1150 50  0001 C CNN
F 3 "~" H 9550 1150 50  0001 C CNN
	1    9550 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5D40C536
P 9950 1150
F 0 "R18" H 10020 1196 50  0000 L CNN
F 1 "220" H 10020 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 1150 50  0001 C CNN
F 3 "~" H 9950 1150 50  0001 C CNN
	1    9950 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5D4191F6
P 10550 1150
F 0 "R19" H 10620 1196 50  0000 L CNN
F 1 "220" H 10620 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 1150 50  0001 C CNN
F 3 "~" H 10550 1150 50  0001 C CNN
	1    10550 1150
	1    0    0    -1  
$EndComp
Text GLabel 4250 4750 2    50   Input ~ 0
DIO_B
Text GLabel 4250 4850 2    50   Input ~ 0
CLK_B
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5D489F64
P 1200 5100
F 0 "J2" V 1046 5248 50  0000 L CNN
F 1 "Conn_01x04_Female" V 1137 5248 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1200 5100 50  0001 C CNN
F 3 "~" H 1200 5100 50  0001 C CNN
	1    1200 5100
	0    1    1    0   
$EndComp
Text GLabel 1100 4900 1    50   Input ~ 0
DIO
Text GLabel 1200 4900 1    50   Input ~ 0
CLK
$Comp
L power:GND #PWR0143
U 1 1 5D48D58D
P 1300 4900
F 0 "#PWR0143" H 1300 4650 50  0001 C CNN
F 1 "GND" H 1305 4727 50  0000 C CNN
F 2 "" H 1300 4900 50  0001 C CNN
F 3 "" H 1300 4900 50  0001 C CNN
	1    1300 4900
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0144
U 1 1 5D48E2EA
P 1000 4900
F 0 "#PWR0144" H 1000 4750 50  0001 C CNN
F 1 "+3V3" H 1015 5073 50  0000 C CNN
F 2 "" H 1000 4900 50  0001 C CNN
F 3 "" H 1000 4900 50  0001 C CNN
	1    1000 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP1
U 1 1 5D5D18F4
P 1900 5850
F 0 "JP1" H 1900 6114 50  0000 C CNN
F 1 "Jumper" H 1900 6023 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1900 5850 50  0001 C CNN
F 3 "~" H 1900 5850 50  0001 C CNN
	1    1900 5850
	1    0    0    -1  
$EndComp
Text GLabel 2900 6000 0    50   Input ~ 0
BOOT1
Wire Wire Line
	2900 6000 3300 6000
Wire Wire Line
	3300 6000 3300 5850
Wire Wire Line
	3300 5850 3400 5850
$Comp
L power:GND #PWR0110
U 1 1 5D5D6A8E
P 3600 6150
F 0 "#PWR0110" H 3600 5900 50  0001 C CNN
F 1 "GND" V 3605 6022 50  0000 R CNN
F 2 "" H 3600 6150 50  0001 C CNN
F 3 "" H 3600 6150 50  0001 C CNN
	1    3600 6150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5D5D6A94
P 3450 6150
F 0 "R8" V 3243 6150 50  0000 C CNN
F 1 "10K" V 3350 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3380 6150 50  0001 C CNN
F 3 "~" H 3450 6150 50  0001 C CNN
	1    3450 6150
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper JP2
U 1 1 5D5D6AA0
P 3700 5850
F 0 "JP2" H 3700 6114 50  0000 C CNN
F 1 "Jumper" H 3700 6023 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3700 5850 50  0001 C CNN
F 3 "~" H 3700 5850 50  0001 C CNN
	1    3700 5850
	1    0    0    -1  
$EndComp
Text GLabel 2950 3650 0    50   Input ~ 0
BOOT1_B
Connection ~ 8150 3800
Wire Wire Line
	7750 3800 8150 3800
$Comp
L Device:C C3
U 1 1 5D631C1B
P 8150 3950
F 0 "C3" H 8265 3996 50  0000 L CNN
F 1 "100n" H 8265 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8188 3800 50  0001 C CNN
F 3 "~" H 8150 3950 50  0001 C CNN
	1    8150 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP CP5
U 1 1 5D4637AD
P 7750 3950
F 0 "CP5" H 7868 3996 50  0000 L CNN
F 1 "100uF" H 7868 3905 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.3" H 7788 3800 50  0001 C CNN
F 3 "~" H 7750 3950 50  0001 C CNN
	1    7750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6000 3300 6150
Connection ~ 3300 6000
Wire Wire Line
	8650 2950 8650 2700
Wire Wire Line
	8650 2700 8950 2700
Wire Wire Line
	9400 2950 9400 2700
Wire Wire Line
	9400 2700 9150 2700
Wire Wire Line
	9850 2700 9850 3000
Wire Wire Line
	10600 2700 10600 3000
Text GLabel 2950 4950 0    50   Input ~ 0
US2P_OUT
Text GLabel 2950 4850 0    50   Input ~ 0
US2P_IN
Text GLabel 2950 4750 0    50   Input ~ 0
US1P_OUT
Text GLabel 2950 4650 0    50   Input ~ 0
US1P_IN
Wire Wire Line
	10350 4800 10350 4500
Wire Wire Line
	10350 4500 10600 4500
Wire Wire Line
	10350 4900 10350 5000
Wire Wire Line
	10350 5000 10600 5000
$Comp
L Connector_Generic:Conn_01x02 US_PIN2
U 1 1 5D57DA04
P 5500 7500
F 0 "US_PIN2" V 5372 7580 50  0000 L CNN
F 1 "Conn_01x02" V 5463 7580 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5500 7500 50  0001 C CNN
F 3 "~" H 5500 7500 50  0001 C CNN
	1    5500 7500
	0    1    1    0   
$EndComp
Text GLabel 5400 7300 1    50   Input ~ 0
US1_IN
Text GLabel 5500 7300 1    50   Input ~ 0
US1_OUT
$Comp
L Connector_Generic:Conn_01x02 US_PIN3
U 1 1 5D59A5C6
P 5950 7500
F 0 "US_PIN3" V 5822 7580 50  0000 L CNN
F 1 "Conn_01x02" V 5913 7580 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5950 7500 50  0001 C CNN
F 3 "~" H 5950 7500 50  0001 C CNN
	1    5950 7500
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 US_PIN1
U 1 1 5D59A8FB
P 5050 7500
F 0 "US_PIN1" V 4922 7580 50  0000 L CNN
F 1 "Conn_01x02" V 5013 7580 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5050 7500 50  0001 C CNN
F 3 "~" H 5050 7500 50  0001 C CNN
	1    5050 7500
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 US_PIN4
U 1 1 5D59AB6D
P 6400 7500
F 0 "US_PIN4" V 6272 7580 50  0000 L CNN
F 1 "Conn_01x02" V 6363 7580 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6400 7500 50  0001 C CNN
F 3 "~" H 6400 7500 50  0001 C CNN
	1    6400 7500
	0    1    1    0   
$EndComp
Text GLabel 5850 7300 1    50   Input ~ 0
US2_IN
Text GLabel 5950 7300 1    50   Input ~ 0
US2_OUT
Text GLabel 4950 7300 1    50   Input ~ 0
US1P_IN
Text GLabel 5050 7300 1    50   Input ~ 0
US1P_OUT
Text GLabel 6300 7300 1    50   Input ~ 0
US2P_IN
Text GLabel 5950 2000 3    50   Input ~ 0
USB++
Text GLabel 5850 2000 3    50   Input ~ 0
USB--
$Comp
L Connector_Generic:Conn_01x02 USB_PIN2
U 1 1 5D5E3F3D
P 4400 1050
F 0 "USB_PIN2" H 4318 725 50  0000 C CNN
F 1 "Conn_01x02" H 4318 816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4400 1050 50  0001 C CNN
F 3 "~" H 4400 1050 50  0001 C CNN
	1    4400 1050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 USB_PIN1
U 1 1 5D5E5D48
P 4400 800
F 0 "USB_PIN1" H 4318 475 50  0000 C CNN
F 1 "Conn_01x02" H 4318 566 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4400 800 50  0001 C CNN
F 3 "~" H 4400 800 50  0001 C CNN
	1    4400 800 
	-1   0    0    1   
$EndComp
Text GLabel 4600 1050 2    50   Input ~ 0
USB--
Text GLabel 4600 950  2    50   Input ~ 0
USB++
Text GLabel 4600 800  2    50   Input ~ 0
USB-
Text GLabel 4600 700  2    50   Input ~ 0
USB+
Wire Wire Line
	8600 3650 8650 3650
Wire Wire Line
	8500 3650 8450 3650
$Comp
L power:+5V #PWR0119
U 1 1 5D6A3D4D
P 1950 4300
F 0 "#PWR0119" H 1950 4150 50  0001 C CNN
F 1 "+5V" V 1965 4428 50  0000 L CNN
F 2 "" H 1950 4300 50  0001 C CNN
F 3 "" H 1950 4300 50  0001 C CNN
	1    1950 4300
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0120
U 1 1 5D6A4136
P 1950 4400
F 0 "#PWR0120" H 1950 4250 50  0001 C CNN
F 1 "+3V3" V 1965 4528 50  0000 L CNN
F 2 "" H 1950 4400 50  0001 C CNN
F 3 "" H 1950 4400 50  0001 C CNN
	1    1950 4400
	0    1    1    0   
$EndComp
Text GLabel 1350 4300 2    50   Input ~ 0
5V
Text GLabel 6400 7300 1    50   Input ~ 0
US2P_OUT
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5D389320
P 5650 6500
F 0 "J5" V 5497 6648 50  0000 L CNN
F 1 "Conn_01x04_Female" V 5588 6648 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5650 6500 50  0001 C CNN
F 3 "~" H 5650 6500 50  0001 C CNN
	1    5650 6500
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5D3893C8
P 5650 5950
F 0 "J4" V 5497 6098 50  0000 L CNN
F 1 "Conn_01x04_Female" V 5588 6098 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5650 5950 50  0001 C CNN
F 3 "~" H 5650 5950 50  0001 C CNN
	1    5650 5950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 5D38A84D
P 6000 5550
F 0 "#PWR0138" H 6000 5300 50  0001 C CNN
F 1 "GND" H 6005 5377 50  0000 C CNN
F 2 "" H 6000 5550 50  0001 C CNN
F 3 "" H 6000 5550 50  0001 C CNN
	1    6000 5550
	-1   0    0    1   
$EndComp
Text GLabel 5650 5750 1    50   Input ~ 0
US1_OUT
Text GLabel 5550 6300 1    50   Input ~ 0
US2_IN
Text GLabel 5650 6300 1    50   Input ~ 0
US2_OUT
$Comp
L power:+3V3 #PWR0135
U 1 1 5D3E8632
P 5200 5550
F 0 "#PWR0135" H 5200 5400 50  0001 C CNN
F 1 "+3V3" H 5215 5723 50  0000 C CNN
F 2 "" H 5200 5550 50  0001 C CNN
F 3 "" H 5200 5550 50  0001 C CNN
	1    5200 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6300 6000 6300
Wire Wire Line
	6000 6300 6000 5750
Wire Wire Line
	5750 5750 6000 5750
Connection ~ 6000 5750
Wire Wire Line
	6000 5750 6000 5550
Wire Wire Line
	5450 6300 5200 6300
Wire Wire Line
	5200 5550 5200 5750
Wire Wire Line
	5450 5750 5200 5750
Connection ~ 5200 5750
Wire Wire Line
	5200 5750 5200 6300
Text GLabel 5550 5750 1    50   Input ~ 0
US1_IN
$Comp
L power:+3V3 #PWR0146
U 1 1 5D5D6A9A
P 4000 5850
F 0 "#PWR0146" H 4000 5700 50  0001 C CNN
F 1 "+3V3" H 4015 6023 50  0000 C CNN
F 2 "" H 4000 5850 50  0001 C CNN
F 3 "" H 4000 5850 50  0001 C CNN
	1    4000 5850
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 BOOT_PIN2
U 1 1 5D78F83D
P 3050 6800
F 0 "BOOT_PIN2" V 2922 6880 50  0000 L CNN
F 1 "Conn_01x02" V 3013 6880 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3050 6800 50  0001 C CNN
F 3 "~" H 3050 6800 50  0001 C CNN
	1    3050 6800
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 BOOT_PIN1
U 1 1 5D78FA5A
P 2800 6800
F 0 "BOOT_PIN1" H 2880 6792 50  0000 L CNN
F 1 "Conn_01x02" H 2880 6701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2800 6800 50  0001 C CNN
F 3 "~" H 2800 6800 50  0001 C CNN
	1    2800 6800
	0    1    1    0   
$EndComp
Text GLabel 2700 6600 1    50   Input ~ 0
BOOT1
Text GLabel 2800 6600 1    50   Input ~ 0
BOOT0
Text GLabel 2950 6600 1    50   Input ~ 0
BOOT0_B
Text GLabel 3050 6600 1    50   Input ~ 0
BOOT1_B
$Comp
L Connector_Generic:Conn_01x02 PRGRM_PIN1
U 1 1 5D83CEEC
P 1700 5050
F 0 "PRGRM_PIN1" H 1780 5042 50  0000 L CNN
F 1 "Conn_01x02" H 1780 4951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1700 5050 50  0001 C CNN
F 3 "~" H 1700 5050 50  0001 C CNN
	1    1700 5050
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 PRGRM_PIN2
U 1 1 5D83D489
P 1950 5050
F 0 "PRGRM_PIN2" H 2030 5042 50  0000 L CNN
F 1 "Conn_01x02" H 2030 4951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1950 5050 50  0001 C CNN
F 3 "~" H 1950 5050 50  0001 C CNN
	1    1950 5050
	0    1    1    0   
$EndComp
Text GLabel 1600 4850 1    50   Input ~ 0
DIO
Text GLabel 1700 4850 1    50   Input ~ 0
CLK
Text GLabel 1850 4850 1    50   Input ~ 0
DIO_B
Text GLabel 1950 4850 1    50   Input ~ 0
CLK_B
Text GLabel 9100 1000 1    50   Input ~ 0
5V
Wire Wire Line
	6950 1000 7250 1000
Text GLabel 7100 1000 1    50   Input ~ 0
5V
Wire Wire Line
	7950 1000 8250 1000
Text GLabel 8100 1000 1    50   Input ~ 0
5V
Wire Wire Line
	8950 1000 9250 1000
Wire Wire Line
	9950 1000 10250 1000
Text GLabel 10100 1000 1    50   Input ~ 0
5V
Text GLabel 1350 4400 2    50   Input ~ 0
3V3
Text GLabel 9400 2950 3    50   Input ~ 0
3V3
Text GLabel 10600 3000 3    50   Input ~ 0
3V3
Text GLabel 4750 1500 1    50   Input ~ 0
3V3
Text GLabel 3650 1800 1    50   Input ~ 0
3V3
Text GLabel 3450 1850 1    50   Input ~ 0
3V3
Text GLabel 1750 6400 2    50   Input ~ 0
3V3
$Comp
L power:+5V #PWR0111
U 1 1 5DA077A3
P 8450 3650
F 0 "#PWR0111" H 8450 3500 50  0001 C CNN
F 1 "+5V" V 8465 3778 50  0000 L CNN
F 2 "" H 8450 3650 50  0001 C CNN
F 3 "" H 8450 3650 50  0001 C CNN
	1    8450 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+7.5V #PWR0112
U 1 1 5DA077B7
P 8650 3650
F 0 "#PWR0112" H 8650 3500 50  0001 C CNN
F 1 "+7.5V" V 8650 3900 50  0000 C CNN
F 2 "" H 8650 3650 50  0001 C CNN
F 3 "" H 8650 3650 50  0001 C CNN
	1    8650 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 V_PIN1
U 1 1 5D3D4398
P 1150 4400
F 0 "V_PIN1" H 1230 4392 50  0000 L CNN
F 1 "Conn_01x02" H 1230 4301 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 1150 4400 50  0001 C CNN
F 3 "~" H 1150 4400 50  0001 C CNN
	1    1150 4400
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 V_PIN2
U 1 1 5D3D568A
P 1750 4400
F 0 "V_PIN2" H 1830 4392 50  0000 L CNN
F 1 "Conn_01x02" H 1830 4301 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" H 1750 4400 50  0001 C CNN
F 3 "~" H 1750 4400 50  0001 C CNN
	1    1750 4400
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 M_PIN4
U 1 1 5D4500F7
P 6850 4900
F 0 "M_PIN4" V 6722 5080 50  0000 L CNN
F 1 "Conn_01x03" V 6813 5080 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6850 4900 50  0001 C CNN
F 3 "~" H 6850 4900 50  0001 C CNN
	1    6850 4900
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 M_PIN2
U 1 1 5D4543CC
P 5850 4900
F 0 "M_PIN2" V 5722 5080 50  0000 L CNN
F 1 "Conn_01x03" V 5813 5080 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5850 4900 50  0001 C CNN
F 3 "~" H 5850 4900 50  0001 C CNN
	1    5850 4900
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 M_PIN3
U 1 1 5D45552D
P 6850 4200
F 0 "M_PIN3" V 6722 4380 50  0000 L CNN
F 1 "Conn_01x03" V 6813 4380 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6850 4200 50  0001 C CNN
F 3 "~" H 6850 4200 50  0001 C CNN
	1    6850 4200
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 M_PIN1
U 1 1 5D455C31
P 5850 4200
F 0 "M_PIN1" V 5722 4380 50  0000 L CNN
F 1 "Conn_01x03" V 5813 4380 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5850 4200 50  0001 C CNN
F 3 "~" H 5850 4200 50  0001 C CNN
	1    5850 4200
	0    1    1    0   
$EndComp
Text GLabel 5750 4700 1    50   Input ~ 0
M1IN2
Text GLabel 5850 4700 1    50   Input ~ 0
M1IN1
Text GLabel 5950 4700 1    50   Input ~ 0
EnA
Text GLabel 6750 4700 1    50   Input ~ 0
M2IN2
Text GLabel 6850 4700 1    50   Input ~ 0
M2IN1
Text GLabel 6950 4700 1    50   Input ~ 0
EnB
Text GLabel 5950 4000 1    50   Input ~ 0
EnA_B
Text GLabel 6950 4000 1    50   Input ~ 0
EnB_B
Text GLabel 6750 4000 1    50   Input ~ 0
M2IN2_B
Text GLabel 6850 4000 1    50   Input ~ 0
M2IN1_B
Text GLabel 5850 4000 1    50   Input ~ 0
M1IN1_B
Text GLabel 5750 4000 1    50   Input ~ 0
M1IN2_B
$Comp
L Simulation_SPICE:DIODE D10
U 1 1 5D3C17DD
P 900 1300
F 0 "D10" H 900 1517 50  0000 C CNN
F 1 "DIODE" H 900 1426 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_AnodeUp" H 900 1300 50  0001 C CNN
F 3 "~" H 900 1300 50  0001 C CNN
F 4 "Y" H 900 1300 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 900 1300 50  0001 L CNN "Spice_Primitive"
	1    900  1300
	1    0    0    -1  
$EndComp
Connection ~ 1050 1300
Wire Wire Line
	650  1300 750  1300
$EndSCHEMATC
