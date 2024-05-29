local ArgetnarUI = {}

-- Создание нового окна
function ArgetnarUI.newWindow(title, width, height)
    local window = Instance.new("Frame")
    window.Name = "Window"
    window.Size = UDim2.new(0, width, 0, height)
    window.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    window.BorderSizePixel = 0
    window.Position = UDim2.new(0.5, -width/2, 0.5, -height/2)
    window.Parent = game.Players.LocalPlayer.PlayerGui

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "TitleLabel"
    titleLabel.Text = title
    titleLabel.Size = UDim2.new(1, 0, 0, 30)
    titleLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Parent = window

    local closeButton = Instance.new("TextButton")
    closeButton.Name = "CloseButton"
    closeButton.Text = "X"
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.Position = UDim2.new(1, -30, 0, 0)
    closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton.Parent = titleLabel

    closeButton.MouseButton1Click:Connect(function()
        window:Destroy()
    end)

    return window
end

-- Добавление кнопки в окно
function ArgetnarUI.addButton(window, text, onClick)
    local button = Instance.new("TextButton")
    button.Text = text
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.5, -25)
    button.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = window

    button.MouseButton1Click:Connect(onClick)

    return button
end

return ArgetnarUI
