EESchema Schematic File Version 4
LIBS:silver-box-2-ecad-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L Relay:G6SK-2 K?
U 1 1 5D7A23DB
P 2150 1500
AR Path="/5D7A23DB" Ref="K?"  Part="1" 
AR Path="/5D79F9F4/5D7A23DB" Ref="K?"  Part="1" 
F 0 "K?" V 1283 1500 50  0000 C CNN
F 1 "EE2-4.5TNU" V 1374 1500 50  0000 C CNN
F 2 "" H 2700 1450 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_R7002_EC2_EE2.pdf" H 1850 1500 50  0001 C CNN
	1    2150 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 1600 1700 1800
Wire Wire Line
	1700 1800 1850 1800
Wire Wire Line
	1650 1700 1650 1800
$Comp
L power:GND #PWR?
U 1 1 5D7A23EF
P 1650 1850
AR Path="/5D7A23EF" Ref="#PWR?"  Part="1" 
AR Path="/5D79F9F4/5D7A23EF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 1600 50  0001 C CNN
F 1 "GND" H 1655 1677 50  0000 C CNN
F 2 "" H 1650 1850 50  0001 C CNN
F 3 "" H 1650 1850 50  0001 C CNN
	1    1650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 900  2550 1000
Wire Wire Line
	2550 1000 2450 1000
Wire Wire Line
	2550 2000 2550 2100
Wire Wire Line
	2550 2100 2450 2100
Wire Wire Line
	1850 2100 1750 2100
Wire Wire Line
	1850 1000 1750 1000
Wire Wire Line
	1750 1000 1750 1100
Text HLabel 2550 1300 2    50   Output ~ 0
OutRP
Text HLabel 2550 1700 2    50   Output ~ 0
OutRN
Text Label 1750 1100 3    50   ~ 0
Set_0
Text Label 1750 2200 3    50   ~ 0
Rst_0
Text HLabel 3500 2500 2    50   Output ~ 0
OutLP
$Comp
L Relay:G6SK-2 K?
U 1 1 5D7A7A88
P 3100 2700
AR Path="/5D7A7A88" Ref="K?"  Part="1" 
AR Path="/5D79F9F4/5D7A7A88" Ref="K?"  Part="1" 
F 0 "K?" V 2233 2700 50  0000 C CNN
F 1 "EE2-4.5TNU" V 2324 2700 50  0000 C CNN
F 2 "" H 3650 2650 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_R7002_EC2_EE2.pdf" H 2800 2700 50  0001 C CNN
	1    3100 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2800 2700 3000
Wire Wire Line
	2700 3000 2800 3000
Wire Wire Line
	2550 2900 2550 3000
$Comp
L power:GND #PWR?
U 1 1 5D7A7AA4
P 2550 3050
AR Path="/5D7A7AA4" Ref="#PWR?"  Part="1" 
AR Path="/5D79F9F4/5D7A7AA4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2550 2800 50  0001 C CNN
F 1 "GND" H 2555 2877 50  0000 C CNN
F 2 "" H 2550 3050 50  0001 C CNN
F 3 "" H 2550 3050 50  0001 C CNN
	1    2550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3200 3500 3300
Wire Wire Line
	3500 3300 3400 3300
Wire Wire Line
	2800 3300 2700 3300
Wire Wire Line
	2700 3300 2700 3400
Text Label 2700 3400 3    50   ~ 0
Rst_1
Wire Wire Line
	2450 1300 2550 1300
Wire Wire Line
	2550 1700 2450 1700
Wire Wire Line
	3500 2900 3400 2900
Wire Wire Line
	3500 2500 3400 2500
$Comp
L amphenol_acjs-mhd:Amphenol_ACJS-MHD* J?
U 1 1 5D7EFB46
P 1350 1600
F 0 "J?" H 1020 1500 50  0000 R CNN
F 1 "Amphenol_ACJS-MHDEM" H 1500 1950 50  0000 R CNN
F 2 "" H 1300 1600 50  0001 C CNN
F 3 "http://www.amphenolaudio.com/products/14-2/m-series-double/" H 1300 1600 50  0001 C CNN
	1    1350 1600
	1    0    0    1   
$EndComp
$Comp
L amphenol_acjs-mhd:Amphenol_ACJS-MHD* J?
U 2 1 5D7F0B59
P 2200 2800
F 0 "J?" H 1870 2700 50  0000 R CNN
F 1 "Amphenol_ACJS-MHDEM" H 1870 2791 50  0000 R CNN
F 2 "" H 2150 2800 50  0001 C CNN
F 3 "http://www.amphenolaudio.com/products/14-2/m-series-double/" H 2150 2800 50  0001 C CNN
	2    2200 2800
	1    0    0    1   
$EndComp
Wire Wire Line
	1550 1600 1700 1600
Wire Wire Line
	1550 1700 1650 1700
Wire Wire Line
	1550 1400 1850 1400
Wire Wire Line
	2400 2600 2800 2600
Wire Wire Line
	2400 2800 2700 2800
Wire Wire Line
	2400 2900 2550 2900
Wire Wire Line
	2700 2200 2700 2300
