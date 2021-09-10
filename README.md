

Vcell.lua

This is lua script to fetch battery voltage from telemetry and divide by number of cells. 
I am using it with crossfire, however it might work with other telemetries.
Output value is send to telemetry sensor id 0x0310 by default. 
New telemetry sensor has to be created with id 0310, precision of 2 digits (0.00) and unit Volt.

See attached screen shots to configure opentx.
