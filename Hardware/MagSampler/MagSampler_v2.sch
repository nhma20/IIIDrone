EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 10
Title "Magnetometer Sampler"
Date "2021-08-16"
Rev ""
Comp "University of Southern Denmark"
Comment1 "Drones4Safety"
Comment2 "Drone Infrastructure Inspection and Interaction (DIII)"
Comment3 "F. F. Nyboe"
Comment4 ""
$EndDescr
NoConn ~ 10000 2350
NoConn ~ 10000 2450
NoConn ~ 10000 2550
NoConn ~ 10000 2650
NoConn ~ 10000 2750
NoConn ~ 10000 2850
Text GLabel 7750 850  0    50   Input ~ 0
V_A
$Comp
L Device:C C2
U 1 1 6044305F
P 7850 1000
F 0 "C2" H 7965 1046 50  0000 L CNN
F 1 "1u" H 7965 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7888 850 50  0001 C CNN
F 3 "~" H 7850 1000 50  0001 C CNN
	1    7850 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60443885
P 7850 1150
F 0 "#PWR02" H 7850 900 50  0001 C CNN
F 1 "GND" H 7855 977 50  0000 C CNN
F 2 "" H 7850 1150 50  0001 C CNN
F 3 "" H 7850 1150 50  0001 C CNN
	1    7850 1150
	1    0    0    -1  
$EndComp
Text GLabel 8300 950  0    50   Input ~ 0
V_A
Wire Wire Line
	7750 850  7850 850 
Wire Wire Line
	8800 850  8800 1450
Wire Wire Line
	8800 1450 8900 1450
Connection ~ 7850 850 
Wire Wire Line
	7850 850  8800 850 
Wire Wire Line
	8300 950  8350 950 
Wire Wire Line
	8700 950  8700 1550
Wire Wire Line
	8700 1550 8900 1550
$Comp
L Device:C C6
U 1 1 6044D030
P 8350 1100
F 0 "C6" H 8465 1146 50  0000 L CNN
F 1 "1u" H 8465 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8388 950 50  0001 C CNN
F 3 "~" H 8350 1100 50  0001 C CNN
	1    8350 1100
	1    0    0    -1  
$EndComp
Connection ~ 8350 950 
Wire Wire Line
	8350 950  8700 950 
$Comp
L power:GND #PWR06
U 1 1 6044D5C0
P 8350 1250
F 0 "#PWR06" H 8350 1000 50  0001 C CNN
F 1 "GND" H 8355 1077 50  0000 C CNN
F 2 "" H 8350 1250 50  0001 C CNN
F 3 "" H 8350 1250 50  0001 C CNN
	1    8350 1250
	1    0    0    -1  
$EndComp
Text GLabel 7750 1500 0    50   Input ~ 0
V_D
Wire Wire Line
	7750 1500 7850 1500
Wire Wire Line
	8600 1500 8600 1650
Wire Wire Line
	8600 1650 8900 1650
$Comp
L Device:C C3
U 1 1 6044F20F
P 7850 1650
F 0 "C3" H 7965 1696 50  0000 L CNN
F 1 "1u" H 7965 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7888 1500 50  0001 C CNN
F 3 "~" H 7850 1650 50  0001 C CNN
	1    7850 1650
	1    0    0    -1  
$EndComp
Connection ~ 7850 1500
Wire Wire Line
	7850 1500 8600 1500
$Comp
L power:GND #PWR03
U 1 1 6044F6C9
P 7850 1800
F 0 "#PWR03" H 7850 1550 50  0001 C CNN
F 1 "GND" H 7855 1627 50  0000 C CNN
F 2 "" H 7850 1800 50  0001 C CNN
F 3 "" H 7850 1800 50  0001 C CNN
	1    7850 1800
	1    0    0    -1  
$EndComp
Text GLabel 8650 1950 0    50   Input ~ 0
nCS
Wire Wire Line
	8650 1950 8900 1950
$Comp
L power:GND #PWR04
U 1 1 60458F62
P 7850 2200
F 0 "#PWR04" H 7850 1950 50  0001 C CNN
F 1 "GND" H 7855 2027 50  0000 C CNN
F 2 "" H 7850 2200 50  0001 C CNN
F 3 "" H 7850 2200 50  0001 C CNN
	1    7850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2200 7850 2150
Wire Wire Line
	7850 2150 8200 2150
