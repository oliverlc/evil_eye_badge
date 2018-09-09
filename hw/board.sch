EESchema Schematic File Version 4
LIBS:board-cache
EELAYER 26 0
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
L board-rescue:ATTINY10-TS U1
U 1 1 5AFC9D54
P 7150 3300
F 0 "U1" H 6150 3700 50  0000 C CNN
F 1 "ATTINY10-TS" H 8000 2900 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 7150 3550 50  0001 C CIN
F 3 "" H 7150 3300 50  0001 C CNN
	1    7150 3300
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:SW_DIP_x01 SW1
U 1 1 5B003A01
P 9000 3050
F 0 "SW1" H 9000 3200 50  0000 C CNN
F 1 "SW_DIP_x01" H 9000 2900 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPDT_PCM12" H 9000 3050 50  0001 C CNN
F 3 "" H 9000 3050 50  0001 C CNN
	1    9000 3050
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:Battery_Cell BT1
U 1 1 5B003A40
P 9650 3350
F 0 "BT1" H 9750 3450 50  0000 L CNN
F 1 "Battery_Cell" H 9750 3350 50  0000 L CNN
F 2 "parts:Battery_holder_CR2032" V 9650 3410 50  0001 C CNN
F 3 "" V 9650 3410 50  0001 C CNN
	1    9650 3350
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:LED D2
U 1 1 5B003AC9
P 5800 4250
F 0 "D2" H 5800 4350 50  0000 C CNN
F 1 "LED" H 5800 4150 50  0000 C CNN
F 2 "LEDs:LED_miniPLCC_2315_Handsoldering" H 5800 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0001 C CNN
F 4 "KPT-2012EC" H 5800 4250 60  0001 C CNN "MPN"
	1    5800 4250
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:LED D1
U 1 1 5B003B1E
P 5400 4250
F 0 "D1" H 5400 4350 50  0000 C CNN
F 1 "LED" H 5400 4150 50  0000 C CNN
F 2 "LEDs:LED_miniPLCC_2315_Handsoldering" H 5400 4250 50  0001 C CNN
F 3 "" H 5400 4250 50  0001 C CNN
F 4 "KPT-2012ec" H 5400 4250 60  0001 C CNN "MPN"
	1    5400 4250
	0    -1   -1   0   
$EndComp
$Comp
L board-rescue:GND #PWR01
U 1 1 5B003C17
P 9650 3600
F 0 "#PWR01" H 9650 3350 50  0001 C CNN
F 1 "GND" H 9650 3450 50  0000 C CNN
F 2 "" H 9650 3600 50  0001 C CNN
F 3 "" H 9650 3600 50  0001 C CNN
	1    9650 3600
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:R R3
U 1 1 5B003D4D
P 5800 3800
F 0 "R3" V 5880 3800 50  0000 C CNN
F 1 "120R" V 5800 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5730 3800 50  0001 C CNN
F 3 "" H 5800 3800 50  0001 C CNN
	1    5800 3800
	1    0    0    -1  
$EndComp
$Comp
L board-rescue:GND #PWR02
U 1 1 5B003E14
P 5600 4600
F 0 "#PWR02" H 5600 4350 50  0001 C CNN
F 1 "GND" H 5600 4450 50  0000 C CNN
F 2 "" H 5600 4600 50  0001 C CNN
F 3 "" H 5600 4600 50  0001 C CNN
	1    5600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3050 8700 3050
Wire Wire Line
	9300 3050 9650 3050
Wire Wire Line
	9650 3050 9650 3150
Wire Wire Line
	9650 3450 9650 3550
Wire Wire Line
	9650 3550 8350 3550
Connection ~ 9650 3550
Wire Wire Line
	5800 3950 5800 4100
Wire Wire Line
	5400 3950 5400 4100
Wire Wire Line
	5400 4400 5400 4500
Wire Wire Line
	5400 4500 5600 4500
Wire Wire Line
	5600 4500 5600 4600
Wire Wire Line
	5800 4500 5800 4400
Connection ~ 5600 4500
$Comp
L board-rescue:Conn_01x05 J1
U 1 1 5B0484AF
P 2000 3300
F 0 "J1" H 2000 3600 50  0000 C CNN
F 1 "Conn_01x05" H 2000 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 2000 3300 50  0001 C CNN
F 3 "" H 2000 3300 50  0001 C CNN
	1    2000 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 3100 2850 3100
Text Label 2850 3100 0    60   ~ 0
VCC
Text Label 9400 3050 0    60   ~ 0
3Vcc
$Comp
L board-rescue:GND #PWR03
U 1 1 5B048D19
P 2350 3650
F 0 "#PWR03" H 2350 3400 50  0001 C CNN
F 1 "GND" H 2350 3500 50  0000 C CNN
F 2 "" H 2350 3650 50  0001 C CNN
F 3 "" H 2350 3650 50  0001 C CNN
	1    2350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3650 2350 3500
Wire Wire Line
	2350 3500 2200 3500
Wire Wire Line
	5000 3450 5950 3450
Wire Wire Line
	2850 3400 2200 3400
Wire Wire Line
	5050 3250 5400 3250
Wire Wire Line
	5050 3150 5800 3150
Wire Wire Line
	2850 3200 2200 3200
Text Notes 750  4350 0    60   ~ 0
Note: Programming header to be placed below\nbattery to dictate programming voltage source\n\nVCC for programming = 5V!
$Comp
L board-rescue:R R2
U 1 1 5B049304
P 5400 3800
F 0 "R2" V 5480 3800 50  0000 C CNN
F 1 "120R" V 5400 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5330 3800 50  0001 C CNN
F 3 "" H 5400 3800 50  0001 C CNN
	1    5400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3650 5400 3250
Connection ~ 5400 3250
Wire Wire Line
	5800 3650 5800 3150
Connection ~ 5800 3150
Wire Wire Line
	2200 3300 2850 3300
Text Label 2850 3300 0    60   ~ 0
TPIDATA
Text Label 2850 3400 0    60   ~ 0
TPICLK
Text Label 2850 3200 0    60   ~ 0
RESET
Text Label 5050 3450 0    60   ~ 0
RESET
Text Label 5050 3250 0    60   ~ 0
TPICLK
Text Label 5050 3150 0    60   ~ 0
TPIDATA
$Comp
L board-rescue:R R1
U 1 1 5B04A29C
P 4850 3450
F 0 "R1" V 4930 3450 50  0000 C CNN
F 1 "DNF" V 4850 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4780 3450 50  0001 C CNN
F 3 "" H 4850 3450 50  0001 C CNN
	1    4850 3450
	0    1    1    0   
$EndComp
Text Label 8500 3050 0    60   ~ 0
VCC
Wire Wire Line
	4700 3450 4500 3450
Text Label 4500 3450 0    60   ~ 0
VCC
NoConn ~ 5950 3350
Wire Wire Line
	9650 3550 9650 3600
Wire Wire Line
	5600 4500 5800 4500
Wire Wire Line
	5400 3250 5950 3250
Wire Wire Line
	5800 3150 5950 3150
$EndSCHEMATC
