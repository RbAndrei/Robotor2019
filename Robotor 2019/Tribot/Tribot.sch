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
L MCU_ST_STM32F1:STM32F103C8Tx U?
U 1 1 5D35AE48
P 3650 3650
F 0 "U?" H 3600 2061 50  0000 C CNN
F 1 "STM32F103C8Tx" H 3600 1970 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 3050 2250 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 3650 3650 50  0001 C CNN
	1    3650 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5D35B64E
P 950 800
F 0 "J?" V 1012 944 50  0000 L CNN
F 1 "Conn_01x03_Male" V 1103 944 50  0000 L CNN
F 2 "" H 950 800 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5D3695D7
P 1550 1950
F 0 "#PWR?" H 1550 1700 50  0001 C CNN
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
L Device:CP C8
U 1 1 5D36AC75
P 1150 1800
F 0 "C8" H 1268 1846 50  0000 L CNN
F 1 "10uF" H 1268 1755 50  0000 L CNN
F 2 "" H 1188 1650 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5D36D140
P 850 1000
F 0 "#PWR?" H 850 750 50  0001 C CNN
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
F 2 "" H 4188 1650 50  0001 C CNN
F 3 "~" H 4150 1800 50  0001 C CNN
	1    4150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1650 4150 1650
Wire Wire Line
	3850 1650 3850 2150
$Comp
L power:GND #PWR?
U 1 1 5D3719E4
P 4150 1950
F 0 "#PWR?" H 4150 1700 50  0001 C CNN
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
F 2 "" V 4430 1650 50  0001 C CNN
F 3 "~" H 4500 1650 50  0001 C CNN
	1    4500 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 1650 4350 1650
Connection ~ 4150 1650
$Comp
L Device:CP C3
U 1 1 5D372E37
P 4750 1800
F 0 "C3" H 4868 1846 50  0000 L CNN
F 1 "220uF" H 4868 1755 50  0000 L CNN
F 2 "" H 4788 1650 50  0001 C CNN
F 3 "~" H 4750 1800 50  0001 C CNN
	1    4750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1650 4750 1650
$Comp
L power:GND #PWR?
U 1 1 5D37366E
P 4750 1950
F 0 "#PWR?" H 4750 1700 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5D374029
P 4000 5150
F 0 "#PWR?" H 4000 4900 50  0001 C CNN
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
BOOT0
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
L power:GND #PWR?
U 1 1 5D375FB3
P 1800 6150
F 0 "#PWR?" H 1800 5900 50  0001 C CNN
F 1 "GND" V 1805 6022 50  0000 R CNN
F 2 "" H 1800 6150 50  0001 C CNN
F 3 "" H 1800 6150 50  0001 C CNN
	1    1800 6150
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5D376B3F
P 1800 5850
F 0 "SW1" H 1800 6135 50  0000 C CNN
F 1 "SW_Push" H 1800 6044 50  0000 C CNN
F 2 "" H 1800 6050 50  0001 C CNN
F 3 "~" H 1800 6050 50  0001 C CNN
	1    1800 5850
	1    0    0    -1  
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
F 2 "" V 1580 6150 50  0001 C CNN
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
F 2 "" H 1638 6500 50  0001 C CNN
F 3 "~" H 1600 6650 50  0001 C CNN
	1    1600 6650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D37C90B
P 1750 6650
F 0 "#PWR?" H 1750 6400 50  0001 C CNN
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
F 1 "Crystal" V 1745 7231 50  0000 L CNN
F 2 "" H 1700 7100 50  0001 C CNN
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
F 2 "" H 2238 7150 50  0001 C CNN
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
F 2 "" H 2238 6750 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5D385FC8
P 2250 7100
F 0 "#PWR?" H 2250 6850 50  0001 C CNN
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
F 1 "Crystal" V 3895 7231 50  0000 L CNN
F 2 "" H 3850 7100 50  0001 C CNN
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
F 2 "" H 4388 6750 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5D38AF55
P 4400 7100
F 0 "#PWR?" H 4400 6850 50  0001 C CNN
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
Wire Wire Line
	2950 3650 2650 3650
$Comp
L Device:R R8
U 1 1 5D3911A3
P 2500 3650
F 0 "R8" V 2293 3650 50  0000 C CNN
F 1 "10K" V 2384 3650 50  0000 C CNN
F 2 "" V 2430 3650 50  0001 C CNN
F 3 "~" H 2500 3650 50  0001 C CNN
	1    2500 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D391697
P 2350 3650
F 0 "#PWR?" H 2350 3400 50  0001 C CNN
F 1 "GND" V 2355 3522 50  0000 R CNN
F 2 "" H 2350 3650 50  0001 C CNN
F 3 "" H 2350 3650 50  0001 C CNN
	1    2350 3650
	0    1    1    0   
