
# TEAM PORTALGRACE
# make player join Wood and reset timer if they step on a log
execute as @a[team=PortalGrace] at @s if block ~ ~-1 ~ #logs run team join Wood @s
execute as @a[team=Wood] at @s if block ~ ~-1 ~ #logs run scoreboard players set @s gracetimer 300
execute as @a[team=Wood] at @s run scoreboard players set @s portalbool 0

# TEAM PORTALGRACE 
# countdown gracetimer if player joined team
execute as @a[team=PortalGrace] at @s if entity @s[team=PortalGrace] run scoreboard players operation @s gracetimer -= @s subtract

# make player join PortalGrace if they are near a portal
execute as @a[team=Wood] at @s if block ~ ~ ~ #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~1 ~ ~ #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~ ~1 ~ #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~ ~ ~1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~1 ~1 ~ #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~1 ~ ~1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~ ~1 ~1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~1 ~1 ~1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~-1 ~ ~ #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~ ~-1 ~ #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~ ~ ~-1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~-1 ~-1 ~ #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~-1 ~ ~-1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~ ~-1 ~-1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~-1 ~-1 ~-1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~1 ~-1 ~ #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~1 ~ ~-1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~ ~1 ~-1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~1 ~1 ~-1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~1 ~-1 ~-1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~1 ~-1 ~1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~-1 ~1 ~ #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~-1 ~ ~1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~ ~-1 ~1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~-1 ~1 ~1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~-1 ~-1 ~1 #minecraft:portals run scoreboard players set @s portalbool 1
execute as @a[team=Wood] at @s if block ~-1 ~1 ~-1 #minecraft:portals run scoreboard players set @s portalbool 1

execute as @a[team=Wood] at @s if score @s portalbool = @s one run team join PortalGrace @s

# TEAM WOOD
# kill player if walked on illegal block
execute as @a[team=Wood] at @s unless block ~ ~-1 ~ #rootlinked:walkable run kill @s
execute as @a[team=Wood] at @s unless block ~ ~-1 ~ #rootlinked:walkable run team join Grace @s
# kill player if in a half-block
execute as @a[team=Wood] at @s if block ~ ~ ~ #rootlinked:halves run kill @s
execute as @a[team=Wood] at @s if block ~ ~ ~ #rootlinked:halves run team join Grace @s



# Kill player, reset gracetimer and make player join Grace if they're still in the team after 15 seconds
execute as @a[team=PortalGrace] at @s if entity @s[team=PortalGrace] run scoreboard players get @s gracetimer
execute as @a[team=PortalGrace] at @s if score @s[team=PortalGrace] gracetimer <= @s countdown run kill @s
execute as @a[team=PortalGrace] at @s if score @s[team=PortalGrace] gracetimer <= @s countdown run team join Grace @s
execute as @a[team=PortalGrace] at @s if score @s[team=PortalGrace] gracetimer <= @s countdown run scoreboard players set @s gracetimer 300

# TEAM GRACE
# make player join Wood if they step on a log
execute as @a[team=Grace] at @s if block ~ ~-1 ~ #logs run team join Wood @s
execute as @a[team=Grace] at @s run scoreboard players set @s gracetimer 300