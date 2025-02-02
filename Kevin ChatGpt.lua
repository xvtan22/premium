local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
local Window = Library:CreateWindow{
    Title = "Dino Hub",
    SubTitle = "| .gg/67tG8nmaQX",
    TabWidth = 160,
    Size = UDim2.fromOffset(800, 600),
    Resize = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
}

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ControlGUI"
screenGui.Parent = game.CoreGui

local toggleButton = Instance.new("ImageButton")
toggleButton.Size = UDim2.new(0, 50, 0, 50)
toggleButton.Position = UDim2.new(0, 10, 0.5, -25)
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
local PlayerTab = Window:AddTab({ Title = "Aim", Icon = "" })
local FruitTab = Window:AddTab({ Title = "Fruit", Icon = "" })
local IslandTab = Window:AddTab({ Title = "Soon", Icon = "" })
local OtherTab = Window:AddTab({ Title = "Soon", Icon = "" })

-- Tab Main
MainTab:AddToggle("AutochestToggle", {
    Title = "Auto collect chest",
    Description = "ON/OFF auto collect chest",
    Callback = function(Value)
        local MaxSpeed = 300 -- Tốc độ tối đa (studs/giây)
_G.ToggleAutoCollect = false -- Bật Auto Collect mặc định

-- Tìm Character của người chơi
local function getCharacter()
    if not LocalPlayer.Character then
        LocalPlayer.CharacterAdded:Wait()
    end
    LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    return LocalPlayer.Character
end

-- Hàm sắp xếp các đối tượng gần người chơi nhất
local function DistanceFromPlrSort(ObjectList)
    local RootPart = getCharacter().HumanoidRootPart
    table.sort(ObjectList, function(ObjectA, ObjectB)
        local RootPos = RootPart.Position
        local DistanceA = (RootPos - ObjectA.Position).Magnitude
        local DistanceB = (RootPos - ObjectB.Position).Magnitude
        return DistanceA < DistanceB
    end)
end

-- Hàm tìm Chest và sắp xếp theo khoảng cách
local function getChestsSorted()
    local Chests = {}
    for _, Object in pairs(workspace:GetDescendants()) do
        if Object.Name:find("Chest") and Object:IsA("Part") and Object:FindFirstChild("TouchInterest") then
            table.insert(Chests, Object)
        end
    end
    DistanceFromPlrSort(Chests)
    return Chests
end

-- Hàm tắt/mở noclip
local function toggleNoclip(Toggle)
    for _, v in pairs(getCharacter():GetChildren()) do
        if v:IsA("BasePart") then
            v.CanCollide = not Toggle
        end
    end
end

-- Hàm di chuyển người chơi đến vị trí của Chest
local function Teleport(Goal)
    toggleNoclip(true)
    local RootPart = getCharacter().HumanoidRootPart
    while (RootPart.Position - Goal.Position).Magnitude > 1 do
        local Direction = (Goal.Position - RootPart.Position).Unit
        RootPart.CFrame = RootPart.CFrame + Direction * (MaxSpeed * task.wait())
    end
    toggleNoclip(false)
end

-- Hàm chính để tự động thu thập Chest
local function main()
    while task.wait() do
        if _G.ToggleAutoCollect then
            local Chests = getChestsSorted()
            if #Chests > 0 then
                -- Di chuyển đến Chest gần nhất
                Teleport(Chests[1].CFrame)
            end
        end
    end
end

-- Khởi chạy script tìm Chest tự động
task.spawn(main)

-- Tab Player
local aimBotActive = false -- Trạng thái hoạt động của Aimbot
local lockCamConnection = nil
local espConnections = {} -- Danh sách kết nối ESP

local function createESP(player)
    if not player.Character or not player.Character:FindFirstChild("Head") then return end

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Parent = player.Character.Head
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.new(0, 200, 0, 50)
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = billboardGui
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.SourceSansBold

    local updateConnection = game:GetService("RunService").RenderStepped:Connect(function()
        if not aimBotActive or not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
            billboardGui:Destroy()
            updateConnection:Disconnect()
            return
        end

        local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude)
        textLabel.Text = player.Name .. " (" .. distance .. "m)"
    end)

    table.insert(espConnections, updateConnection)
end

local function applyESPToAllPlayers()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            player.CharacterAdded:Connect(function()
                createESP(player)
            end)
            if player.Character then
                createESP(player)
            end
        end
    end

    game.Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function()
            createESP(player)
        end)
    end)
end

local function clearESP()
    for _, connection in ipairs(espConnections) do
        connection:Disconnect()
    end
    espConnections = {}
end

local function toggleAimbot(enabled)
    if enabled then
        aimBotActive = true
        applyESPToAllPlayers()
        lockCamConnection = game:GetService("RunService").RenderStepped:Connect(function()
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local Camera = game:GetService("Workspace").CurrentCamera

            local function getClosestTarget()
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

            local targetPlayer = getClosestTarget()
            if targetPlayer and targetPlayer.Character then
                local targetPos = targetPlayer.Character.HumanoidRootPart.Position
                local cameraPos = Camera.CFrame.Position
                Camera.CFrame = CFrame.new(cameraPos, targetPos)
            end
        end)
    else
        aimBotActive = false
        clearESP()
        if lockCamConnection then
            lockCamConnection:Disconnect()
            lockCamConnection = nil
        end
    end
end

PlayerTab:AddToggle("Aimcam", {
    Title = "Aimbot camera player (may be have bug)",
    Description = "ON/OFF AimBot camera + esp",
    Callback = function(Value)
        toggleAimbot(Value)
    end
})

-- Tab Fruit
FruitTab:AddToggle("Random Fruit", {
    Title = "Random Fruit",
    Description = "Auto Random Fruit",
    Callback = function(state)
        _G.Random_Auto = state
        if state then
            task.spawn(function()
                pcall(function()
                    while _G.Random_Auto do
                        task.wait(0.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy") -- Mua random fruit
                    end
                end)
            end)
        else
            _G.Random_Auto = false -- Đảm bảo _G.Random_Auto được gán là false khi tắt
        end
    end
})
