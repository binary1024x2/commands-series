execute as @a at @s if score @s cl-light matches 1 run function light:measure
execute as @a if score @s cl-light matches 2.. run scoreboard players reset @s cl-light
scoreboard players enable @s cl-light