Wire Wire Line
	2800 2200 2700 2200
Wire Wire Line
	3500 2100 3500 2200
Wire Wire Line
	3500 2200 3400 2200
Text Label 2700 2300 3    50   ~ 0
Set_1
Wire Wire Line
	1750 2100 1750 2200
$Comp
L power:+5V #PWR?
U 1 1 5D80204E
P 2550 900
F 0 "#PWR?" H 2550 750 50  0001 C CNN
F 1 "+5V" H 2565 1073 50  0000 C CNN
F 2 "" H 2550 900 50  0001 C CNN
F 3 "" H 2550 900 50  0001 C CNN
	1    2550 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D80221C
P 3500 2100
F 0 "#PWR?" H 3500 1950 50  0001 C CNN
F 1 "+5V" H 3515 2273 50  0000 C CNN
F 2 "" H 3500 2100 50  0001 C CNN
F 3 "" H 3500 2100 50  0001 C CNN
	1    3500 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D802758
P 3500 3200
F 0 "#PWR?" H 3500 3050 50  0001 C CNN
F 1 "+5V" H 3515 3373 50  0000 C CNN
F 2 "" H 3500 3200 50  0001 C CNN
F 3 "" H 3500 3200 50  0001 C CNN
	1    3500 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D802A7E
P 2550 2000
F 0 "#PWR?" H 2550 1850 50  0001 C CNN
F 1 "+5V" H 2565 2173 50  0000 C CNN
F 2 "" H 2550 2000 50  0001 C CNN
F 3 "" H 2550 2000 50  0001 C CNN
	1    2550 2000
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Arrays:ULN2803ADWR Q?
U 1 1 5D803409
P 10300 4050
F 0 "Q?" H 9950 5137 60  0000 C CNN
F 1 "ULN2803ADWR" H 9950 5031 60  0000 C CNN
F 2 "digikey-footprints:SOIC-18_W7.5mm" H 10500 4250 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fuln2803a" H 10500 4350 60  0001 L CNN
F 4 "296-15777-1-ND" H 10500 4450 60  0001 L CNN "Digi-Key_PN"
F 5 "ULN2803ADWR" H 10500 4550 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10500 4650 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Arrays" H 10500 4750 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fuln2803a" H 10500 4850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/ULN2803ADWR/296-15777-1-ND/598088" H 10500 4950 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS 8NPN DARL 50V 0.5A 18SO" H 10500 5050 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 10500 5150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10500 5250 60  0001 L CNN "Status"
	1    10300 4050
	1    0    0    -1  
$EndComp
Text Label 10600 3250 0    50   ~ 0
Set_0
Text Label 10600 3350 0    50   ~ 0
Set_1
Text Label 10600 3450 0    50   ~ 0
Set_2
Text Label 10600 3550 0    50   ~ 0
Set_3
Text Label 10600 3650 0    50   ~ 0
Set_4
Text Label 10600 3850 0    50   ~ 0
Set_6
Text Label 10600 3950 0    50   ~ 0
Set_7
Text Label 10600 3750 0    50   ~ 0
Set_5
$Comp
L Interface_Expansion:MCP23017_SS U?
U 1 1 5D813835
P 8050 4500
F 0 "U?" H 7850 5600 50  0000 C CNN
F 1 "MCP23017_SS" H 7700 5500 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 8250 3500 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 8250 3400 50  0001 L CNN
	1    8050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4400 9300 4400
Wire Wire Line
	9300 3950 9400 3950
Wire Wire Line
	9250 3850 9400 3850
Wire Wire Line
	8750 4300 9250 4300
Wire Wire Line
	9200 3750 9400 3750
Wire Wire Line
	8750 4200 9200 4200
Wire Wire Line
	8750 4100 9150 4100
Wire Wire Line
	9150 3650 9400 3650
Wire Wire Line
	9100 4000 8750 4000
Wire Wire Line
	9100 3550 9400 3550
Wire Wire Line
	9050 3450 9400 3450
Wire Wire Line
	9000 3350 9400 3350
Wire Wire Line
	8750 3700 8950 3700
Wire Wire Line
	8950 3250 9400 3250
Wire Wire Line
	8750 3800 9000 3800
Wire Wire Line
	8750 3900 9050 3900
Wire Wire Line
	10500 3250 10600 3250
Wire Wire Line
	10500 3350 10600 3350
Wire Wire Line
	10500 3450 10600 3450
Wire Wire Line
	10500 3550 10600 3550
Wire Wire Line
	10500 3650 10600 3650
Wire Wire Line
	10500 3750 10600 3750
Wire Wire Line
	10500 3850 10600 3850
Wire Wire Line
	10500 3950 10600 3950
$Comp
L power:GND #PWR?
U 1 1 5D833307
P 10000 4400
F 0 "#PWR?" H 10000 4150 50  0001 C CNN
F 1 "GND" H 10005 4227 50  0000 C CNN
F 2 "" H 10000 4400 50  0001 C CNN
F 3 "" H 10000 4400 50  0001 C CNN
	1    10000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4400 10000 4350
