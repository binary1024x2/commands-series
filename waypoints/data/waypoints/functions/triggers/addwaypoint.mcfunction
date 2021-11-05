data modify storage teleports:locations waypoint set value {x:0.0d,y:0.0d,z:0.0d,dimension:"minecraft:empty",name:"{'text':'Waypoint'}",id:-1}

data modify storage teleports:locations waypoint.x set from entity @s Pos[0]
data modify storage teleports:locations waypoint.y set from entity @s Pos[1]
data modify storage teleports:locations waypoint.z set from entity @s Pos[2]

execute if predicate gps:player_in_overworld run data modify storage teleports:locations waypoint.dimension set value "minecraft:overworld"
execute if predicate gps:player_in_the_end run data modify storage teleports:locations waypoint.dimension set value "minecraft:the_end"
execute if predicate gps:player_in_the_nether run data modify storage teleports:locations waypoint.dimension set value "minecraft:the_nether"

execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:name_tag",Count:1b}].tag.display.Name run data modify storage teleports:locations waypoint.name set from entity @s Inventory[{Slot:-106b,id:"minecraft:name_tag",Count:1b}].tag.display.Name
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:name_tag",Count:1b}].tag.display.Name run item replace entity @s weapon.offhand with minecraft:air

scoreboard players operation #tp.wp tp.wayp += #tp.step tp.wayp
execute store result storage teleports:locations waypoint.id int 1 run scoreboard players get #tp.wp tp.wayp

data modify storage teleports:locations waypoints append from storage teleports:locations waypoint
data remove storage teleports:locations waypoint

tellraw @s[tag=!global.ignore.gui] {"text":"Created new waypoint","color":"dark_aqua"}

scoreboard players reset @s cw-addwaypoint
scoreboard players enable @s cw-addwaypoint
