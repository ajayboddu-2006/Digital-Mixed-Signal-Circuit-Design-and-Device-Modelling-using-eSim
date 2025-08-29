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
L d_inverter U5
U 1 1 683C8773
P 4500 2600
F 0 "U5" H 4500 2500 60  0000 C CNN
F 1 "d_inverter" H 4500 2750 60  0000 C CNN
F 2 "" H 4550 2550 60  0000 C CNN
F 3 "" H 4550 2550 60  0000 C CNN
	1    4500 2600
	-1   0    0    1   
$EndComp
$Comp
L d_and U7
U 1 1 683C87B5
P 6350 2750
F 0 "U7" H 6350 2750 60  0000 C CNN
F 1 "d_and" H 6400 2850 60  0000 C CNN
F 2 "" H 6350 2750 60  0000 C CNN
F 3 "" H 6350 2750 60  0000 C CNN
	1    6350 2750
	1    0    0    -1  
$EndComp
$Comp
L d_and U3
U 1 1 683C8866
P 3100 2650
F 0 "U3" H 3100 2650 60  0000 C CNN
F 1 "d_and" H 3150 2750 60  0000 C CNN
F 2 "" H 3100 2650 60  0000 C CNN
F 3 "" H 3100 2650 60  0000 C CNN
	1    3100 2650
	-1   0    0    1   
$EndComp
$Comp
L d_nor U2
U 1 1 683C8954
P 1800 3050
F 0 "U2" H 1800 3050 60  0000 C CNN
F 1 "d_nor" H 1850 3150 60  0000 C CNN
F 2 "" H 1800 3050 60  0000 C CNN
F 3 "" H 1800 3050 60  0000 C CNN
	1    1800 3050
	-1   0    0    1   
$EndComp
$Comp
L d_buffer U4
U 1 1 683C8991
P 3400 3250
F 0 "U4" H 3400 3200 60  0000 C CNN
F 1 "d_buffer" H 3400 3300 60  0000 C CNN
F 2 "" H 3400 3250 60  0000 C CNN
F 3 "" H 3400 3250 60  0000 C CNN
	1    3400 3250
	-1   0    0    1   
$EndComp
$Comp
L d_buffer U6
U 1 1 683C8B44
P 5500 3350
F 0 "U6" H 5500 3300 60  0000 C CNN
F 1 "d_buffer" H 5500 3400 60  0000 C CNN
F 2 "" H 5500 3350 60  0000 C CNN
F 3 "" H 5500 3350 60  0000 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
$Comp
L d_nor U8
U 1 1 683C8BAD
P 7850 3150
F 0 "U8" H 7850 3150 60  0000 C CNN
F 1 "d_nor" H 7900 3250 60  0000 C CNN
F 2 "" H 7850 3150 60  0000 C CNN
F 3 "" H 7850 3150 60  0000 C CNN
	1    7850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2600 5900 2600
Wire Wire Line
	5900 2600 5900 2650
Wire Wire Line
	4200 2600 3550 2600
Wire Wire Line
	3550 2600 3550 2650
Wire Wire Line
	2650 2700 2250 2700
Wire Wire Line
	2250 2700 2250 3050
Wire Wire Line
	2750 3250 2250 3250
Wire Wire Line
	2250 3250 2250 3150
Wire Wire Line
	6800 2700 7400 2700
Wire Wire Line
	7400 2700 7400 3050
Wire Wire Line
	6150 3350 7400 3350
Wire Wire Line
	7400 3350 7400 3150
Wire Wire Line
	8300 3100 8950 3100
Wire Wire Line
	8950 3100 8950 3900
Wire Wire Line
	8950 3900 3900 3900
Wire Wire Line
	3900 3900 3900 3250
Wire Wire Line
	1350 3100 1000 3100
Wire Wire Line
	1000 3100 1000 4600
Wire Wire Line
	5000 3350 4550 3350
Wire Wire Line
	4550 3350 4550 4600
Wire Wire Line
	4550 4600 1000 4600
Wire Wire Line
	3550 2750 5900 2750
Wire Wire Line
	4250 2750 4250 5100
Connection ~ 4250 2750
Wire Wire Line
	4950 2600 4950 5100
Connection ~ 4950 2600
$Comp
L PORT U1
U 2 1 683C94D3
P 4000 5100
F 0 "U1" H 4050 5200 30  0000 C CNN
F 1 "PORT" H 4000 5100 30  0000 C CNN
F 2 "" H 4000 5100 60  0000 C CNN
F 3 "" H 4000 5100 60  0000 C CNN
	2    4000 5100
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 3 1 683C952C
P 4700 5100
F 0 "U1" H 4750 5200 30  0000 C CNN
F 1 "PORT" H 4700 5100 30  0000 C CNN
F 2 "" H 4700 5100 60  0000 C CNN
F 3 "" H 4700 5100 60  0000 C CNN
	3    4700 5100
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 1 1 683C9714
P 1100 2700
F 0 "U1" H 1150 2800 30  0000 C CNN
F 1 "PORT" H 1100 2700 30  0000 C CNN
F 2 "" H 1100 2700 60  0000 C CNN
F 3 "" H 1100 2700 60  0000 C CNN
	1    1100 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 2950 1100 3100
Connection ~ 1100 3100
$EndSCHEMATC
