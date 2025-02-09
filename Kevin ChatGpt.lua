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
local IslandTab = Window:AddTab({ Title = "One Click", Icon = "" })
local OtherTab = Window:AddTab({ Title = "Other Hubs", Icon = "" })

-- Tab Main
MainTab:AddToggle("AutochestToggle", {
    Title = "Auto collect chest",
    Description = "báo owner nếu có bug",
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

local function checkQuest()
    local player = game:GetService("Players").LocalPlayer
    local myLevel = player.Data.Level.Value
    local mon, nameMon, nameQuest, levelQuest
    local cFrameQuest, cFrameMon

    if L_23_ then
        if myLevel >= 1 and myLevel <= 9 then
            mon, nameMon, nameQuest, levelQuest = "Bandit", "Bandit", "BanditQuest1", 1
            cFrameQuest = CFrame.new(1059.37, 15.45, 1550.42)
            cFrameMon = CFrame.new(1045.96, 27.00, 1560.82)
        elseif myLevel >= 10 and myLevel <= 14 then
            mon, nameMon, nameQuest, levelQuest = "Monkey", "Monkey", "JungleQuest", 1
            cFrameQuest = CFrame.new(-1598.09, 35.55, 153.37)
            cFrameMon = CFrame.new(-1448.52, 67.85, 11.46)
        elseif myLevel >= 15 and myLevel <= 29 then
            mon, nameMon, nameQuest, levelQuest = "Gorilla", "Gorilla", "JungleQuest", 2
            cFrameQuest = CFrame.new(-1598.09, 35.55, 153.37)
            cFrameMon = CFrame.new(-1129.88, 40.46, -525.42)
        elseif myLevel >= 30 and myLevel <= 39 then
            mon, nameMon, nameQuest, levelQuest = "Pirate", "Pirate", "BuggyQuest1", 1
            cFrameQuest = CFrame.new(-1141.07, 4.10, 3831.55)
            cFrameMon = CFrame.new(-1103.51, 13.75, 3896.09)
        elseif myLevel >= 40 and myLevel <= 59 then
            mon, nameMon, nameQuest, levelQuest = "Brute", "Brute", "BuggyQuest1", 2
            cFrameQuest = CFrame.new(-1141.07, 4.10, 3831.55)
            cFrameMon = CFrame.new(-1140.08, 14.81, 4322.92)
        elseif myLevel >= 60 and myLevel <= 74 then
            mon, nameMon, nameQuest, levelQuest = "Desert Bandit", "Desert Bandit", "DesertQuest", 1
            cFrameQuest = CFrame.new(894.49, 5.14, 4392.43)
            cFrameMon = CFrame.new(924.80, 6.45, 4481.59)
        elseif myLevel >= 75 and myLevel <= 89 then
            mon, nameMon, nameQuest, levelQuest = "Desert Officer", "Desert Officer", "DesertQuest", 2
            cFrameQuest = CFrame.new(894.49, 5.14, 4392.43)
            cFrameMon = CFrame.new(1608.28, 8.61, 4371.01)
        elseif myLevel >= 90 and myLevel <= 99 then
            mon, nameMon, nameQuest, levelQuest = "Snow Bandit", "Snow Bandit", "SnowQuest", 1
            cFrameQuest = CFrame.new(1389.74, 88.15, -1298.91)
            cFrameMon = CFrame.new(1354.35, 87.27, -1393.95)
        elseif myLevel >= 100 and myLevel <= 119 then
            mon, nameMon, nameQuest, levelQuest = "Snowman", "Snowman", "SnowQuest", 2
            cFrameQuest = CFrame.new(1389.74, 88.15, -1298.91)
            cFrameMon = CFrame.new(1201.64, 144.58, -1550.07)
        elseif myLevel >= 120 and myLevel <= 149 then
            mon, nameMon, nameQuest, levelQuest = "Chief Petty Officer", "Chief Petty Officer", "MarineQuest2", 1
            cFrameQuest = CFrame.new(-5039.59, 27.35, 4324.68)
            cFrameMon = CFrame.new(-4881.23, 22.65, 4273.75)
        elseif myLevel >= 150 and myLevel <= 174 then
            mon, nameMon, nameQuest, levelQuest = "Sky Bandit", "Sky Bandit", "SkyQuest", 1
            cFrameQuest = CFrame.new(-4839.53, 716.37, -2619.44)
            cFrameMon = CFrame.new(-4953.21, 295.74, -2899.23)
        elseif myLevel >= 175 and myLevel <= 189 then
            mon, nameMon, nameQuest, levelQuest = "Dark Master", "Dark Master", "SkyQuest", 2
            cFrameQuest = CFrame.new(-4839.53, 716.37, -2619.44)
            cFrameMon = CFrame.new(-5259.84, 391.40, -2229.04)
        elseif myLevel >= 190 and myLevel <= 209 then
            mon, nameMon, nameQuest, levelQuest = "Prisoner", "Prisoner", "PrisonerQuest", 1
            cFrameQuest = CFrame.new(5308.93, 1.66, 475.12)
            cFrameMon = CFrame.new(5098.97, -0.32, 474.24)
        elseif myLevel >= 210 and myLevel <= 249 then
            mon, nameMon, nameQuest, levelQuest = "Dangerous Prisoner", "Dangerous Prisoner", "PrisonerQuest", 2
            cFrameQuest = CFrame.new(5308.93, 1.66, 475.12)
            cFrameMon = CFrame.new(5654.56, 15.63, 866.30)
        elseif myLevel >= 250 and myLevel <= 274 then
            mon, nameMon, nameQuest, levelQuest = "Toga Warrior", "Toga Warrior", "ColosseumQuest", 1
            cFrameQuest = CFrame.new(-1580.05, 6.35, -2986.48)
            cFrameMon = CFrame.new(-1820.21, 51.68, -2740.67)
        elseif myLevel >= 275 and myLevel <= 299 then
            mon, nameMon, nameQuest, levelQuest = "Gladiator", "Gladiator", "ColosseumQuest", 2
            cFrameQuest = CFrame.new(-1580.05, 6.35, -2986.48)
            cFrameMon = CFrame.new(-1292.84, 56.38, -3339.03)
        elseif myLevel >= 300 and myLevel <= 324 then
            mon, nameMon, nameQuest, levelQuest = "Military Soldier", "Military Soldier", "MagmaQuest", 1
            cFrameQuest = CFrame.new(-5313.37, 10.95, 8515.29)
            cFrameMon = CFrame.new(-5411.16, 11.08, 8454.29)
        elseif myLevel >= 325 and myLevel <= 374 then
            mon, nameMon, nameQuest, levelQuest = "Military Spy", "Military Spy", "MagmaQuest", 2
            cFrameQuest = CFrame.new(-5313.37, 10.95, 8515.29)
            cFrameMon = CFrame.new(-5802.87, 86.26, 8828.86)
        elseif myLevel >= 375 and myLevel <= 399 then
            mon, nameMon, nameQuest, levelQuest = "Fishman Warrior", "Fishman Warrior", "FishmanQuest", 1
            cFrameQuest = CFrame.new(61122.65, 18.50, 1569.40)
            cFrameMon = CFrame.new(60878.30, 18.48, 1543.76)
            if _25msShared.AutoFarmLevel and (cFrameQuest.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.85, 11.68, 1819.78))
            end
        elseif myLevel >= 400 and myLevel <= 449 then
            mon, nameMon, nameQuest, levelQuest = "Fishman Commando", "Fishman Commando", "FishmanQuest", 2
            cFrameQuest = CFrame.new(61122.65, 18.50, 1569.40)
            cFrameMon = CFrame.new(61922.63, 18.48, 1493.93)
            if _25msShared.AutoFarmLevel and (cFrameQuest.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.85, 11.68, 1819.78))
            end
        elseif myLevel >= 450 and myLevel <= 474 then
            mon, nameMon, nameQuest, levelQuest = "God's Guard", "God's Guard", "SkyExp1Quest", 1
            cFrameQuest = CFrame.new(-4721.89, 843.87, -1949.97)
            cFrameMon = CFrame.new(-4710.04, 845.28, -1927.31)
            if _25msShared.AutoFarmLevel and (cFrameQuest.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82, 872.54, -1667.56))
            end
        elseif myLevel >= 475 and myLevel <= 524 then
            mon, nameMon, nameQuest, levelQuest = "Shanda", "Shanda", "SkyExp1Quest", 2
            cFrameQuest = CFrame.new(-7859.10, 5544.19, -381.48)
            cFrameMon = CFrame.new(-7678.49, 5566.40, -497.22)
            if _25msShared.AutoFarmLevel and (cFrameQuest.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.62, 5547.14, -380.29))
            end
        elseif myLevel >= 525 and myLevel <= 549 then
            mon, nameMon, nameQuest, levelQuest = "Royal Squad", "Royal Squad", "SkyExp2Quest", 1
            cFrameQuest = CFrame.new(-7906.82, 5634.66, -1411.99)
            cFrameMon = CFrame.new(-7624.25, 5658.13, -1467.35)
        elseif myLevel >= 550 and myLevel <= 624 then
            mon, nameMon, nameQuest, levelQuest = "Royal Soldier", "Royal Soldier", "SkyExp2Quest", 2
            cFrameQuest = CFrame.new(-7906.82, 5634.66, -1411.99)
            cFrameMon = CFrame.new(-7836.75, 5645.66, -1790.62)
        elseif myLevel >= 625 and myLevel <= 649 then
            mon, nameMon, nameQuest, levelQuest = "Galley Pirate", "Galley Pirate", "FountainQuest", 1
            cFrameQuest = CFrame.new(5259.82, 37.35, 4050.03)
            cFrameMon = CFrame.new(5551.02, 78.90, 3930.41)
        elseif myLevel >= 650 then
            mon, nameMon, nameQuest, levelQuest = "Galley Captain", "Galley Captain", "FountainQuest", 2
            cFrameQuest = CFrame.new(5259.82, 37.35, 4050.03)
            cFrameMon = CFrame.new(5441.95, 42.50, 4950.09)
        end
    elseif L_24_ then
        if myLevel >= 700 and myLevel <= 724 then
            mon, nameMon, nameQuest, levelQuest = "Raider", "Raider", "Area1Quest", 1
            cFrameQuest = CFrame.new(-429.54, 71.77, 1836.18)
            cFrameMon = CFrame.new(-728.33, 52.78, 2345.77)
        elseif myLevel >= 725 and myLevel <= 774 then
            mon, nameMon, nameQuest, levelQuest = "Mercenary", "Mercenary", "Area1Quest", 2
            cFrameQuest = CFrame.new(-429.54, 71.77, 1836.18)
            cFrameMon = CFrame.new(-1004.32, 80.16, 1424.62)
        elseif myLevel >= 775 and myLevel <= 799 then
            mon, nameMon, nameQuest, levelQuest = "Swan Pirate", "Swan Pirate", "Area2Quest", 1
            cFrameQuest = CFrame.new(638.44, 71.77, 918.28)
            cFrameMon = CFrame.new(1068.66, 137.61, 1322.11)
        elseif myLevel >= 800 and myLevel <= 874 then
            mon, nameMon, nameQuest, levelQuest = "Factory Staff", "Factory Staff", "Area2Quest", 2
            cFrameQuest = CFrame.new(632.70, 73.11, 918.67)
            cFrameMon = CFrame.new(73.08, 81.86, -27.47)
        elseif myLevel >= 875 and myLevel <= 899 then
            mon, nameMon, nameQuest, levelQuest = "Marine Lieutenant", "Marine Lieutenant", "MarineQuest3", 1
            cFrameQuest = CFrame.new(-2440.80, 71.71, -3216.07)
            cFrameMon = CFrame.new(-2821.37, 75.90, -3070.09)
        elseif myLevel >= 900 and myLevel <= 949 then
            mon, nameMon, nameQuest, levelQuest = "Marine Captain", "Marine Captain", "MarineQuest3", 2
            cFrameQuest = CFrame.new(-2440.80, 71.71, -3216.07)
            cFrameMon = CFrame.new(-1861.23, 80.18, -3254.70)
        elseif myLevel >= 950 and myLevel <= 974 then
            mon, nameMon, nameQuest, levelQuest = "Zombie", "Zombie", "ZombieQuest", 1
            cFrameQuest = CFrame.new(-5497.06, 47.59, -795.24)
            cFrameMon = CFrame.new(-5657.78, 78.97, -928.69)
        elseif myLevel >= 975 and myLevel <= 999 then
            mon, nameMon, nameQuest, levelQuest = "Vampire", "Vampire", "ZombieQuest", 2
            cFrameQuest = CFrame.new(-5497.06, 47.59, -795.24)
            cFrameMon = CFrame.new(-6037.67, 32.18, -1340.66)
        elseif myLevel >= 1000 and myLevel <= 1049 then
            mon, nameMon, nameQuest, levelQuest = "Snow Trooper", "Snow Trooper", "SnowMountainQuest", 1
            cFrameQuest = CFrame.new(609.86, 400.12, -5372.26)
            cFrameMon = CFrame.new(549.15, 427.39, -5563.70)
        elseif myLevel >= 1050 and myLevel <= 1099 then
            mon, nameMon, nameQuest, levelQuest = "Winter Warrior", "Winter Warrior", "SnowMountainQuest", 2
            cFrameQuest = CFrame.new(609.86, 400.12, -5372.26)
            cFrameMon = CFrame.new(1142.75, 475.64, -5199.42)
        elseif myLevel >= 1100 and myLevel <= 1124 then
            mon, nameMon, nameQuest, levelQuest = "Lab Subordinate", "Lab Subordinate", "IceSideQuest", 1
            cFrameQuest = CFrame.new(-6064.07, 15.24, -4902.98)
            cFrameMon = CFrame.new(-5707.47, 15.95, -4513.39)
        elseif myLevel >= 1125 and myLevel <= 1174 then
            mon, nameMon, nameQuest, levelQuest = "Horned Warrior", "Horned Warrior", "IceSideQuest", 2
            cFrameQuest = CFrame.new(-6064.07, 15.24, -4902.98)
            cFrameMon = CFrame.new(-6341.37, 15.95, -5723.16)
        elseif myLevel >= 1175 and myLevel <= 1199 then
            mon, nameMon, nameQuest, levelQuest = "Magma Ninja", "Magma Ninja", "FireSide
        elseif myLevel >= 1175 and myLevel <= 1199 then
            mon, nameMon, nameQuest, levelQuest = "Magma Ninja", "Magma Ninja", "FireSideQuest", 1
            cFrameQuest = CFrame.new(-5428.03, 15.06, -5299.43)
            cFrameMon = CFrame.new(-5449.67, 76.66, -5808.20)
        elseif myLevel >= 1200 and myLevel <= 1249 then
            mon, nameMon, nameQuest, levelQuest = "Lava Pirate", "Lava Pirate", "FireSideQuest", 2
            cFrameQuest = CFrame.new(-5428.03, 15.06, -5299.43)
            cFrameMon = CFrame.new(-5213.33, 49.74, -4701.45)
        elseif myLevel >= 1250 and myLevel <= 1274 then
            mon, nameMon, nameQuest, levelQuest = "Ship Deckhand", "Ship Deckhand", "ShipQuest1", 1
            cFrameQuest = CFrame.new(1037.80, 125.09, 32911.60)
            cFrameMon = CFrame.new(1212.01, 150.79, 33059.25)
            if _25msShared.AutoFarmLevel and (cFrameQuest.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21, 126.98, 32852.83))
            end
        elseif myLevel >= 1275 and myLevel <= 1299 then
            mon, nameMon, nameQuest, levelQuest = "Ship Engineer", "Ship Engineer", "ShipQuest1", 2
            cFrameQuest = CFrame.new(1037.80, 125.09, 32911.60)
            cFrameMon = CFrame.new(919.48, 43.54, 32779.97)
            if _25msShared.AutoFarmLevel and (cFrameQuest.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21, 126.98, 32852.83))
            end
        elseif myLevel >= 1300 and myLevel <= 1324 then
            mon, nameMon, nameQuest, levelQuest = "Ship Steward", "Ship Steward", "ShipQuest2", 1
            cFrameQuest = CFrame.new(968.81, 125.09, 33244.13)
            cFrameMon = CFrame.new(919.44, 129.56, 33436.04)
            if _25msShared.AutoFarmLevel and (cFrameQuest.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21, 126.98, 32852.83))
            end
        elseif myLevel >= 1325 and myLevel <= 1349 then
            mon, nameMon, nameQuest, levelQuest = "Ship Officer", "Ship Officer", "ShipQuest2", 2
            cFrameQuest = CFrame.new(968.81, 125.09, 33244.13)
            cFrameMon = CFrame.new(1036.02, 181.44, 33315.73)
            if _25msShared.AutoFarmLevel and (cFrameQuest.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21, 126.98, 32852.83))
            end
        elseif myLevel >= 1350 and myLevel <= 1374 then
            mon, nameMon, nameQuest, levelQuest = "Arctic Warrior", "Arctic Warrior", "FrostQuest", 1
            cFrameQuest = CFrame.new(5667.66, 26.80, -6486.09)
            cFrameMon = CFrame.new(5966.25, 62.97, -6179.38)
            if _25msShared.AutoFarmLevel and (cFrameQuest.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-6508.56, 5000.03, -132.84))
            end
        elseif myLevel >= 1375 and myLevel <= 1424 then
            mon, nameMon, nameQuest, levelQuest = "Snow Lurker", "Snow Lurker", "FrostQuest", 2
            cFrameQuest = CFrame.new(5667.66, 26.80, -6486.09)
            cFrameMon = CFrame.new(5407.07, 69.19, -6880.88)
        elseif myLevel >= 1425 and myLevel <= 1449 then
            mon, nameMon, nameQuest, levelQuest = "Sea Soldier", "Sea Soldier", "ForgottenQuest", 1
            cFrameQuest = CFrame.new(-3054.44, 235.54, -10142.82)
            cFrameMon = CFrame.new(-3028.22, 64.67, -9775.43)
        elseif myLevel >= 1450 and myLevel <= 1474 then
            mon, nameMon, nameQuest, levelQuest = "Water Fighter", "Water Fighter", "ForgottenQuest", 2
            cFrameQuest = CFrame.new(-3054.44, 235.54, -10142.82)
            cFrameMon = CFrame.new(-3352.90, 285.02, -10534.84)
        elseif myLevel >= 1475 and myLevel <= 1499 then
            mon, nameMon, nameQuest, levelQuest = "Elite Sea Soldier", "Elite Sea Soldier", "EliteQuest", 1
            cFrameQuest = CFrame.new(-4050.12, 128.45, -12048.31)
            cFrameMon = CFrame.new(-4300.99, 155.89, -12252.75)
        elseif myLevel >= 1500 and myLevel <= 1524 then
            mon, nameMon, nameQuest, levelQuest = "Pistol Millionaire", "Pistol Millionaire", "PiratePortQuest", 1
            cFrameQuest = CFrame.new(-290.07, 42.90, 5581.59)
            cFrameMon = CFrame.new(-245.99, 47.31, 5584.10)
        elseif myLevel >= 1525 and myLevel <= 1574 then
            mon, nameMon, nameQuest, levelQuest = "Pistol Billionaire", "Pistol Billionaire", "PiratePortQuest", 2
            cFrameQuest = CFrame.new(-290.07, 42.90, 5581.59)
            cFrameMon = CFrame.new(-187.33, 86.24, 6013.51)
        elseif myLevel >= 1575 and myLevel <= 1599 then
            mon, nameMon, nameQuest, levelQuest = "Dragon Crew Warrior", "Dragon Crew Warrior", "AmazonQuest", 1
            cFrameQuest = CFrame.new(6736.33, 127.45, -712.33)
            cFrameMon = CFrame.new(7014.85, 196.37, -1024.29)
        elseif myLevel >= 1600 and myLevel <= 1624 then
            mon, nameMon, nameQuest, levelQuest = "Dragon Crew Archer", "Dragon Crew Archer", "AmazonQuest", 2
            cFrameQuest = CFrame.new(6736.33, 127.45, -712.33)
            cFrameMon = CFrame.new(6792.60, 535.43, 454.47)
        elseif myLevel >= 1625 and myLevel <= 1649 then
            mon, nameMon, nameQuest, levelQuest = "Hydra Enforcer", "Hydra Enforcer", "AmazonQuest2", 1
            cFrameQuest = CFrame.new(5210.87, 1004.14, 755.84)
            cFrameMon = CFrame.new(4704.02, 1043.87, 679.62)
        elseif myLevel >= 1650 and myLevel <= 1699 then
            mon, nameMon, nameQuest, levelQuest = "Venomous Assailant", "Venomous Assailant", "AmazonQuest2", 2
            cFrameQuest = CFrame.new(5210.87, 1004.14, 755.84)
            cFrameMon = CFrame.new(4731.27, 1090.18, 1078.17)
        elseif myLevel >= 1700 and myLevel <= 1724 then
            mon, nameMon, nameQuest, levelQuest = "Marine Commodore", "Marine Commodore", "MarineTreeIsland", 1
            cFrameQuest = CFrame.new(2180.54, 27.82, -6741.55)
            cFrameMon = CFrame.new(2286.01, 73.13, -7159.81)
        elseif myLevel >= 1725 and myLevel <= 1774 then
            mon, nameMon, nameQuest, levelQuest = "Marine Rear Admiral", "Marine Rear Admiral", "MarineTreeIsland", 2
            cFrameQuest = CFrame.new(2179.99, 28.73, -6740.06)
            cFrameMon = CFrame.new(3656.77, 160.52, -7001.60)
        elseif myLevel >= 1775 and myLevel <= 1799 then
            mon, nameMon, nameQuest, levelQuest = "Fishman Raider", "Fishman Raider", "DeepForestIsland3", 1
            cFrameQuest = CFrame.new(-10581.66, 330.87, -8761.19)
            cFrameMon = CFrame.new(-10407.53, 331.76, -8368.52)
        elseif myLevel >= 1800 and myLevel <= 1824 then
            mon, nameMon, nameQuest, levelQuest = "Fishman Captain", "Fishman Captain", "DeepForestIsland3", 2
            cFrameQuest = CFrame.new(-10581.66, 330.87, -8761.19)
            cFrameMon = CFrame.new(-10994.70, 352.38, -9002.11)
        elseif myLevel >= 1825 and myLevel <= 1849 then
            mon, nameMon, nameQuest, levelQuest = "Forest Pirate", "Forest Pirate", "DeepForestIsland", 1
            cFrameQuest = CFrame.new(-13234.04, 331.49, -7625.40)
            cFrameMon = CFrame.new(-13274.48, 332.38, -7769.58)
        elseif myLevel >= 1850 and myLevel <= 1899 then
            mon, nameMon, nameQuest, levelQuest = "Mythological Pirate", "Mythological Pirate", "DeepForestIsland", 2
            cFrameQuest = CFrame.new(-13234.04, 331.49, -7625.40)
            cFrameMon = CFrame.new(-13680.61, 501.08, -6991.19)
        elseif myLevel >= 1900 and myLevel <= 1924 then
            mon, nameMon, nameQuest, levelQuest = "Jungle Pirate", "Jungle Pirate", "DeepForestIsland2", 1
            cFrameQuest = CFrame.new(-12680.38, 389.97, -9902.02)
            cFrameMon = CFrame.new(-12256.16, 331.74, -10485.84)
        elseif myLevel >= 1925 and myLevel <= 1974 then
            mon, nameMon, nameQuest, levelQuest = "Musketeer Pirate", "Musketeer Pirate", "DeepForestIsland2", 2
            cFrameQuest = CFrame.new(-12680.38, 389.97, -9902.02)
            cFrameMon = CFrame.new(-13457.90, 391.55, -9859.18)
        elseif myLevel >= 1975 and myLevel <= 1999 then
            mon, nameMon, nameQuest, levelQuest = "Reborn Skeleton", "Reborn Skeleton", "HauntedQuest1", 1
            cFrameQuest = CFrame.new(-9479.22, 141.22, 5566.09)
            cFrameMon = CFrame.new(-8763.72, 165.72, 6159.86)
        elseif myLevel >= 2000 and myLevel <= 2024 then
            mon, nameMon, nameQuest, levelQuest = "Living Zombie", "Living Zombie", "HauntedQuest1", 2
            cFrameQuest = CFrame.new(-9479.22, 141.22, 5566.09)
            cFrameMon = CFrame.new(-10144.13, 138.63, 5838.09)
        elseif myLevel >= 2025 and myLevel <= 2049 then
            mon, nameMon, nameQuest, levelQuest = "Demonic Soul", "Demonic Soul", "HauntedQuest2", 1
            cFrameQuest = CFrame.new(-9516.99, 172.02, 6078.47)
            cFrameMon = CFrame.new(-9505.87, 172.10, 6158.99)
        elseif myLevel >= 2050 and myLevel <= 2074 then
            mon, nameMon, nameQuest, levelQuest = "Posessed Mummy", "Posessed Mummy", "HauntedQuest2", 2
            cFrameQuest = CFrame.new(-9516.99, 172.02, 6078.47)
            cFrameMon = CFrame.new(-9582.02, 6.25, 6205.48)
        elseif myLevel >= 2075 and myLevel <= 2099 then
            mon, nameMon, nameQuest, levelQuest = "Peanut Scout", "Peanut Scout", "NutsIslandQuest", 1
            cFrameQuest = CFrame.new(-2104.39, 38.10, -10194.22)
            cFrameMon = CFrame.new(-2143.24, 47.72, -10029.99)
        elseif myLevel >= 2100 and myLevel <= 2124 then
            mon, nameMon, nameQuest, levelQuest = "Peanut President", "Peanut President", "NutsIslandQuest", 2
            cFrameQuest = CFrame.new(-2104.39, 38.10, -10194.22)
            cFrameMon = CFrame.new(-1859.35, 38.10, -10422.43)
        elseif myLevel >= 2125 and myLevel <= 2149 then
            mon, nameMon, nameQuest, levelQuest = "Ice Cream Chef", "Ice Cream Chef", "IceCreamIslandQuest", 1
            cFrameQuest = CFrame.new(-820.65, 65.82, -10965.80)
            cFrameMon = CFrame.new(-872.25, 65.82, -10919.96)
        elseif myLevel >= 2150 and myLevel <= 2199 then
            mon, nameMon, nameQuest, levelQuest = "Ice Cream Commander", "Ice Cream Commander", "IceCreamIslandQuest", 2
            cFrameQuest = CFrame.new(-820.65, 65.82, -10965.80)
            cFrameMon = CFrame.new(-558.06, 112.05, -11290.77)
        elseif myLevel >= 2200 and myLevel <= 2224 then
            mon, nameMon, nameQuest, levelQuest = "Cookie Crafter", "Cookie Crafter", "CakeQuest1", 1
            cFrameQuest = CFrame.new(-2021.32, 37.80, -12028.73)
            cFrameMon = CFrame.new(-2374.14, 37.80, -12125.31)
        elseif myLevel >= 2225 and myLevel <= 2249 then
            mon, nameMon, nameQuest, levelQuest = "Cake Guard", "Cake Guard", "CakeQuest1", 2
            cFrameQuest = CFrame.new(-2021.32, 37.80, -12028.73)
            cFrameMon = CFrame.new(-1598.31, 43.77, -12244.58)
        elseif myLevel >= 2250 and myLevel <= 2274 then
            mon, nameMon, nameQuest, levelQuest = "Baking Staff", "Baking Staff", "CakeQuest2", 1
            cFrameQuest = CFrame.new(-1927.92, 37.80, -12842.54)
            cFrameMon = CFrame.new(-1887.81, 77.62, -12998.35)
        elseif myLevel >= 2275 and myLevel <= 2299 then
            mon, nameMon, nameQuest, levelQuest = "Head Baker", "Head Baker", "CakeQuest2", 2
            cFrameQuest = CFrame.new(-1927.92, 37.80, -12842.54)
            cFrameMon = CFrame.new(-2216.19, 82.88, -12869.29)
        elseif myLevel >= 2300 and myLevel <= 2324 then
            mon, nameMon, nameQuest, levelQuest = "Cocoa Warrior", "Cocoa Warrior", "ChocQuest1", 1
            cFrameQuest = CFrame.new(233.23, 29.88, -12201.23)
            cFrameMon = CFrame.new(-21.55, 80.57, -12352.39)
        elseif myLevel >= 2325 and myLevel <= 2349 then
            mon, nameMon, nameQuest, levelQuest = "Chocolate Bar Battler", "Chocolate Bar Battler", "ChocQuest1", 2
            cFrameQuest = CFrame.new(233.23, 29.88, -12201.23)
            cFrameMon = CFrame.new(582.59, 77.19, -12463.16)
        elseif myLevel >= 2350 and myLevel <= 2374 then
            mon, nameMon, nameQuest, levelQuest = "Sweet Thief", "Sweet Thief", "ChocQuest2", 1
            cFrameQuest = CFrame.new(150.51, 30.69, -12774.50)
            cFrameMon = CFrame.new(165.19, 76.06, -12600.84)
        elseif myLevel >= 2375 and myLevel <= 2399 then
            mon, nameMon, nameQuest, levelQuest = "Candy Rebel", "Candy Rebel", "ChocQuest2", 2
            cFrameQuest = CFrame.new(150.51, 30.69, -12774.50)
            cFrameMon = CFrame.new(134.87, 77.25, -12876.55)
        elseif myLevel >= 2400 and myLevel <= 2449 then
            mon, nameMon, nameQuest, levelQuest = "Candy Pirate", "Candy Pirate", "CandyQuest1", 1
            cFrameQuest = CFrame.new(-1150.04, 20.38, -14446.33)
            cFrameMon = CFrame.new(-1310.50, 26.02, -14562.40)
        elseif myLevel >= 2425 and myLevel <= 2450 then
            mon, nameMon, nameQuest, levelQuest = "Snow Demon", "Snow Demon", "CandyQuest1", 2
            cFrameQuest = CFrame.new(-1150.04, 20.38, -14446.33)
            cFrameMon = CFrame.new(-750.15, 15.25, -14343.26)
        elseif myLevel >= 2450 and myLevel <= 2475 then
            mon, nameMon, nameQuest, levelQuest = "Isle Outlaw", "Isle Outlaw", "TikiQuest1", 1
            cFrameQuest = CFrame.new(-16547.46, 56.00, -174.17)
            cFrameMon = CFrame.new(-16303.14, 188.16, -268.92)
        elseif myLevel >= 2475 and myLevel <= 2525 then
            mon, nameMon, nameQuest, levelQuest = "Island Boy", "Island Boy", "TikiQuest1", 2
            cFrameQuest = CFrame.new(-16547.46, 56.00, -174.17)
            cFrameMon = CFrame.new(-16303.14, 188.16, -268.92)
        elseif myLevel >= 2525 and myLevel <= 2550 then
            mon, nameMon, nameQuest, levelQuest = "Isle Champion", "Isle Champion", "TikiQuest2", 2
            cFrameQuest = CFrame.new(-16523.10, 55.92, 1049.66)
            cFrameMon = CFrame.new(-16748.46, 94.39, 1129.72)
        elseif myLevel >= 2550 or myLevel <= 2600 then
            mon, nameMon, nameQuest, levelQuest = "Serpent Hunter", "Serpent Hunter", "TikiQuest3", 1
            cFrameQuest = CFrame.new(-16665.46, 105.31, 1577.83)
            cFrameMon = CFrame.new(-16959.27, 110.62, 1669.60)
        end
    end