Wire Wire Line
	8650 2250 8900 2250
$Comp
L Device:C C5
U 1 1 6045F364
P 8200 2500
F 0 "C5" H 8315 2546 50  0000 L CNN
F 1 "10u" H 8315 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8238 2350 50  0001 C CNN
F 3 "~" H 8200 2500 50  0001 C CNN
	1    8200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2350 8650 2350
Wire Wire Line
	8650 2350 8650 2450
Wire Wire Line
	8650 2450 8900 2450
Wire Wire Line
	8900 2550 8650 2550
Wire Wire Line
	8650 2550 8650 2650
Wire Wire Line
	8650 2650 8200 2650
Wire Wire Line
	8200 2350 8200 2150
Connection ~ 8200 2350
Connection ~ 8200 2150
Wire Wire Line
	8200 2150 8900 2150
Text GLabel 7750 2650 0    50   Input ~ 0
V_ref
Wire Wire Line
	7750 2650 8200 2650
Connection ~ 8200 2650
Text GLabel 8650 2750 0    50   Input ~ 0
MOSI
Wire Wire Line
	8650 2750 8900 2750
Wire Wire Line
	8650 2950 8900 2950
Text GLabel 7700 3150 0    50   Input ~ 0
Ch0
Text GLabel 8050 3250 0    50   Input ~ 0
Ch1
Text GLabel 8450 3350 0    50   Input ~ 0
Ch2
Wire Wire Line
	7700 3150 7750 3150
Wire Wire Line
	8050 3250 8100 3250
Wire Wire Line
	8450 3350 8500 3350
$Comp
L Device:C C7
U 1 1 604870CB
P 8500 3700
F 0 "C7" H 8615 3746 50  0000 L CNN
F 1 "100p" H 8550 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8538 3550 50  0001 C CNN
F 3 "~" H 8500 3700 50  0001 C CNN
	1    8500 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6048784F
P 8100 3700
F 0 "C4" H 8215 3746 50  0000 L CNN
F 1 "100p" H 8150 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8138 3550 50  0001 C CNN
F 3 "~" H 8100 3700 50  0001 C CNN
	1    8100 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60487FE0
P 7750 3700
F 0 "C1" H 7865 3746 50  0000 L CNN
F 1 "100p" H 7800 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7788 3550 50  0001 C CNN
F 3 "~" H 7750 3700 50  0001 C CNN
	1    7750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3150 7750 3550
Connection ~ 7750 3150
Wire Wire Line
	7750 3150 8900 3150
Wire Wire Line
	8100 3250 8100 3550
Connection ~ 8100 3250
Wire Wire Line
	8100 3250 8900 3250
Wire Wire Line
	8500 3350 8500 3550
Connection ~ 8500 3350
Wire Wire Line
	8500 3350 8900 3350
$Comp
L power:GND #PWR05
U 1 1 6048DF3E
P 8300 4150
F 0 "#PWR05" H 8300 3900 50  0001 C CNN
F 1 "GND" H 8305 3977 50  0000 C CNN
F 2 "" H 8300 4150 50  0001 C CNN
F 3 "" H 8300 4150 50  0001 C CNN
	1    8300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3850 7750 4000
Wire Wire Line
	7750 4000 8100 4000
Wire Wire Line
	8300 4000 8300 4150
Wire Wire Line
	8100 3850 8100 4000
Connection ~ 8100 4000
Wire Wire Line
	8100 4000 8300 4000
Wire Wire Line
	8500 3850 8500 4000
Wire Wire Line
	8500 4000 8300 4000
Connection ~ 8300 4000
Text GLabel 10250 1450 2    50   Input ~ 0
GPIO0
Text GLabel 10250 1550 2    50   Input ~ 0
GPIO1
Wire Wire Line
	10000 1450 10250 1450
Wire Wire Line
	10250 1550 10000 1550
Text GLabel 10250 1950 2    50   Input ~ 0
MXO
Wire Wire Line
	10250 1950 10000 1950
Text GLabel 8650 2950 0    50   Input ~ 0
SCLK
$Comp
L power:GND #PWR07
U 1 1 604A1CEE
P 10300 3600
F 0 "#PWR07" H 10300 3350 50  0001 C CNN
F 1 "GND" H 10305 3427 50  0000 C CNN
F 2 "" H 10300 3600 50  0001 C CNN
F 3 "" H 10300 3600 50  0001 C CNN
	1    10300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3600 10300 3350
