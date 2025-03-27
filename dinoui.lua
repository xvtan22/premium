local DinoHub = {}

local themes = {
    ["fluent"] = {
        Background = Color3.fromRGB(255, 255, 255),
        Text = Color3.fromRGB(50, 50, 50),
        Button = Color3.fromRGB(200, 200, 200),
        ToggleOn = Color3.fromRGB(0, 200, 0),
        ToggleOff = Color3.fromRGB(150, 150, 150),
        Dropdown = Color3.fromRGB(220, 220, 220)
    }
}

function DinoHub.CreateWindow(title, width, height)
    local player = game:GetService("Players").LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui", 5)

    if not playerGui then
        warn("Không tìm thấy PlayerGui")
        return nil
    end

    local ThemeColors = themes["fluent"]

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = playerGui

    -- Hiệu ứng kính mờ
    local BlurEffect = Instance.new("BlurEffect")
    BlurEffect.Size = 10
    BlurEffect.Parent = game.Lighting

    -- Nếu không truyền width, height thì dùng mặc định
    width = width or 350
    height = height or 300

    local Window = Instance.new("Frame")
    Window.Size = UDim2.new(0, width, 0, height)
    Window.Position = UDim2.new(0.5, -width/2, 0.5, -height/2)
    Window.BackgroundColor3 = ThemeColors.Background
    Window.BackgroundTransparency = 0.3 -- Làm mờ nhẹ
    Window.BorderSizePixel = 0
    Window.Parent = ScreenGui

    -- Viền Fluent
    local Stroke = Instance.new("UIStroke")
    Stroke.Thickness = 2
    Stroke.Color = Color3.fromRGB(180, 180, 180)
    Stroke.Parent = Window

    local Title = Instance.new("TextLabel")
    Title.Text = title
    Title.Size = UDim2.new(1, 0, 0, 30)
    Title.BackgroundTransparency = 1
    Title.TextColor3 = ThemeColors.Text
    Title.Font = Enum.Font.GothamSemibold
    Title.TextSize = 18
    Title.Parent = Window

    local TabHolder = Instance.new("Frame")
    TabHolder.Size = UDim2.new(1, 0, 0, 40)
    TabHolder.Position = UDim2.new(0, 0, 0, 30)
    TabHolder.BackgroundTransparency = 1
    TabHolder.Parent = Window

    return setmetatable({Window = Window, Tabs = {}, Theme = ThemeColors, TabHolder = TabHolder}, {__index = DinoHub})
end

return DinoHub
