EESchema Schematic File Version 4
EELAYER 30 0
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
L H3LIS200DLTR:H3LIS200DLTR U1
U 1 1 5E09C6A5
P 2750 5950
F 0 "U1" H 2750 6617 50  0000 C CNN
F 1 "H3LIS200DLTR" H 2750 6526 50  0000 C CNN
F 2 "H3LIS200DLTR:PQFN50P300X300X100-16N" H 2750 5950 50  0001 L BNN
F 3 "LGA-16" H 2750 5950 50  0001 L BNN
F 4 "2" H 2750 5950 50  0001 L BNN "Field4"
F 5 "ST MICROELECTRONICS" H 2750 5950 50  0001 L BNN "Field5"
F 6 "IPC 7351B" H 2750 5950 50  0001 L BNN "Field6"
	1    2750 5950
	1    0    0    -1  
$EndComp
Entry Wire Line
	4350 5300 4450 5400
Text Label 4500 5400 0    50   ~ 0
13
Entry Wire Line
	4350 5400 4450 5500
Entry Wire Line
	4350 5500 4450 5600
Entry Wire Line
	4350 5600 4450 5700
Entry Wire Line
	4350 5700 4450 5800
Entry Wire Line
	4350 5800 4450 5900
Entry Wire Line
	4350 6000 4450 6100
Entry Wire Line
	4350 5900 4450 6000
Entry Wire Line
	4350 6100 4450 6200
Entry Wire Line
	4350 6200 4450 6300
Entry Wire Line
	4350 6300 4450 6400
Entry Wire Line
	4350 6400 4450 6500
Text Label 4500 5500 0    50   ~ 0
14
Text Label 4500 5600 0    50   ~ 0
15
Text Label 4500 5700 0    50   ~ 0
16
Text Label 4500 5800 0    50   ~ 0
17
Text Label 4500 5900 0    50   ~ 0
18
Text Label 4500 6000 0    50   ~ 0
19
Text Label 4500 6100 0    50   ~ 0
20
Text Label 4500 6200 0    50   ~ 0
21
Text Label 4500 6300 0    50   ~ 0
22
Text Label 4500 6400 0    50   ~ 0
23
Text Label 4500 6500 0    50   ~ 0
24
Entry Wire Line
	5650 5400 5750 5300
Entry Wire Line
	5650 5500 5750 5400
Entry Wire Line
	5650 5600 5750 5500
Entry Wire Line
	5650 5700 5750 5600
Entry Wire Line
	5650 5800 5750 5700
Entry Wire Line
	5650 5900 5750 5800
Entry Wire Line
	5650 6000 5750 5900
Entry Wire Line
	5650 6100 5750 6000
Entry Wire Line
	5650 6200 5750 6100
Entry Wire Line
	5650 6300 5750 6200
Entry Wire Line
	5650 6400 5750 6300
Entry Wire Line
	5650 6500 5750 6400
Text Label 5450 5400 0    50   ~ 0
12
Text Label 5450 5500 0    50   ~ 0
11
Text Label 5450 5600 0    50   ~ 0
10
Text Label 5450 5700 0    50   ~ 0
9
Text Label 5450 5800 0    50   ~ 0
8
Text Label 5450 5900 0    50   ~ 0
7
Text Label 5450 6000 0    50   ~ 0
6
Text Label 5450 6100 0    50   ~ 0
5
Text Label 5450 6200 0    50   ~ 0
4
Text Label 5450 6300 0    50   ~ 0
3
Text Label 5450 6400 0    50   ~ 0
2
Text Label 5450 6500 0    50   ~ 0
1
Text GLabel 1150 5950 0    50   Input ~ 0
SDA
Text GLabel 1150 5850 0    50   Input ~ 0
SCL
$Comp
L power:GND #PWR0102
U 1 1 5E0D1684
P 3450 6400
F 0 "#PWR0102" H 3450 6150 50  0001 C CNN
F 1 "GND" H 3455 6227 50  0000 C CNN
F 2 "" H 3450 6400 50  0001 C CNN
F 3 "" H 3450 6400 50  0001 C CNN
	1    3450 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6350 3450 6400
$Comp
L power:+1V8 #PWR0103
U 1 1 5E0D2BCB
P 3500 5500
F 0 "#PWR0103" H 3500 5350 50  0001 C CNN
F 1 "+1V8" H 3515 5673 50  0000 C CNN
F 2 "" H 3500 5500 50  0001 C CNN
F 3 "" H 3500 5500 50  0001 C CNN
	1    3500 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E0FAF7F
