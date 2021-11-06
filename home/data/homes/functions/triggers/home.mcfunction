scoreboard players operation @s tp.tpx = @s tp.homex
scoreboard players operation @s tp.tpy = @s tp.homey
scoreboard players operation @s tp.tpz = @s tp.homez
execute if entity @s[tag=teleport.home.overworld] run tag @s add teleport.tp.overworld
execute if entity @s[tag=teleport.home.the_nether] run tag @s add teleport.tp.the_nether
execute if entity @s[tag=teleport.home.the_end] run tag @s add teleport.tp.the_end
tellraw @s {"text":"Teleporting home","color":"dark_aqua"}
execute as @s at @s run function teleports:tp/do_tp
scoreboard players reset @s ch-home
scoreboard players enable @s ch-home
