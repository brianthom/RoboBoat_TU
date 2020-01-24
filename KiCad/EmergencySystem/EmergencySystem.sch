EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Emergency Transmitter and Receiver"
Date "2020-01-23"
Rev "1"
Comp "Temple University College of Engineering"
Comment1 "Senior Design Project II"
Comment2 "RoboBoat - Team B04"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AdafruitBoards:Feather_32u4_RFM95 U6
U 1 1 5E28C1D5
P 7600 3100
F 0 "U6" H 7200 4050 50  0000 C CNN
F 1 "Feather_32u4_RFM95" H 7550 3950 50  0000 C CNN
F 2 "" H 7200 4100 50  0001 C CNN
F 3 "" H 7200 4100 50  0001 C CNN
	1    7600 3100
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_Parts:Elegoo_4RelayModule U5
U 1 1 5E28EA67
P 5850 2400
F 0 "U5" H 5450 3300 50  0000 C CNN
F 1 "Elegoo_4RelayModule" H 5800 3200 50  0000 C CNN
F 2 "" H 6000 3100 50  0001 C CNN
F 3 "" H 6000 3100 50  0001 C CNN
	1    5850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1600 6650 1750
Wire Wire Line
	6650 1750 6450 1750
NoConn ~ 6450 1850
NoConn ~ 6950 2550
NoConn ~ 6950 2350
$Comp
L RoboBoat_Parts:T3_EmergencyLight_RED U1
U 1 1 5E2B96F8
P 3350 2400
F 0 "U1" H 3000 2800 50  0000 C CNN
F 1 "T3_EmergencyLight_RED" H 3400 2700 50  0000 C CNN
F 2 "" H 3950 2650 50  0001 C CNN
F 3 "" H 3950 2650 50  0001 C CNN
	1    3350 2400
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_Parts:T3_EmergencyLight_BLUE U2
U 1 1 5E2B9CF9
P 3350 3250
F 0 "U2" H 3000 3650 50  0000 C CNN
F 1 "T3_EmergencyLight_BLUE" H 3400 3550 50  0000 C CNN
F 2 "" H 3950 3500 50  0001 C CNN
F 3 "" H 3950 3500 50  0001 C CNN
	1    3350 3250
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_Parts:T3_EmergencyLight_AMBER U3
U 1 1 5E2BA9DC
P 3400 4100
F 0 "U3" H 3000 4500 50  0000 C CNN
F 1 "T3_EmergencyLight_AMBER" H 3450 4400 50  0000 C CNN
F 2 "" H 4000 4350 50  0001 C CNN
F 3 "" H 4000 4350 50  0001 C CNN
	1    3400 4100
	1    0    0    -1  
$EndComp
NoConn ~ 3800 2400
NoConn ~ 3800 2500
NoConn ~ 3800 2600
NoConn ~ 3800 3250
NoConn ~ 3800 3350
NoConn ~ 3800 3450
NoConn ~ 3800 4100
NoConn ~ 3800 4200
NoConn ~ 3800 4300
Wire Wire Line
	3800 3050 4000 3050
Wire Wire Line
	4000 3050 4000 2750
Wire Wire Line
	4000 2750 2750 2750
Wire Wire Line
	3800 3900 4000 3900
Wire Wire Line
	4000 3900 4000 3600
Wire Wire Line
	4000 3600 2750 3600
Wire Wire Line
	3800 2200 4000 2200
Wire Wire Line
	4000 2200 4000 1900
Wire Wire Line
	2750 1900 2750 2750
Connection ~ 2750 2750
Wire Wire Line
	2750 2750 2750 3600
Wire Wire Line
	5300 2300 3800 2300
NoConn ~ 5300 2700
NoConn ~ 5300 2100
NoConn ~ 5300 3100
$Comp
L RoboBoat_Parts:e-Boot_BuckConverter U4
U 1 1 5E2CADEC
P 7050 1050
F 0 "U4" H 6650 1250 50  0000 C CNN
F 1 "e-Boot_BuckConverter" H 7050 1200 50  0000 C CNN
F 2 "" H 6950 1300 50  0001 C CNN
F 3 "" H 6950 1300 50  0001 C CNN
	1    7050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3000 5300 3000