P 9400 5950
F 0 "#PWR0106" H 9400 5700 50  0001 C CNN
F 1 "GND" H 9405 5777 50  0000 C CNN
F 2 "" H 9400 5950 50  0001 C CNN
F 3 "" H 9400 5950 50  0001 C CNN
	1    9400 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5550 3500 5550
Wire Wire Line
	3500 5550 3500 5500
Wire Wire Line
	3450 5650 3750 5650
Wire Wire Line
	3750 5650 3750 5500
$Comp
L power:+1V8 #PWR0111
U 1 1 5E1577C3
P 2000 5300
F 0 "#PWR0111" H 2000 5150 50  0001 C CNN
F 1 "+1V8" H 2015 5473 50  0000 C CNN
F 2 "" H 2000 5300 50  0001 C CNN
F 3 "" H 2000 5300 50  0001 C CNN
	1    2000 5300
	1    0    0    -1  
$EndComp
Text GLabel 3500 5950 2    50   Input ~ 0
INT1
Text GLabel 3500 6050 2    50   Input ~ 0
INT2
Wire Wire Line
	3450 5950 3500 5950
Wire Wire Line
	3450 6050 3500 6050
$Comp
L Device:R R5
U 1 1 5E18EAD4
P 2000 5550
F 0 "R5" H 1930 5504 50  0000 R CNN
F 1 "10k" H 1930 5595 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1930 5550 50  0001 C CNN
F 3 "~" H 2000 5550 50  0001 C CNN
	1    2000 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 5700 2000 5750
Wire Wire Line
	2000 5750 2050 5750
$Comp
L power:GND #PWR0110
U 1 1 5E1F9F1A
P 2000 6100
F 0 "#PWR0110" H 2000 5850 50  0001 C CNN
F 1 "GND" H 2005 5927 50  0000 C CNN
F 2 "" H 2000 6100 50  0001 C CNN
F 3 "" H 2000 6100 50  0001 C CNN
	1    2000 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6100 2000 6050
Wire Wire Line
	2000 6050 2050 6050
$Comp
L power:+1V8 #PWR0104
U 1 1 5E1FFF6C
P 9100 1200
F 0 "#PWR0104" H 9100 1050 50  0001 C CNN
F 1 "+1V8" H 9115 1373 50  0000 C CNN
F 2 "" H 9100 1200 50  0001 C CNN
F 3 "" H 9100 1200 50  0001 C CNN
	1    9100 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0112
U 1 1 5E207B31
P 8700 800
F 0 "#PWR0112" H 8700 650 50  0001 C CNN
F 1 "+3V3" H 8715 973 50  0000 C CNN
F 2 "" H 8700 800 50  0001 C CNN
F 3 "" H 8700 800 50  0001 C CNN
	1    8700 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5E208675
P 3750 5500
F 0 "#PWR0114" H 3750 5350 50  0001 C CNN
F 1 "+3V3" H 3765 5673 50  0000 C CNN
F 2 "" H 3750 5500 50  0001 C CNN
F 3 "" H 3750 5500 50  0001 C CNN
	1    3750 5500
	1    0    0    -1  
$EndComp
$Comp
L Custom:VI-321-DP-RC-S DS1
U 1 1 5E20A245
P 5050 5950
F 0 "DS1" H 5025 6765 50  0000 C CNN
F 1 "VI-321-DP-RC-S" H 5025 6674 50  0000 C CNN
F 2 "custom:VI-321-DP-RC-S" H 5250 6350 50  0001 C CNN
F 3 "" H 5250 6350 50  0001 C CNN
	1    5050 5950
	1    0    0    -1  
$EndComp
$Comp
L USB4110-GF-A:USB4110-GF-A J1
U 1 1 5E09DDDF
P 1900 2250
F 0 "J1" H 1900 2817 50  0000 C CNN
F 1 "USB4110-GF-A" H 1900 2726 50  0000 C CNN
F 2 "USB4110-GF-A:GCT_USB4110-GF-A" H 1900 2250 50  0001 L BNN
F 3 "3.26 mm" H 1900 2250 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 1900 2250 50  0001 L BNN "Field4"
F 5 "A" H 1900 2250 50  0001 L BNN "Field5"
F 6 "GCT" H 1900 2250 50  0001 L BNN "Field6"
	1    1900 2250
	1    0    0    -1  
