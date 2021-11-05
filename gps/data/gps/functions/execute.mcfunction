execute as @a at @s store result score @s gps.x run data get entity @s Pos[0] 1
execute as @a at @s store result score @s gps.y run data get entity @s Pos[1] 1
execute as @a at @s store result score @s gps.z run data get entity @s Pos[2] 1

execute as @a if score @s cg-coords matches 1 run title @s[tag=!global.ignore.gui] actionbar [{"text":"X ","color":"gold"},{"score":{"name":"@s","objective":"gps.x"},"color":"white"},{"text":" Y ","color":"gold"},{"score":{"name":"@s","objective":"gps.y"},"color":"white"},{"text":" Z ","color":"gold"},{"score":{"name":"@s","objective":"gps.z"},"color":"white"}]
execute as @a if score @s cg-coords matches 2.. run scoreboard players reset @s cg-coords
scoreboard players enable @s cg-coords