Wire Wire Line
	5100 3250 5100 3000
Wire Wire Line
	5100 2600 5300 2600
Wire Wire Line
	5100 2850 5100 2600
Wire Wire Line
	4750 2850 4750 2800
Wire Wire Line
	4750 2850 5100 2850
Wire Wire Line
	4750 3250 4750 3200
Wire Wire Line
	4750 3250 5100 3250
Wire Wire Line
	4400 2900 5300 2900
Wire Wire Line
	4400 4000 3800 4000
Wire Wire Line
	4400 2900 4400 4000
Wire Wire Line
	4200 2500 4200 3150
Wire Wire Line
	4200 3150 3800 3150
Wire Wire Line
	4200 2500 5300 2500
Wire Wire Line
	7800 1000 7600 1000
NoConn ~ 5300 1900
Wire Wire Line
	5300 2200 4350 2200
Wire Wire Line
	4350 2050 4350 2200
Wire Wire Line
	850  1350 700  1350
Wire Wire Line
	4850 1800 5300 1800
$Comp
L Relay:RM50-xx21 K2
U 1 1 5E30192A
P 1150 1550
F 0 "K2" V 1717 1550 50  0000 C CNN
F 1 "HE1AN-S-DC12V" V 1626 1550 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Finder_32.21-x300" H 2420 1520 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Panasonic%20Electric%20Works%20PDFs/HE%20Relays%20TV-10,15.pdf" H 1150 1550 50  0001 C CNN
	1    1150 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	850  1750 700  1750
Wire Wire Line
	1550 1850 1450 1850
Wire Wire Line
	2600 1850 2500 1850
Wire Wire Line
	1900 1750 1750 1750
Wire Wire Line
	2500 1350 2650 1350
Wire Wire Line
	1900 1350 1450 1350
$Comp
L Relay:RM50-xx21 K1
U 1 1 5E34CE36
P 2200 1550
F 0 "K1" V 2767 1550 50  0000 C CNN
F 1 "HE1AN-S-DC12V" V 2676 1550 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_Finder_32.21-x300" H 3470 1520 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Panasonic%20Electric%20Works%20PDFs/HE%20Relays%20TV-10,15.pdf" H 2200 1550 50  0001 C CNN
	1    2200 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2350 2600 1850
$Comp
L Motor:Motor_DC M1
U 1 1 5E34CE3D
P 2600 2650
F 0 "M1" H 2758 2646 50  0000 L CNN
F 1 "Left_Motor" H 2758 2555 50  0000 L CNN
F 2 "" H 2600 2560 50  0001 C CNN
F 3 "~" H 2600 2560 50  0001 C CNN
	1    2600 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 2350 1550 1850
$Comp
L Motor:Motor_DC M2
U 1 1 5E32835F
P 1550 2650
F 0 "M2" H 1708 2646 50  0000 L CNN
F 1 "Right_Motor" H 1708 2555 50  0000 L CNN
F 2 "" H 1550 2560 50  0001 C CNN
F 3 "~" H 1550 2560 50  0001 C CNN
	1    1550 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	700  2250 700  1750
$Comp
L Device:CircuitBreaker_1P CB1
U 1 1 5E37879B
P 1750 2550
F 0 "CB1" H 1550 2850 50  0000 L CNN
F 1 "30A" H 1550 2750 50  0000 L CNN
F 2 "" H 1750 2550 50  0001 C CNN
F 3 "~" H 1750 2550 50  0001 C CNN
	1    1750 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 2250 1750 1750
$Comp
L Device:CircuitBreaker_1P CB2
U 1 1 5E379B92
P 700 2550
F 0 "CB2" H 500 2850 50  0000 L CNN
F 1 "30A" H 500 2750 50  0000 L CNN
F 2 "" H 700 2550 50  0001 C CNN
F 3 "~" H 700 2550 50  0001 C CNN
	1    700  2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 2150 9600 2150
