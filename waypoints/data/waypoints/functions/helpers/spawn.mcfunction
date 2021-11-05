execute store result score @s tp.tpx run data get storage teleports:locations spawn.x 1
execute store result score @s tp.tpy run data get storage teleports:locations spawn.y 1
execute store result score @s tp.tpz run data get storage teleports:locations spawn.z 1
execute if data storage teleports:locations {spawn:{dimension:"minecraft:overworld"}} run tag @s add teleport.tp.overworld
execute if data storage teleports:locations {spawn:{dimension:"minecraft:the_nether"}} run tag @s add teleport.tp.the_nether
execute if data storage teleports:locations {spawn:{dimension:"minecraft:the_end"}} run tag @s add teleport.tp.the_end
tellraw @s[tag=!global.ignore.gui] {"text":"Teleporting to spawn","color":"dark_aqua"}
execute as @s at @s run function teleports:tp/do_tp