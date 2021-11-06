tellraw @a[distance=0..0.5] [{"text":"[","color":"green","extra":[{"nbt":"data.entries[0].id","entity":"@s","color":"gold"},{"text":"]","color":"green"}],"hoverEvent":{"action":"show_text","contents":{"text":"/trigger cw-waypoint set ","color":"green","extra":[{"nbt":"data.entries[0].id","entity":"@s"}]}}},{"text":" "},{"nbt":"data.entries[0].name","entity":"@s","color":"gold","interpret":true}]
data remove entity @s data.entries[0]
execute if data entity @s data.entries[0] run function waypoints:helpers/waypoints
execute unless data entity @s data.entries[0] run kill @s
