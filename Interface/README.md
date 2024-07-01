# ValScript - Interface Documentation
> A interface based on the minecraft hacked client vape lite, but with changes to work as a roblox script.

*Credits to [dawid-scripts](https://github.com/dawid-scripts) for making the entire original library.*

## Loading the library.
> You will need to load the library in order to use it. This is how you load the library using loadstring and a http get request.

```lua
-- Load the vape lite interface
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VallionXD/ValScript/Interface/Library.lua"))()
```

### Creating the window.
> Creating the window is the interface of the library, if you dont create a window the library is useless. Heres how you do it.

```lua
-- Create the window.
local Window = Library:Window("Window Title",
    -- Set the accent color.
    Color3.fromRGB(44, 120, 224),

    -- Set the interface toggle bind.
    Enum.KeyCode.RightControl
)

```

### Creating tabs.

```lua
-- Create the Tab.
local Tab = Window:Tab("Tab Name")
```

### Creating buttons.

```lua
-- Create a new button.
Tab:Button("Button Name", 
    -- When pressed function.
    function()
        -- Your code here.
    end
)
```

### Creating toggles.

```lua
-- Create a new toggle
Tab:Toggle("Toggle Name",
    -- Set the default state.
    false, 
    
    -- When toggled function.
    function(NewState)
        -- Your code here.
    end
)
```

### Creating sliders.

```lua
-- Create a new slider
Tab:Slider("Slider",
    -- Minimum.
    0,
    
    -- Maximum.
    100,
    
    -- Default.
    30, 

    -- When changed function.
    function(NewValue)
        -- Your code here.
    end
)
```

### Creating dropdowns.

```lua
-- Create a new  dropdown
Tab:Dropdown("Dropdown Name",
    -- Dropdown options.
    {
        "Option 1",
        "Option 2",
        "Option 3",
        "Option 4",
        "Option 5"
    }, 
    
    -- When changed function.
    function(NewOption)
        -- Print new state.
        print(NewOption)
    end
)
```

### Creating color pickers.

```lua
Tab:Colorpicker("Colorpicker Name",
    -- Default Color.
    Color3.fromRGB(255,0,0),

    -- On change function.
    function(NewColor)
        -- Print the color.
        print(NewColor)
    end
)
```

### Creating textboxes.

```lua
-- Create a new textbox
Tab:Textbox("Textbox Name",
    -- Clear text when not focused.
    true, 
    
    -- When changed function.
    function(Text)
        -- Print the text.
        print(Text)
    end
)
```

### Creating keybinds.

```lua
-- Create a new keybind
Tab:Bind("Bind Name",
    -- Default keybind.
    Enum.KeyCode.RightShift, 
    
    -- When pressed.
    function()
        -- Print that the keybind was pressed.
        print("Pressed!")
    end
)
```

### Creating labels.

```lua
-- Create a new label.
Tab:Label("Label Text")
```

*You have reached the end of the documentation. More is being planned to be added, see [TODO.md](https://github.com/VallionXD/ValScript/blob/main/Interface/TODO.md) for what is planned to be added in the future.* 
