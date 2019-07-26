# Month 1 - UsbToSerial

## Brief

Create a single layer USB to Serial board based around the FTDI FT232RL chip.

A few years ago I made a stripboard arduino, but one key component that was missing was a USB to serial converter for programming. I bought a sparkfun FTDI breakout board, but it was around £12. It was very good and compact but I thought it was quite expensive as the entire stripboard was less than £10

I thought it would be good to try and create a board that could be created at home or with very simple tools.


## Objectives

### Primary

1. Create a single layer layout for the FT232RL chip
1. Make it possible to create in a standard hackspace
1. Make it less than £10 to fabricate and populate
1. Make the interface work with standard stripboard 2.54 mm pitch

### Secondary

1. Actually make the PCB 

## Scope


## Log

I did not keep a good log on this project, which is a correction for later projects.

2019-07-12 - Finished board layout and sent out to JLCPCB for fabrication. Ordered most of the parts from Farnell and hopefully going to get resistors from work.

2019-07-24 - Boards have arrived! They have the problem discussed in the last log entry, but I shall try and start up the basic functionality tomorrow. These will probably have a female header rather than the male header as they won't fit into protoboard easily with the current setup and I can just jumper connect to the board as necessary to test.

![Image of the PCB](https://github.com/richClubb/12Month12Projects/raw/master/Month01_UsbToSerial/images/V0_1Board_img01.jpg)

## Outcomes

1. Project Log - I didn't keep a very good project log on this months project. This is a key skill and it is a good idea to get into the practice of keeping an effective engineering log. I've bought a lab notebook and will keep a better log of the ideas on paper. There is a good youtube video on this <https://www.youtube.com/watch?v=jv3i_aQp4Ug>
1. Log on Git - I didn't check in regularly to Git when working on this, so that is another correction. Making frequent checkins with more granular commit comments is a good practice to get into.

### Things to learn from

1. ALWAYS CHECK THE PIN / HEADER LAYOUT - After I had sent the board to print I was showing a colleague and measured the spacing on the pin headers. I had previously checked this A LOT, but obviously had made a change at some point and had forgotten. The spacing was off on both the X and Y positions so that the pin headers didn't line up, AND they won't line up with a standard stripboard which is what this was designed to interface with
1. A good way to check the external interface is to add a layer with the proposed external interface and double check that your board interface complies. I'm not 100% sure how to do this in KiCAD but it seems like it should be possible
1. When laying out the board, add a version number to the board silkscreen, this helps identify the board
1. When laying out the board, think of orientation pins or markers for directional components, this is the case for the U1 IC as well as the LEDs.
1. Add text to the interface pins to make it easier to interface with. Even if you don't print it with two layers, if you choose to then you can have the text in a convenient place. It makes interfacing easier.
1. Check your part availability!!!! I chose 7 pin headers but ended up having to put female sockets on due to my mis-spaced headers. However i found out that you can get 5, 6, 8, 9 pin headers easily, but not 7. So before you use your components check you can get them.
