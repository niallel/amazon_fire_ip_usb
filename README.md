# Control4 amazon_fire_ip_usb driver

Use a Raspberry Pi Zero W or Model 3A+ as a web controlled USB HID to control an amazon fire tv using IP.
Only works with Pi Zero W or 3A+ models, the others can't pretend to be a keyboard because of their USB hardware configuration (they are internally connected to a USB hub).

I've not tested with a 3A+, but am led to believe it should work fine with it - please let me know if it does.

All you need to control the Amazon Fire is
- Raspberry PI Zero W, Model 3A+
- MicroSD flash card
- OTG cable to connect to the Amazon Fire

You don't need to make any changes to the Amazon Fire itself, no Developer debug, no additional software needs to be loaded etc

## Why I did this?
I was using the FLIRC function on the first generation Amazon Fire, and it was ok, but when upgrading to a new Amazon Fire 4k stick I had to use the ADB method using the Control4 provided drivers.
It was sooooo slowwwww it was painful to use. So I bought an IRUSB to do it, but this was convoluted I became frustrated at how painful it was to set it up.

So this implements exactly the same functions as the Amazon Fire remote. This includes long presses of the keys so you can fast forward or rewind properly, or access the system menu by pressing the guide button (instead the long press of the home button).

The downsides are you are going have to buy some stuff and its going to take you an hour to set it up, but apart from that its free - and the source is fully available if you want to make changes (please do and submit a pull request for the benefit of all).

## Setup