$EndComp
$Comp
L Custom:BQ25155 U3
U 1 1 5E0A5974
P 4600 2400
F 0 "U3" H 4600 3115 50  0000 C CNN
F 1 "BQ25155" H 4600 3024 50  0000 C CNN
F 2 "SamacSys_Parts:BGA20C40P4X5_162X202X50" H 4600 2350 50  0001 C CNN
F 3 "" H 4600 2350 50  0001 C CNN
	1    4600 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5E0ABB84
P 3300 2150
F 0 "C1" H 3415 2196 50  0000 L CNN
F 1 "1uF" H 3415 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3338 2000 50  0001 C CNN
F 3 "~" H 3300 2150 50  0001 C CNN
	1    3300 2150
	1    0    0    -1  
$EndComp
Text GLabel 4150 2050 0    50   Input ~ 0
SDA
Text GLabel 4150 2150 0    50   Input ~ 0
SCL
Wire Wire Line
	4150 2050 4200 2050
Wire Wire Line
	4150 2150 4200 2150
$Comp
L power:+1V8 #PWR0109
U 1 1 5E0D3E59
P 5400 2300
F 0 "#PWR0109" H 5400 2150 50  0001 C CNN
F 1 "+1V8" H 5415 2473 50  0000 C CNN
F 2 "" H 5400 2300 50  0001 C CNN
F 3 "" H 5400 2300 50  0001 C CNN
	1    5400 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E0D5713
P 6050 2350
F 0 "C5" V 6300 2350 50  0000 C CNN
F 1 "2.2uF" V 6200 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6088 2200 50  0001 C CNN
F 3 "~" H 6050 2350 50  0001 C CNN
	1    6050 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 5E0D88B8
P 5500 1500
F 0 "C3" V 5248 1500 50  0000 C CNN
F 1 "22uF" V 5339 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5538 1350 50  0001 C CNN
F 3 "~" H 5500 1500 50  0001 C CNN
	1    5500 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 2300 5400 2350
Wire Wire Line
	5000 2250 5200 2250
Connection ~ 3300 2650
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5E1092A7
P 5100 3250
F 0 "TH1" H 4947 3204 50  0000 R CNN
F 1 "Thermistor_NTC" H 4947 3295 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5100 3300 50  0001 C CNN
F 3 "~" H 5100 3300 50  0001 C CNN
	1    5100 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 2850 5250 2850
Connection ~ 5250 2850
Wire Wire Line
	5000 2550 5050 2550
Wire Wire Line
	5250 2950 5250 2850
$Comp
L Device:C C2
U 1 1 5E0A7C16
P 5250 2700
F 0 "C2" H 5365 2746 50  0000 L CNN
F 1 "2.2uF" H 5365 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5288 2550 50  0001 C CNN
F 3 "~" H 5250 2700 50  0001 C CNN
	1    5250 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E0A6BEB
P 6250 3500
F 0 "#PWR0101" H 6250 3250 50  0001 C CNN
F 1 "GND" H 6255 3327 50  0000 C CNN
F 2 "" H 6250 3500 50  0001 C CNN
F 3 "" H 6250 3500 50  0001 C CNN
	1    6250 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5E0A365D
P 5750 2750
F 0 "BT1" H 5858 2796 50  0000 L CNN
F 1 "400mAh" H 5858 2705 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 5750 2810 50  0001 C CNN
F 3 "~" V 5750 2810 50  0001 C CNN
	1    5750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2750 5000 2750
Connection ~ 6250 2950
$Comp
L Device:R R3
U 1 1 5E11A806
P 4750 3250
F 0 "R3" H 4820 3296 50  0000 L CNN
F 1 "10k" H 4820 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4680 3250 50  0001 C CNN
F 3 "~" H 4750 3250 50  0001 C CNN
	1    4750 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3100 4750 3050
Wire Wire Line
	4750 3050 5100 3050
Wire Wire Line
	5100 2750 5100 3050
Wire Wire Line
	5100 3050 5100 3100
Connection ~ 5100 3050
Wire Wire Line
	4750 3400 4750 3450
Wire Wire Line
	4750 3450 5100 3450
Wire Wire Line
	5100 3450 5100 3400
Wire Wire Line
	6250 2950 6250 3450
