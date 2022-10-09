
# kill player if walked on illegal block, unless they're in another dimension
execute as @a[team=Wood] at @s unless block ~ ~-1 ~ #rootlinked:walkable unless entity @s[team=PortalGrace] run kill @s
execute as @a[team=Wood] at @s unless block ~ ~-1 ~ #rootlinked:walkable unless entity @s[team=PortalGrace] run team join Grace @s
# kill player if in a half-block
execute as @a[team=Wood] at @s if block ~ ~ ~ #rootlinked:halves run kill @s
execute as @a[team=Wood] at @s if block ~ ~ ~ #rootlinked:halves run team join Grace @s

# make Grace player join Wood if they step on a log
execute as @a[team=Grace] at @s if block ~ ~-1 ~ #logs run team join Wood @s