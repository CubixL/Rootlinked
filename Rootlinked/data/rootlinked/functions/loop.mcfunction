
# TEAM WOOD
# kill player if walked on illegal block
execute as @a[team=Wood] at @s unless block ~ ~-1 ~ #rootlinked:walkable run kill @s
execute as @a[team=Wood] at @s unless block ~ ~-1 ~ #rootlinked:walkable run team join Grace @s
# kill player if in a half-block
execute as @a[team=Wood] at @s if block ~ ~ ~ #rootlinked:halves run kill @s
execute as @a[team=Wood] at @s if block ~ ~ ~ #rootlinked:halves run team join Grace @s

# TEAM PORTALGRACE 

# countdown gracetimer if player joined team
execute as @a[team=PortalGrace] at @s if entity @s[team=PortalGrace] run scoreboard players add @s gracetimer 1

# make player join PortalGrace if they are near a portal
execute as @a[team=Wood] at @s if block ~ ~ ~ #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~1 ~ ~ #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~ ~1 ~ #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~ ~ ~1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~1 ~1 ~ #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~1 ~ ~1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~ ~1 ~1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~1 ~1 ~1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~-1 ~ ~ #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~ ~-1 ~ #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~ ~ ~-1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~-1 ~-1 ~ #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~-1 ~ ~-1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~ ~-1 ~-1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~-1 ~-1 ~-1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~1 ~-1 ~ #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~1 ~ ~-1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~ ~1 ~-1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~1 ~1 ~-1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~1 ~-1 ~-1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~1 ~-1 ~1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~-1 ~1 ~ #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~-1 ~ ~1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~ ~-1 ~1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~-1 ~1 ~1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~-1 ~-1 ~1 #minecraft:portals run team join PortalGrace @s
execute as @a[team=Wood] at @s if block ~-1 ~1 ~-1 #minecraft:portals run team join PortalGrace @s

# make player join Wood and reset timer if they step on a log
execute as @a[team=PortalGrace] at @s if block ~ ~-1 ~ #logs run team join Wood @s
execute as @a[team=PortalGrace] at @s if block ~ ~-1 ~ #logs run scoreboard players reset @s gracetimer

# Kill player, reset gracetimer and make player join Grace if they're still in the team after 15 seconds
execute as @a[team=PortalGrace] at @s if entity @s[team=PortalGrace] run scoreboard players get @s gracetimer
execute as @a[team=PortalGrace] at @s if score @s[team=PortalGrace] gracetimer >= @s countdown run kill @s
execute as @a[team=PortalGrace] at @s if score @s[team=PortalGrace] gracetimer >= @s countdown run scoreboard players reset @s gracetimer
execute as @a[team=PortalGrace] at @s if score @s[team=PortalGrace] gracetimer >= @s countdown run team join Grace @s

# TEAM GRACE
# make player join Wood if they step on a log
execute as @a[team=Grace] at @s if block ~ ~-1 ~ #logs run team join Wood @s