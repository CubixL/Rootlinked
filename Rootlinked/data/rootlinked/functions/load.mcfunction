team add Grace
team add Wood
team add PortalGrace
team modify Grace color aqua
team modify Wood color gold
team modify PortalGrace color blue

scoreboard objectives add gracetimer dummy
scoreboard objectives modify gracetimer displayname {"text":"Grace Timer"}
scoreboard objectives setdisplay sidebar.team.blue gracetimer
scoreboard objectives add countdown dummy
scoreboard objectives add subtract dummy
scoreboard objectives add portalbool dummy
scoreboard players reset @a gracetimer
scoreboard players set @a countdown 0
scoreboard players set @a subtract 1
scoreboard players set @a portalbool 0

tellraw @a ["",{"text":"Rootlinked","color":"green"}," was loaded."]
tellraw @a ["","Add players to the ",{"text":"[Grace] ","color":"aqua"},"team to start the challenge."]