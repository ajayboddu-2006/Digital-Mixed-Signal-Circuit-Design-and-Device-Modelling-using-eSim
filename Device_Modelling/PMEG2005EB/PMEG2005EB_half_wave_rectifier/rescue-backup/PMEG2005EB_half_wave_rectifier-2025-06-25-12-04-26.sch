EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
EELAYER 25 0
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
L sine v1
U 1 1 685A78B2
P 3950 3650
F 0 "v1" H 3750 3750 60  0000 C CNN
F 1 "sine" H 3750 3600 60  0000 C CNN
F 2 "R1" H 3650 3650 60  0000 C CNN
F 3 "" H 3950 3650 60  0000 C CNN
	1    3950 3650
	1    0    0    -1  
$EndComp
$Comp
L eSim_Diode D1
U 1 1 685A78EB
P 4900 3200
F 0 "D1" H 4900 3300 50  0000 C CNN
F 1 "eSim_Diode" H 4900 3100 50  0000 C CNN
F 2 "" H 4900 3200 60  0000 C CNN
F 3 "" H 4900 3200 60  0000 C CNN
	1    4900 3200
	1    0    0    -1  
$EndComp
$Comp
L resistor R1
U 1 1 685A7934
P 5650 3500
F 0 "R1" H 5700 3630 50  0000 C CNN
F 1 "1k" H 5700 3450 50  0000 C CNN
F 2 "" H 5700 3480 30  0000 C CNN
F 3 "" V 5700 3550 30  0000 C CNN
	1    5650 3500
	0    1    1    0   
$EndComp
$Comp
L plot_v1 U2
U 1 1 685A796D
P 5700 3300
F 0 "U2" H 5700 3800 60  0000 C CNN
F 1 "plot_v1" H 5900 3650 60  0000 C CNN
F 2 "" H 5700 3300 60  0000 C CNN
F 3 "" H 5700 3300 60  0000 C CNN
	1    5700 3300
	1    0    0    -1  
$EndComp
Text GLabel 6050 3200 2    60   Output ~ 0
out
Text GLabel 3650 3100 0    60   Input ~ 0
in
$Comp
L plot_v1 U1
U 1 1 685A79D2
P 4100 3150
F 0 "U1" H 4100 3650 60  0000 C CNN
F 1 "plot_v1" H 4300 3500 60  0000 C CNN
F 2 "" H 4100 3150 60  0000 C CNN
F 3 "" H 4100 3150 60  0000 C CNN
	1    4100 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 685A7A0B
P 4600 4150
F 0 "#PWR1" H 4600 3900 50  0001 C CNN
F 1 "GND" H 4600 4000 50  0000 C CNN
F 2 "" H 4600 4150 50  0001 C CNN
F 3 "" H 4600 4150 50  0001 C CNN
	1    4600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3100 5700 3400
Wire Wire Line
	5050 3200 6050 3200
Wire Wire Line
	4750 3200 3950 3200
Wire Wire Line
	3950 4100 5700 4100
Wire Wire Line
	5700 4100 5700 3700
Connection ~ 5700 3200
Wire Wire Line
	4600 4150 4600 4100
Connection ~ 4600 4100
Wire Wire Line
	4100 2950 4100 3200
Connection ~ 4100 3200
Wire Wire Line
	3650 3100 4000 3100
Wire Wire Line
	4000 3100 4000 3200
Connection ~ 4000 3200
$EndSCHEMATC