$Comp
L Relay:G6SK-2 K?
U 1 1 5D84621B
P 2150 4700
AR Path="/5D84621B" Ref="K?"  Part="1" 
AR Path="/5D79F9F4/5D84621B" Ref="K?"  Part="1" 
F 0 "K?" V 1283 4700 50  0000 C CNN
F 1 "EE2-4.5TNU" V 1374 4700 50  0000 C CNN
F 2 "" H 2700 4650 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_R7002_EC2_EE2.pdf" H 1850 4700 50  0001 C CNN
	1    2150 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 4800 1700 5000
Wire Wire Line
	1700 5000 1850 5000
Wire Wire Line
	1650 4900 1650 5000
$Comp
L power:GND #PWR?
U 1 1 5D846224
P 1650 5050
AR Path="/5D846224" Ref="#PWR?"  Part="1" 
AR Path="/5D79F9F4/5D846224" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 4800 50  0001 C CNN
F 1 "GND" H 1655 4877 50  0000 C CNN
F 2 "" H 1650 5050 50  0001 C CNN
F 3 "" H 1650 5050 50  0001 C CNN
	1    1650 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4100 2550 4200
Wire Wire Line
	2550 4200 2450 4200
Wire Wire Line
	2550 5200 2550 5300
Wire Wire Line
	2550 5300 2450 5300
Wire Wire Line
	1850 5300 1750 5300
Wire Wire Line
	1850 4200 1750 4200
Wire Wire Line
	1750 4200 1750 4300
Text HLabel 2550 4500 2    50   Output ~ 0
OutRP
Text HLabel 2550 4900 2    50   Output ~ 0
OutRN
Text Label 1750 4300 3    50   ~ 0
Set_2
Text Label 1750 5400 3    50   ~ 0
Rst_2
Text HLabel 3500 6100 2    50   Output ~ 0
OutLN
Text HLabel 3500 5700 2    50   Output ~ 0
OutLP
$Comp
L Relay:G6SK-2 K?
U 1 1 5D846237
P 3100 5900
AR Path="/5D846237" Ref="K?"  Part="1" 
AR Path="/5D79F9F4/5D846237" Ref="K?"  Part="1" 
F 0 "K?" V 2233 5900 50  0000 C CNN
F 1 "EE2-4.5TNU" V 2324 5900 50  0000 C CNN
F 2 "" H 3650 5850 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_R7002_EC2_EE2.pdf" H 2800 5900 50  0001 C CNN
	1    3100 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 6000 2700 6200
Wire Wire Line
	2700 6200 2800 6200
Wire Wire Line
	2550 6100 2550 6200
$Comp
L power:GND #PWR?
U 1 1 5D846240
P 2550 6250
AR Path="/5D846240" Ref="#PWR?"  Part="1" 
AR Path="/5D79F9F4/5D846240" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2550 6000 50  0001 C CNN
F 1 "GND" H 2555 6077 50  0000 C CNN
F 2 "" H 2550 6250 50  0001 C CNN
F 3 "" H 2550 6250 50  0001 C CNN
	1    2550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6400 3500 6500
Wire Wire Line
	3500 6500 3400 6500
Wire Wire Line
	2800 6500 2700 6500
Wire Wire Line
	2700 6500 2700 6600
Text Label 2700 6600 3    50   ~ 0
Rst_3
Wire Wire Line
	2450 4500 2550 4500
Wire Wire Line
	2550 4900 2450 4900
Wire Wire Line
	3500 6100 3400 6100
Wire Wire Line
	3500 5700 3400 5700
$Comp
L amphenol_acjs-mhd:Amphenol_ACJS-MHD* J?
U 1 1 5D84624F
P 1350 4800
F 0 "J?" H 1020 4700 50  0000 R CNN
F 1 "Amphenol_ACJS-MHDEM" H 1500 5150 50  0000 R CNN
F 2 "" H 1300 4800 50  0001 C CNN
F 3 "http://www.amphenolaudio.com/products/14-2/m-series-double/" H 1300 4800 50  0001 C CNN
	1    1350 4800
	1    0    0    1   
$EndComp
Wire Wire Line
	1550 4800 1700 4800
Wire Wire Line
	1550 4900 1650 4900
Wire Wire Line
	1550 4600 1850 4600
Wire Wire Line
	2700 5400 2700 5500
Wire Wire Line
	2800 5400 2700 5400
Wire Wire Line
	3500 5300 3500 5400
Wire Wire Line
	3500 5400 3400 5400
Text Label 2700 5500 3    50   ~ 0
Set_3
Wire Wire Line
	1750 5300 1750 5400
$Comp
L power:+5V #PWR?
U 1 1 5D846267
P 2550 4100
F 0 "#PWR?" H 2550 3950 50  0001 C CNN
F 1 "+5V" H 2565 4273 50  0000 C CNN
F 2 "" H 2550 4100 50  0001 C CNN
F 3 "" H 2550 4100 50  0001 C CNN
	1    2550 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D84626D
P 3500 5300
F 0 "#PWR?" H 3500 5150 50  0001 C CNN
F 1 "+5V" H 3515 5473 50  0000 C CNN
F 2 "" H 3500 5300 50  0001 C CNN
F 3 "" H 3500 5300 50  0001 C CNN
	1    3500 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D846273
