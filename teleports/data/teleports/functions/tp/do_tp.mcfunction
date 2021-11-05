execute if entity @s[tag=teleport.tp.overworld] run execute in minecraft:overworld run tp @s ~ ~ ~
execute if entity @s[tag=teleport.tp.the_nether] run execute in minecraft:the_nether run tp @s ~ ~ ~
execute if entity @s[tag=teleport.tp.the_end] run execute in minecraft:the_end run tp @s ~ ~ ~

execute at @s run function teleports:tp/tp_x
execute at @s run function teleports:tp/tp_y
execute at @s run function teleports:tp/tp_z

tag @s remove teleport.tp.overworld
tag @s remove teleport.tp.the_nether
tag @s remove teleport.tp.the_end