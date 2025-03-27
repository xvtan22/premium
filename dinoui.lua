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

    -- Thêm ImageButton
    function window.AddImageButton(imageId, position, size, callback)
        local button = Instance.new("ImageButton")
        button.Size = size or UDim2.new(0, 50, 0, 50)
        button.Position = position or UDim2.new(0, 10, 0, 50)
        button.Image = imageId or "rbxassetid://0"
        button.BackgroundTransparency = 1
        button.Parent = mainFrame

        button.MouseButton1Click:Connect(function()
            if callback then
                callback()
            end
        end)

        return button
    end

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

    -- Thêm Button
    function window.AddButton(tab, text, callback)
        local button = Instance.new("TextButton")
        button.Text = text
        button.Size = UDim2.new(0, 150, 0, 50)
        button.Position = UDim2.new(0.5, -75, 0.1, 0)
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.Parent = tab

        button.MouseButton1Click:Connect(function()
            if callback then callback() end
        end)

        return button
    end

    -- Thêm Toggle
    function window.AddToggle(tab, text, default, callback)
        local toggle = Instance.new("TextButton")
        toggle.Text = text
        toggle.Size = UDim2.new(0, 150, 0, 50)
        toggle.Position = UDim2.new(0.5, -75, 0.2, 0)
        toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
        toggle.Parent = tab

        local isEnabled = default or false

        -- Bo góc
        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 8)
        corner.Parent = toggle

        -- Cập nhật trạng thái Toggle
        local function updateToggle()
            if isEnabled then
                toggle.BackgroundColor3 = Color3.fromRGB(0, 200, 0) -- Xanh khi bật
            else
                toggle.BackgroundColor3 = Color3.fromRGB(200, 0, 0) -- Đỏ khi tắt
            end
        end

        -- Sự kiện nhấn
        toggle.MouseButton1Click:Connect(function()
            isEnabled = not isEnabled
            updateToggle()
            if callback then callback(isEnabled) end
        end)

        -- Khởi tạo trạng thái ban đầu
        updateToggle()

        return toggle
    end

    -- Thêm Dropdown
    function window.AddDropdown(tab, options, callback)
        local dropdown = Instance.new("TextButton")
        dropdown.Text = "Select Option"
        dropdown.Size = UDim2.new(0, 150, 0, 50)
        dropdown.Position = UDim2.new(0.5, -75, 0.3, 0)
        dropdown.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
        dropdown.Parent = tab

        local dropList = Instance.new("Frame")
        dropList.Size = UDim2.new(0, 150, 0, #options * 30)
        dropList.Position = UDim2.new(0, 0, 1, 0)
        dropList.BackgroundTransparency = 0.5
        dropList.Visible = false
        dropList.Parent = dropdown

        for _, option in ipairs(options) do
            local optionButton = Instance.new("TextButton")
            optionButton.Text = option
            optionButton.Size = UDim2.new(1, 0, 0, 30)
            optionButton.Parent = dropList

            optionButton.MouseButton1Click:Connect(function()
                dropdown.Text = option
                dropList.Visible = false
                if callback then callback(option) end
            end)
        end

        dropdown.MouseButton1Click:Connect(function()
            dropList.Visible = not dropList.Visible
        end)

        return dropdown
    end

    return window
end

return DinoGUI