Wire Wire Line
	9500 2050 9500 2150
Wire Wire Line
	9500 2300 9600 2300
Wire Wire Line
	6450 2750 6950 2750
Wire Wire Line
	6950 2850 6450 2850
Wire Wire Line
	6450 2950 6950 2950
Wire Wire Line
	6950 3050 6450 3050
Wire Wire Line
	6950 2650 6750 2650
Wire Wire Line
	6750 2650 6750 2100
Wire Wire Line
	6950 2450 6850 2450
Wire Wire Line
	6850 2450 6850 2000
Wire Wire Line
	6850 2000 6450 2000
Wire Wire Line
	8350 2950 8650 2950
Wire Wire Line
	8650 2950 8650 2150
Connection ~ 9500 2150
$Comp
L Switch:SW_Push_Open SW1
U 1 1 5E319C04
P 9200 3150
F 0 "SW1" H 9200 3365 50  0000 C CNN
F 1 "E-StopButton01" H 9200 3274 50  0000 C CNN
F 2 "" H 9200 3350 50  0001 C CNN
F 3 "~" H 9200 3350 50  0001 C CNN
	1    9200 3150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW2
U 1 1 5E31A599
P 9950 3150
F 0 "SW2" H 9950 3365 50  0000 C CNN
F 1 "E-StopButton02" H 9950 3274 50  0000 C CNN
F 2 "" H 9950 3350 50  0001 C CNN
F 3 "~" H 9950 3350 50  0001 C CNN
	1    9950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3150 9750 3150
Wire Wire Line
	10150 3150 10400 3150
Wire Wire Line
	9500 2300 9500 2450
Wire Wire Line
	9500 2450 10400 2450
Connection ~ 9500 2450
Wire Wire Line
	9500 2450 9500 2500
$Comp
L Device:R_US R1
U 1 1 5E32D955
P 8800 2750
F 0 "R1" H 8868 2796 50  0000 L CNN
F 1 "5k" H 8868 2705 50  0000 L CNN
F 2 "" V 8840 2740 50  0001 C CNN
F 3 "~" H 8800 2750 50  0001 C CNN
	1    8800 2750
	1    0    0    -1  
$EndComp
Connection ~ 6850 2000
Wire Wire Line
	8650 2150 9500 2150
Wire Wire Line
	6850 1900 6850 2000
Wire Wire Line
	8350 3150 8800 3150
Wire Wire Line
	8800 2900 8800 3150
Connection ~ 8800 3150
Wire Wire Line
	8800 3150 9000 3150
Wire Wire Line
	8800 2500 8800 2600
$Comp
L AdafruitBoards:Feather_32u4_RFM95 U8
U 1 1 5E368D4C
P 3050 5900
F 0 "U8" H 2650 6850 50  0000 C CNN
F 1 "Feather_32u4_RFM95" H 3000 6750 50  0000 C CNN
F 2 "" H 2650 6900 50  0001 C CNN
F 3 "" H 2650 6900 50  0001 C CNN
	1    3050 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2550 8350 2550
Wire Wire Line
	8450 2450 8350 2450
$Comp
L RoboBoat_Parts:OLED_I2C_Display U11
U 1 1 5E37A426
P 5450 6800
F 0 "U11" V 5900 6500 50  0000 L CNN
F 1 "OLED_I2C_Display" V 5800 6500 50  0000 L CNN
F 2 "" H 5450 6800 50  0001 C CNN
F 3 "" H 5450 6800 50  0001 C CNN
	1    5450 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:Antenna AE1
U 1 1 5E3998D7
P 6500 3900
F 0 "AE1" H 6300 3900 50  0000 L CNN
F 1 "Adafruit_900MHz_Antenna" H 5500 3800 50  0000 L CNN
F 2 "" H 6500 3900 50  0001 C CNN
F 3 "https://www.adafruit.com/product/3340" H 6500 3900 50  0001 C CNN
	1    6500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4100 6500 4200
