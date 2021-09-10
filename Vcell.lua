---- ##########################################################################################################
---- #                                                                                                        #
---- # Voltage per cell script by Kacper Nowak			                                              #
---- #                                                                                                        #
---- # Tested with Crossfire BatRX						                              #
---- # Based on scripts found on the Internet		                                                      #
---- #                                                                                                        #
---- #                                                                                                        #
---- # Usage:                                                                                                 #
---- #                                                                                                        #
---- # 1. Copy script file to SDCard location : SCRIPTS/MIXES                                                 #
---- # 2. Add custom lua script                                                                               #
---- # 3. Select voltage sensor input                                                                         #
---- # 4. Select amount of Lipo cells used. 								      #
---- # 5. Create new telemetry sensor with id 0310                   					      #
---- #                                                                                                        #
---- # License GPLv3: http://www.gnu.org/licenses/gpl-3.0.html                                                #
---- #                                                                                                        #
---- # This program is free software; you can redistribute it and/or modify                                   #
---- # it under the terms of the GNU General Public License version 3 as                                      #
---- # published by the Free Software Foundation.                                                             #
---- #                                                                                                        #
---- #                                                                                                        #
---- # Kacper Nowak / vberry.net 2021                                                                         #
---- #                                                                                                        #
---- # Version:                                                                                               #
---- # 1.0                                                                                                    #
---- ##########################################################################################################


local inputs     = { {"Instance", VALUE ,0,7,0}, {"Sensor", SOURCE}, {"Cells", VALUE ,1,12,1 } }


local function run(Instance,Voltage_Source, Cell_Count)

   Voltage_Cell      = Voltage_Source / Cell_Count 
    
  setTelemetryValue(0x0310, 0, 0 + Instance, Voltage_Cell*100, 1, 2, "VLT"..Instance)

  return 0

end

return { run=run, input=inputs }

-------------------------------------------------------