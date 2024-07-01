# ValScript - Games
> This is where the loader looks for if the game is supported. Read below to see how this works.

To support the ability for multiple-game loading in one single script, we use the games place id to identify the specific place, and check if a url with the filename as the place id exists. If it doesn't exist then the game isn't supported but if it does exist, it will load the script.

If you want to use our library for yourself please see the [Interface Section](https://github.com/VallionXD/ValScript/tree/main/Interface).

## Latest Script.
> To load the latest version paste the script into your executor, So far we currently do not have an universal script and do not plan to add one.

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/VallionXD/ValScript/main/Loader.lua"))()
```

## MIT Licence

See [this link](https://github.com/VallionXD/ValScript/blob/main/LICENSE) to read the licence.
