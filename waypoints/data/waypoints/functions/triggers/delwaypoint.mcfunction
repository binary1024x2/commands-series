summon minecraft:marker ~ ~0.5 ~ {Tags:["global.ignore","waypoints.delwaypoint"],data:{entries:[]}}
scoreboard players operation @e[tag=waypoints.delwaypoint,distance=0..0.5,limit=1] cw-delwaypoint = @s cw-delwaypoint
data modify entity @e[tag=waypoints.delwaypoint,distance=0..0.5,limit=1] data.entries set from storage teleports:locations waypoints
data modify storage teleports:locations waypoints set value []
execute as @e[tag=waypoints.delwaypoint,distance=0..0.5,limit=1] at @s if data entity @s data.entries[0] run function waypoints:helpers/delwaypoint
execute as @e[tag=waypoints.delwaypoint,distance=0..0.5,limit=1] at @s unless data entity @s data.entries[0] run kill @s

scoreboard players reset @s cw-delwaypoint
scoreboard players enable @s cw-delwaypoint
