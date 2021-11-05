tellraw @s[tag=!global.ignore.gui] {"text":"Commands Core v1.0","color":"dark_aqua","bold":true}
tellraw @s[tag=!global.ignore.gui] {"text":""}
tellraw @s[tag=!global.ignore.gui] {"text":"Loaded ","color":"gold","extra":[{"score":{"name":"#cc.available","objective":"cc.module"}},{"text":" modules"}]}
tellraw @s[tag=!global.ignore.gui] {"text":""}
tellraw @s[tag=!global.ignore.gui] {"text":"Each module should have an uninstall function","color":"dark_aqua"}
scoreboard players reset @s cc-about
scoreboard players enable @s cc-about
