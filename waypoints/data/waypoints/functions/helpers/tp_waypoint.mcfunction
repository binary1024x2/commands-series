execute store result score @s tp.tpx run data get entity @e[tag=waypoints.waypoint,distance=0..0.5,limit=1] data.selected.x
execute store result score @s tp.tpy run data get entity @e[tag=waypoints.waypoint,distance=0..0.5,limit=1] data.selected.y
execute store result score @s tp.tpz run data get entity @e[tag=waypoints.waypoint,distance=0..0.5,limit=1] data.selected.z

execute if data entity @e[tag=waypoints.waypoint,distance=0..0.5,limit=1] {data:{selected:{dimension:"minecraft:overworld"}}} run tag @s add teleport.tp.overworld
execute if data entity @e[tag=waypoints.waypoint,distance=0..0.5,limit=1] {data:{selected:{dimension:"minecraft:the_nether"}}} run tag @s add teleport.tp.the_nether
execute if data entity @e[tag=waypoints.waypoint,distance=0..0.5,limit=1] {data:{selected:{dimension:"minecraft:the_end"}}} run tag @s add teleport.tp.the_end

tellraw @s {"text":"Teleporting...","color":"dark_aqua"}

execute as @s at @s run function teleports:tp/do_tp
scoreboard players reset @s cw-waypoint
scoreboard players enable @s cw-waypoint