summon minecraft:marker ~ ~0.5 ~ {Tags:["global.ignore","waypoints.waypoint"],data:{entries:[]}}
scoreboard players operation @e[tag=waypoints.waypoint,distance=0..0.5,limit=1] cw-waypoint = @s cw-waypoint
data modify entity @e[tag=waypoints.waypoint,distance=0..0.5,limit=1] data.entries set from storage teleports:locations waypoints
execute as @e[tag=waypoints.waypoint,distance=0..0.5,limit=1] at @s if data entity @s data.entries[0] run function waypoints:helpers/waypoint
execute as @e[tag=waypoints.waypoint,distance=0..0.5,limit=1] at @s unless data entity @s data.entries[0] run kill @s

tellraw @s[tag=!global.ignore.gui] {"text":"Waypoint not found","color":"red"}

scoreboard players reset @s cw-waypoint
scoreboard players enable @s cw-waypoint