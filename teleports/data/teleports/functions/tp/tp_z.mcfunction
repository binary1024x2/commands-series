tp @s ~ ~ 0
#execute as @a[scores={tp.tpz=..-1}] at @s run function teleports:tp/tp_z_negative
#execute as @a[scores={tp.tpz=1..}] at @s run function teleports:tp/tp_z_positive

execute as @s if score @s tp.tpz matches ..-1 run function teleports:tp/tp_z_negative
execute as @s if score @s tp.tpz matches 1.. run function teleports:tp/tp_z_positive
