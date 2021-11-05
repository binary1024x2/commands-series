# Commands Core

This is the core data pack for some of my upcoming data packs.

## What is Commands Core?

Commands Core is the base framework for a series of data packs that will add triggers to any world; what this triggers will do depend of the purpose of the data pack. The Core also provides some basic triggers:

```
/trigger cc-help
```

Will display help about all the available triggers. This will only work with data packs designed for Commands Core, it will not actually list all triggers.

```
/trigger cc-about
```

Will show information about Commands Core.

```
/trigger cc-enable
```

This enables all the triggers for the player that runs the command. This will reset and enable all the triggers. Some extensions may perform checks to conditionally enable certain commands.

## Coming soon

I already have some extensions to this data pack that I will be posting in the next days. Maybe something will catch your eye.

## Using it on your own

If you want to use this data pack as a base for yours there are some tags that make everything work:

* `#cmdcore:enable` enables the triggers for the player
* `#cmdcore:execute` acts like `#minecraft:tick` but runs after Commands Core
* `#cmdcore:help` displays help about the triggers
* `#cmdcore:setup` installs the required scoreboards