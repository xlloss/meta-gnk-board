## QSPI flash writer helper

![image](https://user-images.githubusercontent.com/33512027/179451756-c41836f8-104f-4f51-aa73-532348ae065d.png)

As the picture displayed above, the QSPI flash writer helper can easily help program the boot code for RZ/G2L PMIC board. 

### Example of writing data for the QSPI Flash

![image](https://user-images.githubusercontent.com/33512027/179450239-b7f716cf-267b-4df6-aa55-5f1809d63d17.png)

### Mode setting

#### SCIF Download mode:

![image](https://user-images.githubusercontent.com/33512027/179448184-b91750da-e556-49e5-b844-b74e335674a1.png)

#### QSPI Boot mode:

![image](https://user-images.githubusercontent.com/33512027/179448284-abae4818-18ca-424e-b89d-30499e988557.png)


### Board Information

<img src="https://renesas.info/w/images/3/3d/smarc_series_carrier_board.png" width="900" />

#### Power supply: 

- Connect USB-PD Power Charger to USB Type-C Connector (CN6).
- LED1(VBUS Power ON) and LED3 (Module PWR On) lights up.

![image](https://user-images.githubusercontent.com/33512027/179449170-6d29c695-0066-494c-9a75-3d45f2b078fc.png)

- Press the power button(SW9) to turn on the power. Note: When turn on the power, press and hold the power button for 1 second. When turn off the power, press and hold the power button for 2 seconds. 
- LED4(Carrier PWR On) lights up.

![image](https://user-images.githubusercontent.com/33512027/179449209-19550510-b772-4b56-b0b7-4ac25b64b65b.png)


#### Debug serial port: 

![image](https://user-images.githubusercontent.com/33512027/179448949-9f045350-70af-4a6b-bbac-d7f9b54d91a6.png)

### Steps of writing data for the QSPI boot

- Press the power button(SW9) to turn on the power. 
- Switch to the SCIF Download mode. 
- run the qspiFlash-writer-helper. 
- Press the Reset button, and wait for the 'all succeeded. ' message from the `qspiFlash-writer-helper` . 
- Switch to the QSPI Boot mode, and press the Reset button. 

The programmed BL2 and u-boot should display as the following: 

```bash
=> NOTICE:  BL2: v2.6(release):aed378638-dirty
NOTICE:  BL2: Booting BL31
NOTICE:  BL31: v2.6(release):aed378638-dirty

U-Boot 2021.10 (Mar 31 2022 - 03:57:20 +0000)
CPU:   Renesas Electronics K rev 16.15
Model: smarc-rzg2l
DRAM:  1.9 GiB
MMC:   sd@11c00000: 0, sd@11c10000: 1
Loading Environment from MMC... OK
In:    serial@1004b800
Out:   serial@1004b800
Err:   serial@1004b800
Net:   eth0: ethernet@11c20000
Hit any key to stop autoboot:  0
=>
```