$EndComp
$Comp
L Sensor_Proximity:ITR8307 U?
U 1 1 5D393C47
P 7250 1750
F 0 "U?" H 7250 2067 50  0000 C CNN
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
L Device:R R?
U 1 1 5D399D45
P 6950 1150
F 0 "R?" H 7020 1196 50  0000 L CNN
F 1 "R" H 7020 1105 50  0000 L CNN
F 2 "" V 6880 1150 50  0001 C CNN
F 3 "~" H 6950 1150 50  0001 C CNN
	1    6950 1150
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5D39A4A3
P 7050 1000
F 0 "#PWR?" H 7050 1100 50  0001 C CNN
F 1 "-5V" H 7065 1173 50  0000 C CNN
F 2 "" H 7050 1000 50  0001 C CNN
F 3 "" H 7050 1000 50  0001 C CNN
	1    7050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1000 7050 1000
Connection ~ 7050 1000
Wire Wire Line
	7050 1000 7250 1000
$Comp
L Device:C C?
U 1 1 5D39C47F
P 7250 1150
F 0 "C?" H 7365 1196 50  0000 L CNN
F 1 "C" H 7365 1105 50  0000 L CNN
F 2 "" H 7288 1000 50  0001 C CNN
F 3 "~" H 7250 1150 50  0001 C CNN
	1    7250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1300 7550 1300
Wire Wire Line
	7550 1300 7550 1650
$Comp
L Device:R R?
U 1 1 5D39EAEB
P 7550 1150
F 0 "R?" H 7620 1196 50  0000 L CNN
F 1 "R" H 7620 1105 50  0000 L CNN
F 2 "" V 7480 1150 50  0001 C CNN
F 3 "~" H 7550 1150 50  0001 C CNN
	1    7550 1150
	1    0    0    -1  
$EndComp
Connection ~ 7550 1300
$Comp
L Sensor_Proximity:ITR8307 U?
U 1 1 5D3A0E68
P 8250 1750
F 0 "U?" H 8250 2067 50  0000 C CNN
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
L Device:R R?
U 1 1 5D3A0E72
P 7950 1150
F 0 "R?" H 8020 1196 50  0000 L CNN
F 1 "R" H 8020 1105 50  0000 L CNN
F 2 "" V 7880 1150 50  0001 C CNN
F 3 "~" H 7950 1150 50  0001 C CNN
	1    7950 1150
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5D3A0E78
P 8050 1000
F 0 "#PWR?" H 8050 1100 50  0001 C CNN
F 1 "-5V" H 8065 1173 50  0000 C CNN
F 2 "" H 8050 1000 50  0001 C CNN
F 3 "" H 8050 1000 50  0001 C CNN
	1    8050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1000 8050 1000
Connection ~ 8050 1000
Wire Wire Line
	8050 1000 8250 1000
$Comp
L Device:C C?
U 1 1 5D3A0E81
P 8250 1150
F 0 "C?" H 8365 1196 50  0000 L CNN
F 1 "C" H 8365 1105 50  0000 L CNN
F 2 "" H 8288 1000 50  0001 C CNN
F 3 "~" H 8250 1150 50  0001 C CNN
	1    8250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1300 8550 1300
Wire Wire Line
	8550 1300 8550 1650
$Comp
L Device:R R?
U 1 1 5D3A0E89
P 8550 1150
F 0 "R?" H 8620 1196 50  0000 L CNN
F 1 "R" H 8620 1105 50  0000 L CNN
F 2 "" V 8480 1150 50  0001 C CNN
F 3 "~" H 8550 1150 50  0001 C CNN
	1    8550 1150
	1    0    0    -1  
$EndComp
Connection ~ 8550 1300
$Comp
L Sensor_Proximity:ITR8307 U?
U 1 1 5D3A2A61
P 9250 1750
F 0 "U?" H 9250 2067 50  0000 C CNN
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
L Device:R R?
U 1 1 5D3A2A6B
P 8950 1150
F 0 "R?" H 9020 1196 50  0000 L CNN
F 1 "R" H 9020 1105 50  0000 L CNN
F 2 "" V 8880 1150 50  0001 C CNN
F 3 "~" H 8950 1150 50  0001 C CNN
	1    8950 1150
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5D3A2A71
P 9050 1000
F 0 "#PWR?" H 9050 1100 50  0001 C CNN
F 1 "-5V" H 9065 1173 50  0000 C CNN
F 2 "" H 9050 1000 50  0001 C CNN
F 3 "" H 9050 1000 50  0001 C CNN
	1    9050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1000 9050 1000
