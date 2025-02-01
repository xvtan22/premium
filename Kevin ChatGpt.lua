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
    end
})

-- Tab Player
PlayerTab:AimToggle("Aimcam", {
    Title = "AimBot camera player",
    Description = "ON/OFF AimBot camera player",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local LocalPlayer = Players.LocalPlayer
        local Camera = game:GetService("Workspace").CurrentCamera
        
        local isLockCamActive = false
        local lockCamConnection = nil
        local currentTargetPlayer = nil
        
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
            lockCamConnection = RunService.RenderStepped:Connect(function()
                if currentTargetPlayer and currentTargetPlayer.Character and currentTargetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local targetPosition = currentTargetPlayer.Character.HumanoidRootPart.Position
                    local targetLookAt = targetPosition + Vector3.new(0, 0, 1)
                    Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetLookAt)
                end
            end)
        end
        
        -- Hủy khóa camera
        local function unlockCamera()
            if lockCamConnection then
                lockCamConnection:Disconnect()
                lockCamConnection = nil
                currentTargetPlayer = nil
            end
        end
        
        -- Toggle khóa camera
        local function toggleLockCam()
            if isLockCamActive then
                isLockCamActive = false
                unlockCamera()  -- Dừng camera aim bot khi tắt toggle
            else
                isLockCamActive = true
                currentTargetPlayer = findClosestPlayer()
                lockCameraToPlayer()  -- Bắt đầu camera aim bot khi bật toggle
            end
        end
        
        -- Khi toggle bật, sẽ bắt đầu hoặc dừng camera aim bot
        if Value then
            toggleLockCam()  -- Bắt đầu camera aim bot
        else
            toggleLockCam()  -- Dừng camera aim bot
        end
    end
})

-- Tab Đảo
local islandDropdown = IslandTab:AddDropdown("Chọn đảo", {
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

-- Tab Random Fruit
FruitTab:AddToggle("Random Fruit", {
    Title = "Random Fruit",
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

-- Cài đặt thu nhỏ cửa sổ
local minimized = false
local function toggleMinimize()
    minimized = not minimized
    if minimized then
        Window:SetSize(UDim2.fromOffset(160, 60)) -- Adjust for a smaller minimized size
        Window:SetProperty("Acrylic", false)

        -- Ẩn tất cả các tab
        for _, tab in ipairs(Window:GetTabs()) do
            tab:SetProperty("Visible", false)
        end

        Window.TitleBar:SetProperty("Visible", false)
        Window.SubTitleLabel:SetProperty("Visible", false)

    else
        Window:SetSize(UDim2.fromOffset(580, 460)) -- Restore original size
        Window:SetProperty("Acrylic", true)
        for _, tab in ipairs(Window:GetTabs()) do
            tab:SetProperty("Visible", true)
        end

        Window.TitleBar:SetProperty("Visible", true)
        Window.SubTitleLabel:SetProperty("Visible", true)
    end
end
Window.MinimizeKeybind = toggleMinimize
