## ArgetnarUI Library Documentation

Welcome to the documentation for ArgetnarUI, a beautiful UI library designed for ease of use in Roblox Lua.

### Introduction

ArgetnarUI provides simple yet powerful tools for creating stunning user interfaces in Roblox games. With intuitive functions, you can quickly create windows, buttons, and other UI elements with customizable properties.

### Installation

To use ArgetnarUI in your Roblox game, follow these steps:

1. Load the library
   ```lua
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/Library/main/ArgetnarLibrary.lua", true))()
   ```

### Usage

#### Creating a New Window

Use the `newWindow` function to create a new window:

```lua
local window = ArgetnarUI.newWindow(title, width, height)
```

- `title`: The title of the window.
- `width`: The width of the window.
- `height`: The height of the window.

Returns a frame object representing the window.

#### Adding a Button to a Window

Use the `addButton` function to add a button to a window:

```lua
local button = ArgetnarUI.addButton(window, text, onClick)
```

- `window`: The window frame to add the button to.
- `text`: The text displayed on the button.
- `onClick`: The function to execute when the button is clicked.

Returns a TextButton object representing the button.

### Example

Here's an example of how to use ArgetnarUI to create a simple UI:

```lua
local ArgetnarUI = require(path_to_ArgetnarUI)

-- Create a new window
local window = ArgetnarUI.newWindow("My Window", 300, 200)

-- Add a button to the window
ArgetnarUI.addButton(window, "Click Me", function()
    print("Button clicked!")
end)
```

### Conclusion

ArgetnarUI simplifies the process of creating beautiful user interfaces in Roblox Lua. With its easy-to-use functions, you can enhance the visual appeal of your games and improve user experience. Start using ArgetnarUI today and elevate your UI design!