Connection ~ 9050 1000
Wire Wire Line
	9050 1000 9250 1000
$Comp
L Device:C C?
U 1 1 5D3A2A7A
P 9250 1150
F 0 "C?" H 9365 1196 50  0000 L CNN
F 1 "C" H 9365 1105 50  0000 L CNN
F 2 "" H 9288 1000 50  0001 C CNN
F 3 "~" H 9250 1150 50  0001 C CNN
	1    9250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1300 9550 1300
Wire Wire Line
	9550 1300 9550 1650
$Comp
L Device:R R?
U 1 1 5D3A2A82
P 9550 1150
F 0 "R?" H 9620 1196 50  0000 L CNN
F 1 "R" H 9620 1105 50  0000 L CNN
F 2 "" V 9480 1150 50  0001 C CNN
F 3 "~" H 9550 1150 50  0001 C CNN
	1    9550 1150
	1    0    0    -1  
$EndComp
Connection ~ 9550 1300
$Comp
L Sensor_Proximity:ITR8307 U?
U 1 1 5D3A6550
P 10250 1750
F 0 "U?" H 10250 2067 50  0000 C CNN
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
L Device:R R?
U 1 1 5D3A655A
P 9950 1150
F 0 "R?" H 10020 1196 50  0000 L CNN
F 1 "R" H 10020 1105 50  0000 L CNN
F 2 "" V 9880 1150 50  0001 C CNN
F 3 "~" H 9950 1150 50  0001 C CNN
	1    9950 1150
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5D3A6560
P 10050 1000
F 0 "#PWR?" H 10050 1100 50  0001 C CNN
F 1 "-5V" H 10065 1173 50  0000 C CNN
F 2 "" H 10050 1000 50  0001 C CNN
F 3 "" H 10050 1000 50  0001 C CNN
	1    10050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1000 10050 1000
Connection ~ 10050 1000
Wire Wire Line
	10050 1000 10250 1000
$Comp
L Device:C C?
U 1 1 5D3A6569
P 10250 1150
F 0 "C?" H 10365 1196 50  0000 L CNN
F 1 "C" H 10365 1105 50  0000 L CNN
F 2 "" H 10288 1000 50  0001 C CNN
F 3 "~" H 10250 1150 50  0001 C CNN
	1    10250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1300 10550 1300
Wire Wire Line
	10550 1300 10550 1650
$Comp
L Device:R R?
U 1 1 5D3A6571
P 10550 1150
F 0 "R?" H 10620 1196 50  0000 L CNN
F 1 "R" H 10620 1105 50  0000 L CNN
F 2 "" V 10480 1150 50  0001 C CNN
F 3 "~" H 10550 1150 50  0001 C CNN
	1    10550 1150
	1    0    0    -1  
$EndComp
Connection ~ 10550 1300
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
L power:GND #PWR?
U 1 1 5D3AB3EB
P 8750 2100
F 0 "#PWR?" H 8750 1850 50  0001 C CNN
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
L power:+7.5V #PWR?
U 1 1 5D363B94
P 800 1600
F 0 "#PWR?" H 800 1450 50  0001 C CNN
F 1 "+7.5V" H 815 1773 50  0000 C CNN
F 2 "" H 800 1600 50  0001 C CNN
F 3 "" H 800 1600 50  0001 C CNN
	1    800  1600
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D364752
P 2150 1300
F 0 "#PWR?" H 2150 1150 50  0001 C CNN
F 1 "+3V3" V 2165 1428 50  0000 L CNN
F 2 "" H 2150 1300 50  0001 C CNN
F 3 "" H 2150 1300 50  0001 C CNN
	1    2150 1300
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D3677E8
P 3450 1850
F 0 "#PWR?" H 3450 1700 50  0001 C CNN
F 1 "+3V3" H 3465 2023 50  0000 C CNN
F 2 "" H 3450 1850 50  0001 C CNN
F 3 "" H 3450 1850 50  0001 C CNN
	1    3450 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D369094
P 3650 1800
F 0 "#PWR?" H 3650 1650 50  0001 C CNN
F 1 "+3V3" H 3665 1973 50  0000 C CNN
F 2 "" H 3650 1800 50  0001 C CNN
F 3 "" H 3650 1800 50  0001 C CNN
	1    3650 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D36B886
P 4750 1500
F 0 "#PWR?" H 4750 1350 50  0001 C CNN
F 1 "+3V3" H 4765 1673 50  0000 C CNN
F 2 "" H 4750 1500 50  0001 C CNN
F 3 "" H 4750 1500 50  0001 C CNN
	1    4750 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D36E140
