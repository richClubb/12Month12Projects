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

2019-07-25 - Soldering was fairly easy, learned a bit more about how to SMD solder components from YouTube and advice from friends. Initial multimeter tests were good and it enumerated with no problems

2019-07-26 - Soldered headers onto the board and tested it by programming a stripboard arduino. Worked first time with no problems.

![Image of the connected board](https://github.com/richClubb/12Month12Projects/raw/master/Month01_UsbToSerial/images/V0_1Board_img02.jpg)

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

## Project Finish

This was pretty successful. The boards worked without any functional problems or having to hand modify the board. I learned a lot from basic things to easy to miss things. It is a single layer board so should be possible to create with home tools which meets one of the objectives.

The board has been re-designed for V.0.2b which is similar to V.0.2 but a bit smaller.

![3D of V.0.2b Top](https://github.com/richClubb/12Month12Projects/raw/master/Month01_UsbToSerial/images/3D_View_V_0_2b_top.png)

![3D of V.0.2b Bottom](https://github.com/richClubb/12Month12Projects/raw/master/Month01_UsbToSerial/images/3D_View_V_0_2b_bottom.png)

![3D of V.0.2b](https://github.com/richClubb/12Month12Projects/raw/master/Month01_UsbToSerial/images/3D_View_V_0_2b.png)
### BOM Cost

| Item             | Quantity | Price  | Line Total |
| ----             | -------- | -----  | ---------- |
| Board            | 1        | £ 1.18 | £ 1.18     |
| FT232RL          | 1        | £ 3.60 | £ 3.60     |
| USB Connector    | 1        | £ 0.87 | £ 0.87     |
| Red LED          | 1        | £ 0.15 | £ 0.15     |
| Green LED        | 1        | £ 0.44 | £ 0.44     |
| Yellow LED       | 1        | £ 0.21 | £ 0.21     |
| 10uF Cap         | 1        | £ 0.15 | £ 0.15     |
| 100nF Cap        | 2        | £ 0.05 | £ 0.10     |
| 220 Ohm Resistor | 3        | £ 0.01 | £ 0.03     |
| Header 19 pins   | 1        | £ 0.31 | £ 0.31     |
|                  |          | Total  | £ 7.04     |

This means that the board cost is less than £10 when ordered in small quantities so at least one objective is completed. I'll add the actual parts to the BOM so that they can be ordered.
