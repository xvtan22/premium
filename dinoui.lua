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

    -- Thêm Tab
    function window.AddTab(tabName)
        local tabFrame = Instance.new("Frame")
        tabFrame.Size = UDim2.new(1, 0, 1, -30)
        tabFrame.Position = UDim2.new(0, 0, 0, 30)
        tabFrame.BackgroundTransparency = 1
        tabFrame.Visible = false
        tabFrame.Parent = mainFrame
        return tabFrame
    end

    -- Thêm nút bấm
    function window.AddButton(parent, buttonText, callback)
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(0, 150, 0, 40)
        button.Text = buttonText
        button.Parent = parent
        button.MouseButton1Click:Connect(callback)
        return button
    end

    -- Thêm Toggle
    function window.AddToggle(parent, toggleText, defaultState, callback)
        local toggle = Instance.new("TextButton")
        toggle.Size = UDim2.new(0, 150, 0, 40)
        toggle.Text = toggleText .. (defaultState and " [ON]" or " [OFF]")
        toggle.Parent = parent
        local state = defaultState
        toggle.MouseButton1Click:Connect(function()
            state = not state
            toggle.Text = toggleText .. (state and " [ON]" or " [OFF]")
            callback(state)
        end)
        return toggle
    end

    -- Thêm Dropdown
    function window.AddDropdown(parent, options, callback)
        local dropdown = Instance.new("Frame")
        dropdown.Size = UDim2.new(0, 150, 0, 40)
        dropdown.Parent = parent

        local button = Instance.new("TextButton")
        button.Size = UDim2.new(1, 0, 1, 0)
        button.Text = "Chọn Tùy Chọn"
        button.Parent = dropdown

        local optionList = Instance.new("Frame")
        optionList.Size = UDim2.new(1, 0, 0, #options * 30)
        optionList.Position = UDim2.new(0, 0, 1, 0)
        optionList.Visible = false
        optionList.Parent = dropdown

        for _, option in pairs(options) do
            local optionButton = Instance.new("TextButton")
            optionButton.Size = UDim2.new(1, 0, 0, 30)
            optionButton.Text = option
            optionButton.Parent = optionList
            optionButton.MouseButton1Click:Connect(function()
                button.Text = option
                optionList.Visible = false
                callback(option)
            end)
        end

        button.MouseButton1Click:Connect(function()
            optionList.Visible = not optionList.Visible
        end)
    end

    return window
end

return DinoGUI
