# Waypoints

This module for [Commands Core](https://github.com/vic797/commands-series/tree/main/core) provides public interdimensional waypoints  that can be edited easily.

## Required Modules

* [Commands Core](https://github.com/vic797/commands-series/tree/main/core)
* [GPS](https://github.com/vic797/commands-series/tree/main/gps)
* [Teleports](https://github.com/vic797/commands-series/tree/main/teleports)

## Available Commands

```
/trigger cw-addwaypoint
```

Adds a waypoint to the list. The default name is **Waypoint** but this will be modified if the player holds a renamed [Name Tag](https://minecraft.fandom.com/wiki/Name_Tag) on the offhand; the name tag will be removed. Each waypoint will have an unique ID.

```
/trigger cw-delwaypoint set <id>
```

Deletes a waypoint set by `<id>`. This ID is the unique ID assigned when `/trigger cw-addwaypoint` was used to add this waypoint.

```
/trigger cw-waypoint set <id>
```

Teleports a player to a waypoint set by `<id>`. This ID is the unique ID assigned when `/trigger cw-addwaypoint` was used to add this waypoint.

```
/trigger cw-waypoints
```

This will display a list of all the available waypoints with the corresponding ID.
