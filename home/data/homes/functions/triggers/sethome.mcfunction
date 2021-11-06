execute store result score @s tp.homex run data get entity @s Pos[0] 1
execute store result score @s tp.homey run data get entity @s Pos[1] 1
execute store result score @s tp.homez run data get entity @s Pos[2] 1

tag @s remove teleport.home.overworld
tag @s remove teleport.home.the_nether
tag @s remove teleport.home.the_end

tag @s add teleport.home.hashome

execute if predicate gps:player_in_overworld run tag @s add teleport.home.overworld
execute if predicate gps:player_in_the_end run tag @s add teleport.home.the_end
execute if predicate gps:player_in_the_nether run tag @s add teleport.home.the_nether

execute if predicate gps:player_in_overworld run tellraw @s [{"text":"Home location set at ","color":"dark_aqua"},{"score":{"name":"@s","objective":"tp.homex"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"tp.homey"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"tp.homez"},"color":"dark_aqua"},{"text":" in the Overworld","color":"dark_aqua"}]
execute if predicate gps:player_in_the_end run tellraw @s [{"text":"Home location set at ","color":"dark_aqua"},{"score":{"name":"@s","objective":"tp.homex"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"tp.homey"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"tp.homez"},"color":"dark_aqua"},{"text":" in the The End","color":"dark_aqua"}]
execute if predicate gps:player_in_the_nether run tellraw @s [{"text":"Home location set at ","color":"dark_aqua"},{"score":{"name":"@s","objective":"tp.homex"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"tp.homey"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"tp.homez"},"color":"dark_aqua"},{"text":" in the The Nether","color":"dark_aqua"}]

scoreboard players reset @s ch-sethome

scoreboard players enable @s ch-home
scoreboard players enable @s ch-delhome
scoreboard players enable @s ch-wherehome