Wire Wire Line
	10300 3350 10000 3350
Wire Wire Line
	10300 3350 10300 3250
Wire Wire Line
	10300 3250 10000 3250
Connection ~ 10300 3350
Wire Wire Line
	10300 3250 10300 3150
Wire Wire Line
	10300 3150 10000 3150
Connection ~ 10300 3250
Wire Wire Line
	10300 3150 10300 3050
Wire Wire Line
	10300 3050 10000 3050
Connection ~ 10300 3150
$Comp
L MagSampler_v2-rescue:ADS7950SDBTR-eec U1
U 1 1 60427DD0
P 8900 1450
F 0 "U1" H 9450 1715 50  0000 C CNN
F 1 "ADS7950SDBTR" H 9450 1624 50  0000 C CNN
F 2 "Package_SO:TSSOP-30_4.4x7.8mm_P0.5mm" H 8900 1850 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads7950.pdf" H 8900 1950 50  0001 L CNN
F 4 "IC" H 8900 2050 50  0001 L CNN "category"
F 5 "IC ADC 12BIT SER 1M 30TSSOP" H 8900 2150 50  0001 L CNN "digikey description"
F 6 "ADS7950SDBTR-ND" H 8900 2250 50  0001 L CNN "digikey part number"
F 7 "SOP50P640X120-30" H 8900 2350 50  0001 L CNN "ipc land pattern name"
F 8 "yes" H 8900 2450 50  0001 L CNN "lead free"
F 9 "0a3ae35f2ff7740b" H 8900 2550 50  0001 L CNN "library id"
F 10 "Texas Instruments" H 8900 2650 50  0001 L CNN "manufacturer"
F 11 "Analog to Digital Converters - ADC 12B 1MSPS 4Ch Sgl ended micro Pwr" H 8900 2750 50  0001 L CNN "mouser description"
F 12 "595-ADS7950SDBTR" H 8900 2850 50  0001 L CNN "mouser part number"
F 13 "30TSSOP" H 8900 2950 50  0001 L CNN "package"
F 14 "yes" H 8900 3050 50  0001 L CNN "rohs"
F 15 "+125°C" H 8900 3150 50  0001 L CNN "temperature range high"
F 16 "-40°C" H 8900 3250 50  0001 L CNN "temperature range low"
	1    8900 1450
	1    0    0    -1  
$EndComp
NoConn ~ 8900 3450
$Sheet
S 7200 750  3600 3700
U 605A68EB
F0 "ADS7950" 50
F1 "ADS7950.sch" 50
$EndSheet
Text GLabel 2150 850  2    50   Input ~ 0
V_D
$Comp
L power:GND #PWR01
U 1 1 605B07B9
P 2600 1050
F 0 "#PWR01" H 2600 800 50  0001 C CNN
F 1 "GND" H 2605 877 50  0000 C CNN
F 2 "" H 2600 1050 50  0001 C CNN
F 3 "" H 2600 1050 50  0001 C CNN
	1    2600 1050
	1    0    0    -1  
$EndComp
Text GLabel 2150 1550 2    50   Input ~ 0
MOSI
Text GLabel 2150 1450 2    50   Input ~ 0
MISO
Text GLabel 2150 1250 2    50   Input ~ 0
SCLK
Text GLabel 2150 1350 2    50   Input ~ 0
nCS
$Comp
L Amplifier_Operational:MCP6004 U2
U 5 1 605B10C2
P 1550 2500
F 0 "U2" V 1225 2500 50  0000 C CNN
F 1 "MCP6004" V 1316 2500 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 1500 2600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 1600 2700 50  0001 C CNN
	5    1550 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 605B824C
P 900 2550
F 0 "#PWR08" H 900 2300 50  0001 C CNN
F 1 "GND" H 905 2377 50  0000 C CNN
F 2 "" H 900 2550 50  0001 C CNN
F 3 "" H 900 2550 50  0001 C CNN
	1    900  2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2550 900  2400
Wire Wire Line
	900  2400 1250 2400
Text GLabel 2100 2400 2    50   Input ~ 0
V_A
Wire Wire Line
	2100 2400 1850 2400
$Comp
L Amplifier_Operational:MCP6004 U2
U 1 1 605CA111
P 1650 3900
F 0 "U2" H 1650 4267 50  0000 C CNN
F 1 "MCP6004" H 1650 4176 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 1600 4000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 1700 4100 50  0001 C CNN
	1    1650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3900 2200 3900
