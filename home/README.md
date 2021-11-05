# Homes

This module for [Commands Core](https://github.com/vic797/commands-series/tree/main/core) provides a way to get a single _Home_ location and teleport there in vanilla survival.

## Required Modules

* [Commands Core](https://github.com/vic797/commands-series/tree/main/core)
* [GPS](https://github.com/vic797/commands-series/tree/main/gps)
* [Teleports](https://github.com/vic797/commands-series/tree/main/teleports)

## Available Commands

```
/trigger ch-home
```

Teleports the player to the home location. For this to be visible `/trigger ch-sethome` must be executed beforehand.

```
/trigger ch-sethome
```

Sets the player's home at the current location. This enables the other triggers.

```
/trigger ch-delhome
```

Deletes the player's home location and disables the other trigger.

```
/trigger ch-wherehome
```

Shows the player the home coordinates and the dimension. In case that person just want to walk.