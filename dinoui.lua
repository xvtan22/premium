local DinoHub = {}

local themes = {
    ["white"] = {
        Background = Color3.fromRGB(240, 240, 240),
        Text = Color3.fromRGB(50, 50, 50),
        Button = Color3.fromRGB(200, 200, 200),
        ToggleOn = Color3.fromRGB(0, 200, 0),
        ToggleOff = Color3.fromRGB(150, 150, 150),
        Dropdown = Color3.fromRGB(220, 220, 220)
    },
    ["dark"] = {
        Background = Color3.fromRGB(30, 30, 30),
        Text = Color3.fromRGB(225, 225, 225),
        Button = Color3.fromRGB(50, 50, 50),
        ToggleOn = Color3.fromRGB(0, 200, 0),
        ToggleOff = Color3.fromRGB(100, 100, 100),
        Dropdown = Color3.fromRGB(50, 50, 50)
    }
}

function DinoHub.CreateWindow(title, width, height, theme)
    local player = game:GetService("Players").LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui", 5) -- Đợi tối đa 5 giây

    if not playerGui then
        warn("Không tìm thấy PlayerGui")
        return nil
    end

    local ThemeColors = themes[theme] or themes["white"]

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = playerGui

    local Window = Instance.new("Frame")
    Window.Size = UDim2.new(0, width, 0, height)
    Window.Position = UDim2.new(0.5, -width/2, 0.5, -height/2)
    Window.BackgroundColor3 = ThemeColors.Background
    Window.BackgroundTransparency = 0.3
    Window.Parent = ScreenGui

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

function DinoHub:AddTab(name)
    local Tab = Instance.new("TextButton")
    Tab.Text = name
    Tab.Size = UDim2.new(0, 100, 0, 30)
    Tab.BackgroundTransparency = 0.2
    Tab.Parent = self.TabHolder

    local TabFrame = Instance.new("Frame")
    TabFrame.Size = UDim2.new(1, 0, 1, -40)
    TabFrame.Position = UDim2.new(0, 0, 0, 40)
    TabFrame.BackgroundTransparency = 1
    TabFrame.Parent = self.Window
    TabFrame.Visible = false

    Tab.MouseButton1Click:Connect(function()
        for _, t in pairs(self.Tabs) do
            t.Frame.Visible = false
        end
        TabFrame.Visible = true
    end)

    table.insert(self.Tabs, {Button = Tab, Frame = TabFrame})
    return setmetatable({Frame = TabFrame, Theme = self.Theme}, {__index = DinoHub})
end

function DinoHub:AddButton(text, callback)
    local Button = Instance.new("TextButton")
    Button.Text = text
    Button.Size = UDim2.new(0, 200, 0, 40)
    Button.BackgroundColor3 = self.Theme.Button
    Button.TextColor3 = self.Theme.Text
    Button.Parent = self.Frame

    Button.MouseButton1Click:Connect(callback)
end

return DinoHub