P 2000 5850
F 0 "#PWR?" H 2000 5700 50  0001 C CNN
F 1 "+3V3" H 2015 6023 50  0000 C CNN
F 2 "" H 2000 5850 50  0001 C CNN
F 3 "" H 2000 5850 50  0001 C CNN
	1    2000 5850
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D370861
P 1750 6400
F 0 "#PWR?" H 1750 6250 50  0001 C CNN
F 1 "+3V3" H 1765 6573 50  0000 C CNN
F 2 "" H 1750 6400 50  0001 C CNN
F 3 "" H 1750 6400 50  0001 C CNN
	1    1750 6400
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5D373492
P 4350 7300
F 0 "C7" H 4465 7346 50  0000 L CNN
F 1 "22p" H 4465 7255 50  0000 L CNN
F 2 "" H 4388 7150 50  0001 C CNN
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
F 2 "" V 1530 6400 50  0001 C CNN
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
F 2 "" V 3380 2000 50  0001 C CNN
F 3 "~" H 3450 2000 50  0001 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J?
U 1 1 5D38F69E
P 6350 3150
F 0 "J?" H 6120 3047 50  0000 R CNN
F 1 "USB_B_Mini" H 6120 3138 50  0000 R CNN
F 2 "" H 6500 3100 50  0001 C CNN
F 3 "~" H 6500 3100 50  0001 C CNN
	1    6350 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D390EB8
P 6350 2550
F 0 "#PWR?" H 6350 2300 50  0001 C CNN
F 1 "GND" H 6355 2377 50  0000 C CNN
F 2 "" H 6350 2550 50  0001 C CNN
F 3 "" H 6350 2550 50  0001 C CNN
	1    6350 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 2750 6450 2650
Wire Wire Line
	6450 2650 6350 2650
Wire Wire Line
	6350 2650 6350 2550
Wire Wire Line
	6350 2650 6350 2750
Connection ~ 6350 2650
$Comp
L Device:R R11
U 1 1 5D397BF9
P 6050 2800
F 0 "R11" H 6120 2846 50  0000 L CNN
F 1 "100k" H 6120 2755 50  0000 L CNN
F 2 "" V 5980 2800 50  0001 C CNN
F 3 "~" H 6050 2800 50  0001 C CNN
	1    6050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2650 6350 2650
Wire Wire Line
	6050 3150 5900 3150
$Comp
L Device:R R10
U 1 1 5D3A9D99
P 5750 3150
F 0 "R10" V 5650 3150 50  0000 C CNN
F 1 "1R" V 5550 3150 50  0000 C CNN
F 2 "" V 5680 3150 50  0001 C CNN
F 3 "~" H 5750 3150 50  0001 C CNN
	1    5750 3150
	0    -1   -1   0   
$EndComp
Text GLabel 5500 3150 0    50   Input ~ 0
PA12
Text GLabel 4250 4650 2    50   Input ~ 0
PA12
Wire Wire Line
	5600 3150 5500 3150
Wire Wire Line
	5900 3150 5900 3400
$Comp
L Device:R R3
U 1 1 5D3B47B0
P 5900 3550
F 0 "R3" H 5700 3600 50  0000 L CNN
F 1 "1K5" H 5700 3500 50  0000 L CNN
F 2 "" V 5830 3550 50  0001 C CNN
F 3 "~" H 5900 3550 50  0001 C CNN
	1    5900 3550
	1    0    0    -1  
$EndComp
Connection ~ 5900 3150
Wire Wire Line
	6050 3050 5900 3050
$Comp
L Device:R R9
U 1 1 5D3BDD3D
P 5750 3050
F 0 "R9" V 5550 3050 50  0000 C CNN
F 1 "1R" V 5650 3050 50  0000 C CNN
F 2 "" V 5680 3050 50  0001 C CNN
F 3 "~" H 5750 3050 50  0001 C CNN
	1    5750 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 3050 5500 3050
Text GLabel 5500 3050 0    50   Input ~ 0
PA11
Text GLabel 4250 4550 2    50   Input ~ 0
PA11
$Comp
L power:+3V3 #PWR?
U 1 1 5D3D809D
P 5900 3700
F 0 "#PWR?" H 5900 3550 50  0001 C CNN
F 1 "+3V3" H 5915 3873 50  0000 C CNN
F 2 "" H 5900 3700 50  0001 C CNN
F 3 "" H 5900 3700 50  0001 C CNN
	1    5900 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 3350 6050 3400
