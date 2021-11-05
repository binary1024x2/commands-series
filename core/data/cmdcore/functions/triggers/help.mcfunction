tellraw @s[tag=!global.ignore.gui] {"text":"Help","color":"dark_aqua","bold":true}
tellraw @s[tag=!global.ignore.gui] {"text":""}
tellraw @s[tag=!global.ignore.gui] [{"text":"/trigger cc-help","color":"green"},{"text":" "},{"text":"shows the help","color":"white"}]
tellraw @s[tag=!global.ignore.gui] [{"text":"/trigger cc-about","color":"green"},{"text":" "},{"text":"shows information about Commands Core","color":"white"}]
tellraw @s[tag=!global.ignore.gui] [{"text":"/trigger cc-enable","color":"green"},{"text":" "},{"text":"enable the available commands, use only if you don't see any commands that you should be able to see","color":"white"}]

execute if entity @s[tag=!global.ignore.gui] run function #cmdcore:help

scoreboard players reset @s cc-help
scoreboard players enable @s cc-help
