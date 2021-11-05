scoreboard players operation @s dc.x = @s gps.x
scoreboard players operation @s dc.y = @s gps.y
scoreboard players operation @s dc.z = @s gps.z

tag @s remove teleport.dead.overworld
tag @s remove teleport.dead.the_nether
tag @s remove teleport.dead.the_end

execute if predicate gps:player_in_overworld run tag @s add teleport.dead.overworld
execute if predicate gps:player_in_the_end run tag @s add teleport.dead.the_end
execute if predicate gps:player_in_the_nether run tag @s add teleport.dead.the_nether

execute if predicate gps:player_in_overworld run tellraw @s[tag=!global.ignore.gui] [{"text":"You died at ","color":"dark_aqua"},{"score":{"name":"@s","objective":"dc.x"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"dc.y"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"dc.z"},"color":"dark_aqua"},{"text":" in the Overworld","color":"dark_aqua"}]
execute if predicate gps:player_in_the_end run tellraw @s[tag=!global.ignore.gui] [{"text":"You died at ","color":"dark_aqua"},{"score":{"name":"@s","objective":"dc.x"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"cd.y"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"dc.z"},"color":"dark_aqua"},{"text":" in the The End","color":"dark_aqua"}]
execute if predicate gps:player_in_the_nether run tellraw @s[tag=!global.ignore.gui] [{"text":"You died at ","color":"dark_aqua"},{"score":{"name":"@s","objective":"dc.x"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"cd.y"},"color":"dark_aqua"},{"text":", ","color":"dark_aqua"},{"score":{"name":"@s","objective":"dc.z"},"color":"dark_aqua"},{"text":" in the The Nether","color":"dark_aqua"}]

scoreboard players enable @s cd-tpdeath
scoreboard players reset @s dc.death
