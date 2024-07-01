-- Load the vape lite interface
local Library = loadstring(game:HttpGet("https://raw.github.com/VallionXD/ValScript/Interface/Library.lua"))()

-- Create the window.
local Window = Library:Window("Example Interface",
    -- Set the accent color.
    Color3.fromRGB(44, 120, 224),

    -- Set the interface toggle bind.
    Enum.KeyCode.RightControl
)

-- Create the Tab.
local Tab = Window:Tab("Tab 1")

-- Create a new button.
Tab:Button("Button", 
    -- When pressed function.
    function()
        -- Notify when pressed.
        Library:Notification("Notification", "Hello!", "Hi!")
    end
)

-- Create a new toggle
Tab:Toggle("Toggle",
    -- Set the default state.
    false, 
    
    -- When toggled function.
    function(NewState)
        -- Print new state.
        print(NewState)
    end
)

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
        -- Print new state. 
        print(NewValue)
    end
)

-- Create a new  dropdown
Tab:Dropdown("Dropdown",
    -- Dropdown options.
    {"Option 1","Option 2","Option 3","Option 4","Option 5"}, 
    
    -- When changed function.
    function(NewOption)
        -- Print new state.
        print(NewOption)
    end
)

-- Create a new color picker
Tab:Colorpicker("Colorpicker",
    -- Default Color.
    Color3.fromRGB(255,0,0),

    -- On change function.
    function(NewColor)
        -- Print the color.
        print(NewColor)
    end
)

-- Create a new textbox
Tab:Textbox("Textbox",
    -- Not even sure what this does.
    true, 
    
    -- When changed function.
    function(Text)
        -- Print the text.
        print(Text)
    end
)

-- Create a new keybind
Tab:Bind("Bind",
    -- Default keybind.
    Enum.KeyCode.RightShift, 
    
    -- When pressed.
    function()
        -- Print that the keybind was pressed.
        print("Pressed!")
    end
)

-- Create a new label.
Tab:Label("Label")

-- Create a Tab for changing the interfaces color.
local ChangeColor = Window:Tab("Change UI Color")

-- Add a color picker to change the accent color.
ChangeColor:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(t)
    -- Change the accent color.
    Library:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)
