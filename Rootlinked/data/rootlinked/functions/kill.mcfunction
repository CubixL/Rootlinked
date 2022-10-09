execute as @a[team=Wood] at @s unless block ~ ~-1 ~ #rootlinked:walkable run kill @s
execute as @a[team=Wood] at @s unless block ~ ~-1 ~ #rootlinked:walkable run team join Grace @s
execute as @a[team=Wood] at @s if block ~ ~ ~ #rootlinked:halves run kill @s
execute as @a[team=Wood] at @s if block ~ ~ ~ #rootlinked:halves run team join Grace @s
execute as @a[team=Grace] at @s if block ~ ~-1 ~ #logs run team join Wood @s