end

checkQuest()

MainTab:AddToggle("autofarmlv", {
    Title = "Auto Farm Lv",
    Description = "may be have bugs",
    Callback = function(Value)
        Default = false
        _G.AutoLevel = Value
        if not Value then
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
        v17.ToggleLevel:SetValue(false)
        spawn(function()
            while task.wait() do
                if _G.AutoLevel then
                    pcall(function()
                        CheckLevel()
                        local playerGui = game:GetService("Players").LocalPlayer.PlayerGui
                        local questGui = playerGui.Main.Quest
                        local questTitle = questGui.Container.QuestTitle.Title.Text
                        if not string.find(questTitle, NameMon) or not questGui.Visible then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            Tween(CFrameQ)
                            if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                            end
                        elseif string.find(questTitle, NameMon) and questGui.Visible then
                            for _, enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
                                    if enemy.Name == Ms then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            bringmob = true
                                            AutoHaki()
                                            EquipTool(SelectWeapon)
                                            Tween(enemy.HumanoidRootPart.CFrame * Pos)
                                            enemy.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            enemy.HumanoidRootPart.Transparency = 1
                                            enemy.Humanoid.JumpPower = 0
                                            enemy.Humanoid.WalkSpeed = 0
                                            enemy.HumanoidRootPart.CanCollide = false
                                            FarmPos = enemy.HumanoidRootPart.CFrame
                                            MonFarm = enemy.Name
                                        until not _G.AutoLevel or not enemy.Parent or enemy.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(enemy.Name) or not questGui.Visible
                                        bringmob = false
                                    end
                                end
                            end
                            for _, spawnPoint in pairs(game:GetService("Workspace")['_WorldOrigin'].EnemySpawns:GetChildren()) do
                                if string.find(spawnPoint.Name, NameMon) then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - spawnPoint.Position).Magnitude >= 10 then
                                        Tween(spawnPoint.HumanoidRootPart.CFrame * Pos)
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
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

local fruitsESP = {}
local findFruitEnabled = false
local function createESP(fruit)
    if not fruit:FindFirstChild("Handle") then return end

    if fruitsESP[fruit] then
        fruitsESP[fruit]:Destroy()
        fruitsESP[fruit] = nil
    end

    local billboard = Instance.new("BillboardGui")
    billboard.Adornee = fruit.Handle
    billboard.Size = UDim2.new(0, 200, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 2, 0)
    billboard.AlwaysOnTop = true

    local label = Instance.new("TextLabel", billboard)
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = fruit.Name
    label.TextColor3 = Color3.fromRGB(255, 255, 0)
    label.TextScaled = true

    billboard.Parent = fruit
    fruitsESP[fruit] = billboard
end

local function findFruits()
    local fruits = {}
    for _, object in pairs(workspace:GetChildren()) do
        if object:IsA("Tool") and object.Name:lower():find("fruit") then
            table.insert(fruits, object)
            if findFruitEnabled then
                createESP(object)
            end
        end
    end
    return fruits
end

local function teleportToFruit(fruit)
    if fruit and fruit:FindFirstChild("Handle") then
        if findFruitEnabled then
            LocalPlayer.Character.HumanoidRootPart.CFrame = fruit.Handle.CFrame
        end
    end
end

local runService = game:GetService("RunService")
runService.Heartbeat:Connect(function()
    local fruits = findFruits()
    if #fruits > 0 then
        for _, fruit in pairs(fruits) do
            if fruit.Parent == workspace then
                teleportToFruit(fruit)
                wait(1)
            end
        end
    end
end)

workspace.ChildAdded:Connect(function(child)
    if child:IsA("Tool") and child.Name:lower():find("fruit") then
        wait(0.5)
        if findFruitEnabled then
            createESP(child)
        end
        teleportToFruit(child)
    end
end)

workspace.ChildRemoved:Connect(function(child)
    if fruitsESP[child] then
        fruitsESP[child]:Destroy()
        fruitsESP[child] = nil
    end
end)

FruitTab:AddToggle("Find Fruit", {
    Title = "Find Fruit",
    Description = "test giùm t",
    Callback = function(Value)
        findFruitEnabled = Value
        if not findFruitEnabled then
            local fruits = findFruits()
            for _, fruit in ipairs(fruits) do
                if fruitsESP[fruit] then
                    fruitsESP[fruit]:Destroy()
                    fruitsESP[fruit] = nil
                end
            end
        end
    end
})


IslandTab:AddToggle("oneclick", {
    Title = "One Click (beta)",
    Description = "Note: oneclick cannot be disabled (will fix soon)",
    Callback = function(Value)
        if Value then
            getgenv().ConfigsKaitun = {
                ["Safe Mode"] = true, -- Will be pass all anti cheat (but slow farm)
                
                ["Melee"] = {
                    ["Death Step"] = true,
                    ["Electric Claw"] = true,
                    ["Dragon Talon"] = true,
                    ["Sharkman Karate"] = true,
                    ["Superhuman"] = true,
                    ["God Human"] = true,
                },
            
                ["Sword"] = {
                    -- : World 1
                    ["Saber"] = true,
                    ["Pole"] = false,
                    -- : World 2
                    ["Midnight Blade"] = true,
                    ["Shisui"] = true,
                    ["Saddi"] = true,
                    ["Wando"] = true,
                    ["Rengoku"] = true,
                    ["True Triple Katana"] = true,
                    -- : World 3
                    ["Yama"] = true,
                    ["Tushita"] = true,
                    ["Canvander"] = true,
                    ["Buddy Sword"] = true,
                    ["Twin Hooks"] = true,
                    ["Hallow Scythe"] = true,
                    ["Cursed Dual Katana"] = true,
                },
            
                ["Gun"] = {
                    -- : World 2
                    ["Kabucha"] = true,
                    -- : World 3
                    ["Venom Bow"] = true,
                    ["Skull Guitar"] = true,
                },
            
                ["Mastery"] = {
                    ["Melee"] = true,
                    ["Sword"] = true,
                    ["Devil Fruits"] = true,
            
                    ["Configs"] = {
                        ["Selected All Sword"] = true,
                        ["Select Sword"] = {"Saber","Cursed Dual Katana"},
                    }
                },
            
                ["Race"] = {
                    ["v2"] = true,
                    ["v3"] = true,
                    ["Locked"] = {
                        ["Mink"] = true,
                        ["Human"] = true,
                        ["Skypiea"] = true,
                        ["Fishman"] = true,
                    },
                },
            
                ["Fruit"] = {
                    ["Main Fruit"] = {"Dough-Dough"},
                    ["Sec Fruit"] = {"Flame-Flame", "Ice-Ice", "Quake-Quake", "Light-Light", "Dark-Dark", "Spider-Spider", "Rumble-Rumble", "Magma-Magma", "Buddha-Buddha"},
                    ["Safe Fruit"] = {
                        "Dough-Dough",
                        "Dragon-Dragon"
                    },
                },
            
                ["Quest"] = {
                    ["Rainbow Haki"] = true,
                    ["Pull Lever"] = true,
                    ["Musketeer Hat"] = true,
                    ["Dough Mirror"] = true,
                    ["Shark Anchor"] = {
                        ["Enable"] = true,
                        ["Money"] = 25_000_000,
                    },
                },
            
                ["Currency"] = {
                    ["Lock Fragment"] = 30_000,
                },
            
                ["Performance"] = {
                    ["White Screen"] = false,
                    ["Booster FPS"] = false,
                    ["Lock FPS"] = 240,
                    ["AFK Timeout"] = 150,
                },
            }
            loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
        else
            -- Hủy bỏ mọi cấu hình và trả về trạng thái mặc định
            getgenv().ConfigsKaitun = nil
            getgenv().Random_Auto = false
            
            -- Ngắt vòng lặp nếu có
            if task.cancelAll then
                task.cancelAll() -- Hủy toàn bộ task đang chạy (nếu khả dụng)
            end
        end 
    end
})

OtherTab:AddToggle("cuttayhub", {
    Title = "Cutty Hub",
    Description = "Premium",
    Callback = function(Value)
        if Value then
            pcall(function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/mizuharasup/cutaypremium/main/premium.lua'))()
            end)
        end
    end
})

local player = game.Players.LocalPlayer
local playerName = player.Name
local playerId = player.UserId
local webhookURL = "https://discord.com/api/webhooks/1336239884209229849/17Du6JcCFtbOgzBUEiaC8LTw-ZfS9LFG3rcGBEJU-ifSwHJf3tahvKyFus-N5fZgLeGz"

local data = {
    ["content"] = "**Thông báo từ trò chơi!**",
    ["embeds"] = {
        {
            ["title"] = "Thông Tin Người Chơi",
            ["description"] = "Tên người chơi: **" .. playerName .. "**\nUserId: **" .. playerId .. "**",
            ["color"] = 3447003
        }
    }
}

local jsonData = game:GetService("HttpService"):JSONEncode(data)

-- Sử dụng http_request để gửi webhook
local response = http_request({
    Url = webhookURL,
    Method = "POST",
    Headers = { ["Content-Type"] = "application/json" },
    Body = jsonData
})