Wire Wire Line
	2200 3900 2200 4200
Wire Wire Line
	2200 4200 1150 4200
Wire Wire Line
	1150 4200 1150 4000
Wire Wire Line
	1150 4000 1350 4000
$Comp
L Device:R_Small R2
U 1 1 605D1272
P 800 4050
F 0 "R2" H 859 4096 50  0000 L CNN
F 1 "10k" H 859 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 800 4050 50  0001 C CNN
F 3 "~" H 800 4050 50  0001 C CNN
	1    800  4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3950 800  3800
Wire Wire Line
	800  3800 1350 3800
$Comp
L Device:R_Small R1
U 1 1 605D3B9E
P 800 3550
F 0 "R1" H 859 3596 50  0000 L CNN
F 1 "10k" H 859 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 800 3550 50  0001 C CNN
F 3 "~" H 800 3550 50  0001 C CNN
	1    800  3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3650 800  3800
Connection ~ 800  3800
Text GLabel 1000 3250 2    50   Input ~ 0
V_A
$Comp
L power:GND #PWR09
U 1 1 605DC693
P 800 4300
F 0 "#PWR09" H 800 4050 50  0001 C CNN
F 1 "GND" H 805 4127 50  0000 C CNN
F 2 "" H 800 4300 50  0001 C CNN
F 3 "" H 800 4300 50  0001 C CNN
	1    800  4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4300 800  4150
Wire Wire Line
	1000 3250 800  3250
Wire Wire Line
	800  3250 800  3450
Text GLabel 2450 3900 2    50   Input ~ 0
V_ref
Wire Wire Line
	2450 3900 2200 3900
Connection ~ 2200 3900
$Sheet
S 600  3050 2350 1600
U 605EDB39
F0 "voltage_ref" 50
F1 "voltage_ref.sch" 50
$EndSheet
Text GLabel 1050 5300 0    50   Input ~ 0
V_ref
Text GLabel 1050 5800 0    50   Input ~ 0
V_ref
Text GLabel 2550 5300 2    50   Input ~ 0
V_ref
Text GLabel 2550 5200 2    50   Input ~ 0
Ch2
Text GLabel 1050 5200 0    50   Input ~ 0
Ch0
Text GLabel 1050 5700 0    50   Input ~ 0
Ch1
$Sheet
S 600  4850 2350 1300
U 6062BCDB
F0 "3DV15" 50
F1 "3DV15.sch" 50
$EndSheet
Wire Wire Line
	1050 5200 1300 5200
Wire Wire Line
	1300 5300 1050 5300
Wire Wire Line
	1300 5700 1050 5700
Wire Wire Line
	1050 5800 1300 5800
Wire Wire Line
	2550 5200 2300 5200
Wire Wire Line
	2300 5300 2550 5300
$Comp
L Amplifier_Operational:MCP6004 U2
U 2 1 6067B9D0
P 1950 6900
F 0 "U2" H 1950 7267 50  0000 C CNN
F 1 "MCP6004" H 1950 7176 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 1900 7000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 2000 7100 50  0001 C CNN
	2    1950 6900
	1    0    0    -1  
$EndComp
Text GLabel 1100 7000 0    50   Input ~ 0
V_ref
$Comp
L Device:R_Small R4
U 1 1 60680C0D
P 1350 7000
F 0 "R4" V 1450 7000 50  0000 C CNN
F 1 "10k" V 1245 7000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1350 7000 50  0001 C CNN
F 3 "~" H 1350 7000 50  0001 C CNN
	1    1350 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 7000 1250 7000
Text GLabel 2350 7250 3    50   Input ~ 0
R_pot_p
Text GLabel 1550 7250 3    50   Input ~ 0
R_pot_n
Wire Wire Line
	1450 7000 1550 7000
Wire Wire Line
	1550 7250 1550 7000
Connection ~ 1550 7000
Wire Wire Line
	1550 7000 1650 7000
Wire Wire Line
	2350 7250 2350 6900
Wire Wire Line
	2350 6900 2250 6900
Text GLabel 1100 6800 0    50   Input ~ 0
MXO
Wire Wire Line
	1100 6800 1650 6800
Text GLabel 8650 2250 0    50   Input ~ 0
AINP
Text GLabel 2500 6900 2    50   Input ~ 0
V_ampl
Wire Wire Line
	2500 6900 2350 6900