Wire Wire Line
	6250 3450 6250 3500
Connection ~ 6250 3450
Wire Wire Line
	6250 1500 6250 1950
Connection ~ 6250 1950
Wire Wire Line
	6250 1950 6250 2350
Connection ~ 6250 2350
Wire Wire Line
	6250 2350 6250 2950
Wire Wire Line
	5000 2150 5050 2150
Wire Wire Line
	5050 2150 5050 2050
Wire Wire Line
	5000 2050 5050 2050
Connection ~ 5050 2050
Wire Wire Line
	5050 2050 5050 1950
Wire Wire Line
	5000 1950 5050 1950
Connection ~ 5050 1950
Wire Wire Line
	5050 1950 5050 1500
Wire Wire Line
	5000 2450 5050 2450
Wire Wire Line
	5050 2450 5050 2350
Connection ~ 5050 2350
Wire Wire Line
	5050 2350 5000 2350
Wire Wire Line
	5000 2650 5050 2650
Wire Wire Line
	5050 2650 5050 2550
Connection ~ 5050 2550
Wire Wire Line
	5050 2550 5250 2550
Text Notes 5050 1800 0    50   ~ 0
refactor cap values for cap bias voltage\nhttps://www.murata.com/en-us/support/faqs/products/capacitor/mlcc/char/0005
Text GLabel 3650 2550 0    50   Input ~ 0
INT3
Text GLabel 1150 2250 0    50   Input ~ 0
D+
Text GLabel 1150 2350 0    50   Input ~ 0
D-
Text GLabel 2650 2250 2    50   Input ~ 0
D+
Text GLabel 2650 2350 2    50   Input ~ 0
D-
Wire Wire Line
	2600 2250 2650 2250
Wire Wire Line
	2600 2350 2650 2350
Wire Wire Line
	1150 2250 1200 2250
Wire Wire Line
	1150 2350 1200 2350
Text Notes 1600 3050 0    50   ~ 0
USB2 1.5A/5V\nMicrochip AN1953\nAdafruit 4090
NoConn ~ 4200 2250
NoConn ~ 4200 2350
$Comp
L Device:R R6
U 1 1 5E0D13F8
P 2950 2400
F 0 "R6" H 2880 2354 50  0000 R CNN
F 1 "56k" H 2880 2445 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2880 2400 50  0001 C CNN
F 3 "~" H 2950 2400 50  0001 C CNN
	1    2950 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 2150 2600 2150
Wire Wire Line
	3300 2650 3300 2700
$Comp
L power:GND #PWR0107
U 1 1 5E0FDD19
P 3300 2700
F 0 "#PWR0107" H 3300 2450 50  0001 C CNN
F 1 "GND" H 3305 2527 50  0000 C CNN
F 2 "" H 3300 2700 50  0001 C CNN
F 3 "" H 3300 2700 50  0001 C CNN
	1    3300 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1950 3300 1950
Wire Wire Line
	2950 2250 2950 2150
Wire Wire Line
	2600 2650 2950 2650
Wire Wire Line
	2950 2550 2950 2650
Connection ~ 2950 2650
Wire Wire Line
	2950 2650 3300 2650
Wire Wire Line
	3300 2300 3300 2650
Wire Wire Line
	3300 2000 3300 1950
$Comp
L power:+1V8 #PWR0105
U 1 1 5E1452F8
P 3750 2200
F 0 "#PWR0105" H 3750 2050 50  0001 C CNN
F 1 "+1V8" H 3765 2373 50  0000 C CNN
F 2 "" H 3750 2200 50  0001 C CNN
F 3 "" H 3750 2200 50  0001 C CNN
	1    3750 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5E15B288
P 3750 2350
F 0 "R7" H 3680 2304 50  0000 R CNN
F 1 "10k" H 3680 2395 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3680 2350 50  0001 C CNN
F 3 "~" H 3750 2350 50  0001 C CNN
	1    3750 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 2550 3750 2550
Wire Wire Line
	3750 2500 3750 2550
Connection ~ 3750 2550
Wire Wire Line
	3750 2550 4200 2550
Wire Wire Line
	3300 2650 4200 2650
Wire Wire Line
	3300 1950 4200 1950
Connection ~ 3300 1950
NoConn ~ 4200 2450
Wire Wire Line
	850  2150 1200 2150
Wire Wire Line
	850  2450 850  2150
Wire Wire Line
	850  2750 850  2800