P 3500 6400
F 0 "#PWR?" H 3500 6250 50  0001 C CNN
F 1 "+5V" H 3515 6573 50  0000 C CNN
F 2 "" H 3500 6400 50  0001 C CNN
F 3 "" H 3500 6400 50  0001 C CNN
	1    3500 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D846279
P 2550 5200
F 0 "#PWR?" H 2550 5050 50  0001 C CNN
F 1 "+5V" H 2565 5373 50  0000 C CNN
F 2 "" H 2550 5200 50  0001 C CNN
F 3 "" H 2550 5200 50  0001 C CNN
	1    2550 5200
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Arrays:ULN2803ADWR Q?
U 1 1 5D86D97C
P 10300 5800
F 0 "Q?" H 9950 6887 60  0000 C CNN
F 1 "ULN2803ADWR" H 9950 6781 60  0000 C CNN
F 2 "digikey-footprints:SOIC-18_W7.5mm" H 10500 6000 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fuln2803a" H 10500 6100 60  0001 L CNN
F 4 "296-15777-1-ND" H 10500 6200 60  0001 L CNN "Digi-Key_PN"
F 5 "ULN2803ADWR" H 10500 6300 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10500 6400 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Arrays" H 10500 6500 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fuln2803a" H 10500 6600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/ULN2803ADWR/296-15777-1-ND/598088" H 10500 6700 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS 8NPN DARL 50V 0.5A 18SO" H 10500 6800 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 10500 6900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10500 7000 60  0001 L CNN "Status"
	1    10300 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3250 8950 3700
Wire Wire Line
	9000 3350 9000 3800
Wire Wire Line
	9050 3450 9050 3900
Wire Wire Line
	9100 3550 9100 4000
Wire Wire Line
	9150 3650 9150 4100
Wire Wire Line
	9200 3750 9200 4200
Wire Wire Line
	9250 3850 9250 4300
Wire Wire Line
	9300 3950 9300 4400
$Comp
L power:+5V #PWR?
U 1 1 5D8B5D28
P 11000 3900
F 0 "#PWR?" H 11000 3750 50  0001 C CNN
F 1 "+5V" H 11015 4073 50  0000 C CNN
F 2 "" H 11000 3900 50  0001 C CNN
F 3 "" H 11000 3900 50  0001 C CNN
	1    11000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 3900 11000 4050
Wire Wire Line
	11000 4050 10500 4050
Text Label 10600 5000 0    50   ~ 0
Rst_0
Text Label 10600 5100 0    50   ~ 0
Rst_1
Text Label 10600 5200 0    50   ~ 0
Rst_2
Text Label 10600 5300 0    50   ~ 0
Rst_3
Text Label 10600 5400 0    50   ~ 0
Rst_4
Text Label 10600 5500 0    50   ~ 0
Rst_5
Text Label 10600 5600 0    50   ~ 0
Rst_6
Text Label 10600 5700 0    50   ~ 0
Rst_7
$Comp
L power:+5V #PWR?
U 1 1 5D8BF5F9
P 11000 5650
F 0 "#PWR?" H 11000 5500 50  0001 C CNN
F 1 "+5V" H 11015 5823 50  0000 C CNN
F 2 "" H 11000 5650 50  0001 C CNN
F 3 "" H 11000 5650 50  0001 C CNN
	1    11000 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 5650 11000 5800
Wire Wire Line
	11000 5800 10500 5800
Wire Wire Line
	10500 5700 10600 5700
Wire Wire Line
	10500 5600 10600 5600
Wire Wire Line
	10600 5500 10500 5500
Wire Wire Line
	10500 5400 10600 5400
Wire Wire Line
	10500 5000 10600 5000
Wire Wire Line
	10500 5100 10600 5100
Wire Wire Line
	10500 5200 10600 5200
Wire Wire Line
	10500 5300 10600 5300
Wire Wire Line
	9300 5000 9300 4600
Wire Wire Line
	9300 4600 8750 4600
Wire Wire Line
	8750 4700 9250 4700
Wire Wire Line
	9250 4700 9250 5100
Wire Wire Line
	9250 5100 9400 5100
Wire Wire Line
	9300 5000 9400 5000
Wire Wire Line
	9400 5200 9200 5200
Wire Wire Line
	9200 5200 9200 4800
Wire Wire Line
	9200 4800 8750 4800
Wire Wire Line
	8750 4900 9150 4900
Wire Wire Line
	9150 4900 9150 5300
Wire Wire Line
	9150 5300 9400 5300
Wire Wire Line
	9400 5400 9100 5400
Wire Wire Line
	9100 5400 9100 5000
Wire Wire Line
	9100 5000 8750 5000
Wire Wire Line
	8750 5100 9050 5100
Wire Wire Line
	9050 5100 9050 5500
Wire Wire Line
	9050 5500 9400 5500
Wire Wire Line
	9400 5600 9000 5600
Wire Wire Line
	9000 5600 9000 5200
Wire Wire Line
	9000 5200 8750 5200
Wire Wire Line
	8750 5300 8950 5300
Wire Wire Line
	8950 5300 8950 5700