Wire Wire Line
	6500 4200 7650 4200
Wire Wire Line
	7650 4200 7650 4000
$Comp
L RoboBoat_Parts:Adafruit_2200mAh_LiPo U10
U 1 1 5E3A59CD
P 5250 5300
F 0 "U10" H 4850 5550 50  0000 C CNN
F 1 "Adafruit_2200mAh_LiPo" H 5250 5450 50  0000 C CNN
F 2 "" H 4950 5350 50  0001 C CNN
F 3 "" H 4950 5350 50  0001 C CNN
	1    5250 5300
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:GND_Rx #PWR09
U 1 1 5E3B8FA2
P 9500 2500
F 0 "#PWR09" H 9500 2250 50  0001 C CNN
F 1 "GND_Rx" H 9505 2327 50  0000 C CNN
F 2 "" H 9500 2500 50  0001 C CNN
F 3 "" H 9500 2500 50  0001 C CNN
	1    9500 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:Antenna AE2
U 1 1 5E3D3C8B
P 2500 7050
F 0 "AE2" H 2300 7050 50  0000 L CNN
F 1 "Adafruit_900MHz_Antenna" H 1500 6950 50  0000 L CNN
F 2 "" H 2500 7050 50  0001 C CNN
F 3 "https://www.adafruit.com/product/3340" H 2500 7050 50  0001 C CNN
	1    2500 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7250 2500 7350
Wire Wire Line
	2500 7350 3100 7350
Wire Wire Line
	3100 7350 3100 6800
Wire Wire Line
	7600 1150 7800 1150
$Comp
L RoboBoat_Parts:e-Boot_BuckConverter U9
U 1 1 5E3E2726
P 10150 2200
F 0 "U9" H 9750 2400 50  0000 C CNN
F 1 "e-Boot_BuckConverter" H 10150 2350 50  0000 C CNN
F 2 "" H 10050 2450 50  0001 C CNN
F 3 "" H 10050 2450 50  0001 C CNN
	1    10150 2200
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:+BATT_22.2V #PWR010
U 1 1 5E3E272D
P 10800 1950
F 0 "#PWR010" H 10800 1800 50  0001 C CNN
F 1 "+BATT_22.2V" H 10800 2100 50  0000 C CNN
F 2 "" H 10800 1950 50  0001 C CNN
F 3 "" H 10800 1950 50  0001 C CNN
	1    10800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 1950 10800 2150
Wire Wire Line
	10800 2300 10800 2500
$Comp
L RoboBoat_PowerSymbols:-BATT_22.2V #PWR011
U 1 1 5E3E2736
P 10800 2500
F 0 "#PWR011" H 10800 2350 50  0001 C CNN
F 1 "-BATT_22.2V" H 10815 2673 50  0000 C CNN
F 2 "" H 10800 2500 50  0001 C CNN
F 3 "" H 10800 2500 50  0001 C CNN
	1    10800 2500
	-1   0    0    1   
$EndComp
$Comp
L RoboBoat_PowerSymbols:+5V_Rx #PWR08
U 1 1 5E3E8F0E
P 9500 2050
F 0 "#PWR08" H 9500 1900 50  0001 C CNN
F 1 "+5V_Rx" H 9515 2223 50  0000 C CNN
F 2 "" H 9500 2050 50  0001 C CNN
F 3 "" H 9500 2050 50  0001 C CNN
	1    9500 2050
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:+5V_Rx #PWR021
U 1 1 5E3ECC07
P 6650 1600
F 0 "#PWR021" H 6650 1450 50  0001 C CNN
F 1 "+5V_Rx" H 6665 1773 50  0000 C CNN
F 2 "" H 6650 1600 50  0001 C CNN
F 3 "" H 6650 1600 50  0001 C CNN
	1    6650 1600
	1    0    0    -1  
