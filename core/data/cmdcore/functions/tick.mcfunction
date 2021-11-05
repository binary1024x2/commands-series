execute as @a at @s if score @s cc-about matches 1.. run function cmdcore:triggers/about
execute as @a at @s if score @s cc-help matches 1.. run function cmdcore:triggers/help

execute as @a if score @s cc-enable matches 1.. run advancement revoke @s only cmdcore:command_enabler

execute as @a[advancements={cmdcore:command_enabler=false}] run scoreboard players enable @s cc-enable

execute as @a at @s run function #cmdcore:execute