$Comp
L power:GND #PWR0108
U 1 1 5E117E51
P 850 2800
F 0 "#PWR0108" H 850 2550 50  0001 C CNN
F 1 "GND" H 855 2627 50  0000 C CNN
F 2 "" H 850 2800 50  0001 C CNN
F 3 "" H 850 2800 50  0001 C CNN
	1    850  2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E106EDC
P 850 2600
F 0 "R4" H 780 2554 50  0000 R CNN
F 1 "56k" H 780 2645 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 780 2600 50  0001 C CNN
F 3 "~" H 850 2600 50  0001 C CNN
	1    850  2600
	-1   0    0    1   
$EndComp
NoConn ~ 2600 2450
NoConn ~ 1200 2450
$Comp
L power:+3V3 #PWR0113
U 1 1 5E20736F
P 5200 1900
F 0 "#PWR0113" H 5200 1750 50  0001 C CNN
F 1 "+3V3" H 5215 2073 50  0000 C CNN
F 2 "" H 5200 1900 50  0001 C CNN
F 3 "" H 5200 1900 50  0001 C CNN
	1    5200 1900
	1    0    0    -1  
$EndComp
NoConn ~ 4200 2750
$Comp
L Device:C C8
U 1 1 5E25E5E5
P 9600 1250
F 0 "C8" V 9852 1250 50  0000 C CNN
F 1 "100nF" V 9761 1250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9638 1100 50  0001 C CNN
F 3 "~" H 9600 1250 50  0001 C CNN
	1    9600 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C6
U 1 1 5E2639FA
P 9350 850
F 0 "C6" V 9602 850 50  0000 C CNN
F 1 "100nF" V 9511 850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9388 700 50  0001 C CNN
F 3 "~" H 9350 850 50  0001 C CNN
	1    9350 850 
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C9
U 1 1 5E263E0C
P 9600 2000
F 0 "C9" V 9852 2000 50  0000 C CNN
F 1 "1uF" V 9761 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9638 1850 50  0001 C CNN
F 3 "~" H 9600 2000 50  0001 C CNN
	1    9600 2000
	0    -1   -1   0   
$EndComp
Text Notes 7350 5000 0    50   ~ 0
USB
Wire Wire Line
	7750 5000 7800 5000
Wire Wire Line
	7750 4900 7800 4900
Text GLabel 7750 5000 0    50   Input ~ 0
D+
Text GLabel 7750 4900 0    50   Input ~ 0
D-
$Comp
L Device:C C7
U 1 1 5E25E0B6
P 9350 1600
F 0 "C7" V 9602 1600 50  0000 C CNN
F 1 "100nF" V 9511 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9388 1450 50  0001 C CNN
F 3 "~" H 9350 1600 50  0001 C CNN
	1    9350 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5E2910D4
P 9850 2050
F 0 "#PWR0115" H 9850 1800 50  0001 C CNN
F 1 "GND" H 9855 1877 50  0000 C CNN
F 2 "" H 9850 2050 50  0001 C CNN
F 3 "" H 9850 2050 50  0001 C CNN
	1    9850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2050 9850 2000
Wire Wire Line
	9850 2000 9750 2000
Wire Wire Line
	9850 1600 9500 1600
Connection ~ 9850 2000
Wire Wire Line
	8900 2000 8900 2100
Wire Wire Line
	8900 1600 9000 1600
Wire Wire Line
	9450 1250 9100 1250
Wire Wire Line
	9750 1250 9850 1250
Wire Wire Line
	9500 850  9850 850 
Wire Wire Line
	9850 850  9850 1250
Connection ~ 9850 1250
Wire Wire Line
	9200 850  8700 850 
Wire Wire Line
	9100 1250 9100 1200
Connection ~ 9100 1250
Wire Wire Line
	8700 800  8700 850 
Connection ~ 8700 850 
Wire Wire Line
	8500 1250 9100 1250
Wire Wire Line
	8700 850  8700 2050
Wire Wire Line
	8900 2000 9450 2000
Text GLabel 7500 3200 0    50   Input ~ 0
INT1
Text GLabel 7500 3100 0    50   Input ~ 0
INT2
Text GLabel 7500 3000 0    50   Input ~ 0
INT3
Text GLabel 9850 4900 2    50   Input ~ 0
SDA
Text GLabel 9850 5000 2    50   Input ~ 0
SCL
Wire Wire Line
	9400 5950 9400 5900
