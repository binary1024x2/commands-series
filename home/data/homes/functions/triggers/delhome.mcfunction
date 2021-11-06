scoreboard players reset @s tp.homex
scoreboard players reset @s tp.homey
scoreboard players reset @s tp.homez

tag @s remove teleport.home.overworld
tag @s remove teleport.home.the_nether
tag @s remove teleport.home.the_end
tag @s remove teleport.home.hashome

tellraw @s {"text":"Home deleted","color":"dark_aqua"}

scoreboard players reset @s ch-delhome
scoreboard players reset @s ch-home
scoreboard players reset @s ch-wherehome

scoreboard players enable @s ch-sethome