Text GLabel 6050 3400 3    50   Input ~ 0
EXT_VCC
Text GLabel 5300 4250 1    50   Input ~ 0
EXT_VCC
$Comp
L Device:C C9
U 1 1 5D3DD5BE
P 2000 1800
F 0 "C9" H 2115 1846 50  0000 L CNN
F 1 "100n" H 2115 1755 50  0000 L CNN
F 2 "" H 2038 1650 50  0001 C CNN
F 3 "~" H 2000 1800 50  0001 C CNN
	1    2000 1800
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-5.0 U2
U 1 1 5D3DDB1E
P 5750 4350
F 0 "U2" H 5750 4592 50  0000 C CNN
F 1 "AMS1117-3V3" H 5750 4501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5750 4550 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 5850 4100 50  0001 C CNN
	1    5750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4250 5300 4350
Wire Wire Line
	5300 4350 5450 4350
$Comp
L power:+3V3 #PWR?
U 1 1 5D3E7157
P 6200 4250
F 0 "#PWR?" H 6200 4100 50  0001 C CNN
F 1 "+3V3" H 6215 4423 50  0000 C CNN
F 2 "" H 6200 4250 50  0001 C CNN
F 3 "" H 6200 4250 50  0001 C CNN
	1    6200 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D3EB27B
P 5750 4850
F 0 "#PWR?" H 5750 4600 50  0001 C CNN
F 1 "GND" H 5755 4677 50  0000 C CNN
F 2 "" H 5750 4850 50  0001 C CNN
F 3 "" H 5750 4850 50  0001 C CNN
	1    5750 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5D3EBA0D
P 5300 4600
F 0 "C?" H 5418 4646 50  0000 L CNN
F 1 "1uF" H 5418 4555 50  0000 L CNN
F 2 "" H 5338 4450 50  0001 C CNN
F 3 "~" H 5300 4600 50  0001 C CNN
	1    5300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4350 5300 4450
Connection ~ 5300 4350
Wire Wire Line
	5300 4750 5750 4750
Wire Wire Line
	5750 4650 5750 4750
Connection ~ 5750 4750
Wire Wire Line
	5750 4750 5750 4850
$Comp
L Device:C C?
U 1 1 5D3F3EF3
P 6200 4600
F 0 "C?" H 6315 4646 50  0000 L CNN
F 1 "100n" H 6315 4555 50  0000 L CNN
F 2 "" H 6238 4450 50  0001 C CNN
F 3 "~" H 6200 4600 50  0001 C CNN
	1    6200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4350 6200 4350
Wire Wire Line
	6200 4350 6200 4250
Connection ~ 6200 4350
Wire Wire Line
	6200 4750 5750 4750
Wire Wire Line
	6200 4350 6200 4450
$Comp
L Driver_Motor:L298P U?
U 1 1 5D412420
P 7900 4650
F 0 "U?" H 7900 5531 50  0000 C CNN
F 1 "L298P" H 7900 5440 50  0000 C CNN
F 2 "" H 8050 4900 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000240.pdf" H 8050 4900 50  0001 C CNN
	1    7900 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D415B9E
P 7950 5550
F 0 "#PWR?" H 7950 5300 50  0001 C CNN
F 1 "GND" H 7955 5377 50  0000 C CNN
F 2 "" H 7950 5550 50  0001 C CNN
F 3 "" H 7950 5550 50  0001 C CNN
	1    7950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5350 7800 5450
Wire Wire Line
	7800 5450 7900 5450
Wire Wire Line
	7950 5450 7950 5550
Wire Wire Line
	7900 5350 7900 5450
Connection ~ 7900 5450
Wire Wire Line
	7900 5450 7950 5450
Wire Wire Line
	8000 5350 8000 5450
Wire Wire Line
	8000 5450 7950 5450
Connection ~ 7950 5450
Wire Wire Line
	8100 5350 8100 5450
Wire Wire Line
	8100 5450 8000 5450
Connection ~ 8000 5450
$Comp
L Regulator_Linear:AMS1117-5.0 U3
U 1 1 5D4403DC
P 1650 4350
F 0 "U3" H 1650 4592 50  0000 C CNN
F 1 "AMS1117-5.0" H 1650 4501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1650 4550 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1750 4100 50  0001 C CNN
	1    1650 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D4403E8
P 1650 5000
F 0 "#PWR?" H 1650 4750 50  0001 C CNN
F 1 "GND" H 1655 4827 50  0000 C CNN
F 2 "" H 1650 5000 50  0001 C CNN
F 3 "" H 1650 5000 50  0001 C CNN
	1    1650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4650 1650 5000
Wire Wire Line
	1950 4350 2100 4350
Wire Wire Line
	1250 4350 1350 4350
Wire Wire Line
	2100 4350 2100 4700
Connection ~ 2100 4350
Wire Wire Line
	2100 4350 2250 4350
