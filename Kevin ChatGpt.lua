local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
local Window = Library:CreateWindow{
    Title = "Dino Hub",
    SubTitle = "| .gg/67tG8nmaQX",
    TabWidth = 160,
    Size = UDim2.fromOffset(1280, 860),
    Resize = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
}

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ControlGUI"
screenGui.Parent = game.CoreGui

local toggleButton = Instance.new("ImageButton")
toggleButton.Size = UDim2.new(0, 50, 0, 50)
toggleButton.Position = UDim2.new(1, -60, 0, 10)
toggleButton.Image = "rbxassetid://99430417788026"
toggleButton.BackgroundTransparency = 1
toggleButton.Parent = screenGui

local isFluentVisible = true

toggleButton.MouseButton1Click:Connect(function()
    isFluentVisible = not isFluentVisible

    if isFluentVisible then
        Window:Minimize(false)
    else
        Window:Minimize(true)
    end
end)

local MainTab = Window:AddTab({ Title = "Main", Icon = "" })
local PlayerTab = Window:AddTab({ Title = "Player", Icon = "" })
local IslandTab = Window:AddTab({ Title = "Đảo 🏝️", Icon = "" })
local OtherTab = Window:AddTab({ Title = "Khác", Icon = "" })
local FruitTab = Window:AddTab({ Title = "Fruit", Icon = "" })

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = game:GetService("Workspace").CurrentCamera

local espObjects = {}
local isAimBotActive = false
local isESPActive = false

-- Tab Player
PlayerTab:AddToggle("AimBot", {
    Title = "AimBot camera player",
    Description = "ON/OFF AimBot camera player",
    Callback = function(Value)
        isAimBotActive = Value
        
        -- Kích hoạt hoặc vô hiệu hóa AimBot camera và ESP đồng thời
        if isAimBotActive then
            isESPActive = true
            -- Bắt đầu AimBot Camera
            lockCameraToPlayer()
            -- Bật ESP
            enableESP()
        else
            isESPActive = false
            -- Dừng AimBot Camera
            unlockCamera()
            -- Tắt ESP
            disableESP()
        end
    end
})

-- Tìm người chơi gần nhất
local function findClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            if distance < shortestDistance then
                closestPlayer = player
                shortestDistance = distance
            end
        end
    end
    return closestPlayer
end

-- Khóa camera vào người chơi
local function lockCameraToPlayer()
    local closestPlayer = findClosestPlayer()
    if closestPlayer then
        local lockCamConnection = RunService.RenderStepped:Connect(function()
            if closestPlayer.Character and closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local targetPosition = closestPlayer.Character.HumanoidRootPart.Position
                local targetLookAt = targetPosition + Vector3.new(0, 0, 1)
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetLookAt)
            end
        end)
    end
end

-- Mở khóa camera
local function unlockCamera()
    for _, connection in pairs(getConnections()) do
        connection:Disconnect()
    end
end

-- Cập nhật thông tin ESP
local function updateESPText(player, espText)
    local distance = math.floor((LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude)
    espText.Text = player.Name .. " (" .. distance .. "m)"
end

-- Tạo ESP cho người chơi
local function createESP(player)
    local espFrame = Instance.new("BillboardGui")
    espFrame.Parent = player.Character
    espFrame.Size = UDim2.new(0, 200, 0, 50)
    espFrame.Adornee = player.Character:WaitForChild("Head")
    espFrame.StudsOffset = Vector3.new(0, 2, 0)
    espFrame.AlwaysOnTop = true

    local espText = Instance.new("TextLabel")
    espText.Parent = espFrame
    espText.Size = UDim2.new(1, 0, 1, 0)
    espText.BackgroundTransparency = 1
    espText.TextColor3 = Color3.new(1, 1, 1)
    espText.TextSize = 20
    espText.Font = Enum.Font.SourceSansBold
    espText.TextStrokeTransparency = 0.8

    -- Cập nhật ESP text khi có thay đổi
    RunService.RenderStepped:Connect(function()
        updateESPText(player, espText)
    end)

    table.insert(espObjects, espFrame)
end

-- Tắt ESP cho người chơi
local function removeESP(player)
    for _, esp in pairs(espObjects) do
        if esp.Adornee == player.Character:FindFirstChild("Head") then
            esp:Destroy()
        end
    end
end

-- Kích hoạt ESP
local function enableESP()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            createESP(player)
        end
    end
end

-- Vô hiệu hóa ESP
local function disableESP()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            removeESP(player)
        end
    end
    espObjects = {}  -- Clear all ESP objects
end

-- Tab Fruit
FruitTab:AddToggle("RandomFruit", {
    Title = "Find Random Fruit",
    Description = "Tự động mua Fruit + ESP fruit",
    Callback = function(state)
        _G.Random_Auto = state
        if state then
            task.spawn(function()
                pcall(function()
                    while _G.Random_Auto do
                        wait(0.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy") -- Mua random fruit
                    end
                end)
            end)
        else
            _G.Random_Auto = false -- Ensure to set _G.Random_Auto to false when disabling
        end
    end
})

-- Cài đặt thu nhỏ cửa sổ
local minimized = false
local function toggleMinimize()
    minimized = not minimized
    if minimized then
        Window:SetSize(UDim2.fromOffset(160, 60)) -- Thu nhỏ
    else
        Window:SetSize(UDim2.fromOffset(1280, 860)) -- Mở rộng lại
    end
end
