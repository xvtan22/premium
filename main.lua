-- GUI Discord
local ScreenGuiDiscord = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UIGradientDiscord = Instance.new("UIGradient")

ScreenGuiDiscord.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGuiDiscord.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = ScreenGuiDiscord
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.Position = UDim2.new(0.5, 0, -0.025, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "https://discord.gg/67tG8nmaQX"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.00

UIGradientDiscord.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(131, 181, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(224, 162, 255))
}
UIGradientDiscord.Parent = TextLabel

-- GUI Main
local ScreenGuiMain = Instance.new("ScreenGui")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local UIGradientMain = Instance.new("UIGradient")
local T = Instance.new("TextLabel")
local UIGradient1 = Instance.new("UIGradient")

ScreenGuiMain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGuiMain.Parent = game:GetService("Players").LocalPlayer.PlayerGui

DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadowHolder.BackgroundTransparency = 1
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Position = UDim2.new(0.5, 0, 0.1, 0)
DropShadowHolder.Size = UDim2.new(0, 500, 0, 68)
DropShadowHolder.ZIndex = 0
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = ScreenGuiMain

DropShadow.Image = "rbxassetid://73482960622063"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.5
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder

Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.5
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(1, -47, 1, -47)
Main.Name = "Main"
Main.Parent = DropShadowHolder

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Main

UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 2.5
UIStroke.Parent = Main

UIGradientMain.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(131, 181, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(224, 162, 255))
}
UIGradientMain.Parent = UIStroke

T.Font = Enum.Font.GothamBold
T.Text = "Dino Hub Collect chest"
T.TextColor3 = Color3.fromRGB(255, 255, 255)
T.TextSize = 16.5
T.TextYAlignment = Enum.TextYAlignment.Bottom
T.AnchorPoint = Vector2.new(0.5, 0)
T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
T.BackgroundTransparency = 0.999
T.BorderColor3 = Color3.fromRGB(0, 0, 0)
T.BorderSizePixel = 0
T.Position = UDim2.new(0.5, 0, 0, 15)
T.Size = UDim2.new(0, 500, 0, 18)
T.Name = "Top"
T.Parent = Main

UIGradient1.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(131, 181, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(224, 162, 255))
}
UIGradient1.Parent = T

-- Thông báo
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/Main/Library.lua"))()
NotificationLibrary:SendNotification("Warning", "Chờ xíu...", 10)
NotificationLibrary:SendNotification("Warning", "Cảm ơn vì dùng Dino Hub", 10)
NotificationLibrary:SendNotification("Warning", "https://discord.gg/67tG8nmaQX", 10)

-- Auto Collect Chest Logic
local function DistanceFromPlrSort(ObjectList)
    local RootPart = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    table.sort(ObjectList, function(a, b)
        return (RootPart.Position - a.Position).Magnitude < (RootPart.Position - b.Position).Magnitude
    end)
end

local function getChestsSorted()
    local chests = {}
    for _, obj in ipairs(game:GetDescendants()) do
        if obj.Name:find("Chest") and obj:IsA("Part") and obj:FindFirstChild("TouchInterest") then
            table.insert(chests, obj)
        end
    end
    DistanceFromPlrSort(chests)
    return chests
end

local function toggleNoclip(Toggle)
    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if v:IsA("BasePart") then
            v.CanCollide = not Toggle
        end
    end
end

local function Teleport(Goal, Speed)
    local RootPart = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    Speed = Speed or 300 -- Tốc độ mặc định
    toggleNoclip(true)
    local distance = (RootPart.Position - Goal.Position).Magnitude
    while distance > 1 do
        local direction = (Goal.Position - RootPart.Position).Unit
        RootPart.CFrame = RootPart.CFrame + direction * (Speed * wait())
        distance = (RootPart.Position - Goal.Position).Magnitude
    end
    toggleNoclip(false)
end

local function main()
    while wait() do
        local chests = getChestsSorted()
        if #chests > 0 then
            Teleport(chests[1].CFrame)
        else
            -- Server Hop hoặc chờ khi không có chest
            wait(5)
        end
    end
end

main()