$Comp
L Device:CP C?
U 1 1 5D4403FA
P 1250 4850
F 0 "C?" H 1368 4896 50  0000 L CNN
F 1 "10uF" H 1368 4805 50  0000 L CNN
F 2 "" H 1288 4700 50  0001 C CNN
F 3 "~" H 1250 4850 50  0001 C CNN
	1    1250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5000 1650 5000
Connection ~ 1650 5000
Wire Wire Line
	1250 5000 1650 5000
$Comp
L Device:C C?
U 1 1 5D440429
P 2100 4850
F 0 "C?" H 2215 4896 50  0000 L CNN
F 1 "100n" H 2215 4805 50  0000 L CNN
F 2 "" H 2138 4700 50  0001 C CNN
F 3 "~" H 2100 4850 50  0001 C CNN
	1    2100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4550 1250 4700
Wire Wire Line
	1250 4350 1250 4550
Connection ~ 1250 4550
Wire Wire Line
	900  4550 1250 4550
$Comp
L power:+7.5V #PWR?
U 1 1 5D440415
P 900 4650
F 0 "#PWR?" H 900 4500 50  0001 C CNN
F 1 "+7.5V" H 915 4823 50  0000 C CNN
F 2 "" H 900 4650 50  0001 C CNN
F 3 "" H 900 4650 50  0001 C CNN
	1    900  4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	900  4550 900  4650
$Comp
L power:+5V #PWR?
U 1 1 5D456510
P 2250 4350
F 0 "#PWR?" H 2250 4200 50  0001 C CNN
F 1 "+5V" V 2265 4478 50  0000 L CNN
F 2 "" H 2250 4350 50  0001 C CNN
F 3 "" H 2250 4350 50  0001 C CNN
	1    2250 4350
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D45736A
P 7900 3300
F 0 "#PWR?" H 7900 3150 50  0001 C CNN
F 1 "+5V" H 7915 3473 50  0000 C CNN
F 2 "" H 7900 3300 50  0001 C CNN
F 3 "" H 7900 3300 50  0001 C CNN
	1    7900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3950 7900 3450
Connection ~ 7900 3450
Wire Wire Line
	7900 3450 7900 3300
Wire Wire Line
	7350 3750 7550 3750
Connection ~ 7350 3750
$Comp
L power:GND #PWR?
U 1 1 5D46ACC8
P 7350 3750
F 0 "#PWR?" H 7350 3500 50  0001 C CNN
F 1 "GND" H 7355 3577 50  0000 C CNN
F 2 "" H 7350 3750 50  0001 C CNN
F 3 "" H 7350 3750 50  0001 C CNN
	1    7350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3750 7350 3750
Wire Wire Line
	7550 3450 7150 3450
Connection ~ 7550 3450
Wire Wire Line
	7900 3450 7550 3450
$Comp
L Device:CP C?
U 1 1 5D4637AD
P 7150 3600
F 0 "C?" H 7268 3646 50  0000 L CNN
F 1 "100uF" H 7268 3555 50  0000 L CNN
F 2 "" H 7188 3450 50  0001 C CNN
F 3 "~" H 7150 3600 50  0001 C CNN
	1    7150 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5D4642FD
P 7550 3600
F 0 "C?" H 7668 3646 50  0000 L CNN
F 1 "0.1uF" H 7668 3555 50  0000 L CNN
F 2 "" H 7588 3450 50  0001 C CNN
F 3 "~" H 7550 3600 50  0001 C CNN
	1    7550 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+7.5V #PWR?
U 1 1 5D4C3E0D
P 8000 3300
F 0 "#PWR?" H 8000 3150 50  0001 C CNN
F 1 "+7.5V" H 8015 3473 50  0000 C CNN
F 2 "" H 8000 3300 50  0001 C CNN
F 3 "" H 8000 3300 50  0001 C CNN
	1    8000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3300 8000 3450
Connection ~ 8000 3450
Wire Wire Line
	8000 3450 8000 3950
Wire Wire Line
	9800 3750 10000 3750
Connection ~ 9800 3750
$Comp
L power:GND #PWR?
U 1 1 5D4DA015
P 9800 3750
F 0 "#PWR?" H 9800 3500 50  0001 C CNN
F 1 "GND" H 9805 3577 50  0000 C CNN
F 2 "" H 9800 3750 50  0001 C CNN
F 3 "" H 9800 3750 50  0001 C CNN
	1    9800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3750 9800 3750
$Comp
L Device:CP C?
U 1 1 5D4DA020
P 9600 3600
F 0 "C?" H 9718 3646 50  0000 L CNN
F 1 "100uF" H 9718 3555 50  0000 L CNN
F 2 "" H 9638 3450 50  0001 C CNN
F 3 "~" H 9600 3600 50  0001 C CNN
	1    9600 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5D4DA02A
