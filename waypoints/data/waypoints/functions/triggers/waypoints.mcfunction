tellraw @s {"text":"Waypoints","color":"dark_aqua"}
tellraw @s {"text":""}

summon minecraft:marker ~ ~0.5 ~ {Tags:["global.ignore","waypoints.waypoints"],data:{entries:[]}}
data modify entity @e[tag=waypoints.waypoints,distance=0..0.5,limit=1] data.entries set from storage teleports:locations waypoints
execute as @e[tag=waypoints.waypoints,distance=0..0.5,limit=1] at @s if data entity @s data.entries[0] run function waypoints:helpers/waypoints
execute as @e[tag=waypoints.waypoints,distance=0..0.5,limit=1] at @s unless data entity @s data.entries[0] run kill @s

scoreboard players reset @s cw-waypoints
scoreboard players enable @s cw-waypoints
