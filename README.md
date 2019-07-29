# 12Month12Projects
This repository contains 12 projects in 12 months.

The aim of this task is to create 12 distinct projects in 12 months. Each project should be scoped to be able to be delivered and completed by the end of the month. It might be that different months build on a previous month project, but the project must be completed by the last day of the month. This is to enforce scoping and avoid scope creep.

## Rules
1. Each project WILL take 1 month - If the project is not finished in the month then it can be revisited later, but it should be a secondary priority. The whole objective is to deliver and finish the project in 1 month, and if this is not possible then the project has not necessarily failed, but it needs to be tied off
2. Do not start work on another project until the start date - If you are working on a project do not start on another. It's fine to have ideas for new projects, but it should not go past the concept phase.

## Month 1 - FTDI USB to Serial Converter
* Start Date: 2019-07-01
* Completed Date: 2019-07-27
* Status: Completed (Successful)

This is a simple project which I wanted to have started several years ago. The main idea is to create a USB to serial converter using the FTDI FT232RL chips which I bought several years ago.

This project was designed to be simple, but not trivial to ease myself into the project.

### Main Goals

1. Produce a single layer board which can be made at home (or hackspace) with very basic tools.
1. Learn to use KiCad for basic projects

### Secondary Tasks

1. Learn more about circuit layout and schematic capture.
1. Learn more about IC interfacing circuitry 

Look into the [readme](https://github.com/richClubb/12Month12Projects/blob/master/Month01_UsbToSerial/README.md) in the project for more details

### Assessment

The project objectives were met, a single sided (or double sided for extra detail but it isn't a functional requirement) board that should be able to be made in a hackspace or similar. The cost is approximately £8 which is cheaper by about £4 than the Sparkfun equivalent.

Overall it was successful, it introduced me to KiCad and showed me that it isn't too difficult to lay boards out and that getting them produced is easy enough.

## Month 2 - Self Balancing Robot 
* Start Date: 2019-08-01
* Completed Date: ?
* Status: Not Started

A basic self balancing robot which is able to move forward, backward and turn left and right by command.

## Month 3 - Solar Battery Charger
* Start Date: 2019-09-01
* Completed Date: ?
* Status: Not Started

A solar power circuit with a battery backup.

I've had a lot of ideas over the years for doing remote devices with solar power, but a lot of the time it is difficult to get a reliable power source. Solar is a good option but if the device needs to be powered overnight then a battery is required. 
The circuit should be able to power the device & charge the battery, and the power source to the device needs to be uninterrupted. There may also be a need to have a micro-usb or similar connector to enable topping up the battery.


## Other ideas

### Desk inspection lamp ring

Hackaday featured something similar for a microscope, but this would be a bigger version for a desk magnifying glass a ring of LEDs. It has multiple modes such as quadrant lighting, individual light with a movable position to change the lighting angle, dimmable output etc.

A side part of the project might be to create a procedural PCB layout so that the design can be modified to fit a new enclosure.

#### Notes
TLC5971 is a 12 channel PWM led driver which might be useful in the design, they can be serially cascaded.

Bourns Incremental Encoder 16 ppr 120rpm Solid is a rotary encoder which just gives quadrature pulses out

The interface would likely have 3 knobs, 1 for the brightness (potentiometer), 2 for the sub-mode selection, and a button for the mode selection.

It might also be nice to have a bluetooth interface for a phone so that you can just edit it from your desk. Having RGB might be nice, but it is not essential. 
<http://www.ti.com/lit/ds/symlink/tlc5973.pdf> might be a good choice for the RGB as one driver can act for each LED
