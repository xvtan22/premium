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

        -- Biến trạng thái toggle
        _G.ToggleAutoCollect = false -- Mặc định là tắt

        local function getCharacter()
            local LocalPlayer = game:GetService("Players").LocalPlayer
            if not LocalPlayer.Character then
                LocalPlayer.CharacterAdded:Wait()
            end
            LocalPlayer.Character:WaitForChild("HumanoidRootPart")
            return LocalPlayer.Character
        end

        local function DistanceFromPlrSort(ObjectList)
            local RootPart = getCharacter().HumanoidRootPart
            table.sort(ObjectList, function(ChestA, ChestB)
                local RootPos = RootPart.Position
                local DistanceA = (RootPos - ChestA.Position).Magnitude
                local DistanceB = (RootPos - ChestB.Position).Magnitude
                return DistanceA < DistanceB
            end)
        end

        local UncheckedChests = {}
        local FirstRun = true

        local function getChestsSorted()
            if FirstRun then
                FirstRun = false
                local Objects = game:GetDescendants()
                for _, Object in pairs(Objects) do
                    if Object.Name:find("Chest") and Object.ClassName == "Part" then
                        table.insert(UncheckedChests, Object)
                    end
                end
            end
            local Chests = {}
            for _, Chest in pairs(UncheckedChests) do
                if Chest:FindFirstChild("TouchInterest") then
                    table.insert(Chests, Chest)
                end
            end
            DistanceFromPlrSort(Chests)
            return Chests
        end

        local function toggleNoclip(Toggle)
            for _, v in pairs(getCharacter():GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = not Toggle
                end
            end
        end

        local function Teleport(Goal, Speed)
            Speed = Speed or MaxSpeed
            toggleNoclip(true)
            local RootPart = getCharacter().HumanoidRootPart
            while (RootPart.Position - Goal.Position).Magnitude > 1 do
                local Direction = (Goal.Position - RootPart.Position).Unit
                RootPart.CFrame = RootPart.CFrame + Direction * (Speed * task.wait())
            end
            toggleNoclip(false)
        end

        local function main()
            while wait(0.2) do -- Giảm tần suất kiểm tra
                if _G.ToggleAutoCollect then -- Chỉ chạy nếu bật toggle
                    local Chests = getChestsSorted()
                    if #Chests > 0 then
                        Teleport(Chests[1].CFrame)
                    end
                end
            end
        end

        -- Start the main function when toggle is on
        if Value then
            _G.ToggleAutoCollect = true
            main()
        else
            _G.ToggleAutoCollect = false
        end
    end
})

-- Tab Player - Aimbot and ESP player
local aimBotActive = false -- Trạng thái hoạt động của Aimbot
local lockCamConnection = nil
local espConnections = {} -- Danh sách kết nối ESP

local function createESP(player)
    if not player.Character or not player.Character:FindFirstChild("Head") then return end

    -- Tạo BillboardGui để hiển thị tên người chơi và khoảng cách
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

    -- Cập nhật khoảng cách và tên người chơi
    local updateConnection
    updateConnection = game:GetService("RunService").RenderStepped:Connect(function()
        if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
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

        -- Apply ESP to all players when aimbot is enabled
        applyESPToAllPlayers()
    else
        aimBotActive = false
        if lockCamConnection then
            lockCamConnection:Disconnect()
            lockCamConnection = nil
        end
        clearESP() -- Clear ESP when aimbot is disabled
    end
end

PlayerTab:AddToggle("Aimcam", {
    Title = "Aimbot camera player",
    Description = "may be have bug",
    Callback = function(Value)
        toggleAimbot(Value)
    end
})

-- Toggle ESP player
PlayerTab:AddToggle("Esp player", {
    Title = "Esp player",
    Description = "Định vị player",
    Callback = function(Value)
        if Value then
            applyESPToAllPlayers()  -- Bật ESP cho tất cả player khi toggle ESP
        else
            clearESP()  -- Tắt ESP khi không còn toggle ESP
        end
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