P 10000 3600
F 0 "C?" H 10118 3646 50  0000 L CNN
F 1 "0.1uF" H 10118 3555 50  0000 L CNN
F 2 "" H 10038 3450 50  0001 C CNN
F 3 "~" H 10000 3600 50  0001 C CNN
	1    10000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3450 8750 3450
Wire Wire Line
	9600 3450 10000 3450
Connection ~ 9600 3450
$Comp
L Motor:Motor_DC M1
U 1 1 5D51C9CE
P 10000 4350
F 0 "M1" H 10158 4346 50  0000 L CNN
F 1 "Motor_DC" H 10158 4255 50  0000 L CNN
F 2 "" H 10000 4260 50  0001 C CNN
F 3 "~" H 10000 4260 50  0001 C CNN
	1    10000 4350
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M2
U 1 1 5D51DBCC
P 10000 4950
F 0 "M2" H 10158 4946 50  0000 L CNN
F 1 "Motor_DC" H 10158 4855 50  0000 L CNN
F 2 "" H 10000 4860 50  0001 C CNN
F 3 "~" H 10000 4860 50  0001 C CNN
	1    10000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4850 9750 5250
Wire Wire Line
	9750 5250 10000 5250
Wire Wire Line
	9850 4550 9850 4650
Wire Wire Line
	9850 4650 10000 4650
Wire Wire Line
	9800 4450 9800 4150
Wire Wire Line
	9800 4150 10000 4150
Wire Wire Line
	7500 5350 7500 5900
Wire Wire Line
	7500 5900 7600 5900
Wire Wire Line
	9350 5900 9350 5550
Connection ~ 9350 3450
Wire Wire Line
	9350 3450 9600 3450
Wire Wire Line
	7600 5350 7600 5900
Connection ~ 7600 5900
Wire Wire Line
	7600 5900 8050 5900
Wire Wire Line
	9150 5900 9150 5550
Connection ~ 9150 5900
Wire Wire Line
	9150 5900 9350 5900
Connection ~ 9150 3450
Wire Wire Line
	9150 3450 9350 3450
Wire Wire Line
	8950 5900 8950 5550
Connection ~ 8950 5900
Wire Wire Line
	8950 5900 9150 5900
Connection ~ 8950 3450
Wire Wire Line
	8950 3450 9150 3450
Wire Wire Line
	8750 5900 8750 5550
Connection ~ 8750 5900
Wire Wire Line
	8750 5900 8950 5900
Connection ~ 8750 3450
Wire Wire Line
	8750 3450 8950 3450
Wire Wire Line
	8500 4850 9350 4850
Connection ~ 9350 4850
Wire Wire Line
	9350 4850 9350 4100
Wire Wire Line
	9350 4850 9750 4850
Wire Wire Line
	8500 4750 9150 4750
Connection ~ 9150 4750
Wire Wire Line
	9150 4750 9150 4100
Wire Wire Line
	9150 4750 10000 4750
Wire Wire Line
	8500 4550 8950 4550
Connection ~ 8950 4550
Wire Wire Line
	8950 4550 8950 4100
Wire Wire Line
	8950 4550 9850 4550
Wire Wire Line
	8500 4450 8750 4450
Connection ~ 8750 4450
Wire Wire Line
	8750 4450 8750 4100
Wire Wire Line
	8750 4450 9800 4450
Wire Wire Line
	9350 5250 9350 4850
$Comp
L Device:D D?
U 1 1 5D595511
P 9350 5400
F 0 "D?" V 9304 5479 50  0000 L CNN
F 1 "D" V 9395 5479 50  0000 L CNN
F 2 "" H 9350 5400 50  0001 C CNN
F 3 "~" H 9350 5400 50  0001 C CNN
	1    9350 5400
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5D597E60
P 9150 5400
F 0 "D?" V 9104 5479 50  0000 L CNN
F 1 "D" V 9195 5479 50  0000 L CNN
F 2 "" H 9150 5400 50  0001 C CNN
F 3 "~" H 9150 5400 50  0001 C CNN
	1    9150 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 5250 9150 4750
$Comp
L Device:D D?
U 1 1 5D59809A
P 8950 5400
F 0 "D?" V 8904 5479 50  0000 L CNN
F 1 "D" V 8995 5479 50  0000 L CNN
F 2 "" H 8950 5400 50  0001 C CNN
F 3 "~" H 8950 5400 50  0001 C CNN
	1    8950 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 5250 8950 4550
