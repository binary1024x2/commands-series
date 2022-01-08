tp @s 0 ~ ~
#execute as @a[scores={tp.tpx=..-1}] at @s run function teleports:tp/tp_x_negative
#execute as @a[scores={tp.tpx=1..}] at @s run function teleports:tp/tp_x_positive

execute as @s if score @s tp.tpx matches ..-1 at @s run function teleports:tp/tp_x_negative
execute as @s if score @s tp.tpx matches 1.. at @s run function teleports:tp/tp_x_positive