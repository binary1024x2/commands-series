scoreboard players operation @s tp.tpx = @s dc.x
scoreboard players operation @s tp.tpy = @s dc.y
scoreboard players operation @s tp.tpz = @s dc.z
execute if entity @s[tag=teleport.dead.overworld] run tag @s add teleport.tp.overworld
execute if entity @s[tag=teleport.dead.the_nether] run tag @s add teleport.tp.the_nether
execute if entity @s[tag=teleport.dead.the_end] run tag @s add teleport.tp.the_end
tellraw @s {"text":"Teleporting to your dead location","color":"dark_aqua"}
execute as @s at @s run function teleports:tp/do_tp
scoreboard players reset @s cd-tpdeath