Wire Wire Line
	8950 5700 9400 5700
$Comp
L power:GND #PWR?
U 1 1 5D9508BA
P 10000 6200
F 0 "#PWR?" H 10000 5950 50  0001 C CNN
F 1 "GND" H 10005 6027 50  0000 C CNN
F 2 "" H 10000 6200 50  0001 C CNN
F 3 "" H 10000 6200 50  0001 C CNN
	1    10000 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 6200 10000 6100
Text HLabel 7250 3700 0    50   BiDi ~ 0
SDA
Wire Wire Line
	7250 3700 7350 3700
Text HLabel 7250 3800 0    50   Input ~ 0
SCL
Wire Wire Line
	7250 3800 7350 3800
NoConn ~ 7350 4300
NoConn ~ 7350 4400
Text HLabel 7250 4600 0    50   Input ~ 0
~Reset_GPIOX
Wire Wire Line
	7250 4600 7350 4600
$Comp
L power:+5V #PWR?
U 1 1 5D9BA73F
P 8050 2950
F 0 "#PWR?" H 8050 2800 50  0001 C CNN
F 1 "+5V" H 8065 3123 50  0000 C CNN
F 2 "" H 8050 2950 50  0001 C CNN
F 3 "" H 8050 2950 50  0001 C CNN
	1    8050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2950 8050 3000
$Comp
L power:GND #PWR?
U 1 1 5D9C49AC
P 8050 5650
F 0 "#PWR?" H 8050 5400 50  0001 C CNN
F 1 "GND" H 8055 5477 50  0000 C CNN
F 2 "" H 8050 5650 50  0001 C CNN
F 3 "" H 8050 5650 50  0001 C CNN
	1    8050 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5650 8050 5600
$Comp
L power:+5V #PWR?
U 1 1 5D84E8AF
P 5600 2000
F 0 "#PWR?" H 5600 1850 50  0001 C CNN
F 1 "+5V" H 5615 2173 50  0000 C CNN
F 2 "" H 5600 2000 50  0001 C CNN
F 3 "" H 5600 2000 50  0001 C CNN
	1    5600 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D84E8A9
P 6550 3200
F 0 "#PWR?" H 6550 3050 50  0001 C CNN
F 1 "+5V" H 6565 3373 50  0000 C CNN
F 2 "" H 6550 3200 50  0001 C CNN
F 3 "" H 6550 3200 50  0001 C CNN
	1    6550 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D84E8A3
P 6550 2100
F 0 "#PWR?" H 6550 1950 50  0001 C CNN
F 1 "+5V" H 6565 2273 50  0000 C CNN
F 2 "" H 6550 2100 50  0001 C CNN
F 3 "" H 6550 2100 50  0001 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D84E89D
P 5600 900
F 0 "#PWR?" H 5600 750 50  0001 C CNN
F 1 "+5V" H 5615 1073 50  0000 C CNN
F 2 "" H 5600 900 50  0001 C CNN
F 3 "" H 5600 900 50  0001 C CNN
	1    5600 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2100 4800 2200
Text Label 5750 2300 3    50   ~ 0
Set_5
Wire Wire Line
	6550 2200 6450 2200
Wire Wire Line
	6550 2100 6550 2200
Wire Wire Line
	5850 2200 5750 2200
Wire Wire Line
	5750 2200 5750 2300
Wire Wire Line
	5450 2900 5600 2900
Wire Wire Line
	5450 2800 5650 2800
Wire Wire Line
	5450 2600 5850 2600
Wire Wire Line
	4600 1400 4900 1400
Wire Wire Line
	4600 1700 4700 1700
Wire Wire Line
	4600 1600 4750 1600
$Comp
L amphenol_acjs-mhd:Amphenol_ACJS-MHD* J?
U 2 1 5D84E88B
P 5250 2800
F 0 "J?" H 4920 2700 50  0000 R CNN
F 1 "Amphenol_ACJS-MHDEM" H 5450 3150 50  0000 R CNN
F 2 "" H 5200 2800 50  0001 C CNN
F 3 "http://www.amphenolaudio.com/products/14-2/m-series-double/" H 5200 2800 50  0001 C CNN
	2    5250 2800
	1    0    0    1   
$EndComp
$Comp
L amphenol_acjs-mhd:Amphenol_ACJS-MHD* J?
U 1 1 5D84E885
P 4400 1600
F 0 "J?" H 4070 1500 50  0000 R CNN
F 1 "Amphenol_ACJS-MHDEM" H 4600 1950 50  0000 R CNN
F 2 "" H 4350 1600 50  0001 C CNN
F 3 "http://www.amphenolaudio.com/products/14-2/m-series-double/" H 4350 1600 50  0001 C CNN
	1    4400 1600
	1    0    0    1   
$EndComp
Wire Wire Line
	6550 2500 6450 2500
Wire Wire Line
	6550 2900 6450 2900
Wire Wire Line
	5600 1700 5500 1700
Wire Wire Line
	5500 1300 5600 1300
Text Label 5750 3400 3    50   ~ 0
Rst_5
Wire Wire Line
	5750 3300 5750 3400
Wire Wire Line
	5850 3300 5750 3300
