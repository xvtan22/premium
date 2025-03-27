local DinoGUI = {}

function DinoGUI.Create(config)
    local window = {}
    
    -- Tạo ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.ResetOnSpawn = false -- Giữ GUI khi nhân vật chết hoặc reset
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

    -- Thêm chức năng kéo thả mượt mà với Tween
    local userInputService = game:GetService("UserInputService")
    local tweenService = game:GetService("TweenService")
    local dragging, dragStart, startPos

    title.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = mainFrame.Position
        end
    end)

    title.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            userInputService.InputChanged:Connect(function(moveInput)
                if dragging and moveInput.UserInputType == Enum.UserInputType.MouseMovement then
                    local delta = moveInput.Position - dragStart
                    local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
                    
                    local tween = tweenService:Create(mainFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = newPos})
                    tween:Play()
                end
            end)
        end
    end)

    title.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    -- Thêm nút bật/tắt GUI
    function window.ToggleVisibility()
        mainFrame.Visible = not mainFrame.Visible
    end

    -- Nút bật/tắt GUI mặc định (bên ngoài cửa sổ GUI)
    local toggleButton = Instance.new("ImageButton")
    toggleButton.Size = UDim2.new(0, 40, 0, 40)
    toggleButton.Position = UDim2.new(0, 10, 0, 10)
    toggleButton.Image = "rbxassetid://654321" -- Thay bằng ID hình ảnh của bạn
    toggleButton.BackgroundTransparency = 1
    toggleButton.Parent = screenGui

    toggleButton.MouseButton1Click:Connect(function()
        window.ToggleVisibility()
    end)

    return window
end

return DinoGUI