Wire Wire Line
	2000 5300 2000 5350
Wire Wire Line
	9800 4900 9850 4900
Wire Wire Line
	9800 5000 9850 5000
Text Notes 10100 5050 0    50   ~ 0
SERCOM5 I2C\nPAD[0] SDA, PAD[1] SCL
Wire Wire Line
	7750 5100 7800 5100
Wire Wire Line
	7750 5200 7800 5200
Wire Wire Line
	7750 5300 7800 5300
Text Label 7550 3300 0    50   ~ 0
1
Text Notes 6850 3050 0    50   ~ 0
EXTINT[5]
Text Notes 6850 3150 0    50   ~ 0
EXTINT[6]
Text Notes 6850 3250 0    50   ~ 0
EXTINT[7]
$Comp
L Device:R R2
U 1 1 5E38B1BE
P 1650 5550
F 0 "R2" H 1580 5504 50  0000 R CNN
F 1 "10k" H 1580 5595 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1580 5550 50  0001 C CNN
F 3 "~" H 1650 5550 50  0001 C CNN
	1    1650 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5E38B48B
P 1300 5550
F 0 "R1" H 1230 5504 50  0000 R CNN
F 1 "10k" H 1230 5595 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1230 5550 50  0001 C CNN
F 3 "~" H 1300 5550 50  0001 C CNN
	1    1300 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 5850 1300 5850
Wire Wire Line
	1150 5950 1650 5950
Wire Wire Line
	1300 5700 1300 5850
Connection ~ 1300 5850
Wire Wire Line
	1300 5850 2050 5850
Wire Wire Line
	1650 5700 1650 5950
Connection ~ 1650 5950
Wire Wire Line
	1650 5950 2050 5950
Wire Wire Line
	1650 5400 1650 5350
Connection ~ 2000 5350
Wire Wire Line
	2000 5350 2000 5400
Wire Wire Line
	1300 5400 1300 5350
Wire Wire Line
	1300 5350 1650 5350
Connection ~ 1650 5350
Wire Wire Line
	1650 5350 2000 5350
Text Notes 1100 5200 0    50   ~ 0
100kHz I2C\n10kΩ, ≤100pF Cb\nTI SLVA689
Text Notes 7250 2650 0    50   ~ 0
EXTWAKE?
Entry Wire Line
	7200 4900 7300 4800
Entry Wire Line
	7200 4800 7300 4700
Entry Wire Line
	7200 4700 7300 4600
Entry Wire Line
	7200 4600 7300 4500
Entry Wire Line
	7200 4500 7300 4400
Entry Wire Line
	7200 4400 7300 4300
Entry Wire Line
	7200 4300 7300 4200
Entry Wire Line
	7200 4200 7300 4100
Entry Wire Line
	7200 4100 7300 4000
Entry Wire Line
	7200 4000 7300 3900
Entry Wire Line
	7200 3900 7300 3800
Entry Wire Line
	7200 3800 7300 3700
Entry Wire Line
	7200 3700 7300 3600
Entry Wire Line
	7200 3600 7300 3500
Entry Wire Line
	7200 3500 7300 3400
Entry Wire Line
	7200 3400 7300 3300
Wire Wire Line
	7300 3300 7800 3300
Wire Wire Line
	7300 3400 7800 3400
Wire Wire Line
	7300 3500 7800 3500
Wire Wire Line
	7300 3600 7800 3600
Wire Wire Line
	7300 3700 7800 3700
Wire Wire Line
	7300 3800 7800 3800
Wire Wire Line
	7300 3900 7800 3900
Wire Wire Line
	7300 4000 7800 4000
Wire Wire Line
	7300 4100 7800 4100
Wire Wire Line
	7300 4200 7800 4200
Wire Wire Line
	7300 4300 7800 4300
Wire Wire Line
	7300 4400 7800 4400
Wire Wire Line
	7300 4500 7800 4500
Wire Wire Line
	7300 4600 7800 4600
Wire Wire Line
	7300 4700 7800 4700
Wire Wire Line
	7300 4800 7800 4800
Wire Wire Line
	5350 5400 5650 5400
Wire Wire Line
	5350 5500 5650 5500
Wire Wire Line
	5350 5600 5650 5600
Wire Wire Line
	5350 5700 5650 5700
Wire Wire Line
	5350 5800 5650 5800
