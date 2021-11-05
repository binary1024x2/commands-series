scoreboard players enable @s cc-about
scoreboard players enable @s cc-help

function #cmdcore:enable

execute if score @s cc-enable matches 1.. run tellraw @s[tag=!global.ignore.gui] {"text":"All commands enabled","color":"dark_aqua"}

scoreboard players reset @s cc-enable
scoreboard players enable @s cc-enable