Wire Wire Line
	6550 3300 6450 3300
Wire Wire Line
	6550 3200 6550 3300
$Comp
L power:GND #PWR?
U 1 1 5D84E876
P 5600 3050
AR Path="/5D84E876" Ref="#PWR?"  Part="1" 
AR Path="/5D79F9F4/5D84E876" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5600 2800 50  0001 C CNN
F 1 "GND" H 5605 2877 50  0000 C CNN
F 2 "" H 5600 3050 50  0001 C CNN
F 3 "" H 5600 3050 50  0001 C CNN
	1    5600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2900 5600 3000
Wire Wire Line
	5650 3000 5850 3000
Wire Wire Line
	5650 2800 5650 3000
$Comp
L Relay:G6SK-2 K?
U 1 1 5D84E86D
P 6150 2700
AR Path="/5D84E86D" Ref="K?"  Part="1" 
AR Path="/5D79F9F4/5D84E86D" Ref="K?"  Part="1" 
F 0 "K?" V 5283 2700 50  0000 C CNN
F 1 "EE2-4.5TNU" V 5374 2700 50  0000 C CNN
F 2 "" H 6700 2650 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_R7002_EC2_EE2.pdf" H 5850 2700 50  0001 C CNN
	1    6150 2700
	0    1    1    0   
$EndComp
Text HLabel 6550 2500 2    50   Output ~ 0
OutLP
Text HLabel 6550 2900 2    50   Output ~ 0
OutLN
Text Label 4800 2200 3    50   ~ 0
Rst_4
Text Label 4800 1100 3    50   ~ 0
Set_4
Text HLabel 5600 1700 2    50   Output ~ 0
OutRN
Text HLabel 5600 1300 2    50   Output ~ 0
OutRP
Wire Wire Line
	4800 1000 4800 1100
Wire Wire Line
	4900 1000 4800 1000
Wire Wire Line
	4900 2100 4800 2100
Wire Wire Line
	5600 2100 5500 2100
Wire Wire Line
	5600 2000 5600 2100
Wire Wire Line
	5600 1000 5500 1000
Wire Wire Line
	5600 900  5600 1000
$Comp
L power:GND #PWR?
U 1 1 5D84E85A
P 4700 1850
AR Path="/5D84E85A" Ref="#PWR?"  Part="1" 
AR Path="/5D79F9F4/5D84E85A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4700 1600 50  0001 C CNN
F 1 "GND" H 4705 1677 50  0000 C CNN
F 2 "" H 4700 1850 50  0001 C CNN
F 3 "" H 4700 1850 50  0001 C CNN
	1    4700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1700 4700 1800
Wire Wire Line
	4750 1800 4900 1800
Wire Wire Line
	4750 1600 4750 1800
$Comp
L Relay:G6SK-2 K?
U 1 1 5D84E851
P 5200 1500
AR Path="/5D84E851" Ref="K?"  Part="1" 
AR Path="/5D79F9F4/5D84E851" Ref="K?"  Part="1" 
F 0 "K?" V 4333 1500 50  0000 C CNN
F 1 "EE2-4.5TNU" V 4424 1500 50  0000 C CNN
F 2 "" H 5750 1450 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_R7002_EC2_EE2.pdf" H 4900 1500 50  0001 C CNN
	1    5200 1500
	0    1    1    0   
$EndComp
Text HLabel 3500 2900 2    50   Output ~ 0
OutLN
$Comp
L Relay:G6SK-2 K?
U 1 1 5D860113
P 5200 4700
AR Path="/5D860113" Ref="K?"  Part="1" 
AR Path="/5D79F9F4/5D860113" Ref="K?"  Part="1" 
F 0 "K?" V 4333 4700 50  0000 C CNN
F 1 "EE2-4.5TNU" V 4424 4700 50  0000 C CNN
F 2 "" H 5750 4650 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_R7002_EC2_EE2.pdf" H 4900 4700 50  0001 C CNN
	1    5200 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 4800 4750 5000
Wire Wire Line
	4750 5000 4900 5000
Wire Wire Line
	4700 4900 4700 5000
$Comp
L power:GND #PWR?
U 1 1 5D86011C
P 4700 5050
AR Path="/5D86011C" Ref="#PWR?"  Part="1" 
AR Path="/5D79F9F4/5D86011C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4700 4800 50  0001 C CNN
F 1 "GND" H 4705 4877 50  0000 C CNN
F 2 "" H 4700 5050 50  0001 C CNN
F 3 "" H 4700 5050 50  0001 C CNN
	1    4700 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4100 5600 4200
Wire Wire Line
	5600 4200 5500 4200
Wire Wire Line
	5600 5200 5600 5300
Wire Wire Line
	5600 5300 5500 5300
Wire Wire Line
	4900 5300 4800 5300
Wire Wire Line
	4900 4200 4800 4200
Wire Wire Line
	4800 4200 4800 4300
Text HLabel 5600 4500 2    50   Output ~ 0
OutRP
Text Label 4800 4300 3    50   ~ 0
Set_6
Text Label 4800 5400 3    50   ~ 0
Rst_6
Wire Wire Line
	5500 4500 5600 4500
