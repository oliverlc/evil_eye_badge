A simple project for experimenting with creating a PCB with a more creative than functional purpose. Taking inspiration from people in the USA who create badges for conferences for fun, art, and to show off.

These badges are a simple skull graphic, with a ATTINY10 microcontroller fading in and out two LEDS in the skulls eye sockets. The LEDS fade in over a second, remain on for 5 seconds, fade out over another second, then remain off for 30 seconds (ish) before repeating.

The process involved:
    • Finding a vector image I was happy with (I’m no graphic artist)
    • Splitting the vector image into layers using Inkscape
    • Importing the layers I’ve created into KiCad using SVG2MOD
    • Adding a functional circuit (a micro controller driving two PWM leds)
    • Getting the boards made
    • Populating the boards
    • ?????
    • Profit! (If only!)

I was wearing these badges at the bi-annual UK hacker camp ElectroMagnetic Field (EMF). They didn’t quite get the interest I expected. Perhaps they were over-shadow by another of my projects: the LED light staff!

The KiCad and Gerber files using the skull graphic from vectormagic.com are notable only by their absence. Apologies for that. I wanted to make sure I was on the right side of their licence and wasn't sure if this would count as distributing via another website. I assume their licence is referring to distributing the vector original but don't want to risk it.


![Badge Front](badge_front.jpg?raw=true "Front view")
![Badge Read](badge_rear.jpg?raw=true "Rear view")
