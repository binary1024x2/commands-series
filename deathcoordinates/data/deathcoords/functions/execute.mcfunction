execute store result score #dc.respawn dc.rule run gamerule doImmediateRespawn

execute as @a if score #dc.respawn dc.rule matches 0 if score @s dc.death matches 1.. run function deathcoords:tell_coordinates
execute as @a at @s if score #dc.respawn dc.rule matches 0 if score @s cd-tpdeath matches 1.. run function deathcoords:tpdeath