Wire Wire Line
	5600 4900 5500 4900
Wire Wire Line
	4600 4800 4750 4800
Wire Wire Line
	4600 4900 4700 4900
Wire Wire Line
	4600 4600 4900 4600
Wire Wire Line
	4800 5300 4800 5400
$Comp
L power:+5V #PWR?
U 1 1 5D86015F
P 5600 4100
F 0 "#PWR?" H 5600 3950 50  0001 C CNN
F 1 "+5V" H 5615 4273 50  0000 C CNN
F 2 "" H 5600 4100 50  0001 C CNN
F 3 "" H 5600 4100 50  0001 C CNN
	1    5600 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D860171
P 5600 5200
F 0 "#PWR?" H 5600 5050 50  0001 C CNN
F 1 "+5V" H 5615 5373 50  0000 C CNN
F 2 "" H 5600 5200 50  0001 C CNN
F 3 "" H 5600 5200 50  0001 C CNN
	1    5600 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DA1A46F
P 7250 5000
F 0 "#PWR?" H 7250 4850 50  0001 C CNN
F 1 "+5V" H 7265 5173 50  0000 C CNN
F 2 "" H 7250 5000 50  0001 C CNN
F 3 "" H 7250 5000 50  0001 C CNN
	1    7250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5000 7250 5100
Wire Wire Line
	7250 5300 7350 5300
Wire Wire Line
	7350 5200 7250 5200
Connection ~ 7250 5200
Wire Wire Line
	7250 5200 7250 5300
Wire Wire Line
	7350 5100 7250 5100
Connection ~ 7250 5100
Wire Wire Line
	7250 5100 7250 5200
Wire Wire Line
	1550 5000 1650 5000
Connection ~ 1650 5000
Wire Wire Line
	1650 5000 1650 5050
Wire Wire Line
	1650 4900 1650 4700
Wire Wire Line
	1650 4700 1550 4700
Connection ~ 1650 4900
Wire Wire Line
	1650 4700 1650 4500
Wire Wire Line
	1650 4500 1550 4500
Connection ~ 1650 4700
Wire Wire Line
	1650 1800 1550 1800
Connection ~ 1650 1800
Wire Wire Line
	1650 1800 1650 1850
Wire Wire Line
	1650 1700 1650 1500
Wire Wire Line
	1650 1500 1550 1500
Connection ~ 1650 1700
Wire Wire Line
	1550 1300 1650 1300
Wire Wire Line
	1650 1300 1650 1500
Connection ~ 1650 1500
Wire Wire Line
	4600 1300 4700 1300
Wire Wire Line
	4700 1300 4700 1500
Connection ~ 4700 1700
Wire Wire Line
	4600 1500 4700 1500
Connection ~ 4700 1500
Wire Wire Line
	4700 1500 4700 1700
Wire Wire Line
	4600 1800 4700 1800
Connection ~ 4700 1800
Wire Wire Line
	4700 1800 4700 1850
Wire Wire Line
	5450 2500 5600 2500
Wire Wire Line
	5600 2500 5600 2700
Connection ~ 5600 2900
Wire Wire Line
	5450 2700 5600 2700
Connection ~ 5600 2700
Wire Wire Line
	5600 2700 5600 2900
Wire Wire Line
	5600 3000 5450 3000
Connection ~ 5600 3000
Wire Wire Line
	5600 3000 5600 3050
Wire Wire Line
	2400 2500 2550 2500
Wire Wire Line
	2550 2500 2550 2700
Connection ~ 2550 2900
Connection ~ 2550 2700
Wire Wire Line
	2550 2700 2550 2900
Wire Wire Line
	2400 2700 2550 2700
Wire Wire Line
	2550 3000 2400 3000
Connection ~ 2550 3000
Wire Wire Line
	2550 3000 2550 3050
Wire Wire Line
	2400 5800 2800 5800
Wire Wire Line
	2400 6000 2700 6000
Wire Wire Line
	2400 6100 2550 6100
$Comp
L amphenol_acjs-mhd:Amphenol_ACJS-MHD* J?
U 2 1 5D846255
P 2200 6000
F 0 "J?" H 1870 5900 50  0000 R CNN
F 1 "Amphenol_ACJS-MHDEM" H 1870 5991 50  0000 R CNN
F 2 "" H 2150 6000 50  0001 C CNN
F 3 "http://www.amphenolaudio.com/products/14-2/m-series-double/" H 2150 6000 50  0001 C CNN
	2    2200 6000
	1    0    0    1   
$EndComp
Wire Wire Line
	2400 5700 2550 5700
Wire Wire Line
	2550 5700 2550 5900
Connection ~ 2550 6100
Wire Wire Line
	2400 5900 2550 5900
Connection ~ 2550 5900
Wire Wire Line
	2550 5900 2550 6100
Connection ~ 2550 6200
Wire Wire Line
	2550 6200 2550 6250
Wire Wire Line
	2400 6200 2550 6200
Wire Wire Line
	4600 4500 4700 4500
Wire Wire Line
	4700 4500 4700 4700
Connection ~ 4700 4900
Wire Wire Line
	4600 4700 4700 4700