$EndComp
$Comp
L EmergencySystem-rescue:+3V3_Rx-RoboBoat_PowerSymbols #PWR022
U 1 1 5E3ED7E6
P 6850 1900
F 0 "#PWR022" H 6850 1750 50  0001 C CNN
F 1 "+3V3_Rx" H 6865 2073 50  0000 C CNN
F 2 "" H 6850 1900 50  0001 C CNN
F 3 "" H 6850 1900 50  0001 C CNN
	1    6850 1900
	1    0    0    -1  
$EndComp
$Comp
L EmergencySystem-rescue:+3V3_Rx-RoboBoat_PowerSymbols #PWR025
U 1 1 5E3EDF11
P 8800 2500
F 0 "#PWR025" H 8800 2350 50  0001 C CNN
F 1 "+3V3_Rx" H 8815 2673 50  0000 C CNN
F 2 "" H 8800 2500 50  0001 C CNN
F 3 "" H 8800 2500 50  0001 C CNN
	1    8800 2500
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:GND_Rx #PWR020
U 1 1 5E3EE7CE
P 6550 2250
F 0 "#PWR020" H 6550 2000 50  0001 C CNN
F 1 "GND_Rx" H 6555 2077 50  0000 C CNN
F 2 "" H 6550 2250 50  0001 C CNN
F 3 "" H 6550 2250 50  0001 C CNN
	1    6550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2100 6550 2100
Wire Wire Line
	6550 2250 6550 2100
Connection ~ 6550 2100
Wire Wire Line
	6550 2100 6750 2100
Wire Wire Line
	2400 5450 2000 5450
Wire Wire Line
	2000 5450 2000 5550
Wire Wire Line
	2400 5250 2000 5250
Wire Wire Line
	2000 5150 2000 5250
$Comp
L RoboBoat_PowerSymbols:+3V3_Tx #PWR04
U 1 1 5E4013CA
P 2000 5150
F 0 "#PWR04" H 2000 5000 50  0001 C CNN
F 1 "+3V3_Tx" H 2015 5323 50  0000 C CNN
F 2 "" H 2000 5150 50  0001 C CNN
F 3 "" H 2000 5150 50  0001 C CNN
	1    2000 5150
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:GND_Tx #PWR05
U 1 1 5E401E93
P 2000 5550
F 0 "#PWR05" H 2000 5300 50  0001 C CNN
F 1 "GND_Tx" H 2005 5377 50  0000 C CNN
F 2 "" H 2000 5550 50  0001 C CNN
F 3 "" H 2000 5550 50  0001 C CNN
	1    2000 5550
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:GND_Tx #PWR015
U 1 1 5E402329
P 4450 6550
F 0 "#PWR015" H 4450 6300 50  0001 C CNN
F 1 "GND_Tx" H 4455 6377 50  0000 C CNN
F 2 "" H 4450 6550 50  0001 C CNN
F 3 "" H 4450 6550 50  0001 C CNN
	1    4450 6550
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:+3V3_Tx #PWR018
U 1 1 5E402DCF
P 4850 6650
F 0 "#PWR018" H 4850 6500 50  0001 C CNN
F 1 "+3V3_Tx" H 4865 6823 50  0000 C CNN
F 2 "" H 4850 6650 50  0001 C CNN
F 3 "" H 4850 6650 50  0001 C CNN
	1    4850 6650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW4
U 1 1 5E412987
P 4250 5250
F 0 "SW4" H 4250 5485 50  0000 C CNN
F 1 "ON/OFF_Switch" H 4250 5394 50  0000 C CNN
F 2 "" H 4250 5250 50  0001 C CNN
F 3 "~" H 4250 5250 50  0001 C CNN
	1    4250 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5350 3800 5350
Wire Wire Line
	3800 5250 4050 5250
Wire Wire Line
	4450 5250 4700 5250
$Comp
L RoboBoat_Parts:Adafruit_2200mAh_LiPo U7
U 1 1 5E46FEC4
P 9600 1650
F 0 "U7" H 9200 1900 50  0000 C CNN
F 1 "Adafruit_2200mAh_LiPo" H 9600 1800 50  0000 C CNN
F 2 "" H 9300 1700 50  0001 C CNN
F 3 "" H 9300 1700 50  0001 C CNN
	1    9600 1650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW3
