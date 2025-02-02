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

local TweenService = game:GetService("TweenService")
local PlayerService = game:GetService("Players")
local LocalPlayer = PlayerService.LocalPlayer
local RunService = game:GetService("RunService")

local function getCharacter()
    if not LocalPlayer.Character then
        LocalPlayer.CharacterAdded:Wait()
    end
    return LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character or nil
end

local function toggleNoclip(enabled)
    local character = getCharacter()
    if character then
        for _, part in ipairs(character:GetChildren()) do
            if part:IsA("BasePart") then
                part.CanCollide = not enabled
            end
        end
    end
end

local function teleportToPart(part)
    local root = getCharacter() and getCharacter().HumanoidRootPart
    if root and part then
        toggleNoclip(true)
        local tweenInfo = TweenInfo.new((root.Position - part.Position).Magnitude / 300, Enum.EasingStyle.Linear)
        local goal = { CFrame = part.CFrame }
        local tween = TweenService:Create(root, tweenInfo, goal)
        tween:Play()
        tween.Completed:Wait()
        toggleNoclip(false)
    end
end

local function getSortedChests()
    local chests = {}
    local root = getCharacter() and getCharacter().HumanoidRootPart
    if root then
        for _, obj in ipairs(workspace:GetDescendants()) do
            if obj:IsA("Part") and obj.Name:find("Chest") and obj:FindFirstChild("TouchInterest") then
                table.insert(chests, obj)
            end
        end
        table.sort(chests, function(a, b)
            return (root.Position - a.Position).Magnitude < (root.Position - b.Position).Magnitude
        end)
    end
    return chests
end

local autoCollectActive = false

local function autoCollectChest()
    while autoCollectActive do
        local chests = getSortedChests()
        if #chests > 0 then
            pcall(function()
                teleportToPart(chests[1])
            end)
        end
        task.wait(0.5)
    end
end

MainTab:AddToggle("AutochestToggle", {
    Title = "Auto collect chest",
    Description = "ON/OFF auto collect chest",
    Callback = function(state)
        autoCollectActive = state
        if state then
            task.spawn(autoCollectChest)
        end
    end
})

local aimBotActive = false
local espConnections = {}

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

    local updateConnection = RunService.RenderStepped:Connect(function()
        if not aimBotActive or not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
            billboardGui:Destroy()
            updateConnection:Disconnect()
            return
        end
        local distance = math.floor((LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude)
        textLabel.Text = player.Name .. " (" .. distance .. "m)"
    end)

    table.insert(espConnections, updateConnection)
end

local function applyESPToAllPlayers()
    for _, player in ipairs(PlayerService:GetPlayers()) do
        if player ~= LocalPlayer then
            player.CharacterAdded:Connect(function()
                createESP(player)
            end)
            if player.Character then
                createESP(player)
            end
        end
    end

    PlayerService.PlayerAdded:Connect(function(player)
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
    else
        aimBotActive = false
        clearESP()
    end
end

PlayerTab:AddToggle("Aimcam", {
    Title = "Aimbot camera player (may be have bug)",
    Description = "ON/OFF AimBot camera + esp",
    Callback = function(state)
        toggleAimbot(state)
    end
})

FruitTab:AddToggle("Random Fruit", {
    Title = "Random Fruit",
    Description = "Auto Random Fruit",
    Callback = function(state)
        _G.Random_Auto = state
        if state then
            task.spawn(function()
                while _G.Random_Auto do
                    pcall(function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
                    end)
                    task.wait(0.1)
                end
            end)
        end
    end
})
