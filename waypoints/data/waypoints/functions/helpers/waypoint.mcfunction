execute store result score @s tp.wayp run data get entity @s data.entries[0].id
execute if score @s tp.wayp = @s cw-waypoint run tag @s add waypoints.waypoint.found
execute if score @s tp.wayp = @s cw-waypoint run tag @s add waypoints.waypoint.orphan
execute if score @s tp.wayp = @s cw-waypoint run data modify entity @s data.selected set from entity @s data.entries[0]
execute if score @s tp.wayp = @s cw-waypoint run execute as @a[distance=0..0.5,limit=1] at @s run function waypoints:helpers/tp_waypoint
execute if entity @s[tag=waypoints.waypoint.found] run kill @s
execute unless entity @s[tag=waypoints.waypoint.found] if data entity @s data.entries[0] run data remove entity @s data.entries[0]
execute if data entity @s data.entries[0] run function waypoints:helpers/waypoint
execute unless data entity @s data.entries[0] run kill @s