U 1 1 5E46FECA
P 8750 1600
F 0 "SW3" H 8750 1835 50  0000 C CNN
F 1 "ON/OFF_Switch" H 8750 1744 50  0000 C CNN
F 2 "" H 8750 1600 50  0001 C CNN
F 3 "~" H 8750 1600 50  0001 C CNN
	1    8750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1600 8450 1600
Wire Wire Line
	8550 1700 9050 1700
Wire Wire Line
	8950 1600 9050 1600
Wire Wire Line
	8550 1700 8550 2550
Wire Wire Line
	8450 2450 8450 1600
$Comp
L power:+12V #PWR07
U 1 1 5E49B7EE
P 6250 1000
F 0 "#PWR07" H 6250 850 50  0001 C CNN
F 1 "+12V" H 6265 1173 50  0000 C CNN
F 2 "" H 6250 1000 50  0001 C CNN
F 3 "" H 6250 1000 50  0001 C CNN
	1    6250 1000
	1    0    0    -1  
$EndComp
Text GLabel 4250 6250 2    50   Input ~ 0
Rx_BatteryMonitor
Text GLabel 8750 3450 2    50   Input ~ 0
Tx_BatteryMonitor
Wire Wire Line
	8750 3450 8350 3450
Wire Wire Line
	10400 2450 10400 3150
$Comp
L Switch:SW_SPST SW5
U 1 1 5E4ECCD1
P 4750 6100
F 0 "SW5" H 4750 6335 50  0000 C CNN
F 1 "E-Stop_Switch" H 4750 6244 50  0000 C CNN
F 2 "" H 4750 6100 50  0001 C CNN
F 3 "~" H 4750 6100 50  0001 C CNN
	1    4750 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5E4EE25F
P 4150 5900
F 0 "R2" H 4218 5946 50  0000 L CNN
F 1 "5k" H 4218 5855 50  0000 L CNN
F 2 "" V 4190 5890 50  0001 C CNN
F 3 "~" H 4150 5900 50  0001 C CNN
	1    4150 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6650 3800 6650
Wire Wire Line
	4200 6550 3800 6550
Wire Wire Line
	4250 6250 3800 6250
Wire Wire Line
	3800 5950 3950 5950
Wire Wire Line
	3950 6100 4150 6100
Wire Wire Line
	3950 5950 3950 6100
Wire Wire Line
	4150 5750 4150 5700
Wire Wire Line
	4150 6050 4150 6100
Connection ~ 4150 6100
$Comp
L RoboBoat_PowerSymbols:+3V3_Tx #PWR013
U 1 1 5E52E3FB
P 4150 5700
F 0 "#PWR013" H 4150 5550 50  0001 C CNN
F 1 "+3V3_Tx" H 4165 5873 50  0000 C CNN
F 2 "" H 4150 5700 50  0001 C CNN
F 3 "" H 4150 5700 50  0001 C CNN
	1    4150 5700
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:GND_Tx #PWR019
U 1 1 5E52E645
P 5450 5800
F 0 "#PWR019" H 5450 5550 50  0001 C CNN
F 1 "GND_Tx" H 5455 5627 50  0000 C CNN
F 2 "" H 5450 5800 50  0001 C CNN
F 3 "" H 5450 5800 50  0001 C CNN
	1    5450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6100 5250 6100
Wire Wire Line
	4150 6100 4550 6100
Wire Wire Line
	5300 1700 5200 1700
Wire Wire Line
	5200 1700 5200 1150
Wire Wire Line
	5200 1150 6500 1150
Wire Wire Line
	10800 2300 10700 2300
Wire Wire Line
	10700 2150 10800 2150
Wire Wire Line
	2750 1900 3350 1900
Wire Wire Line
	3350 1850 3350 1900
Connection ~ 3350 1900
Wire Wire Line
	3350 1900 4000 1900
