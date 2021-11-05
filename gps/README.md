# GPS

This module for [Commands Core](https://github.com/vic797/commands-series/tree/main/core) provides coordinates and dimension predicated to other modules and a single trigger.

```
/trigger cg-coords
```

This command will show the player the current coordinates on the action bar (above the hotbar).

## Required Modules

* [Commands Core](https://github.com/vic797/commands-series/tree/main/core)

## Coordinates and Predicates

This module provides [predicates](https://minecraft.fandom.com/wiki/Predicate) and scoreboards to other data packs. 

### Predicates

The following predicates are available:

* `gps:player_in_overworld` to test if the player is in the Overworld.
* `gps:player_in_the_nether` to test if the player is in The Nether.
* `gps:player_in_the_end` to test if the player is in The End.

### Scoreboards

This scoreboards hold the location of the player

```mcfunction
scoreboard objectives add gps.x dummy
scoreboard objectives add gps.y dummy
scoreboard objectives add gps.z dummy
```