# Teleports

This is a module for [Commands Core](https://github.com/vic797/commands-series/tree/main/core) that provides teleporting capabilities to other data packs from this same series using scoreboards. The code itself is based on [this reddit post](https://www.reddit.com/r/MinecraftCommands/comments/dckqlu/teleport_to_scoreboard_values/) with some changes to support interdimensional teleportation and to teleport to negative values in the Y axis.

## Required Modules

* [Commands Core](https://github.com/vic797/commands-series/tree/main/core)

## Importan Scoreboards

```mcfunction
scoreboard objectives add tp.tpx dummy
scoreboard objectives add tp.tpy dummy
scoreboard objectives add tp.tpz dummy
```

This three scoreboards are the ones that the function `teleports:tp/do_tp` uses to teleport a player. The last location the player will be is as follows: `X = tp.tpx`, `Y = tp.tpy` and `Z = tp.tpz`. There are some scoreboards on this data pack that **must not be modified in any way** while a player is being teleported.

This pack uses [tags](https://minecraft.fandom.com/wiki/Commands/tag) to indentify the target dimension for the player.

* Use `teleport.tp.overworld` for the Overworld.
* Use `teleport.tp.the_nether` for The Nether.
* Use `teleport.tp.the_end` for The End.

> See [do_tp.mcfunction](https://github.com/vic797/commands-series/blob/main/teleports/data/teleports/functions/tp/do_tp.mcfunction).

## Standalone usage

This data pack can be used as an standalone data pack. Just add `"teleports:load"` to the `#minecraft:load` tag.

```json
{
    "values": [
        "teleports:load"
    ]
}
```