Wire Wire Line
	2650 1600 4850 1600
Wire Wire Line
	4850 1600 4850 1800
Wire Wire Line
	6500 1000 6250 1000
Wire Wire Line
	2650 1600 2650 1350
Wire Wire Line
	700  1350 700  1000
Wire Wire Line
	2600 3100 2600 2850
Wire Wire Line
	1750 3100 1750 2850
Wire Wire Line
	1900 3200 1900 3100
Wire Wire Line
	2450 3200 2450 3100
Wire Wire Line
	1900 3100 1750 3100
Wire Wire Line
	2600 3100 2450 3100
Wire Wire Line
	1400 3200 1400 3100
Wire Wire Line
	1550 3100 1400 3100
Wire Wire Line
	1550 3100 1550 2850
Wire Wire Line
	850  3200 850  3100
Wire Wire Line
	850  3100 700  3100
Wire Wire Line
	700  3100 700  2850
$Comp
L RoboBoat_PowerSymbols:+BATT_14.8V #PWR06
U 1 1 5E5A3498
P 850 3200
F 0 "#PWR06" H 850 3050 50  0001 C CNN
F 1 "+BATT_14.8V" V 850 3550 50  0000 C CNN
F 2 "" H 850 3200 50  0001 C CNN
F 3 "" H 850 3200 50  0001 C CNN
	1    850  3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 6750 4850 6750
Wire Wire Line
	4850 6750 4850 6650
Wire Wire Line
	5250 6100 5250 5700
Wire Wire Line
	5250 5700 5450 5700
Wire Wire Line
	5450 5700 5450 5800
Wire Wire Line
	4100 7050 5000 7050
Wire Wire Line
	4100 6650 4100 7050
Wire Wire Line
	4200 6950 5000 6950
Wire Wire Line
	4200 6550 4200 6950
Wire Wire Line
	4450 6550 4450 6400
Wire Wire Line
	4450 6400 4650 6400
Wire Wire Line
	4650 6400 4650 6850
Wire Wire Line
	4650 6850 5000 6850
Wire Notes Line
	1150 7550 6200 7550
Wire Notes Line
	6200 7550 6200 4700
Wire Notes Line
	1150 4700 1150 7550
Wire Notes Line
	6200 4700 1150 4700
Text Notes 2850 4850 0    79   ~ 16
Emergency Transmitter
$Comp
L RoboBoat_PowerSymbols:+BATT_22.2V #PWR023
U 1 1 5E7ED517
P 7800 1000
F 0 "#PWR023" H 7800 850 50  0001 C CNN
F 1 "+BATT_22.2V" H 7800 1150 50  0000 C CNN
F 2 "" H 7800 1000 50  0001 C CNN
F 3 "" H 7800 1000 50  0001 C CNN
	1    7800 1000
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:-BATT_22.2V #PWR024
U 1 1 5E7EDB2F
P 7800 1150
F 0 "#PWR024" H 7800 1000 50  0001 C CNN
F 1 "-BATT_22.2V" H 7815 1323 50  0000 C CNN
F 2 "" H 7800 1150 50  0001 C CNN
F 3 "" H 7800 1150 50  0001 C CNN
	1    7800 1150
	-1   0    0    1   