Wire Wire Line
	5350 5900 5650 5900
Wire Wire Line
	5350 6000 5650 6000
Wire Wire Line
	5350 6100 5650 6100
Wire Wire Line
	5350 6200 5650 6200
Wire Wire Line
	5350 6300 5650 6300
Wire Wire Line
	5350 6400 5650 6400
Wire Wire Line
	5350 6500 5650 6500
Wire Wire Line
	4450 5400 4700 5400
Wire Wire Line
	4450 5500 4700 5500
Wire Wire Line
	4450 5600 4700 5600
Wire Wire Line
	4450 5700 4700 5700
Wire Wire Line
	4450 5800 4700 5800
Wire Wire Line
	4450 5900 4700 5900
Wire Wire Line
	4450 6000 4700 6000
Wire Wire Line
	4450 6100 4700 6100
Wire Wire Line
	4450 6200 4700 6200
Wire Wire Line
	4450 6300 4700 6300
Wire Wire Line
	4450 6400 4700 6400
Wire Wire Line
	4450 6500 4700 6500
Wire Bus Line
	4350 4950 5750 4950
Connection ~ 5750 4950
Wire Bus Line
	5750 4950 7200 4950
Text GLabel 7200 5050 3    50   Input ~ 0
DS
Text Label 9900 3900 0    50   ~ 0
5
Wire Wire Line
	10100 3900 9800 3900
Entry Wire Line
	10100 3900 10200 3800
Text GLabel 10200 3700 1    50   Input ~ 0
DS
Entry Wire Line
	10100 4000 10200 3900
Entry Wire Line
	10100 4100 10200 4000
Entry Wire Line
	10100 4200 10200 4100
Entry Wire Line
	10100 4300 10200 4200
Entry Wire Line
	10100 4400 10200 4300
Entry Wire Line
	10100 4500 10200 4400
Entry Wire Line
	10100 4600 10200 4500
Wire Wire Line
	9800 4000 10100 4000
Wire Wire Line
	10100 4100 9800 4100
Wire Wire Line
	9800 4200 10100 4200
Wire Wire Line
	10100 4300 9800 4300
Wire Wire Line
	9800 4400 10100 4400
Wire Wire Line
	10100 4500 9800 4500
Wire Wire Line
	9800 4600 10100 4600
$Comp
L power:+1V8 #PWR0116
U 1 1 5E3AEE5E
P 10000 3150
F 0 "#PWR0116" H 10000 3000 50  0001 C CNN
F 1 "+1V8" H 10015 3323 50  0000 C CNN
F 2 "" H 10000 3150 50  0001 C CNN
F 3 "" H 10000 3150 50  0001 C CNN
	1    10000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3200 10000 3200
Wire Wire Line
	10000 3200 10000 3150
Text Notes 5500 3000 0    50   ~ 0
2.2uF to 10 uF per checklist
Text Notes 10100 3200 0    50   ~ 0
VBAT
NoConn ~ 4200 2850
NoConn ~ 9800 2900
NoConn ~ 9800 3000
NoConn ~ 9800 3100
NoConn ~ 9800 3300
NoConn ~ 9800 3400
NoConn ~ 9800 3500
NoConn ~ 9800 3600
NoConn ~ 9800 3700
NoConn ~ 9800 3800
Wire Wire Line
	8900 5900 9400 5900
Wire Wire Line
	8700 5900 8900 5900
Connection ~ 8900 5900
$Comp
L MCU_Microchip_SAML:ATSAML21J16B-AUT U2
U 1 1 5E306B11
P 8800 4000
F 0 "U2" H 8800 2011 50  0000 C CNN
F 1 "ATSAML21J16B-AUT" H 8800 1920 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_10x10mm_P0.5mm" H 10000 5800 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/60001477A.pdf" H 8800 4000 50  0001 C CNN
	1    8800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2350 6250 2350
Wire Wire Line
	5250 2550 5750 2550
Connection ~ 5250 2550
Wire Wire Line
	5250 2950 5750 2950
Wire Wire Line
	5100 3450 6250 3450
Connection ~ 5100 3450
Wire Wire Line
	5750 2950 6250 2950
Connection ~ 5750 2950
Wire Wire Line
	5050 1500 5350 1500
Wire Wire Line
	5650 1500 6250 1500
