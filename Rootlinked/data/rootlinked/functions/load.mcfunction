team add Grace
team add Wood
team add PortalGrace
team modify Grace color aqua
team modify Wood color gold
team modify PortalGrace color blue

scoreboard objectives add gracetimer dummy
scoreboard objectives add countdown dummy
scoreboard players reset @a gracetimer
scoreboard players set @a countdown 300

tellraw @a ["",{"text":"Rootlinked","color":"green"}," was loaded."]
tellraw @a ["","Add players to the ",{"text":"[Grace] ","color":"aqua"},"team to start the challenge."]