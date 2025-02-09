# Zynq.HDMI.Z-turn.Sil9022A

Starting up HDMI on a Z-turn V2 board

---

# Table of Contents
- ## [Introduction](#introduction)
- ## [Step 2](#Step 2)

# Introduction

The [z-turn][z-turn] board, is a [Zynq][Zynq] [PCB][PCB], featuring multiple peripherals:

![<Image: peripherals>](img/z-turn.peripherals.jpg)

Those, are connected either to the [PL][PL] or the [PS][PS] part of a Zynq.

In order to find, where the HDMI is connected to, we can reference the [schematics](doc/zturnv2Schematic.pdf). According to these, they are connected to the [PL][PL] part (since the [PS][PS] pins are numbered [MIO_#][MIO]).

![<IMG: hdmi pins>](img/HDMI pins.jpg)
![<IMG: MIO>](img/MIO.jpg)

Looking further down [the schematics], we see that the signals pass through an "HDMI transmitter".

![<IMG: Sil9022A>](img/Sil9022A.jpg)

# Step 2

<!-- References/ invisible parts -->

[z-turn]: https://www.myirtech.com/list.asp?id=708
[Zynq]: https://www.amd.com/en/products/adaptive-socs-and-fpgas/soc/zynq-7000.html
[PCB]: https://en.wikipedia.org/wiki/Printed_circuit_board
[PL]: ## "Programmable Logic"
[PS]: ## "Processing System"
[MIO]: ## "Multiplexed I/O"