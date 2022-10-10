
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

# TEAM WOOD
# kill player if walked on illegal block
execute as @a[team=Wood] at @s unless block ~ ~-1 ~ #rootlinked:walkable run kill @s
execute as @a[team=Wood] at @s unless block ~ ~-1 ~ #rootlinked:walkable run team join Grace @s
# kill player if in a half-block
execute as @a[team=Wood] at @s if block ~ ~ ~ #rootlinked:halves run kill @s
execute as @a[team=Wood] at @s if block ~ ~ ~ #rootlinked:halves run team join Grace @s

# TEAM PORTALGRACE
# kill player if walked on illegal block
execute as @a[team=PortalGrace] at @s unless block ~ ~-1 ~ #rootlinked:portal_walkable run kill @s
execute as @a[team=PortalGrace] at @s unless block ~ ~-1 ~ #rootlinked:portal_walkable run team join Grace @s
# kill player if in a half-block
execute as @a[team=PortalGrace] at @s if block ~ ~ ~ #rootlinked:halves run kill @s
execute as @a[team=PortalGrace] at @s if block ~ ~ ~ #rootlinked:halves run team join Grace @s
#make player join Wood if they step on a log
execute as @a[team=PortalGrace] at @s if block ~ ~-1 ~ #logs run team join Wood @s

# TEAM GRACE
# make player join Wood if they step on a log
execute as @a[team=Grace] at @s if block ~ ~-1 ~ #logs run team join Wood @s