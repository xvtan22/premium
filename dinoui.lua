local DinoHub = {}

function DinoHub.CreateWindow(title, width, height)
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")

    local screenGui = Instance.new("ScreenGui")
    screenGui.ResetOnSpawn = false -- Giữ GUI khi nhân vật chết hoặc reset
    screenGui.Parent = playerGui

    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, width or 400, 0, height or 250)
    mainFrame.Position = UDim2.new(0.5, -width/2, 0.5, -height/2)
    mainFrame.BackgroundTransparency = 0.3
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainFrame.Parent = screenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 15)
    corner.Parent = mainFrame

    local stroke = Instance.new("UIStroke")
    stroke.Thickness = 2
    stroke.Transparency = 0.4
    stroke.Color = Color3.fromRGB(200, 200, 200)
    stroke.Parent = mainFrame

    local blurEffect = Instance.new("ImageLabel")
    blurEffect.Size = UDim2.new(1, 0, 1, 0)
    blurEffect.BackgroundTransparency = 1
    blurEffect.Image = "rbxassetid://7130524429" -- Kính mờ
    blurEffect.ImageTransparency = 0.2
    blurEffect.ScaleType = Enum.ScaleType.Stretch
    blurEffect.Parent = mainFrame

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Text = title
    titleLabel.Size = UDim2.new(1, 0, 0, 30)
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextSize = 20
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.Parent = mainFrame

    -- Kéo thả mượt mà
    local UserInputService = game:GetService("UserInputService")
    local dragging, dragStart, startPos

    local function smoothDrag()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if dragging then
                local delta = UserInputService:GetMouseLocation() - dragStart
                local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
                mainFrame:TweenPosition(newPos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
            else
                connection:Disconnect()
            end
        end)
    end

    titleLabel.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = UserInputService:GetMouseLocation()
            startPos = mainFrame.Position
            smoothDrag()
        end
    end)

    titleLabel.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    return { Frame = mainFrame }
end

function DinoHub.AddButton(window, text, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 120, 0, 40)
    button.Position = UDim2.new(0.5, -60, 0.7, 0)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 18
    button.Font = Enum.Font.GothamBold
    button.Parent = window.Frame

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 10)
    buttonCorner.Parent = button

    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    end)

    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    end)

    button.MouseButton1Click:Connect(callback)
end

return DinoHub