Connection ~ 2350 6900
$Sheet
S 600  6350 2250 1300
U 606A787B
F0 "amplifier" 50
F1 "amplifier.sch" 50
$EndSheet
$Comp
L Potentiometer_Digital:MCP4011-xxxxMS U4
U 1 1 606B49F1
P 4000 1350
F 0 "U4" H 4250 1800 50  0000 C CNN
F 1 "MCP4011-xxxxMS" H 4250 1700 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 4050 1100 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21978c.pdf, MSOP-8" H 4050 800 50  0001 L CNN
	1    4000 1350
	1    0    0    -1  
$EndComp
Text GLabel 3750 750  0    50   Input ~ 0
V_D
Wire Wire Line
	3750 750  3900 750 
Wire Wire Line
	3900 750  3900 950 
$Comp
L power:GND #PWR010
U 1 1 606BE2DC
P 3900 1800
F 0 "#PWR010" H 3900 1550 50  0001 C CNN
F 1 "GND" H 3905 1627 50  0000 C CNN
F 2 "" H 3900 1800 50  0001 C CNN
F 3 "" H 3900 1800 50  0001 C CNN
	1    3900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1800 3900 1650
Text GLabel 3450 1350 0    50   Input ~ 0
GPIO1
Wire Wire Line
	3450 1350 3600 1350
Text GLabel 3450 1450 0    50   Input ~ 0
GPIO0
Wire Wire Line
	3450 1450 3600 1450
NoConn ~ 4400 1150
Text GLabel 4600 1450 2    50   Input ~ 0
R_pot_n
Wire Wire Line
	4600 1450 4400 1450
Text GLabel 4600 1250 2    50   Input ~ 0
R_pot_p
Wire Wire Line
	4600 1250 4400 1250
$Sheet
S 2950 600  2100 1500
U 606E4CA4
F0 "MCP4011" 50
F1 "MCP4011.sch" 50
$EndSheet
NoConn ~ 10000 1650
NoConn ~ 10000 1750
Text GLabel 2150 950  2    50   Input ~ 0
V_A
$Comp
L Connector:RJ45 J1
U 1 1 611ABAAB
P 1250 1250
F 0 "J1" H 920 1254 50  0000 R CNN
F 1 "RJ45" H 920 1345 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Ninigi_GE" V 1250 1275 50  0001 C CNN
F 3 "~" V 1250 1275 50  0001 C CNN
	1    1250 1250
	1    0    0    -1  
$EndComp
NoConn ~ 1650 1150
Wire Wire Line
	2150 850  1650 850 
Wire Wire Line
	2600 1050 1650 1050
Wire Wire Line
	2150 1350 1650 1350
$Sheet
S 650  650  2150 1100
U 6120DC8B
F0 "conn" 50
F1 "conn.sch" 50
$EndSheet
$Sheet
S 650  2050 1750 800 
U 61224960
F0 "supply" 50
F1 "supply.sch" 50
$EndSheet
Text GLabel 10250 2150 2    50   Input ~ 0
MISO
Wire Wire Line
	10000 2150 10250 2150
$Comp
L PREMO_coils:3DV15_A_S0900J U3
U 1 1 6124C5ED
P 1800 5500
F 0 "U3" H 1800 6065 50  0000 C CNN
F 1 "3DV15_A_S0900J" H 1800 5974 50  0000 C CNN
F 2 "PREMO_coils:3DV15_A_S0900J" H 1950 5700 50  0001 C CNN
F 3 "" H 1950 5700 50  0001 C CNN
	1    1800 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1450 1650 1450
Wire Wire Line
	2150 950  1650 950 
Wire Wire Line
	2150 1250 1650 1250
Wire Wire Line
	1650 1550 2150 1550
$Sheet
S 5600 4700 5550 1750
U 60791594
F0 "antialiasing_filter" 50
F1 "antialiasing_filter.sch" 50
$EndSheet
Wire Wire Line
	10700 5650 10250 5650
Text GLabel 10700 5650 2    50   Input ~ 0
AINP
Wire Wire Line
	9200 6150 9200 6000
$Comp
L power:GND #PWR012
U 1 1 6077C439
P 9200 6150
F 0 "#PWR012" H 9200 5900 50  0001 C CNN
F 1 "GND" H 9205 5977 50  0000 C CNN
F 2 "" H 9200 6150 50  0001 C CNN
F 3 "" H 9200 6150 50  0001 C CNN
	1    9200 6150
	1    0    0    -1  
