execute if data storage teleports:locations {spawn:{set:1b}} run function waypoints:helpers/spawn
execute unless data storage teleports:locations {spawn:{set:1b}} run tellraw @s {"text":"Spawn not set","color":"red"}

scoreboard players reset @s cw-spawn
scoreboard players enable @s cw-spawn