Text Notes 9950 1850 0    50   ~ 0
Buck Inductor\nAtmel AT12705
$Comp
L Device:L L1
U 1 1 5E4FCF2E
P 9000 1800
F 0 "L1" H 9053 1846 50  0000 L CNN
F 1 "10uH" H 9053 1755 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 9000 1800 50  0001 C CNN
F 3 "~" H 9000 1800 50  0001 C CNN
	1    9000 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1600 9850 2000
Wire Wire Line
	9000 2100 9000 1950
Wire Wire Line
	9000 1650 9000 1600
Connection ~ 9000 1600
Wire Wire Line
	9000 1600 9200 1600
Wire Wire Line
	8900 1600 8900 2000
Connection ~ 8900 2000
Wire Wire Line
	9100 2100 9100 2050
Wire Wire Line
	9100 2050 8700 2050
Wire Wire Line
	8500 2050 8500 2100
Connection ~ 8700 2050
Wire Wire Line
	8700 2050 8500 2050
Wire Wire Line
	8500 1250 8500 2050
Connection ~ 8500 2050
Wire Wire Line
	9850 1250 9850 1600
Connection ~ 9850 1600
Wire Wire Line
	8700 2050 8700 2100
$Comp
L power:+5V #PWR0117
U 1 1 5E556FB7
P 3300 1900
F 0 "#PWR0117" H 3300 1750 50  0001 C CNN
F 1 "+5V" H 3315 2073 50  0000 C CNN
F 2 "" H 3300 1900 50  0001 C CNN
F 3 "" H 3300 1900 50  0001 C CNN
	1    3300 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1900 3300 1950
$Comp
L Device:C C4
U 1 1 5E0DD421
P 5750 1950
F 0 "C4" V 6002 1950 50  0000 C CNN
F 1 "2.2uF" V 5911 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5788 1800 50  0001 C CNN
F 3 "~" H 5750 1950 50  0001 C CNN
	1    5750 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 1900 5200 1950
Wire Wire Line
	5600 1950 5200 1950
Connection ~ 5200 1950
Wire Wire Line
	5200 1950 5200 2250
Wire Wire Line
	5900 1950 6250 1950
Connection ~ 5400 2350
Wire Wire Line
	5400 2350 5900 2350
Wire Wire Line
	5050 2350 5400 2350
NoConn ~ 7800 2900
NoConn ~ 7800 2800
NoConn ~ 7800 2700
NoConn ~ 7800 2600
NoConn ~ 7800 2500
NoConn ~ 9800 4700
NoConn ~ 9800 4800
Text Label 7550 3400 0    50   ~ 0
2
Text Label 7550 3500 0    50   ~ 0
3
Text Label 7550 3600 0    50   ~ 0
4
Text Label 7550 3700 0    50   ~ 0
11
Text Label 7550 3800 0    50   ~ 0
12
Text Label 7550 3900 0    50   ~ 0
13
Text Label 7550 4000 0    50   ~ 0
14
Text Label 7550 4100 0    50   ~ 0
15
Text Label 7550 4200 0    50   ~ 0
16
Text Label 7550 4300 0    50   ~ 0
17
Text Label 7550 4400 0    50   ~ 0
18
Text Label 9900 4000 0    50   ~ 0
6
Text Label 9900 4100 0    50   ~ 0
7
Text Label 9900 4200 0    50   ~ 0
8
Text Label 9900 4300 0    50   ~ 0
9
Text Label 9900 4400 0    50   ~ 0
10
Text Label 9900 4500 0    50   ~ 0
19
Text Label 9900 4600 0    50   ~ 0
20
Text Label 7550 4800 0    50   ~ 0
24
Text Label 7550 4700 0    50   ~ 0
23
Text Label 7550 4600 0    50   ~ 0
22
Text Label 7550 4500 0    50   ~ 0
21
Wire Bus Line
	7200 5050 7200 4950
Connection ~ 7200 4950
Wire Wire Line
	7500 3000 7800 3000
Wire Wire Line
	7500 3100 7800 3100
Wire Wire Line
	7800 3200 7500 3200
NoConn ~ 7750 5100
NoConn ~ 7750 5200
NoConn ~ 7750 5300
NoConn ~ 7800 5500
Wire Bus Line
	10200 3700 10200 4500
Wire Bus Line
	4350 4950 4350 6400
Wire Bus Line
	5750 4950 5750 6400
Wire Bus Line
	7200 3400 7200 4950
$EndSCHEMATC
