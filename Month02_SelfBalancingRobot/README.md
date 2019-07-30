# Month 2 - SelfBalancingRobot

## Brief

The project is to create a self-balancing robot with 2 wheels.

## Research

In an initial stab I have two ADXL345 <https://www.analog.com/media/en/technical-documentation/data-sheets/ADXL345.pdf> which can be used for the control system, however this might work for the balancing forward and backward motion but it might not be able to do the left/right turn control. An IMU might be a better idea <https://cdn.sparkfun.com/assets/learn_tutorials/5/5/0/MPU9250REV1.0.pdf> as it can do accelerometer and also be able to do the left/right turning with the gyroscope.

I have the motors and motor driver from my robot kit so hopefully this will be fast enough. I need to test this and assess how good they are.

I've got a small Elegoo Nano (Arduino clone which I will use for the controller, mainly due to its size. It's using an ATMEGA328p MCU which I'm hoping is fast enough, if not I might have to fork out for a faster MCU.

## Objectives

### Primary

1. Balancing and disturbance control
1. Forward / backward motion
1. Self-righting


### Secondary

1. Left / right turning (tank track turning)
1. Wireless control (bluetooth?)

## Implementation

### Frame

The frame I'm guessing is going to be around 150 mm tall. Initiall I'd sketched out the motors on the bottom with the motor controlling being very close and the battery pack on top, but I think I'll probably go for having the battery at the bottom with the motor controller above as it is very light.

### Control Algorithm

The idea is to try and run the control loop in an interrupt with the main loop being able to take commands, in this way there might be several timer interrupts to deal with the control.

Initially the plan is to use a PID controller working with the X axis reading. the X axis acceleration will be the target. So for equilibrium the value should be 0, but if forward or backward motion is required then the X axis target will set how fast the setup will try and move.

To do turning I intend to do a tank track turning but this might end up causing problems to the stability control as it might attempt to correct the position and thus mess with the motor speed. Possibly just applying and offset to the movement might be enough, not 100% sure.

## Log

2019-07-23 - Added the initial brief, research and objectives as I can't do anything on Month01

2019-07-27 - Researched the materials for the frame. Mike suggested Rexroth but it seems quite expensive so trying to find cheaper alternative. <https://www.motedis.co.uk> looks like it has something similar with a 20mm profile. I'm just wondering how heavy this will be. 
I've seen similar stuff with 10mm profile which would be lighter, and V-Slot is very similar to the motedis extrusion but is available on <https://ooznest.co.uk/> who seem pretty reasonable. It might just be worth getting a meter to test it out. ((15 * 2) + (7.5 * 2) probably be enough)
Another point is to try and use the tasks from the github page, I'll trial it on this one and see what happens.
Also found out that you can reference tickets from the commits, so that is a plus. You can do a range of things but just adding a #xxx where xxx is the ticket number will add a note to the ticket with the commit log. There are a range of things you can do. [Here](https://stackoverflow.com/questions/1687262/link-to-the-issue-number-on-github-within-a-commit-message) is a stackoverflow detailing it.

## Outcomes



## Things to learn from 


