# 12Month12Projects
This repository contains 12 projects in 12 months.

The aim of this task is to create 12 distinct projects in 12 months. Each project should be scoped to be able to be delivered and completed by the end of the month. It might be that different months build on a previous month project, but the project must be completed by the last day of the month. This is to enforce scoping and avoid scope creep.

## Month 1 - FTDI USB to Serial Converter

This is a simple project which I wanted to have started several years ago. The main idea is to create a USB to serial converter using the FTDI FT232RL chips which I bought several years ago.

This project was designed to be simple, but not trivial to ease myself into the project.

### Main Goals

1. Produce a single layer board which can be made at home (or hackspace) with very basic tools.
1. Learn to use KiCad for basic projects

### Secondary Tasks

1. Learn more about circuit layout and schematic capture.
1. Learn more about IC interfacing circuitry 

Look into the readme in the project for more details

## Month 2 - Self Balancing Robot

A basic self balancing robot which is able to move forward, backward and turn left and right by command.

## Month 3 - Solar Battery Charger

A solar power circuit with a battery backup.

I've had a lot of ideas over the years for doing remote devices with solar power, but a lot of the time it is difficult to get a reliable power source. Solar is a good option but if the device needs to be powered overnight then a battery is required. 
The circuit should be able to power the device & charge the battery, and the power source to the device needs to be uninterrupted. There may also be a need to have a micro-usb or similar connector to enable topping up the battery.


## Other ideas

### Desk inspection lamp ring

Hackaday featured something similar for a microscope, but this would be a bigger version for a desk magnifying glass a ring of LEDs. It has multiple modes such as quadrant lighting, individual light with a movable position to change the lighting angle, dimmable output etc.

A side part of the project might be to create a procedural PCB layout so that the design can be modified to fit a new enclosure.

#### Notes
TLC5971 is a 12 channel PWM led driver which might be useful in the design, they can be serially cascaded
Bourns Incremental Encoder 16 ppr 120rpm Solid is a rotary encoder which just gives quadrature pulses out

The interface would likely have 3 knobs, 1 for the brightness (potentiometer), 2 for the sub-mode selection, and a button for the mode selection.
