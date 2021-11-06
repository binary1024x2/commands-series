data modify storage teleports:locations spawn set value {x:0.0f,y:0.0f,z:0.0f,dimension:"minecraft:empty",set:1b}
data modify storage teleports:locations spawn.x set from entity @s Pos[0]
data modify storage teleports:locations spawn.y set from entity @s Pos[1]
data modify storage teleports:locations spawn.z set from entity @s Pos[2]

execute if predicate teleports:player_in_overworld run data modify storage teleports:locations spawn.dimension set value "minecraft:overworld"
execute if predicate teleports:player_in_the_end run data modify storage teleports:locations spawn.dimension set value "minecraft:the_end"
execute if predicate teleports:player_in_the_nether run data modify storage teleports:locations spawn.dimension set value "minecraft:the_nether"

tellraw @s {"text":"Updated spawn location","color":"dark_aqua"}
scoreboard players reset @s cw-setspawn
scoreboard players enable @s cw-setspawn