Connection ~ 4700 4700
Wire Wire Line
	4700 4700 4700 4900
Wire Wire Line
	4600 5000 4700 5000
Connection ~ 4700 5000
Wire Wire Line
	4700 5000 4700 5050
$Comp
L Connector:AudioJack3_Switch J?
U 1 1 5DCCE643
P 4400 4800
F 0 "J?" H 4121 4708 50  0000 R CNN
F 1 "ACJS-MHDRM" H 4600 5150 50  0000 R CNN
F 2 "" H 4400 4800 50  0001 C CNN
F 3 "~" H 4400 4800 50  0001 C CNN
	1    4400 4800
	1    0    0    1   
$EndComp
NoConn ~ 6450 2700
NoConn ~ 6450 3100
NoConn ~ 5500 1500
NoConn ~ 5500 1900
NoConn ~ 3400 3100
NoConn ~ 3400 2700
NoConn ~ 2450 1500
NoConn ~ 2450 1900
NoConn ~ 2450 4700
NoConn ~ 2450 5100
NoConn ~ 3400 5900
NoConn ~ 3400 6300
NoConn ~ 5500 5100
NoConn ~ 5500 4700
Text HLabel 5600 4900 2    50   Output ~ 0
OutLP
$Comp
L Relay:G6SK-2 K?
U 1 1 5DE3AB56
P 6150 6000
AR Path="/5DE3AB56" Ref="K?"  Part="1" 
AR Path="/5D79F9F4/5DE3AB56" Ref="K?"  Part="1" 
F 0 "K?" V 5283 6000 50  0000 C CNN
F 1 "EE2-4.5TNU" V 5374 6000 50  0000 C CNN
F 2 "" H 6700 5950 50  0001 L CNN
F 3 "https://content.kemet.com/datasheets/KEM_R7002_EC2_EE2.pdf" H 5850 6000 50  0001 C CNN
	1    6150 6000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE3AB62
P 5650 6350
AR Path="/5DE3AB62" Ref="#PWR?"  Part="1" 
AR Path="/5D79F9F4/5DE3AB62" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 6100 50  0001 C CNN
F 1 "GND" H 5655 6177 50  0000 C CNN
F 2 "" H 5650 6350 50  0001 C CNN
F 3 "" H 5650 6350 50  0001 C CNN
	1    5650 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5400 6550 5500
Wire Wire Line
	6550 5500 6450 5500
Wire Wire Line
	6550 6500 6550 6600
Wire Wire Line
	6550 6600 6450 6600
Wire Wire Line
	5850 6600 5750 6600
Wire Wire Line
	5850 5500 5750 5500
Wire Wire Line
	5750 5500 5750 5600
Text HLabel 6550 5800 2    50   Output ~ 0
OutRN
Text Label 5750 5600 3    50   ~ 0
Set_7
Text Label 5750 6700 3    50   ~ 0
Rst_7
Wire Wire Line
	6450 5800 6550 5800
Wire Wire Line
	6550 6200 6450 6200
Wire Wire Line
	5750 6600 5750 6700
$Comp
L power:+5V #PWR?
U 1 1 5DE3AB7B
P 6550 5400
F 0 "#PWR?" H 6550 5250 50  0001 C CNN
F 1 "+5V" H 6565 5573 50  0000 C CNN
F 2 "" H 6550 5400 50  0001 C CNN
F 3 "" H 6550 5400 50  0001 C CNN
	1    6550 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DE3AB85
P 6550 6500
F 0 "#PWR?" H 6550 6350 50  0001 C CNN
F 1 "+5V" H 6565 6673 50  0000 C CNN
F 2 "" H 6550 6500 50  0001 C CNN
F 3 "" H 6550 6500 50  0001 C CNN
	1    6550 6500
	1    0    0    -1  
$EndComp
NoConn ~ 6450 6400
NoConn ~ 6450 6000
Text HLabel 6550 6200 2    50   Output ~ 0
OutLN
Wire Wire Line
	5650 6350 5650 6300
Wire Wire Line
	5650 6300 5850 6300
Wire Wire Line
	5850 5900 5650 5900
Wire Wire Line
	5650 5900 5650 6300
Connection ~ 5650 6300
$Comp
L Device:C_Small C?
U 1 1 5D7E4302
P 8250 3150
F 0 "C?" H 8342 3196 50  0000 L CNN
F 1 ".1u" H 8342 3105 50  0000 L CNN
F 2 "" H 8250 3150 50  0001 C CNN
F 3 "~" H 8250 3150 50  0001 C CNN
	1    8250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3000 8250 3000
Wire Wire Line
	8250 3000 8250 3050
Connection ~ 8050 3000
Wire Wire Line
	8050 3000 8050 3400
$Comp
L power:GND #PWR?
U 1 1 5D84191F
P 8250 3300
F 0 "#PWR?" H 8250 3050 50  0001 C CNN
F 1 "GND" H 8255 3127 50  0000 C CNN
F 2 "" H 8250 3300 50  0001 C CNN
F 3 "" H 8250 3300 50  0001 C CNN
	1    8250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3300 8250 3250
$EndSCHEMATC