$EndComp
Connection ~ 10250 5650
Wire Wire Line
	10250 5000 10250 5650
Wire Wire Line
	9550 5000 10250 5000
Wire Wire Line
	8700 5550 8850 5550
Connection ~ 8700 5550
Wire Wire Line
	8700 5000 8700 5550
Wire Wire Line
	9250 5000 8700 5000
$Comp
L Device:C C11
U 1 1 6076E4C3
P 9400 5000
F 0 "C11" H 9515 5046 50  0000 L CNN
F 1 "100n" H 9450 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9438 4850 50  0001 C CNN
F 3 "~" H 9400 5000 50  0001 C CNN
	1    9400 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10250 5650 10100 5650
Wire Wire Line
	10250 6000 10250 5650
Wire Wire Line
	9450 6000 10250 6000
Wire Wire Line
	9450 5750 9450 6000
Wire Wire Line
	9500 5750 9450 5750
Wire Wire Line
	9200 5550 9500 5550
Connection ~ 9200 5550
Wire Wire Line
	9200 5700 9200 5550
$Comp
L Device:C C10
U 1 1 60760CAC
P 9200 5850
F 0 "C10" H 9250 5950 50  0000 L CNN
F 1 "100n" H 9200 5750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9238 5700 50  0001 C CNN
F 3 "~" H 9200 5850 50  0001 C CNN
	1    9200 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5550 9200 5550
Wire Wire Line
	8550 5550 8700 5550
$Comp
L Device:R_Small R7
U 1 1 607513E3
P 8950 5550
F 0 "R7" V 9050 5550 50  0000 C CNN
F 1 "15k" V 8845 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8950 5550 50  0001 C CNN
F 3 "~" H 8950 5550 50  0001 C CNN
	1    8950 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 5550 8350 5550
Wire Wire Line
	8250 5650 8250 5550
Wire Wire Line
	8100 5650 8250 5650
$Comp
L Device:R_Small R6
U 1 1 60747582
P 8450 5550
F 0 "R6" V 8550 5550 50  0000 C CNN
F 1 "15k" V 8345 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8450 5550 50  0001 C CNN
F 3 "~" H 8450 5550 50  0001 C CNN
	1    8450 5550
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:MCP6004 U2
U 4 1 60746317
P 9800 5650
F 0 "U2" H 9800 6017 50  0000 C CNN
F 1 "MCP6004" H 9800 5926 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 9750 5750 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 9850 5850 50  0001 C CNN
	4    9800 5650
	1    0    0    -1  
$EndComp
Connection ~ 8100 5650
Wire Wire Line
	8100 5000 8100 5650
Wire Wire Line
	7400 5000 8100 5000
Wire Wire Line
	6550 5550 6700 5550
Connection ~ 6550 5550
Wire Wire Line
	6550 5000 6550 5550
Wire Wire Line
	7100 5000 6550 5000
$Comp
L Device:C C9
U 1 1 60739880
P 7250 5000
F 0 "C9" H 7365 5046 50  0000 L CNN
F 1 "100n" H 7300 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7288 4850 50  0001 C CNN
F 3 "~" H 7250 5000 50  0001 C CNN
	1    7250 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 6150 7050 6000
$Comp
L power:GND #PWR011
U 1 1 6073426D
P 7050 6150
F 0 "#PWR011" H 7050 5900 50  0001 C CNN
F 1 "GND" H 7055 5977 50  0000 C CNN
F 2 "" H 7050 6150 50  0001 C CNN
F 3 "" H 7050 6150 50  0001 C CNN
	1    7050 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5650 7950 5650
Wire Wire Line
	8100 6000 8100 5650
Wire Wire Line
	7300 6000 8100 6000
Wire Wire Line
	7300 5750 7300 6000
Wire Wire Line
	7350 5750 7300 5750
Wire Wire Line
	7050 5550 7350 5550
Connection ~ 7050 5550
Wire Wire Line
	7050 5700 7050 5550
$Comp
L Device:C C8
U 1 1 6072A0F7
P 7050 5850
F 0 "C8" H 7165 5896 50  0000 L CNN
F 1 "100n" H 7100 5750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7088 5700 50  0001 C CNN
F 3 "~" H 7050 5850 50  0001 C CNN
	1    7050 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5550 7050 5550
