execute store result score @s tp.wayp run data get entity @s data.entries[0].id
execute unless score @s tp.wayp = @s cw-delwaypoint run data modify storage teleports:locations waypoints append from entity @s data.entries[0]
data remove entity @s data.entries[0]
execute if data entity @s data.entries[0] run function waypoints:helpers/delwaypoint
execute unless data entity @s data.entries[0] run kill @s