$EndComp
$Comp
L RoboBoat_PowerSymbols:+BATT_22.2V #PWR014
U 1 1 5E7EE22E
P 4350 2050
F 0 "#PWR014" H 4350 1900 50  0001 C CNN
F 1 "+BATT_22.2V" H 4350 2200 50  0000 C CNN
F 2 "" H 4350 2050 50  0001 C CNN
F 3 "" H 4350 2050 50  0001 C CNN
	1    4350 2050
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:+BATT_22.2V #PWR017
U 1 1 5E7EEDA1
P 4750 3200
F 0 "#PWR017" H 4750 3050 50  0001 C CNN
F 1 "+BATT_22.2V" H 4750 3350 50  0000 C CNN
F 2 "" H 4750 3200 50  0001 C CNN
F 3 "" H 4750 3200 50  0001 C CNN
	1    4750 3200
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:+BATT_22.2V #PWR016
U 1 1 5E7EE89A
P 4750 2800
F 0 "#PWR016" H 4750 2650 50  0001 C CNN
F 1 "+BATT_22.2V" H 4750 2950 50  0000 C CNN
F 2 "" H 4750 2800 50  0001 C CNN
F 3 "" H 4750 2800 50  0001 C CNN
	1    4750 2800
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:+BATT_22.2V #PWR012
U 1 1 5E7F5B3E
P 3350 1850
F 0 "#PWR012" H 3350 1700 50  0001 C CNN
F 1 "+BATT_22.2V" H 3350 2000 50  0000 C CNN
F 2 "" H 3350 1850 50  0001 C CNN
F 3 "" H 3350 1850 50  0001 C CNN
	1    3350 1850
	1    0    0    -1  
$EndComp
$Comp
L RoboBoat_PowerSymbols:+BATT_14.8V #PWR03
U 1 1 5E7F6561
P 1900 3200
F 0 "#PWR03" H 1900 3050 50  0001 C CNN
F 1 "+BATT_14.8V" V 1900 3550 50  0000 C CNN
F 2 "" H 1900 3200 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    1900 3200
	-1   0    0    1   
$EndComp
Wire Notes Line
	550  550  550  4450
Wire Notes Line
	11150 4450 11150 550 
Text Notes 5300 700  0    79   ~ 16
Emergency Receiver
Connection ~ 6250 1000
Wire Wire Line
	6250 1000 700  1000
NoConn ~ 2400 5150
NoConn ~ 2400 5350
NoConn ~ 2400 5550
NoConn ~ 2400 5650
NoConn ~ 2400 5750
NoConn ~ 2400 5850
NoConn ~ 2400 5950
NoConn ~ 2400 6050
NoConn ~ 2400 6150
NoConn ~ 2400 6250
NoConn ~ 2400 6350
NoConn ~ 2400 6450
NoConn ~ 2400 6550
NoConn ~ 2400 6650
NoConn ~ 3800 6450
NoConn ~ 3800 6350
NoConn ~ 3800 6150
NoConn ~ 3800 5550
NoConn ~ 3800 5650
NoConn ~ 3800 5750
NoConn ~ 6950 3150
NoConn ~ 6950 3250
NoConn ~ 6950 3350
NoConn ~ 6950 3450
NoConn ~ 6950 3550
NoConn ~ 6950 3650
NoConn ~ 6950 3750
NoConn ~ 6950 3850
NoConn ~ 8350 3850
NoConn ~ 8350 3750
NoConn ~ 8350 3650
NoConn ~ 8350 3550
NoConn ~ 8350 3350
NoConn ~ 8350 3250
NoConn ~ 8350 3050
NoConn ~ 8350 2850
NoConn ~ 8350 2750
Wire Notes Line
	550  550  11150 550 
Wire Notes Line
	550  4450 11150 4450
$Comp
L RoboBoat_PowerSymbols:-BATT_14.8V #PWR01
U 1 1 5E41AB6C
P 1400 3200
F 0 "#PWR01" H 1400 3050 50  0001 C CNN
F 1 "-BATT_14.8V" V 1400 3550 50  0000 C CNN
F 2 "" H 1400 3200 50  0001 C CNN
F 3 "" H 1400 3200 50  0001 C CNN
	1    1400 3200
	-1   0    0    1   
$EndComp
$Comp
L RoboBoat_PowerSymbols:-BATT_14.8V #PWR02
U 1 1 5E41B5C1
P 2450 3200
F 0 "#PWR02" H 2450 3050 50  0001 C CNN
F 1 "-BATT_14.8V" V 2450 3550 50  0000 C CNN
F 2 "" H 2450 3200 50  0001 C CNN
F 3 "" H 2450 3200 50  0001 C CNN
	1    2450 3200
	-1   0    0    1   
$EndComp
$EndSCHEMATC