Wire Wire Line
	6400 5550 6550 5550
$Comp
L Device:R_Small R5
U 1 1 6071F484
P 6800 5550
F 0 "R5" V 6900 5550 50  0000 C CNN
F 1 "15k" V 6695 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6800 5550 50  0001 C CNN
F 3 "~" H 6800 5550 50  0001 C CNN
	1    6800 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 5550 6200 5550
$Comp
L Device:R_Small R3
U 1 1 6071A64A
P 6300 5550
F 0 "R3" V 6400 5550 50  0000 C CNN
F 1 "15k" V 6195 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6300 5550 50  0001 C CNN
F 3 "~" H 6300 5550 50  0001 C CNN
	1    6300 5550
	0    1    1    0   
$EndComp
Text GLabel 6000 5550 0    50   Input ~ 0
V_ampl
$Comp
L Amplifier_Operational:MCP6004 U2
U 3 1 60712177
P 7650 5650
F 0 "U2" H 7650 6017 50  0000 C CNN
F 1 "MCP6004" H 7650 5926 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 7600 5750 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 7700 5850 50  0001 C CNN
	3    7650 5650
	1    0    0    -1  
$EndComp
Text GLabel 4350 3900 3    50   Input ~ 0
AINP
Text GLabel 4250 3900 3    50   Input ~ 0
V_ampl
Text GLabel 4150 3900 3    50   Input ~ 0
MXO
Text GLabel 5300 3400 3    50   Input ~ 0
V_D
Text GLabel 4900 3400 3    50   Input ~ 0
V_A
Text GLabel 4050 3900 3    50   Input ~ 0
V_ref
Text GLabel 4150 3350 3    50   Input ~ 0
GPIO1
Text GLabel 4050 3350 3    50   Input ~ 0
GPIO0
Text GLabel 5100 2850 3    50   Input ~ 0
MISO
Text GLabel 5000 2850 3    50   Input ~ 0
MOSI
Text GLabel 5200 2850 3    50   Input ~ 0
SCLK
Text GLabel 4900 2850 3    50   Input ~ 0
nCS
Text GLabel 4250 2850 3    50   Input ~ 0
Ch2
Text GLabel 4150 2850 3    50   Input ~ 0
Ch1
Text GLabel 4050 2850 3    50   Input ~ 0
Ch0
$Sheet
S 3800 2600 2300 1750
U 61336045
F0 "test_pads" 50
F1 "test_pads.sch" 50
$EndSheet
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 6178D51A
P 4150 3150
F 0 "J3" V 4212 3194 50  0000 L CNN
F 1 "Conn_01x02_Male" V 4303 3194 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4150 3150 50  0001 C CNN
F 3 "~" H 4150 3150 50  0001 C CNN
	1    4150 3150
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 6178EC9F
P 4150 2650
F 0 "J2" V 4212 2794 50  0000 L CNN
F 1 "Conn_01x03_Male" V 4303 2794 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4150 2650 50  0001 C CNN
F 3 "~" H 4150 2650 50  0001 C CNN
	1    4150 2650
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 6178FF79
P 5100 2650
F 0 "J6" V 5162 2794 50  0000 L CNN
F 1 "Conn_01x04_Male" V 5253 2794 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5100 2650 50  0001 C CNN
F 3 "~" H 5100 2650 50  0001 C CNN
	1    5100 2650
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 6179573E
P 4900 3200
F 0 "J5" V 4962 3244 50  0000 L CNN
F 1 "Conn_01x01_Male" V 5053 3244 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4900 3200 50  0001 C CNN
F 3 "~" H 4900 3200 50  0001 C CNN
	1    4900 3200
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J7
U 1 1 61795A13
P 5300 3200
F 0 "J7" V 5362 3244 50  0000 L CNN
F 1 "Conn_01x01_Male" V 5453 3244 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5300 3200 50  0001 C CNN
F 3 "~" H 5300 3200 50  0001 C CNN
	1    5300 3200
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 61796076
P 4250 3700
F 0 "J4" V 4312 3844 50  0000 L CNN
F 1 "Conn_01x04_Male" V 4403 3844 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4250 3700 50  0001 C CNN
F 3 "~" H 4250 3700 50  0001 C CNN
	1    4250 3700
	0    1    1    0   
$EndComp
$EndSCHEMATC
