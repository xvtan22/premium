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
local PlayerTab = Window:AddTab({ Title = "Player", Icon = "" })
local IslandTab = Window:AddTab({ Title = "Đảo 🏝️", Icon = "" })
local OtherTab = Window:AddTab({ Title = "Khác", Icon = "" })
local FruitTab = Window:AddTab({ Title = "Fruit", Icon = "" })

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
            while wait() do
                if _G.ToggleAutoCollect then -- Chỉ chạy nếu bật toggle
                    local Chests = getChestsSorted()
                    if #Chests > 0 then
                        Teleport(Chests[1].CFrame)
                    else
                        -- Bạn có thể thêm logic serverhop ở đây
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

-- Tab Player
PlayerTab:AddToggle("Aimcam", {
    Title = "AimBot camera player",
    Description = "ON/OFF AimBot camera player",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local LocalPlayer = Players.LocalPlayer
        local Camera = game:GetService("Workspace").CurrentCamera
        local UserInputService = game:GetService("UserInputService")

        local isLockCamActive = false
        local lockCamConnection = nil
        local currentTargetPlayer = nil

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

        local function lockCameraToPlayer()
            lockCamConnection = RunService.RenderStepped:Connect(function()
                if currentTargetPlayer and currentTargetPlayer.Character and currentTargetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local targetPosition = currentTargetPlayer.Character.HumanoidRootPart.Position
                    local targetLookAt = targetPosition + Vector3.new(0, 0, 1)
                    Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetLookAt)
                end
            end)
        end

        local function unlockCamera()
            if lockCamConnection then
                lockCamConnection:Disconnect()
                lockCamConnection = nil
                currentTargetPlayer = nil
            end
        end

        local function toggleLockCam()
            if isLockCamActive then
                isLockCamActive = false
                unlockCamera()
            else
                isLockCamActive = true
                currentTargetPlayer = findClosestPlayer()
                lockCameraToPlayer()
            end
        end

        UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if input.KeyCode == Enum.KeyCode.L and not gameProcessed then
                toggleLockCam()
            end
        end)

        -- Create ESP for players
        local function updateESPText(player, espText)
            local distance = math.floor((LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude)
            espText.Text = player.Name .. " (" .. distance .. "m)"
        end

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

            RunService.RenderStepped:Connect(function()
                updateESPText(player, espText)
            end)
        end

        -- Handle existing players and new players joining
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                player.CharacterAdded:Connect(function()
                    createESP(player)
                end)
                if player.Character then
                    createESP(player)
                end
            end
        end

        Players.PlayerAdded:Connect(function(player)
            if player ~= LocalPlayer then
                player.CharacterAdded:Connect(function()
                    createESP(player)
                end)
            end
        end)
    end
})

-- Tab Đảo
IslandTab:AddDropdown("Chọn đảo", {
    Title = "Chọn đảo",
    Description = "Danh sách đảo",
    Values = {"Tiki", "Hydra", "Pháo đài", "Dinh Thự", "Lâu Đài Bóng Tối", "Cảng", "Cây Đại Thụ", "Đảo Bánh"},
    Callback = function(Value)
        -- Code cho dropdown này
    end
})

-- Tab Khác
OtherTab:AddToggle("Anti Die", {
    Title = "Anti Die",
    Description = "Anti die chỉ có hiệu lực khi HP=30%",
    Callback = function(Value)
        -- Code cho toggle này
    end
})

-- Tab Fruit
FruitTab:AddToggle("Find Fruit", {
    Title = "Find Fruit",
    Description = "Tự động nhặt Fruit + Esp fruit",
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

-- Minimize window logic
local minimized = false
local function toggleMinimize()
    minimized = not minimized
    if minimized then
        Window:SetSize(UDim2.fromOffset(160, 60)) -- Adjust for a smaller minimized size
        Window:SetVisible(false)
    else
        Window:SetSize(UDim2.fromOffset(580, 460)) -- Restore original size
        Window:SetVisible(true)
    end
end

Window.MinimizeKeybind = toggleMinimize