$Comp
L Device:D D?
U 1 1 5D598324
P 8750 5400
F 0 "D?" V 8704 5479 50  0000 L CNN
F 1 "D" V 8795 5479 50  0000 L CNN
F 2 "" H 8750 5400 50  0001 C CNN
F 3 "~" H 8750 5400 50  0001 C CNN
	1    8750 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 5250 8750 4450
$Comp
L Device:D D?
U 1 1 5D59863F
P 8750 3950
F 0 "D?" V 8704 4029 50  0000 L CNN
F 1 "D" V 8795 4029 50  0000 L CNN
F 2 "" H 8750 3950 50  0001 C CNN
F 3 "~" H 8750 3950 50  0001 C CNN
	1    8750 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 3800 8750 3450
$Comp
L Device:D D?
U 1 1 5D598FDD
P 8950 3950
F 0 "D?" V 8904 4029 50  0000 L CNN
F 1 "D" V 8995 4029 50  0000 L CNN
F 2 "" H 8950 3950 50  0001 C CNN
F 3 "~" H 8950 3950 50  0001 C CNN
	1    8950 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 3800 8950 3450
$Comp
L Device:D D?
U 1 1 5D599AD3
P 9150 3950
F 0 "D?" V 9104 4029 50  0000 L CNN
F 1 "D" V 9195 4029 50  0000 L CNN
F 2 "" H 9150 3950 50  0001 C CNN
F 3 "~" H 9150 3950 50  0001 C CNN
	1    9150 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 3800 9150 3450
$Comp
L Device:D D?
U 1 1 5D599CAE
P 9350 3950
F 0 "D?" V 9304 4029 50  0000 L CNN
F 1 "D" V 9395 4029 50  0000 L CNN
F 2 "" H 9350 3950 50  0001 C CNN
F 3 "~" H 9350 3950 50  0001 C CNN
	1    9350 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 3800 9350 3450
Text GLabel 4250 4750 2    50   Input ~ 0
DIO
Text GLabel 4250 4850 2    50   Input ~ 0
CLK
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5D59B1B6
P 3600 6500
F 0 "J?" V 3754 6212 50  0000 R CNN
F 1 "Conn_01x04_Male" V 3663 6212 50  0000 R CNN
F 2 "" H 3600 6500 50  0001 C CNN
F 3 "~" H 3600 6500 50  0001 C CNN
	1    3600 6500
	0    -1   -1   0   
$EndComp
Text GLabel 3600 6300 1    50   Input ~ 0
DIO
Text GLabel 3700 6300 1    50   Input ~ 0
CLK
$Comp
L power:GND #PWR?
U 1 1 5D5A77EE
P 3500 6300
F 0 "#PWR?" H 3500 6050 50  0001 C CNN
F 1 "GND" H 3505 6127 50  0000 C CNN
F 2 "" H 3500 6300 50  0001 C CNN
F 3 "" H 3500 6300 50  0001 C CNN
	1    3500 6300
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D5A8347
P 3800 6300
F 0 "#PWR?" H 3800 6150 50  0001 C CNN
F 1 "+3V3" H 3815 6473 50  0000 C CNN
F 2 "" H 3800 6300 50  0001 C CNN
F 3 "" H 3800 6300 50  0001 C CNN
	1    3800 6300
	1    0    0    -1  
$EndComp
Text GLabel 7300 4350 0    50   Input ~ 0
EnA
Text GLabel 7300 4750 0    50   Input ~ 0
EnB
Text GLabel 2950 3450 0    50   Input ~ 0
EnA
Text GLabel 2950 3550 0    50   Input ~ 0
EnB
Text GLabel 2950 3950 0    50   Input ~ 0
M1IN1
Text GLabel 2950 3850 0    50   Input ~ 0
M1IN2
Text GLabel 2950 3750 0    50   Input ~ 0
M2IN1
Text GLabel 4250 4950 2    50   Input ~ 0
M2IN2
Text GLabel 7300 4650 0    50   Input ~ 0
M2IN2
Text GLabel 7300 4550 0    50   Input ~ 0
M2IN1
Text GLabel 7300 4150 0    50   Input ~ 0
M1IN1
Text GLabel 7300 4250 0    50   Input ~ 0
M1IN2
$Comp
L power:GND #PWR?
U 1 1 5D5B8614
P 8050 5900
F 0 "#PWR?" H 8050 5650 50  0001 C CNN
F 1 "GND" H 8055 5727 50  0000 C CNN
F 2 "" H 8050 5900 50  0001 C CNN
F 3 "" H 8050 5900 50  0001 C CNN
	1    8050 5900
	1    0    0    -1  
$EndComp
Connection ~ 8050 5900
Wire Wire Line
	8050 5900 8750 5900
$EndSCHEMATC
