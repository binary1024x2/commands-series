tp @s ~ 0 ~
execute as @a[scores={tp.tpy=..-1}] at @s run function teleports:tp/tp_y_negative
execute as @a[scores={tp.tpy=1..}] at @s run function teleports:tp/tp_y_positive
execute as @a[scores={tp.tpy=1..}] at @s unless block ~ ~ ~ minecraft:air run tp @s ~ ~1 ~
