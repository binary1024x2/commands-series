execute as @a at @s if score @s spawn matches 1.. run function waypoints:triggers/spawn
execute as @a at @s if score @s setspawn matches 1.. run function waypoints:triggers/setspawn

execute as @a at @s if score @s cw-addwaypoint matches 1.. run function waypoints:triggers/addwaypoint
execute as @a at @s if score @s cw-delwaypoint matches 1.. run function waypoints:triggers/delwaypoint
execute as @a at @s if score @s cw-waypoint matches 1.. run function waypoints:triggers/waypoint
execute as @a at @s if score @s cw-waypoints matches 1.. run function waypoints:triggers/waypoints
execute as @a at @s if score @s cw-spawn matches 1.. run function waypoints:triggers/spawn
execute as @a at @s if score @s cw-setspawn matches 1.. run function waypoints:triggers/setspawn

# Probably unnesesary but may happen that a marker does not get killed
kill @e[tag=!global.ignore,tag=!global.ignore.kill,tag=waypoints.waypoint.orphan]
