local DinoGUI = {}

function DinoGUI.Create(config)
    local window = {}
    
    -- Tạo ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.ResetOnSpawn = true -- Giữ GUI khi nhân vật chết hoặc reset
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Tạo Frame chính (Cửa sổ GUI)
    local mainFrame = Instance.new("Frame")
    mainFrame.Size = config.Size or UDim2.new(0, 500, 0, 320)
    mainFrame.Position = UDim2.new(0.5, -mainFrame.Size.X.Offset / 2, 0.5, -mainFrame.Size.Y.Offset / 2)
    mainFrame.BackgroundTransparency = config.Acrylic and 0.2 or 0.3
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainFrame.Parent = screenGui
    window.Frame = mainFrame

    -- Bo góc cho Frame
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 15)
    corner.Parent = mainFrame

    -- Hiệu ứng kính mờ
    if config.Acrylic then
        local blurEffect = Instance.new("ImageLabel")
        blurEffect.Size = UDim2.new(1, 0, 1, 0)
        blurEffect.BackgroundTransparency = 1
        blurEffect.Image = "rbxassetid://7130524429"
        blurEffect.ImageTransparency = 0.2
        blurEffect.ScaleType = Enum.ScaleType.Stretch
        blurEffect.Parent = mainFrame
    end

    -- Tạo tiêu đề
    local title = Instance.new("TextLabel")
    title.Text = config.Title or "Dino GUI"
    title.Size = UDim2.new(1, 0, 0, 30)
    title.BackgroundTransparency = 1
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 20
    title.Font = Enum.Font.GothamBold
    title.Parent = mainFrame
    window.Title = title

    -- Tạo phụ đề
    if config.SubTitle then
        local subTitle = Instance.new("TextLabel")
        subTitle.Text = config.SubTitle
        subTitle.Size = UDim2.new(1, 0, 0, 20)
        subTitle.Position = UDim2.new(0, 0, 0, 30)
        subTitle.BackgroundTransparency = 1
        subTitle.TextColor3 = Color3.fromRGB(200, 200, 200)
        subTitle.TextSize = 14
        subTitle.Font = Enum.Font.Gotham
        subTitle.Parent = mainFrame
    end

    -- Hỗ trợ thu nhỏ bằng phím tắt
    if config.MinimizeKey then
        local UserInputService = game:GetService("UserInputService")
        UserInputService.InputBegan:Connect(function(input, processed)
            if not processed and input.KeyCode == config.MinimizeKey then
                mainFrame.Visible = not mainFrame.Visible
            end
        end)
    end

    -- Kéo thả mượt mà
    local UserInputService = game:GetService("UserInputService")
    local dragging, dragStart, startPos

    local function smoothDrag()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if dragging then
                local delta = UserInputService:GetMouseLocation() - dragStart
                local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
                mainFrame.Position = newPos
            else
                connection:Disconnect()
            end
        end)
    end

    title.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = UserInputService:GetMouseLocation()
            startPos = mainFrame.Position
            smoothDrag()
        end
    end)

    title.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    return window
end

return DinoGUI
