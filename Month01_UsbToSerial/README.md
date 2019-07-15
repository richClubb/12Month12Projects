# Month 1 - UsbToSerial

## Brief

Create a single layer USB to Serial board based around the FTDI FT232RL chip.

A few years ago I made a stripboard arduino, but one key component that was missing was a USB to serial converter for programming. I bought a sparkfun FTDI breakout board, but it was around £12. It was very good and compact but I thought it was quite expensive as the entire stripboard was less than £10

I thought it would be good to try and create a board that could be created at home or with very simple tools.


## Objectives

1. Create a single layer layout for the FT232RL chip
1. Make it possible to create in a standard hackspace
1. Make it less than £10 to fabricate and populate
1. Make the interface work with standard stripboard 2.54 mm pitch

## Scope


## Log

I did not keep a good log on this project, which is a correction for later projects.

2019-07-12 - Finished board layout and sent out to JLCPCB for fabrication. Ordered most of the parts from Farnell and hopefully going to get resistors from work.

## Debrief

### Things to learn from

1. ALWAYS CHECK THE PIN / HEADER LAYOUT - After I had sent the board to print I was showing a colleague and measured the spacing on the pin headers. I had previously checked this A LOT, but obviously had made a change at some point and had forgotten. The spacing was off on both the X and Y positions so that the pin headers didn't line up, AND they won't line up with a standard stripboard which is what this was designed to interface with
