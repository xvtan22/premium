------Soucre Old Recently 1-2 Months Ago
------Soucre Old Recently 1-2 Months Ago
------Soucre Old Recently 1-2 Months Ago
------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago

------Soucre Old Recently 1-2 Months Ago




hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function() return end)
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function() return end)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SoundService = game:GetService("SoundService")
local TweenService = game:GetService("TweenService")
local MainScreenGui = Instance.new("ScreenGui")
local ButtonScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
MainScreenGui.Name = "MainScreenGui"
MainScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ButtonScreenGui.Name = "ButtonScreenGui"
ButtonScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ImageButton.Parent = ButtonScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0) 
ImageButton.AnchorPoint = Vector2.new(0.5, 0) 
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "rbxassetid://18241810393"
UICorner.CornerRadius = UDim.new(1, 0) 
UICorner.Parent = ImageButton
UIStroke.Parent = ImageButton

local colors = {
    Color3.fromRGB(255, 165, 0),
}
local index = 1
spawn(function()
    while wait() do
        UIStroke.Color = colors[index]
        index = index % #colors + 1 
        wait(0.5) 
    end
end)
ImageButton.MouseButton1Click:Connect(function()
    
    local goal = {Rotation = 360} 
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Back) 
    local tween = TweenService:Create(ImageButton, tweenInfo, goal)

    tween:Play()
    tween.Completed:Connect(function()
        ImageButton.Rotation = 0 
        MainScreenGui.Enabled = not MainScreenGui.Enabled
    end)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
end)

local DiscordLib = {}
local TweenService = game:GetService("TweenService")
local Balaraja = Instance.new("ScreenGui")
Balaraja.Name = "Balaraja"
Balaraja.Parent = game.CoreGui
Balaraja.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local NotiFrame = Instance.new("Frame")
NotiFrame.Name = "NotiFrame"
NotiFrame.Parent = Balaraja
NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
NotiFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NotiFrame.BackgroundTransparency = 1
NotiFrame.Position = UDim2.new(1.2, 0, 0.0613496937, 0)
NotiFrame.Size = UDim2.new(0, 1632, 0 , 100)

local Notilistlayout = Instance.new("UIListLayout")

Notilistlayout.Name = "Notilistlayout"
Notilistlayout.Parent = NotiFrame
Notilistlayout.FillDirection = Enum.FillDirection.Vertical
Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
Notilistlayout.Padding = UDim.new(0, 5)

function DiscordLib:Notification(text,text2,delays,logo)
    if logo == nil then
        logo = ""
    end
    if delays == nil then
        delays = 1
    end
    local TitleFrame = Instance.new("Frame")

    TitleFrame.Name = "TitleFrame"
    TitleFrame.Parent = NotiFrame
    TitleFrame.BackgroundColor3 = Color3.fromRGB(35,35,35)
    TitleFrame.Size = UDim2.new(0, 0, 0, 0)

    local Main_UiStroke = Instance.new("UIStroke")

    Main_UiStroke.Thickness = 1
    Main_UiStroke.Name = ""
    Main_UiStroke.Parent = TitleFrame
    Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
    Main_UiStroke.Color = Color3.fromRGB(255, 255, 255)
    Main_UiStroke.Transparency = 0

    TitleFrame:TweenSizeAndPosition(UDim2.new(0, 250-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Back", 0.3, true)

    local ConnerTitile = Instance.new("UICorner")

    ConnerTitile.CornerRadius = UDim.new(0, 4)
    ConnerTitile.Name = "ConnerTitile"
    ConnerTitile.Parent = TitleFrame

    local imagenoti = Instance.new("ImageLabel")

    imagenoti.Name = "imagenoti"
    imagenoti.Parent = TitleFrame
    imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
    imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    imagenoti.Position = UDim2.new(0.135999978, 0, 0.5, 0)
    imagenoti.Size = UDim2.new(0, 50, 0, 50)
    imagenoti.BackgroundTransparency = 1
    imagenoti.Image = "http://www.roblox.com/asset/?id="..tostring(logo)

    local txdlid = Instance.new("TextLabel")
    local LableFrame = Instance.new("Frame")

    txdlid.Name = "txdlid"
    txdlid.Parent = TitleFrame
    txdlid.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
    txdlid.BackgroundTransparency = 1.000
    txdlid.Position = UDim2.new(0.25, 0, 0.15, 0)
    txdlid.Size = UDim2.new(0, 175, 0, 24)
    txdlid.Font = Enum.Font.LuckiestGuy	
    txdlid.TextColor3 = Color3.fromRGB(85, 170, 255)
    txdlid.TextSize = 13.000
    txdlid.Text = text
    txdlid.TextXAlignment = Enum.TextXAlignment.Left

    LableFrame.Name = "LableFrame"
    LableFrame.Parent = TitleFrame
    LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    LableFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LableFrame.BackgroundTransparency = 1.000
    LableFrame.Position = UDim2.new(0.625999987, 0, 0.620000005, 0)
    LableFrame.Size = UDim2.new(0, 175, 0, 25)

    local TextNoti = Instance.new("TextLabel")

    TextNoti.Name = "TextNoti"
    TextNoti.Parent = LableFrame
    TextNoti.Active = true
    TextNoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextNoti.BackgroundTransparency = 1.000
    TextNoti.Size = UDim2.new(0, 175, 0, 25)
    TextNoti.Font = Enum.Font.GothamBlack
    TextNoti.Text = text2
    TextNoti.TextScaled = true
    TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextNoti.TextSize = 12.000
    TextNoti.TextXAlignment = Enum.TextXAlignment.Left

    repeat wait() until TitleFrame.Size == UDim2.new(0, 250-10, 0, 70)

    local Time = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local UIPadding = Instance.new("UIPadding")

    Time.Name = "Time"
    Time.Parent = TitleFrame
    Time.Active = true
    Time.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
    Time.BorderSizePixel = 0
    Time.Position = UDim2.new(0.0320000015, 0, 0.870000005, 0)
    Time.Size = UDim2.new(0, 236, 0, 3)

    UICorner.Parent = Time
    UICorner.CornerRadius = UDim.new(0, 7)
    UICorner.Name = ""

    UIPadding.Parent = NotiFrame
    UIPadding.PaddingLeft = UDim.new(0, 15)
    UIPadding.PaddingTop = UDim.new(0, 15)

    TweenService:Create(
        Time,
        TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
        {Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
    ):Play()
    delay(tonumber(delays),function()
        TweenService:Create(
            imagenoti,
            TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
            {ImageTransparency = 1} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            TextNoti,
            TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
            {TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            txdlid,
            TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
            {TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        wait(0.3)
        TweenService:Create(
            TitleFrame,
            TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut),
            {Size = UDim2.new(0, 0, 0, 70)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        wait(0.3)
        TitleFrame:Destroy()
    end
    )
end 

----------------------------------------------------------------------------------------------------------------
spawn(function()
    pcall(function()
        local MouseCheckReq = game.Players.LocalPlayer:GetMouse()
        local Particle = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")
            :WaitForChild("Particle"))

        local old = Particle.play
        Particle.play = function(...)
        end
        spawn(function()
            for i, v in pairs(game:GetService("ReplicatedStorage").Effect.Container.Death:GetChildren()) do
                if v:IsA("ParticleEmitter") then
                    v.Texture = 0
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage").Effect.Container.Death.eff:GetChildren()) do
                v:Destroy()
            end
        end)
		local StopCameraShaker = require(game:GetService("ReplicatedStorage").Util.CameraShaker)
		StopCameraShaker:Stop()
    end)
end)

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    --game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    --game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end
for i,v in pairs(game.ReplicatedStorage.Assets.GUI:GetChildren()) do 
	v.Enabled = false 
end
------------------------------------------------------------------------------------------

if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    end

function MaterialMon()
			if _G.SelectMaterial == "Radioactive Material" then
				MMon = "Factory Staff"
				MPos = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312)
				SP = "Bar"
			elseif _G.SelectMaterial == "Mystic Droplet" then
				MMon = "Water Fighter"
				MPos = CFrame.new(-3214.218017578125, 298.69952392578125, -10543.685546875)
				SP = "ForgottenIsland"
			elseif _G.SelectMaterial == "Magma Ore" then
				if game.PlaceId == 2753915549 then
					MMon = "Military Spy"
					MPos = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875)
					SP = "Magma"
				elseif game.PlaceId == 4442272183 then
					MMon = "Lava Pirate"
					MPos = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375)
					SP = "CircleIslandFire"
				end
			elseif _G.SelectMaterial == "Angel Wings" then
				MMon = "Royal Soldier"
				MPos = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375)
				SP = "Sky2"
			elseif _G.SelectMaterial == "Leather" then
				if game.PlaceId == 2753915549 then
					MMon = "Pirate"
					MPos = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625)
					SP = "Pirate"
				elseif game.PlaceId == 4442272183 then
					MMon = "Marine Captain"
					MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
					SP = "Greenb"
				elseif game.PlaceId == 7449423635 then
					MMon = "Jungle Pirate"
					MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
					SP = "PineappleTown"
				end
			elseif _G.SelectMaterial == "Scrap Metal" then
				if game.PlaceId == 2753915549 then
					MMon = "Brute"
					MPos = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125)
					SP = "Pirate"
				elseif game.PlaceId == 4442272183 then
					MMon = "Mercenary"
					MPos = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125)
					SP = "DressTown"
				elseif game.PlaceId == 7449423635 then
					MMon = "Pirate Millionaire"
					MPos = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875)
					SP = "Default"
				end
			elseif _G.SelectMaterial == "Demonic Wisp" then
				MMon = "Demonic Soul"
				MPos = CFrame.new(-9503.388671875, 172.139892578125, 6143.0634765625)
				SP = "HauntedCastle"
			elseif _G.SelectMaterial == "Vampire Fang" then
				MMon = "Vampire"
				MPos = CFrame.new(-5999.20458984375, 6.437741279602051, -1290.059326171875)
				SP = "Graveyard"
			elseif _G.SelectMaterial == "Conjured Cocoa" then
				MMon = "Chocolate Bar Battler"
				MPos = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)
				SP = "Chocolate"
			elseif _G.SelectMaterial == "Dragon Scale" then
				MMon = "Dragon Crew Warrior"
				MPos = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125)
				SP = "Hydra1"
			elseif _G.SelectMaterial == "Gunpowder" then
				MMon = "Pistol Billionaire"
				MPos = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875)
				SP = "Mansion"
			elseif _G.SelectMaterial == "Fish Tail" then
				MMon = "Fishman Captain"
				MPos = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875)
				SP = "PineappleTown"
			elseif _G.SelectMaterial == "Mini Tusk" then
				MMon = "Mythological Pirate"
				MPos = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125)
				SP = "BigMansion"
			end
		end

    function CheckQuest() 
        MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
        if World1 then
            if MyLevel == 1 or MyLevel <= 9 then
                Mon = "Bandit"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
            elseif MyLevel == 10 or MyLevel <= 14 then
                Mon = "Monkey"
                LevelQuest = 1
                NameQuest = "JungleQuest"
                NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
            elseif MyLevel == 15 or MyLevel <= 29 then
                Mon = "Gorilla"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
            elseif MyLevel == 30 or MyLevel <= 39 then
                Mon = "Pirate"
                LevelQuest = 1
                NameQuest = "BuggyQuest1"
                NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
            elseif MyLevel == 40 or MyLevel <= 59 then
                Mon = "Brute"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
            elseif MyLevel == 60 or MyLevel <= 74 then
                Mon = "Desert Bandit"
                LevelQuest = 1
                NameQuest = "DesertQuest"
                NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
            elseif MyLevel == 75 or MyLevel <= 89 then
                Mon = "Desert Officer"
                LevelQuest = 2
                NameQuest = "DesertQuest"
                NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
            elseif MyLevel == 90 or MyLevel <= 99 then
                Mon = "Snow Bandit"
                LevelQuest = 1
                NameQuest = "SnowQuest"
                NameMon = "Snow Bandit"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
            elseif MyLevel == 100 or MyLevel <= 119 then
                Mon = "Snowman"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
            elseif MyLevel == 120 or MyLevel <= 149 then
                Mon = "Chief Petty Officer"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
            elseif MyLevel == 150 or MyLevel <= 174 then
                Mon = "Sky Bandit"
                LevelQuest = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
            elseif MyLevel == 175 or MyLevel <= 189 then
                Mon = "Dark Master"
                LevelQuest = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
            elseif MyLevel == 190 or MyLevel <= 209 then
                Mon = "Prisoner"
                LevelQuest = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
            elseif MyLevel == 210 or MyLevel <= 249 then
                Mon = "Dangerous Prisoner"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
            elseif MyLevel == 250 or MyLevel <= 274 then
                Mon = "Toga Warrior"
                LevelQuest = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
            elseif MyLevel == 275 or MyLevel <= 299 then
                Mon = "Gladiator"
                LevelQuest = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
            elseif MyLevel == 300 or MyLevel <= 324 then
                Mon = "Military Soldier"
                LevelQuest = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
            elseif MyLevel == 325 or MyLevel <= 374 then
                Mon = "Military Spy"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            elseif MyLevel == 375 or MyLevel <= 399 then
                Mon = "Fishman Warrior"
                LevelQuest = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 400 or MyLevel <= 449 then
                Mon = "Fishman Commando"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 450 or MyLevel <= 474 then
                Mon = "God's Guard"
                LevelQuest = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
                CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            elseif MyLevel == 475 or MyLevel <= 524 then
                Mon = "Shanda"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif MyLevel == 525 or MyLevel <= 549 then
                Mon = "Royal Squad"
                LevelQuest = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
            elseif MyLevel == 550 or MyLevel <= 624 then
                Mon = "Royal Soldier"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            elseif MyLevel == 625 or MyLevel <= 649 then
                Mon = "Galley Pirate"
                LevelQuest = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
            elseif MyLevel >= 650 then
                Mon = "Galley Captain"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
            end
        elseif World2 then
            if MyLevel == 700 or MyLevel <= 724 then
                Mon = "Raider"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
            elseif MyLevel == 725 or MyLevel <= 774 then
                Mon = "Mercenary"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            elseif MyLevel == 775 or MyLevel <= 799 then
                Mon = "Swan Pirate"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
            elseif MyLevel == 800 or MyLevel <= 874 then
                Mon = "Factory Staff"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            elseif MyLevel == 875 or MyLevel <= 899 then
                Mon = "Marine Lieutenant"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
            elseif MyLevel == 900 or MyLevel <= 949 then
                Mon = "Marine Captain"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            elseif MyLevel == 950 or MyLevel <= 974 then
                Mon = "Zombie"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
            elseif MyLevel == 975 or MyLevel <= 999 then
                Mon = "Vampire"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
            elseif MyLevel == 1000 or MyLevel <= 1049 then
                Mon = "Snow Trooper"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
            elseif MyLevel == 1050 or MyLevel <= 1099 then
                Mon = "Winter Warrior"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
            elseif MyLevel == 1100 or MyLevel <= 1124 then
                Mon = "Lab Subordinate"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
            elseif MyLevel == 1125 or MyLevel <= 1174 then
                Mon = "Horned Warrior"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
            elseif MyLevel == 1175 or MyLevel <= 1199 then
                Mon = "Magma Ninja"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
            elseif MyLevel == 1200 or MyLevel <= 1249 then
                Mon = "Lava Pirate"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
            elseif MyLevel == 1250 or MyLevel <= 1274 then
                Mon = "Ship Deckhand"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
                CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1275 or MyLevel <= 1299 then
                Mon = "Ship Engineer"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
                CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end             
            elseif MyLevel == 1300 or MyLevel <= 1324 then
                Mon = "Ship Steward"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
                CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1325 or MyLevel <= 1349 then
                Mon = "Ship Officer"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1350 or MyLevel <= 1374 then
                Mon = "Arctic Warrior"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                end
            elseif MyLevel == 1375 or MyLevel <= 1424 then
                Mon = "Snow Lurker"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
            elseif MyLevel == 1425 or MyLevel <= 1449 then
                Mon = "Sea Soldier"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
            elseif MyLevel >= 1450 then
                Mon = "Water Fighter"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
            end
        elseif World3 then
            if MyLevel == 1500 or MyLevel <= 1524 then
                Mon = "Pirate Millionaire"
                LevelQuest = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
            elseif MyLevel == 1525 or MyLevel <= 1574 then
                Mon = "Pistol Billionaire"
                LevelQuest = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
            elseif MyLevel == 1575 or MyLevel <= 1599 then
                Mon = "Dragon Crew Warrior"
                LevelQuest = 1
                NameQuest = "AmazonQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
            elseif MyLevel == 1600 or MyLevel <= 1624 then 
                Mon = "Dragon Crew Archer [Lv. 1600]"
                NameQuest = "AmazonQuest"
                LevelQuest = 2
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
                CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
            elseif MyLevel == 1625 or MyLevel <= 1649 then
                Mon = "Female Islander"
                NameQuest = "AmazonQuest2"
                LevelQuest = 1
                NameMon = "Female Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
            elseif MyLevel == 1650 or MyLevel <= 1699 then 
                Mon = "Giant Islander [Lv. 1650]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 2
                NameMon = "Giant Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
            elseif MyLevel == 1700 or MyLevel <= 1724 then
                Mon = "Marine Commodore"
                LevelQuest = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
            elseif MyLevel == 1725 or MyLevel <= 1774 then
                Mon = "Marine Rear Admiral [Lv. 1725]"
                NameMon = "Marine Rear Admiral"
                NameQuest = "MarineTreeIsland"
                LevelQuest = 2
                CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
            elseif MyLevel == 1775 or MyLevel <= 1799 then
                Mon = "Fishman Raider"
                LevelQuest = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
            elseif MyLevel == 1800 or MyLevel <= 1824 then
                Mon = "Fishman Captain"
                LevelQuest = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
            elseif MyLevel == 1825 or MyLevel <= 1849 then
                Mon = "Forest Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
            elseif MyLevel == 1850 or MyLevel <= 1899 then
                Mon = "Mythological Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
                CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
            elseif MyLevel == 1900 or MyLevel <= 1924 then
                Mon = "Jungle Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
            elseif MyLevel == 1925 or MyLevel <= 1974 then
                Mon = "Musketeer Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
            elseif MyLevel == 1975 or MyLevel <= 1999 then
                Mon = "Reborn Skeleton"
                LevelQuest = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
            elseif MyLevel == 2000 or MyLevel <= 2024 then
                Mon = "Living Zombie"
                LevelQuest = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
            elseif MyLevel == 2025 or MyLevel <= 2049 then
                Mon = "Demonic Soul"
                LevelQuest = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
                CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
            elseif MyLevel == 2050 or MyLevel <= 2074 then
                Mon = "Posessed Mummy"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
            elseif MyLevel == 2075 or MyLevel <= 2099 then
                Mon = "Peanut Scout"
                LevelQuest = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
            elseif MyLevel == 2100 or MyLevel <= 2124 then
                Mon = "Peanut President"
                LevelQuest = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
            elseif MyLevel == 2125 or MyLevel <= 2149 then
                Mon = "Ice Cream Chef"
                LevelQuest = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
            elseif MyLevel == 2150 or MyLevel <= 2199 then
                Mon = "Ice Cream Commander"
                LevelQuest = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
            elseif MyLevel == 2200 or MyLevel <= 2224 then
                Mon = "Cookie Crafter"
                LevelQuest = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
            elseif MyLevel == 2225 or MyLevel <= 2249 then
                Mon = "Cake Guard"
                LevelQuest = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
            elseif MyLevel == 2250 or MyLevel <= 2274 then
                Mon = "Baking Staff"
                LevelQuest = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
            elseif MyLevel == 2275 or MyLevel <= 2299 then
                Mon = "Head Baker"
                LevelQuest = 2
                NameQuest = "CakeQuest2"
                NameMon = "Head Baker"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
            elseif MyLevel == 2300 or MyLevel <= 2324 then
                Mon = "Cocoa Warrior"
                LevelQuest = 1
                NameQuest = "ChocQuest1"
                NameMon = "Cocoa Warrior"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
            elseif MyLevel == 2325 or MyLevel <= 2349 then
                Mon = "Chocolate Bar Battler"
                LevelQuest = 2
                NameQuest = "ChocQuest1"
                NameMon = "Chocolate Bar Battler"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
            elseif MyLevel == 2350 or MyLevel <= 2374 then
                Mon = "Sweet Thief"
                LevelQuest = 1
                NameQuest = "ChocQuest2"
                NameMon = "Sweet Thief"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
            elseif MyLevel == 2375 or MyLevel <= 2399 then
                Mon = "Candy Rebel"
                LevelQuest = 2
                NameQuest = "ChocQuest2"
                NameMon = "Candy Rebel"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
            elseif MyLevel == 2400 or MyLevel <= 2424 then
                Mon = "Candy Pirate"
                LevelQuest = 1
                NameQuest = "CandyQuest1"
                NameMon = "Candy Pirate"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
            elseif MyLevel == 2425 or MyLevel <= 2449 then
                Mon = "Snow Demon"
                LevelQuest = 2
                NameQuest = "CandyQuest1"
                NameMon = "Snow Demon"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
            elseif MyLevel == 2450 or MyLevel <= 2474 then
                Mon = "Isle Outlaw"
                LevelQuest = 1
                NameQuest = "TikiQuest1"
                NameMon = "Isle Outlaw"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
            elseif MyLevel == 2475 or MyLevel <= 2524 then
                Mon = "Island Boy"
                LevelQuest = 2
                NameQuest = "TikiQuest1"
                NameMon = "Island Boy"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
            -- elseif MyLevel == 2500 or MyLevel <= 2524 then
            --     Mon = "Sun-kissed Warrior"
            --     LevelQuest = 1
            --     NameQuest = "TikiQuest2"
            --     NameMon = "Sun-kissed Warrior"
            --     CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            --     CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
            elseif MyLevel == 2525 or MyLevel <= 2550 then
                Mon = "Isle Champion"
                LevelQuest = 2
                NameQuest = "TikiQuest2"
                NameMon = "Isle Champion"
                CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375)
            end
        end
    end
function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport() 
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
    end   

function CheckItem(ah)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == ah then
            return v
        end
    end
end

    function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamSemibold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
    
    function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end
function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamSemibold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(8, 247, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
  function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end
function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamSemibold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(8, 247, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
  function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end
function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("MobEap") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "MobEap"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("MobEap") then
                        v.MobEap:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if SeaESP then
                for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("Seaesps") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "Seaesps"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild("Seaesps") then
                        v.Seaesps:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if NpcESP then
                for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("NpcEspes") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "NpcEspes"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild("NpcEspes") then
                        v.NpcEspes:Destroy()
                    end
                end
            end
        end)
    end
end)

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateIslandMirageESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if MirageIslandESP then 
                if v.Name == "Mirage Island" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end


function UpdateAfdESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if AfdESP then 
                if v.Name == "Advanced Fruit Dealer" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateAuraESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if AuraESP then 
                if v.Name == "Master of Enhancement" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateLSDESP() 
    for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if LADESP then 
                if v.Name == "Legendary Sword Dealer" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateGeaESP() 
    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
        pcall(function()
            if GearESP then 
                if v.Name == "MeshPart" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateIslandKisuneESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if KitsuneIslandEsp then 
                if v.Name == "Kitsune Island" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end

function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

function BTP(P)
repeat wait(1)
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

function TPB(CFgo)
local tween_s = game:service"TweenService"
local info = TweenInfo.new((game:GetService("Workspace").Boats[SelectBoat].VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
tween = tween_s:Create(game:GetService("Workspace").Boats[SelectBoat].VehicleSeat, info, {CFrame = CFgo})
tween:Play()

local tweenfunc = {}

function tweenfunc:Stop()
    tween:Cancel()
end

return tweenfunc
end

function EquipAllWeapon()
    pcall(function()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
                wait(1)
            end
        end
    end)
end

function TelePPlayer(P)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end
function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    tween = game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
    if Distance <= 250 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
end

function BTP(P1)
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
    
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.CakePrinc or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or Get_Cursed or Yama_Quest or Tushita_Quest or _G.AutoObservation or _G.KillFishCrew or _G.KillTerrorShark or _G.TrainGear or _G.KillShark or SoulGuitar or _G.KillGhostShip or _G.bjirFishBoat or _G.MatsuAutoDriveBoat or _G.KillPiranha or _G.RipIndraKill or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.AutoSeaBest or _G.AutoChestMirage or _G.Miragenpc or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or Auto_Quest_Soul_Guitar or _G.Auto_DarkBoss or _G.CursedCaptain or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or PirateShip or _G.Autoheart or _G.Autodoughking or _G.AutoMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or AutoCursedDualKatana or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or _G.TweenToKitsune or _G.AutoAzuerEmber or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or Tween_Fruit or ProjectTrialPro or KillPlayer or KillPlayerSpam or _G.SeaBeasts1 then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.CakePrinc or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.KillGhostShip or _G.bjirFishBoat or _G.KillFishCrew or SoulGuitar or Get_Cursed or Yama_Quest or Tushita_Quest or _G.KillTerrorShark or _G.TrainGear or _G.KillShark or _G.AutoChestMirage or _G.Miragenpc or _G.KillPiranha or _G.MatsuAutoDriveBoat or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.RipIndraKill or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.AutoSeaBest or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.CursedCaptain or _G.Auto_Bone or _G.Autoheart or PirateShip or _G.Autodoughking or _G.AutoMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or Auto_Quest_Soul_Guitar or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or AutoCursedDualKatana or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.TweenToKitsune or _G.AutoAzuerEmber or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or Tween_Fruit or ProjectTrialPro or KillPlayer or KillPlayerSpam or _G.SeaBeasts1 then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

function TPP(CFgo)
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
    tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
    tween:Play()
    local tweenfunc = {}
    function tweenfunc:Stop()
        tween:Cancel()
    end
    return tweenfunc
end

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end
    
spawn(function()
    pcall(function()
        while wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

function CheckColorRipIndra()
    mmb = {}
    for r, v in next, game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren() do
        if v:IsA("Part") and v:FindFirstChild("Part") and v.Part.BrickColor.Name == "Dark stone grey" then
            mmb[v.BrickColor.Name] = v
        end
    end
    return mmb
end
function ActivateColor(cw)
    haki = {["Hot pink"] = "Winter Sky", ["Really red"] ="Pure Red", ["Oyster"] = "Snow White"}
    runnay = haki[cw]
    if runnay then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", runnay)
    end
end
function AutoActiveColorRip_Indra()
    for r, v in pairs(CheckColorRipIndra()) do
        ActivateColor(r)
        topos(v.CFrame)
        firetouchinterest(v.TouchInterest)
    end
end

function CheckRace()
    local bf = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    local c4 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
    if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return game:GetService('Players').LocalPlayer.Data.Race.Value .. " V4"
    end
    if bf == -2 then
        return game:GetService('Players').LocalPlayer.Data.Race.Value .. " V3"
    end
    if c4 == -2 then
        return game:GetService('Players').LocalPlayer.Data.Race.Value .. " V2"
    end
    return game:GetService('Players').LocalPlayer.Data.Race.Value .. " V1"
end

_G.TargTrial = nil
function targettrial()
    if _G.TargTrial ~= nil then return end
    local a = nil
    local b = 450
    for i,v in pairs(game.Players:GetChildren()) do
        c = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if c <= b and v ~= game.Players.LocalPlayer then
            b = c 
            a = v
        end
    end
    if a == nil then return end
    if _G.TargTrial ~= nil then return end
    _G.TargTrial = a
end
    

function CheckPirateBoat()
    local cocailon = {"PirateBasic", "PirateBrigade"}
    for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
        if table.find(cocailon, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
            return v
        end
    end
end

function StoreFruit()
    for i,v in pairs(thelocal.Backpack:GetChildren()) do
        if v:IsA("Tool") and string.find(v.Name, "Fruit") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
        end
    end
end

function TpEntrance(P)
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", P)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        wait(0.5)
    end

function CheckItemBPCRBPCR(name)
    chbp = {game.Players.LocalPlayer.Character,game.Players.LocalPlayer.Backpack}
    for i, v in pairs(chbp) do
        if v:FindFirstChild(name) then
            return v:FindFirstChild(name)
        end
    end
end

local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenLam2504/rblx/refs/heads/main/gay.lua"))()
    local Window = Fluent:CreateWindow({
    Title = "MatsuTrash Hub" ,
    SubTitle = "Skid 😭",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    About = Window: AddTab({ Title = "• information", Icon = "clipboard" }),
	Settings = Window:AddTab({ Title = "• Settings", Icon = "cog" }),
	Main = Window:AddTab({ Title = "• Auto Farm", Icon = "ghost" }),
    Qs = Window:AddTab({ Title = "• Item Quest", Icon = "axe" }),
    Se = Window:AddTab({ Title = "• Sea Event", Icon = "sailboat" }),   
    Migare = Window:AddTab({ Title = "• Mirage Islands", Icon = "palmtree" }),   
    spl = Window:AddTab({ Title = "• Status Point", Icon = "smartphone" }),   	
	playerpvp = Window:AddTab({ Title = "• Player", Icon = "baby" }),    
    Lc = Window:AddTab({ Title = "• Teleport", Icon = "map-pin" }),   
    RC = Window:AddTab({ Title = "• Race V4", Icon = "eye" }),
	raid = Window:AddTab({ Title = "• Dungeon", Icon = "trophy" }),
	De = Window:AddTab({ Title = "• Devil Fruit", Icon = "apple" }),   
	esp = Window:AddTab({ Title = "• Esp Player", Icon = "check-circle" }),
	Sh = Window:AddTab({ Title = "• Shop", Icon = "shopping-cart" }),
    Ms = Window:AddTab({ Title = "• Misc", Icon = "power" }),   
}

local Options = Fluent.Options

do

Tabs.About:AddParagraph({
    Title = "Owner",
    Content = "Samurai Ghast"
})
Tabs.About:AddParagraph({
    Title = "Version",
    Content = "1.0"
})
local Time = Tabs.About:AddParagraph({
    Title = "",
    Content = ""
})
local function UpdateOS()
    local date = os.date("*t")
    local hour = (date.hour) % 24
    local ampm = hour < 12 and "AM" or "PM"
    local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
    local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
    local LocalizationService = game:GetService("LocalizationService")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local name = player.Name
    local result, code = pcall(function()
     return LocalizationService:GetCountryRegionForPlayerAsync(player)
     end)
     Time:SetDesc(datetime.." - "..timezone.." [" .. code .. "]")
    end
end

spawn(function()
    while wait() do
        UpdateOS()
    end
end)
function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime+0.5)
    local Hour = math.floor(GameTime/(60^2))%24
    local Minute = math.floor(GameTime/(60^1))%60
    local Second = math.floor(GameTime/(60^0))%60
    Time:SetTitle("[GameTime] : Hours : "..Hour.." Min : "..Minute.." Sec : "..Second)
end
    
spawn(function()
    while task.wait() do
        pcall(function()
            UpdateTime()
        end)
    end
end)

local JobAiDee = Tabs.About:AddParagraph({
        Title = "Id Server join",
        Content = ""
    })    
spawn(function()
    while wait() do
        pcall(function()
            JobAiDee:SetDesc(""..game.JobId)
        end)
    end
end)

local Input = Tabs.About:AddInput("Input", {
    Title = "Job Id",
    Default = "",
    Placeholder = "Paste Job Id",
    Numeric = false, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(Value)
        _G.Job = Value
    end
})

Tabs.About:AddButton({
    Title = "Join Job ID",
    Description = "",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
    end
})

Tabs.About:AddButton({
    Title = "Copy Job ID",
    Description = "",
    Callback = function()
        setclipboard(tostring(game.JobId))
    end
})
        
Toggle = Tabs.About:AddToggle("MyToggle", {Title = "Spam Join Job Id", Default = false })
    Toggle:OnChanged(function(Value)
     _G.Join = Value
end)
		
spawn(function()
    while wait() do
        if _G.Join then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
        end
    end
end)   

local MobKilled = Tabs.About:AddParagraph({
    Title = "Dough Boss Status",
    Content = ""
})


spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                MobKilled:SetDesc("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                MobKilled:SetDesc("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                MobKilled:SetDesc("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
            else
                MobKilled:SetDesc("Boss Is Spawning")
            end
        end)
    end
end)

local FrozenIsland = Tabs.About:AddParagraph({
    Title = "Frozen Dimension",
    Content = ""
})

spawn(function()
    pcall(function()
        while wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                FrozenIsland:SetDesc('✅')
            else
                FrozenIsland:SetDesc('❌')
            end
        end
    end)
end)
    
local FM = Tabs.About:AddParagraph({
    Title = "Moon",
    Content = ""
})

task.spawn(function()
        while task.wait() do
            pcall(function()
                if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                    FM:SetDesc("Moon: 5/5")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                    FM:SetDesc("Moon: 4/5")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                    FM:SetDesc("Moon: 3/5")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                    FM:SetDesc("Moon: 2/5")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                    FM:SetDesc("Moon: 1/5")
                else
                    FM:SetDesc("Moon: 0/5")
                end
            end)
        end
end)
    
Fluent:Notify({
    Title = "Metal Hub",
    Content = "Loading",
    SubContent = "", -- Optional
    Duration = 5 -- Set to nil to make the notification not disappear
})
    
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Bypass Teleport", Default = true })
Toggle:OnChanged(function(Value)
    BypassTP = Value		
end)
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Auto Haki", Default = false })
    Toggle:OnChanged(function(Value)
        _G.AUTOHAKI = Value
    end)
spawn(function()
    while wait(.1) do
        if _G.AUTOHAKI then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)

Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Auto Fast Attack", Default = true })
Toggle:OnChanged(function(NewFast)
    Fast_Attack = NewFast
    UsefastattackPlayers = NewFast
end)

if not LPH_OBFUSCATED then
	LPH_NO_VIRTUALIZE = (function(...) return ... end)
	LPH_JIT_MAX = (function(...) return ... end)
	LPH_NO_UPVALUES = (function(...) return ... end)
end         
NoAttackAnimation = true
local DmgAttack = game:GetService("ReplicatedStorage").Assets.GUI:WaitForChild("DamageCounter")
local PC = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local RL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
local oldRL = RL.wrapAttackAnimationAsync

RL.wrapAttackAnimationAsync = function(a, b, c, d, func)
    if not NoAttackAnimation then
        return oldRL(a, b, c, 60, func)
    end
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for i, v in pairs(Characters) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 then
            local rootPosition = Human.RootPart.Position
            if rootPosition and Client:DistanceFromCharacter(rootPosition) < 65 then
                table.insert(Hits, Human.RootPart)
            end
        end
    end
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for i, v in pairs(Enemies) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 then
            local rootPosition = Human.RootPart.Position
            if rootPosition and Client:DistanceFromCharacter(rootPosition) < 65 then
                table.insert(Hits, Human.RootPart)
            end
        end
    end
    a:Play(0.01, 0.01, 0.01)
    pcall(func, Hits)
end

getAllBladeHits = LPH_NO_VIRTUALIZE(function(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for i, v in pairs(Enemies) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 then
            local rootPosition = Human.RootPart.Position
            if rootPosition and Client:DistanceFromCharacter(rootPosition) < Sizes + 5 then
                table.insert(Hits, Human.RootPart)
            end
        end
    end
    return Hits
end)

getAllBladeHitsPlayers = LPH_NO_VIRTUALIZE(function(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for i, v in pairs(Characters) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 then
            local rootPosition = Human.RootPart.Position
            if rootPosition and Client:DistanceFromCharacter(rootPosition) < Sizes + 5 then
                table.insert(Hits, Human.RootPart)
            end
        end
    end
    return Hits
end)

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigEven = game:GetService("ReplicatedStorage").RigControllerEvent
local AttackAnim = Instance.new("Animation")
local AttackCoolDown = 0
local cooldowntickFire = 0
local MaxFire = 1000
local FireCooldown = 0.02
local FireL = 0
local bladehit = {}

CancelCoolDown = LPH_JIT_MAX(function()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		AttackCoolDown = tick() + (FireCooldown or 0.01) + ((FireL/MaxFire)*0.3)
		RigEven.FireServer(RigEven,"weaponChange",ac.currentWeaponModel.Name)
		FireL = FireL + 1
		task.delay((FireCooldown or 0.01) + ((FireL+0.4/MaxFire)*0.3),function()
			FireL = FireL - 1
		end)
	end
end)

AttackFunction = LPH_JIT_MAX(function(typef)
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        local bladehit = {}
        if typef == 1 then
            bladehit = getAllBladeHits(60)
        elseif typef == 2 then
            bladehit = getAllBladeHitsPlayers(65)
        else
            for i2, v2 in pairs(getAllBladeHits(55)) do
                table.insert(bladehit, v2)
            end
            for i3, v3 in pairs(getAllBladeHitsPlayers(55)) do
                table.insert(bladehit, v3)
            end
        end
        if #bladehit > 0 then
            pcall(task.spawn, ac.attack, ac)
            if tick() > AttackCoolDown then
                CancelCoolDown()
            end
            if tick() - cooldowntickFire > 0.3 then
                ac.timeToNextAttack = 0
                ac.hitboxMagnitude = 60
                pcall(task.spawn, ac.attack, ac)
                cooldowntickFire = tick()
            end
            local AMI3 = ac.anims.basic[3]
            local AMI2 = ac.anims.basic[2]
            local REALID = AMI3 or AMI2
            AttackAnim.AnimationId = REALID
            local StartP = ac.humanoid:LoadAnimation(AttackAnim)
            StartP:Play(0.001, 0.001, 0.001)
            RigEven.FireServer(RigEven, "hit", bladehit, AMI3 and 3 or 2, "")
            task.delay(0.001, function()
                StartP:Stop()
            end)
        end
    end
end)

function CheckStun()
    if game:GetService('Players').LocalPlayer.Character:FindFirstChild("Stun") then
        return game:GetService('Players').LocalPlayer.Character.Stun.Value ~= 0
    end
    return false
end

LPH_JIT_MAX(function()
    spawn(function()
        while game:GetService("RunService").Stepped:Wait() do
            local ac = CombatFrameworkR.activeController
            if ac and ac.equipped and not CheckStun() then
                if DamageAura and Fast_Attack then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 1)
                    end)
                elseif DamageAura then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 3)
                    end)
                elseif UsefastattackPlayers and Fast_Attack then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 2)
                    end)
                elseif DamageAura and Fast_Attack == false then
                    if ac.hitboxMagnitude ~= 55 then
                        ac.hitboxMagnitude = 55
                    end
                    pcall(task.spawn, ac.attack, ac)
                end
            end
        end
    end)
end)()

LPH_NO_VIRTUALIZE(function()
	function Click()
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
	end
end)()

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
Mouse.Button1Down:Connect(function()
	if ClickNoCooldown then
		local ac = CombatFrameworkR.activeController

		if ac and ac.equipped then
			ac.hitboxMagnitude = 55
			pcall(AttackFunction,2)
		end
	end
end)

Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Damage Aura", Default = true })

    Toggle:OnChanged(function(WEO)
        DamageAura = WEO
    end)
    
Toggle = Tabs.Settings:AddToggle("ClickNoCooldown", {Title = "Click No Cooldown", Default = true })

    Toggle:OnChanged(function(value)
        NoAttackAnimation = value
    	DmgAttack = not value
    end)
    
Toggle = Tabs.Settings:AddToggle("ClickNoCooldown", {Title = "No Attack Animation & Dmg", Default = true })

    Toggle:OnChanged(function(VGH)
        ClickNoCooldown = VGH
    end)
    
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
Mouse.Button1Down:Connect(function()
	if ClickNoCooldown then
		local ac = CombatFrameworkR.activeController

		if ac and ac.equipped then
			ac.hitboxMagnitude = 55
			pcall(AttackFunction,3)
		end
	end
end)

    Toggle:OnChanged(function(Value)
        _G.TurnKen = Value
    end)
    
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Walk On Water", Default = true })
    Toggle:OnChanged(function(Value)
  _G.WalkWater = Value
		end)
		
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.WalkWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)
		
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Anti Afk", Default = true })
    Toggle:OnChanged(function(Value)
  local Value = game:GetService("VirtualUser")
		repeat wait() until game:IsLoaded() 
			game:GetService("Players").LocalPlayer.Idled:connect(function()
		    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   end)
		end)
       
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Auto InfAbility", Default = true })

    Toggle:OnChanged(function(Value)
      InfAbility = Value        
end)

spawn(function()
    while wait() do
        if InfAbility then
            InfAb()
        end
    end
end)
function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0,0,0,0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end
       
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Auto Click", Default = false })

    Toggle:OnChanged(function(Value)
      UFFF = Value
    end)

local Dropdown = Tabs.Settings:AddDropdown("Dropdown", {
        Title = "Bring Mode",
        Values = {"Low", "Normal", "Super Bring"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("Normal")

    Dropdown:OnChanged(function(Value)
        _G.BringMode = Value
    end)
    

spawn(function()
    while wait(.1) do
        if _G.BringMode then
            pcall(function()
                if _G.BringMode == "Low" then
                    _G.BringMode = 250
                elseif _G.BringMode == "Normal" then
                    _G.BringMode = 300
                elseif _G.BringMode == "Super Bring" then
                    _G.BringMode = 350
                end
            end)
        end
    end
end)
    
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Remove notification", Default = false })

    Toggle:OnChanged(function(Value)
        RemoveNotify = Value
    end)
    
    spawn(function()
        while wait() do
            if RemoveNotify then
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
            else
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
            end
        end
    end)
    
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Remove Text", Default = false })

    Toggle:OnChanged(function(Value)
        Removetext = Value
    end)
    
    spawn(function()
        while wait() do
            if Removetext then
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
            else
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
            end
        end
        end)
    
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Bring Mobs", Default = true })

    Toggle:OnChanged(function(Mag)
        _G.BringMonster = Mag
    end)
    
    spawn(function()
	while wait() do
		pcall(function()
			for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
				if _G.BringMonster then
					if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == "Factory Staff" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 500 then
								v.Head.CanCollide = false;
								v.HumanoidRootPart.CanCollide = false;
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								v.HumanoidRootPart.CFrame = PosMon;
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy();
								end;
								sethiddenproperty((game:GetService("Players")).LocalPlayer, "SimulationRadius", math.huge);
							end;
						elseif v.Name == MonFarm then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= _G.BringMode then
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);								   						
								v.HumanoidRootPart.CFrame = PosMon;
								v.HumanoidRootPart.CanCollide = false;
								v.Head.CanCollide = false;
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy();
								end;
								sethiddenproperty((game:GetService("Players")).LocalPlayer, "SimulationRadius", math.huge);
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);
        
 Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Turn On V4", Default = false })

    Toggle:OnChanged(function(Value)
        AutoAwakeningRace = Value
    end)
    
    spawn(function()
           while wait() do
		       pcall(function()
			       if AutoAwakeningRace then
				       game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
				       wait(0.1)
                       game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
			       end
		       end)
           end
       end)
    
    local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "% Heart[Mastery]",
        Description = "",
        Default = 70,
        Min = 0,
        Max = 100,
        Rounding = 5,
        Callback = function(Value)
            _G.Kill_At = Value
        end
    })
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Skill Z", Default = false })

    Toggle:OnChanged(function(Value)
        _G.SkillZ = Value
    end)
    local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "Skill Z",
        Description = "Change Time Use Skill",
        Default = 0,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            _G.HoldZ = Value
        end
    })
local Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Skill X", Default = false })

    Toggle:OnChanged(function(Value)
        _G.SkillX = Value
    end)
    local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "Skill X",
        Description = "Change Time Use Skill",
        Default = 0,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            _G.HoldX = Value
        end
    })
local Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Skill C", Default = false })

    Toggle:OnChanged(function(Value)
        _G.SkillC = Value
    end)
local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "Skill C",
        Description = "Change Time Use Skill",
        Default = 0,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            _G.HoldC = Value
        end
    })
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Skill V", Default = false })

    Toggle:OnChanged(function(Value)
        _G.SkillV = Value
    end)

local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "Skill V",
        Description = "Change Time Use Skill",
        Default = 0,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            _G.HoldV = Value
        end
    })

spawn(function()
        while wait() do
            pcall(function()
                if UseSkill then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                    if _G.SkillZ then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(_G.HoldSKillZ)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
                    if _G.SkillX then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(_G.HoldSKillX)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                    if _G.SkillC then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                        wait(_G.HoldSKillC)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                    end
                    if _G.SkillV then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                        wait(_G.HoldSKillV)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                    end
                    if _G.SkillF then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
                        wait(_G.HoldSKillF)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
                    end
                end
                end
                end
            end)
        end
    end)
    
    
    spawn(function()
        while wait() do
            pcall(function()
                if UseGunSkill then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                    if _G.SkillZ then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(0.5)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
                    if _G.SkillX then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(0.5)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                end
                end
                end
            end)
        end
    end)
    

 local MonsterStatus = Tabs.Main:AddParagraph({
        Title = "",
        Content = ""
    })
    
 spawn(function()
  while task.wait() do
  if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
  MonsterStatus:SetDesc("[Monster] : ")
  MonsterStatus:SetTitle("[Quest] : ".." | [Level] : ")
  elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
  pcall(function()
    CheckQuest()
    MonsterStatus:SetDesc("[Monster] : "..Mon)
    MonsterStatus:SetTitle("[Quest] : "..NameQuest.." | [Level] : "..LevelQuest)
    end)
  end
  end
  end)
    
    local x2Code = {
      "REWARDFUN",
      "Chandler",
      "NEWTROLL",
      "KITT_RESET",
      "Sub2CaptainMaui",
      "DEVSCOOKING",
      "kittgaming",
      "Sub2Fer999",
      "Enyu_is_Pro",
      "Magicbus",
      "JCWK",
      "Starcodeheo",
      "Bluxxy",
      "fudd10_v2",
      "SUB2GAMERROBOT_EXP1",
      "Sub2NoobMaster123",
      "Sub2UncleKizaru",
      "Sub2Daigrock",
      "Axiore",
      "TantaiGaming",
      "StrawHatMaine",
      "Sub2OfficialNoobie",
      "Fudd10",
      "Bignews",
      "TheGreatAce",
      "DRAGONABUSE",
      "SECRET_ADMIN",
      "ADMIN_TROLL",
      "STAFFBATTLE",
      "ADMIN_STRENGTH",
      "JULYUPDATE_RESET",
      "NOOB_REFUND",
      "15B_BESTBROTHERS",
      "CINCODEMAYO_BOOST",
      "ADMINGIVEAWAY",
      "GAMER_ROBOT_1M",
      "SUBGAMERROBOT_RESET",
      "SUB2GAMERROBOT_RESET1",
      "GAMERROBOT_YT",
      "TY_FOR_WATCHING",
      "EXP_5B",
      "RESET_5B",
      "UPD16",
      "3BVISITS",
      "2BILLION",
      "UPD15",
      "THIRDSEA",
      "1MLIKES_RESET",
      "UPD14",
      "1BILLION",
      "ShutDownFix2",
      "XmasExp",
      "XmasReset",
      "Update11",
      "PointsReset",
      "Update10",
      "Control",
      "SUB2OFFICIALNOOBIE",
      "AXIORE",
      "BIGNEWS",
      "BLUXXY",
      "CHANDLER",
      "ENYU_IS_PRO",
      "FUDD10",
      "FUDD10_V2",
      "KITTGAMING",
      "MAGICBUS",
      "STARCODEHEO",
      "STRAWHATMAINE",
      "SUB2CAPTAINMAUI",
      "SUB2DAIGROCK",
      "SUB2FER999",
      "SUB2NOOBMASTER123",
      "SUB2UNCLEKIZARU",
      "TANTAIGAMING",
      "THEGREATACE",
      "CONTROL",
      "UPDATE11",
      "XMASEXP",
      "Colosseum",
    }

Tabs.Main:AddButton({
        Title = "Redeem All Code",
        Description = "",
        Callback = function()            
function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(v)
        end
        end
    })

local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Select Fast Attack",
        Values = {"Low Fast Attack","Normal Attack","Fast Attack","Super Fast Attack","New Fast Attack"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("Normal Attack")

    Dropdown:OnChanged(function(Memay)
        SelectFastAttackMode = Memay
    end)
    
local function ChangeModeFastAttack(SelectFastAttackMode)
	if SelectFastAttackMode == "Low Fast Attack" then
		FireCooldown = 0.5
    elseif SelectFastAttackMode == "Normal Attack" then
		FireCooldown = 0.1
	elseif SelectFastAttackMode == "Fast Attack" then
		FireCooldown = 0.07
	elseif SelectFastAttackMode == "Super Fast Attack" then
		FireCooldown = 0.04
    elseif SelectFastAttackMode == "New Fast Attack" then
		FireCooldown = 0
	end
end
        
    local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Select Weapon",
        Values = {"Melee","Sword","Fruit","Gun"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("Melee")

    Dropdown:OnChanged(function(Memay)
        _G.SelectWeapon = Memay
    end)
    
task.spawn(function()
	while wait() do
		pcall(function()
			if _G.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Gun" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
    end)
    
    Tabs.Main:AddParagraph({
        Title = "Main Farm",
        Content = "GENARAL"
    })

Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Farm Level", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoFarm = Value
		StopTween(_G.AutoFarm)		
    end)

    spawn(function()
        while wait() do
            if _G.AutoFarm then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    CheckQuest()
                    if not string.find(QuestTitle, NameMon) then
                        StartMagnet = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMagnet = false
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
						BTP(CFrameQuest)
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
						topos(CFrameQuest)
						end
					else
						topos(CFrameQuest)
					end
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        -- Sun-Kissed Warrior Function Farm Level
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "kissed") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name,"kissed Warrior") then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()                                            
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                                StartMagnet = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                elseif string.find(v.Name,"kissed Warrior") == nil then
                                    topos(CFrameMon)
                                    StartMagnet = false
                                    if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                    end
                                end
                            end
                        else
                            -- For Other Farm Level Except Sun Kissed Warrior
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if v.Name == Mon then
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                repeat task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    AutoHaki()                                            
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                                    StartMagnet = true
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            else
                                                StartMagnet = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        end
                                    end
                                end
                            else
                                topos(CFrameMon)
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    
Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Farm nearest", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoFarmNearest = Value
		StopTween(_G.AutoFarmNearest)		
    end)

spawn(function()
	while wait() do
		if _G.AutoFarmNearest then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name and v:FindFirstChild("Humanoid") then
			        if v.Humanoid.Health > 0 then
			            repeat wait()
			              EquipWeapon(_G.SelectWeapon)
			                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
			                	local args = {
				                	[1] = "Buso"
			                	}
			                	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			               	end
			                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
			                v.HumanoidRootPart.CanCollide = false
			                NeedAttacking = true
			                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						    game:GetService("VirtualUser"):CaptureController()
				       	    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
				       	    AutoFarmNearestMagnet = true
				       	    PosMon = v.HumanoidRootPart.CFrame
			            until not _G.AutoFarmNearest or not v.Parent or v.Humanoid.Health <= 0 
			            AutoFarmNearestMagnet = false
			            NeedAttacking = true
			        end
			    end
			end
		end
	end
    end)
        
    Tabs.Main:AddSection("Farm Mastery")

ModeMastery = {
  "Normal",
  "Nearest"
 }
    
    local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Select Farm Mode",
        Values = ModeMastery,
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("")

    Dropdown:OnChanged(function(Value)
        SelectedMasteryMode = Value
    end)
        
    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Farm Mastery Fruit", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoFarmFruitMastery = value
        StopTween(_G.AutoFarmFruitMastery)
        if _G.AutoFarmFruitMastery == false then
                UseSkill = false 
             Skillaimbot = false
         end
    end)

    spawn(function()
    while wait() do
        if  SelectedMasteryMode == "Normal" and _G.AutoFarmFruitMastery then
            pcall(function()
                CheckQuest()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    repeat wait()
                        topos(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                        repeat task.wait()
                                            if v.Humanoid.Health <= HealthMs then
                                                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                UseSkill = true
                                                Skillaimbot = true
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0))
                                            else           
                                                UseSkill = false 
                                                Skillaimbot = false
                                                EquipWeapon(_G.SelectWeapon)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            end
                                            AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position
                                            MonFarm = v.Name
                                            PosMon = v.HumanoidRootPart.CFrame
                                            AutoHaki()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            StartBring = true
                                            NormalAttack()
                                        until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartBring = false
                                        UseSkill = false
                                        Skillaimbot = false
                                    end
                                end
                            end
                        end
                    else
                        topos(CFrameMon)
                        UnEquipWeapon(_G.SelectWeapon)
                    end
                end
            end)
        end
    end
end)


 spawn(function()
     while wait() do
         if SelectedMasteryMode == "Nearest" and _G.AutoFarmFruitMastery then
             pcall(function()
                 for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                     if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                         if
                             (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000
                          then
                             repeat wait()
                                 if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                                     UseSkill = true
                                 else
                                     UseSkill = false
                                     AutoHaki()
                                     StartBring = true
                                     EquipWeapon(_G.SelectWeapon)
                                     topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                     v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                     v.HumanoidRootPart.Transparency = 1
                                     v.Humanoid.JumpPower = 0
                                     v.Humanoid.WalkSpeed = 0
                                     v.HumanoidRootPart.CanCollide = false
                                     PosMon = v.HumanoidRootPart.CFrame
                                     MonFarm = v.Name
                                     NormalAttack()
                                 end
                             until not _G.AutoFarmFruitMastery or not SelectedMasteryMode == "Nearest" or
                                 not v.Parent or
                                 v.Humanoid.Health == 0 or
                                 not SelectedMasteryMode == "Nearest"
                             StartBring = false
                             UseSkill = false
                         end
                     end
                 end            
             end)
         end
    end
 end)
    
local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Farm Mastery gun", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoFarmGunMastery = Value
        StopTween(_G.AutoFarmGunMastery)
    end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmGunMastery then
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    Magnet = false                                      
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMasteryGunMagnet = false
                    CheckQuest()
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                                BTP(CFrameQuest)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 1500 then
                                topos(CFrameQuest)
                            else
                                topos(CFrameQuest)
                            end
                        else
                            topos(CFrameQuest)
                        end
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(1.2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Mon then
                                    repeat task.wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMin = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            if v.Humanoid.Health <= HealthMin then                                                
                                                EquipWeapon(SelectWeaponGun)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                v.Head.CanCollide = false                                                
                                                local args = {
                                                    [1] = v.HumanoidRootPart.Position,
                                                    [2] = v.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                wait(.2)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                wait(.2)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            else
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false               
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            StartMasteryGunMagnet = true 
                                            PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                        else
                                            StartMasteryGunMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until v.Humanoid.Health <= 0 or not _G.AutoFarmGunMastery or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    StartMasteryGunMagnet = false
                                end
                            end
                        end)
                    else
                       topos(CFrameMon)
                        StartMasteryGunMagnet = false
                        local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                        if Mob then
                            topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end 
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        if _G.AutoFarmGunMastery then
            while wait() do
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end
    end)
end)
    
   local MiscFarm = Tabs.Main:AddSection("Auto Bone Farm")
    
    local BoneCheck = Tabs.Main:AddParagraph({
        Title = "Bone",
        Content = ""
    })
    
    spawn(function()
        while wait() do
            pcall(function()
                BoneCheck:SetDesc("Your Bone : "..(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")))
            end)
        end
    end)
    
    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Farm Bone", Default = false })

    Toggle:OnChanged(function(Value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
		_G.Auto_Bone = Value
		StopTween(_G.Auto_Bone)
		end)
		
    spawn(function()
        while wait() do 
            local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
            if _G.Auto_Bone and World3 then
            pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude > 2000 then
                            BTP(boneframe)
                            wait(.1)
                            for i = 1, 8 do
                                game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(boneframe)
			                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")	
                                wait(.1)		
                            end
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude < 2000 then
                            topos(boneframe)
                        end
                    else
                        topos(boneframe)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        NoAttackAnimation = true
                                        NeedAttacking = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                    MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.Auto_Bone or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        StartMagnetBoneMon = false
    					topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Reborn Skeleton" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Living Zombie" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Demonic Soul" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Posessed Mummy" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                    end)
            end
        end
    end)    
    
    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Random Bone", Default = false })

    Toggle:OnChanged(function(Value)
		_G.Auto_Random_Bone = Value
		end)

    spawn(function()
            while wait(.1) do
                if _G.Auto_Random_Bone then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end
            end
    end)
    
    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Seperator Hallow Scythe", Default = false })

    Toggle:OnChanged(function(Value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
		_G.AutoFarmBossHallow = Value
		StopTween(_G.AutoFarmBossHallow)
		end)
		
		spawn(function()
    while wait() do
        if _G.AutoFarmBossHallow then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if string.find(v.Name , "Soul Reaper") then
                            repeat task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                topos(v.HumanoidRootPart.CFrame*Pos)
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                v.HumanoidRootPart.Transparency = 1
                                -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                            until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                    repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                    EquipWeapon("Hallow Essence")
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                   
                    end
                end
            end)
        end
    end
end)

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Pray", Default = false })

    Toggle:OnChanged(function(Value)
		_G.Pray = Value
		end)
		
spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Pray then    
                    topos(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",1)
                end
            end
        end)
    end)		
		
local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Try Luck", Default = false })

    Toggle:OnChanged(function(Value)
		_G.Trylux = Value
		end)
    
 spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Trylux then    
                    topos(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2)
                end
            end
        end)
    end)  
   
local MiscFarm = Tabs.Main:AddSection("Katakuri Farm")
local Mob_Kill_Cake_Prince = Tabs.Main:AddParagraph({
    Title = "Check Cake Mob",
    Content = ""
})

spawn(function()
	while wait() do
		pcall(function()
			if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
			else
				Mob_Kill_Cake_Prince:SetDesc("Cake Prince : ✅")
			end
		end)
	end
end)
    
    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Farm Cake Prince", Default = false })

    Toggle:OnChanged(function(Value)
        _G.CakePrinc = Value
		StopTween(_G.CakePrinc)
    end)

local CakePos = CFrame.new(-1749.1754150390625, 537.3338012695312, -12404.4912109375)
local Cac = game:GetService("Workspace").Enemies
task.spawn(function()
    while task.wait() do
        if _G.CakePrinc then
            pcall(function()
                local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local mirrorTransparency = game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency
            
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or 
                   (mirrorTransparency == 0 and (playerPos - Vector3.new(-2152.46533, 69.9830399, -12399.1357)).Magnitude > 500) then
                    topos(CFrame.new(-2152.46533, 69.9830399, -12399.1357, 0.998845279, -1.36106415e-08, 0.0480427258, 1.75027015e-08, 1, -8.05917963e-08, -0.0480427258, 8.13396142e-08, 0.998845279))
                    wait(4)
                end

                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cake Prince" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);                                                                       
                                    if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Ring") or
                                    game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Fist") or
                                    game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("MochiSwirl") then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, -40, 0))
                                   else
                                     topos(v.HumanoidRootPart.CFrame * CFrame.new(4, 10, 10))
                                   end
                                    NeedAttacking = true
                                until not _G.CakePrinc or not v.Parent or v.Humanoid.Health <= 0
                                wait(1)
                            end
                        end
                    end
                else
                    local foundMob = false
                    for _, mobName in pairs({"Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker"}) do
                        if game:GetService("Workspace").Enemies:FindFirstChild(mobName) then
                            foundMob = true
                            break
                        end
                    end
                    if foundMob then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon) 
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        StartBring = true;
                                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                        PosMon = v.HumanoidRootPart.CFrame;
                                        MonFarm = v.Name;
                                        v.Head.CanCollide = false
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))                                 
                                        NeedAttacking = true
                                        if v.Name == "Cookie Crafter" then
                                            Bring(v.Name, CFrame.new(-2351.32861328125, 37.7981071472168, -12108.84375))
                                        elseif v.Name == "Cake Guard" then
                                            Bring(v.Name, CFrame.new(-1608.6195068359375, 37.79800796508789, -12381.6044921875))
                                        elseif v.Name == "Baking Staff" then
                                            Bring(v.Name, CFrame.new(-1865.7054443359375, 37.79812240600586, -12856.1416015625))
                                        elseif v.Name == "Head Baker" then
                                            Bring(v.Name, CFrame.new(-2241.444091796875, 53.50244140625, -12868.287109375))
                                        end
                                    until not _G.CakePrinc or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]")
                                    DamageAura = false
                                end
                            end
                        end
                    else
                        if mirrorTransparency == 1 then
                            local RandomTele = math.random(1, 3)
                            if RandomTele == 1 then
                                topos(CFrame.new(-1436.86011, 167.753616, -12296.9512))
                            elseif RandomTele == 2 then
                                topos(CFrame.new(-2383.78979, 150.450592, -12126.4961))
                            elseif RandomTele == 3 then
                                topos(CFrame.new(-2231.2793, 168.256653, -12845.7559))
                            end
                        end
                        if BypassTP then
                            if (playerPos - CakePos.Position).Magnitude > 1500 then
                                BTP(CakePos)
                            else
                                topos(CakePos)
                            end
                        else
                            topos(CakePos)
                        end
                        UnEquipWeapon(_G.Selectweapon)
                        topos(CFrame.new(-1749.1754150390625, 537.3338012695312, -12404.4912109375))
                    end
                end
            end)
        end
    end
end)    


        
    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Kill Dough King V2", Default = false })

    Toggle:OnChanged(function(Value)
        _G.Autodoughking = Value
		StopTween(_G.Autodoughking)
    end)
    
    spawn(function()
        while wait() do
            if  _G.Autodoughking and World3 then
                spawn(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dough King" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autodoughking or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-2662.818603515625, 1062.3480224609375, -11853.6953125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.AutodoughkingHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
  
Tabs.Main:AddSection("Boss Auto Farm")

    Tabs.Main:AddParagraph({
        Title = "Boss",
        Content = "Boss FARM"
    })

local BossStat = Tabs.Main:AddParagraph({
        Title = "Check Boss",
        Content = ""
    })
    
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) or game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                BossStat:SetTitle("Status :Boss Spawn ✅")	
            else
                BossStat:SetTitle("Status :Boss Not Spawn ❌")	
            end
        end)
    end
end)
    
    if World1 then
		tableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Ice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
	elseif World2 then
		tableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
	elseif World3 then
		tableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
	end
	
	local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Sclect Boss",
        Values = tableBoss,
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("")

    Dropdown:OnChanged(function(Value)
        _G.SelectBoss = Value
    end)
    
    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Farm Boss", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoFarmBoss = Value
		StopTween(_G.AutoFarmBoss)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)  

Tabs.Main:AddSection("Auto Chest Farm")
   
Tabs.Main:AddParagraph({
        Title = "Auto Farm chest",
        Content = ""
    })
 
 local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Farm chest [Tween]", Default = false })

    Toggle:OnChanged(function(Value)
        AutoFarmChest = Value
		StopTween(AutoFarmChest)
    end)
    
    _G.MagnitudeAdd = 0
spawn(function()
	while wait() do 
		if AutoFarmChest then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v.Name:find("Chest") then
					if game:GetService("Workspace"):FindFirstChild(v.Name) then
						if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
							repeat wait()
								if game:GetService("Workspace"):FindFirstChild(v.Name) then
									topos(v.CFrame)
								end
							until AutoFarmChest == false or not v.Parent
							topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							_G.MagnitudeAdd = _G.MagnitudeAdd+1500
							break
						end
					end
				end
			end
		end
	end
end)

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Farm chest [Bypass]", Default = false })

    Toggle:OnChanged(function(Value)
        _G.ChestBypass = Value
    end)
 
 spawn(function()
while wait() do
if _G.ChestBypass then
pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Chest") then
          print(v.Name)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
          game.Players.LocalPlayer.Character.Head:Destroy()
          wait(.15)
      end
  end
  for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
   wait()
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
   end
   end
  end)
    end
  end
end)

spawn(function()
while task.wait() do
if _G.ChestBypass then
        local ohString1 = "SetTeam"
        local ohString2 = "Pirates"
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
     end
end
end)    

local Material = Tabs.Main:AddSection("Material Farm")

Tabs.Main:AddParagraph({
        Title = "Material Farm",
        Content = ""
    })
    
if World1 then
		MaterialList = {"Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"}
	elseif World2 then
		MaterialList = {"Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang"}
	elseif World3 then
		MaterialList = {"Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"}
	end
	
	local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Sclect Material",
        Values = MaterialList,
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("Scrap Metal")

    Dropdown:OnChanged(function(Value)
        _G.SelectMaterial = Value
    end)

local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Farm Material", Default = false })

Toggle:OnChanged(function(Value)
        _G.AutoMaterial = Value
		StopTween(_G.AutoMaterial)
    end)

spawn(function()
while task.wait() do
    if _G.AutoMaterial then
    pcall(function()
            MaterialMon(_G.SelectMaterial)
                TPP(MPos)
                        if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
                            for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == MMon then
                                    repeat wait(_G.FastAttackDelay)
                                    AutoHaki()
                                    MakoriGayMag = true
                                    StartMagnet = true
                                    EquipWeapon(_G.SelectWeapon)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                         v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                             v.HumanoidRootPart.CanCollide = false
                                             PosMon = v.HumanoidRootPart.CFrame
                                             MonFarm = v.Name
                                            until not _G.AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
                                            MakoriGayMag = false
                                            NeedAttacking = true
                                        end
                                    end
                                end
                                    else
                                        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                                        if string.find(v.Name, Mon) then
                                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                                           topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        end
                                    end
                                end
                             end
                        end)
                      end
                   end
                end)
                
local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Farm Ectoplasm", Default = false })

Toggle:OnChanged(function(Value)
        _G.AutoEctoplasm = Value
		StopTween(_G.AutoEctoplasm)
    end)
    
spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoEctoplasm then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name, "Ship") then
                                repeat task.wait()
                                NeedAttacking = true
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    if string.find(v.Name,"Ship") then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                       FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                    else
                                        topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                    end
                                until _G.AutoEctoplasm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    NeedAttacking = false
                        local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance > 18000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end
                        topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                    end
                end
            end
        end)
    end)

Tabs.Qs:AddSection("Auto Get Quest Second Sea And Third Sea")
       
local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Quest Second Sea", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoSecondSea = Value
		StopTween(_G.AutoSecondSea)
    end)

spawn(function()
 while wait() do
 if _G.AutoSecondSea then
 pcall(function()
  if game.Players.LocalPlayer.Data.Level.Value >= 700 and World1 then
  _G.AutoFarm = false
  if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
  repeat wait() topos(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoSecondSea
  wait(1)
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
  EquipWeapon("Key")
  local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
  repeat wait() topos(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoSecondSea
  wait(3)
  elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
  if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
  repeat wait()
  AutoHaki()
  EquipWeapon(_G.SelectWeapon)
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60,60,60)
  v.HumanoidRootPart.Transparency = 1
  topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
  game:GetService("VirtualUser"):CaptureController()
  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
  until v.Humanoid.Health <= 0 or not v.Parent or not _G.AutoSecondSea
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
  end
  end
  else
   topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
  end
  else
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
  end
  end
  end)
 end
 end
 end)

local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = " Auto Bartlio Quest", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoBartilo = Value
		StopTween(_G.AutoBartilo)
    end)
    
    spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoBartilo then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                            Ms = "Swan Pirate"
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    pcall(function()
                                        repeat task.wait()
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.Transparency = 1
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))										
                                            PosMonBarto =  v.HumanoidRootPart.CFrame
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            AutoBartiloBring = true
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        AutoBartiloBring = false
                                    end)
                                end
                            end
                        else
                            repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                        end
                    else
                        repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                    end 
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                        Ms = "Jeremy"
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Ms then
                                OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                repeat task.wait()
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))				
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                        repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                        wait(1)
                        repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        wait(2)
                    else
                        repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                    repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                end
            end 
        end
    end)
end)
        
local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = " new Sea 3", Default = false })

    Toggle:OnChanged(function(Value) 
        _G.AutoThirdSea = Value
		StopTween(_G.AutoThirdSea)
    end)
    
	spawn(function() 
			while wait() do
				pcall(function()
					if _G.AutoThirdSea then
						if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
							if Auto_Farm_Level then
								_G.AutoFarm = false
							end
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
									Com("F_","TravelZou")
									if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
										if game.Workspace.Enemies:FindFirstChild("rip_indra") then 	
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "rip_indra" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = topos(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															NeedAttacking = true
															if Auto_Haki then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
																wait()
																EquipWeapon(_G.SelectWeapon)
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not Fast_Attack then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.HumanoidRootPart.Transparency = 1
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
														end
													until not _G.AutoThirdSea or not v.Parent or v.Humanoid.Health <= 0 
													wait(.5)
													Check = 2
													repeat wait() Com("F_","TravelZou") until Check == 1
													NeedAttacking = false
												end
											end
										else
											Com("F_","ZQuestProgress","Check")
											Com("F_","ZQuestProgress","Begin")
										end
									elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
										Com("F_","TravelZou")
									else
										if game.Workspace.Enemies:FindFirstChild("Don Swan") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Don Swan" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = topos(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															NeedAttacking = true
															if Auto_Haki then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
																wait()
																EquipWeapon(_G.SelectWeapon)
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not Fast_Attack then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.HumanoidRootPart.Transparency = 1
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
														end
													until not _G.AutoThirdSea or not v.Parent or v.Humanoid.Health <= 0 
													NeedAttacking = false
												end
											end
										else
											TweenDonSwanthireworld = topos(CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
											if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if TweenDonSwanthireworld then
													TweenDonSwanthireworld:Stop()
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
												end
											end
										end
									end
								else
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
										TabelDevilFruitStore = {}
										TabelDevilFruitOpen = {}

										for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
											for i1,v1 in pairs(v) do
												if i1 == "Name" then 
													table.insert(TabelDevilFruitStore,v1)
												end
											end
										end

										for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
											if v.Price >= 1000000 then  
												table.insert(TabelDevilFruitOpen,v.Name)
											end
										end

										for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
											for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
												if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then    
													if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then   
														Com("F_","LoadFruit",DevilFruitStore)
													else
														Com("F_","TalkTrevor","1")
														Com("F_","TalkTrevor","2")
														Com("F_","TalkTrevor","3")
													end
												end
											end
										end

										Com("F_","TalkTrevor","1")
										Com("F_","TalkTrevor","2")
										Com("F_","TalkTrevor","3")	
									end
								end
							else
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
									if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
										if game.Workspace.Enemies:FindFirstChild("Swan Pirate") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Swan Pirate" then
													pcall(function()
														repeat wait()
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																Farmtween = topos(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
															elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																if Farmtween then Farmtween:Stop() end
																NeedAttacking = true
																StartMagnet = true
																if Auto_Haki then
																	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																	end
																end
																if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
																	wait()
																	EquipWeapon(_G.SelectWeapon)
																end
																PosMon = v.HumanoidRootPart.CFrame
																if not Fast_Attack then
																	game:GetService'VirtualUser':CaptureController()
																	game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																end
																v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																v.HumanoidRootPart.Transparency = 1
																v.Humanoid.JumpPower = 0
																v.Humanoid.WalkSpeed = 0
																v.HumanoidRootPart.CanCollide = false
																v.Humanoid:ChangeState(11)
																topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
															end
														until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoThirdSea == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
														NeedAttacking = false
														StartMagnet = false
													end)
												end
											end
										else
											Questtween = topos(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
											if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Bartilotween then Bartilotween:Stop() end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
											end
										end
									else
										Bartilotween = topos(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
										if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Bartilotween then Bartilotween:Stop() end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
											Com("F_","StartQuest","BartiloQuest",1)
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
									if game.Workspace.Enemies:FindFirstChild("Jeremy") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Jeremy" then
												repeat wait()
													if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
														Farmtween = topos(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
													elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
														if Farmtween then Farmtween:Stop() end
														NeedAttacking = true
														if Auto_Haki then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
															wait()
															EquipWeapon(_G.SelectWeapon)
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not Fast_Attack then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.HumanoidRootPart.Transparency = 1
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)															
														topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
													end
												until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoThirdSea == false
												NeedAttacking = false
											end
										end
									else
										Bartilotween = topos(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
										if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Bartilotween then Bartilotween:Stop() end
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
									if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Bartilotween = topos(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
									elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Bartilotween then Bartilotween:Stop() end
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
										wait(.5)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
									end
								end
							end
						end
					end
				end)
			end
		end)
    
Tabs.Qs:AddSection("Fram Factory And Parites Raid")

local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Fram Factory", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoFactory = Value
    StopTween(_G.AutoFactory)
    end)

        spawn(function()
            while wait() do
                spawn(function()
                    if _G.AutoFactory then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()         
                                        EquipWeapon(_G.SelectWeapon)           
                                        topos(CFrame.new(448.46756, 199.356781, -441.389252))                                  
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until v.Humanoid.Health <= 0 or _G.AutoFactory == false
                                end
                            end
                        else
                            topos(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    end
                end)
            end
        end)
     
    local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Parites Raid [Beta]", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoRaidPirate = Value
    StopTween(_G.AutoRaidPirate)
    end)
        
        spawn(function()
	while wait() do
		if _G.AutoRaidPirate then
			pcall(function()
				local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
				if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.AutoRaidPirate and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
								repeat wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									NeedAttacking = true
									MakoriGayMag = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
								until v.Humanoid.Health <= 0 or not v.Parent or _G.AutoRaidPirate == false
								NeedAttacking = true
								MakoriGayMag = false
							end
						end
					end
				else
					if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
						topos(CFrameBoss)
					else
						BTP(CFrameBoss)
					end
				end
			end)
		end
	end
    end) 
 
Tabs.Qs:AddSection("Auto Elite Hunter")
 
 local CheckElites = Tabs.Qs:AddParagraph({
        Title = "Elite hunter Status",
        Content = ""
    })

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                CheckElites:SetDesc("Elite Status : Spawned | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            else
                CheckElites:SetDesc("Elite Status : Not Spawn | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") then
                CheckElites:SetTitle("Elite Hunter :Diablo ✅")
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") then
                CheckElites:SetTitle("Elite Hunter : Deandre ✅")	
            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                CheckElites:SetTitle("Elite Hunter : Urban ✅")
            else
                CheckElites:SetTitle("Elite Hunter : Idk ❌")
            end
        end)
    end
end)

 local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Elite Hunter", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoElitehunter = Value
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
		StopTween(_G.AutoElitehunter)
    end)

    spawn(function()
        while wait() do
            if _G.AutoElitehunter and World3 then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
										end
									end
								end
							else
								if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
								end
							end                    
						end
					else

						if _G.AutoEliteHunterHop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
							hop()
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end)
        
    Tabs.Qs:AddSection("Haki Ken Farm")
    
    Tabs.Qs:AddParagraph({
        Title = "Farm ken Haki",
        Content = ""
    })
    
 local ObservationRange = Tabs.Qs:AddParagraph({
        Title = "Status ken haki",
        Content = ""
    })
    
    spawn(function()
        while wait() do
            pcall(function()
                ObservationRange:SetDesc("Observation Range Level : "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
            end)
        end
    end)
    
    local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Observation Haki v2", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoObservation = Value
		StopTween(_G.AutoObservation)
    end)
    
    spawn(function()
        while wait() do
            spawn(function()
                if _G.AutoObservation then
                    repeat task.wait()
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):SetKeyDown('0x65')
                            wait(2)
                            game:GetService('VirtualUser'):SetKeyUp('0x65')
                        end
                    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
                end
            end)
        end
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoObservation then
                    if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
                        game:GetService("StarterGui"):SetCore("SendNotification", {
                            Icon = "rbxassetid://16375477666";
                            Title = "Status Observation:", 
                            Text = "You Have Max Points"
                        })
                        wait(2)
                    else
                        if World2 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                            wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                            end
                        elseif World1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                            end
                        elseif World3 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                            end
                        end
                    end
                end
            end
        end)
    end)

local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Get Haki ken V2", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoObservationHakiV2 = Value
		StopTween(_G.AutoObservationHakiV2)
    end)
    
    spawn(function()
		while wait() do
			if _G.AutoObservationHakiV2 then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					repeat 
						topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
						wait() 
					until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
				else
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Forest Pirate" then
									repeat wait()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										EquipWeapon(_G.SelectWeapon)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
										PosHee =  v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										Mangnetcitzenmon = true
									until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
									Mangnetcitzenmon = false
								end
							end
						else
							repeat 
								topos(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)) 
								wait() 
							until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Captain Elephant" then
									repeat wait()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										EquipWeapon(_G.SelectWeapon)
										topos(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))										
										if sethiddenproperty then
											sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
										end
										v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									until _G.AutoObservationHakiV2 == false or v.Humanoid.Health <= 0
								end
							end
						else
							repeat 
								topos(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)) 
								wait() 
							until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
						end        
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
					repeat 
						topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
						wait() 
					until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
				elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
					repeat 
						topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
						wait() 
					until _G.StopTween == true or not _G.AutoObservationHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
				else
					for i,v in pairs(game.Workspace:GetDescendants()) do
						if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
							v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
							wait()
							firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
							wait()
						end
					end   
				end
			end
		end
	end)

	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoObservationHakiV2 then
					if sethiddenproperty then
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
					end
				end
			end)
			game:GetService("RunService").Heartbeat:Wait()
		end
	end)

	spawn(function()
		game:GetService("RunService").Heartbeat:connect(function()
			pcall(function()
				if _G.AutoObservationHakiV2 then
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
						game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end
			end)
		end)
	end)

	spawn(function()
		pcall(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				game:GetService("RunService").Heartbeat:Wait()
				if _G.AutoObservationHakiV2 and StatrMagnet then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Forest Pirate" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if v.Name == "Forest Pirate" then
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
								v.HumanoidRootPart.CFrame = PosHee
							end
						end
					end
				end
			end)
		end)
	end)

	spawn(function()
		game:GetService("RunService").Heartbeat:connect(function()
			game:GetService("RunService").Heartbeat:Wait()
			pcall(function()
				if _G.AutoObservationHakiV2 and StatrMagnet then
					CheckQuest()
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Ms then
							v.Humanoid:ChangeState(11)
						end
					end
				end
			end)
			game:GetService("RunService").Heartbeat:Wait()
		end)
	end) 

Tabs.Qs:AddSection("Auto Boss Raid")
 
 local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Kill Rip Indra Sea3", Default = false })

    Toggle:OnChanged(function(Value)
        _G.RipIndraKill = Value
		StopTween(_G.RipIndraKill)
    end)
 
 local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
     spawn(function()
        pcall(function()
            while wait() do
                if _G.RipIndraKill then
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                         topos(v.HumanoidRootPart.CFrame * CFrame.new(0, -40, 0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                    end)
                                until _G.RipIndraKill == false or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude > 1500 then
                        BTP(AdminPos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude < 1500 then
                        topos(AdminPos)
                        end
                    else
                        topos(AdminPos)
                    end
                        topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                    end
                end
            end
        end)
    end)
     
    local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Kill Soul Reaper Sea3", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoFarmBossHallow = Value
		StopTween(_G.AutoFarmBossHallow)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmBossHallow then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Soul Reaper" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmBossHallow or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
            
 
 local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Kill Darkbeard Sea2", Default = false })

    Toggle:OnChanged(function(Value)
        _G.Auto_DarkBoss = Value
		StopTween(_G.Auto_DarkBoss)
    end)
 
 spawn(function()
        while wait() do
            if _G.Auto_DarkBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Darkbeard" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                    NeedAttacking = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                                                     
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.Auto_DarkBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    NeedAttacking = true
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
     local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Cursed Captaint Sea2", Default = false })

    Toggle:OnChanged(function(Value)
        _G.CursedCaptain = Value
		StopTween(_G.CursedCaptain)
    end)
 
 spawn(function()
        while wait() do
            if _G.CursedCaptain then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Captain") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cursed Captain" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                    NeedAttacking = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                                                     
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.CursedCaptain or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    NeedAttacking = true
                    local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance > 18000 then
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                     end
                  end)
              end
           end
        end)

Tabs.Qs:AddSection("Auto Tushita Yama Holy Torch")    

Tabs.Qs:AddParagraph({
        Title = "Auto Tushita Yama Holy Torch",
        Content = ""
    })
    
    local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Get Yama 30 Elite hunter", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoYama = Value
        StopTween(_G.AutoYama)
        end)
        
        spawn(function()
        while wait() do
            if _G.AutoYama then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    repeat wait(.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                end
            end
        end
    end)

local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Holy Torch Tushita", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoHolyTorch = Value
        StopTween(_G.AutoHolyTorch)
        end)
        
        spawn(function()
        while wait() do
            if _G.AutoHolyTorch then
                pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5749.7861328125, 611.9736938476562, -276.2497863769531))
                    wait(1)
                     topos(CFrame.new(5154.54785, 142.129684, 916.826294, 0.00160392188, 7.16881203e-08, 0.999998689, 4.34501235e-09, 1, -7.1695176e-08, -0.999998689, 4.45999992e-09, 0.00160392188))
                    wait(15)
                    EquipWeapon("Holy Torch")
                    repeat topos(CFrame.new(-10752, 417, -9366)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-11672, 334, -9474)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-12132, 521, -10655)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-13336, 486, -6985)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-13489, 332, -7925)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                end)
            end
        end
    end)
    
    local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Get Tushiata", Default = false })

    Toggle:OnChanged(function(Value)
        _G.Autotushita = value
        StopTween( _G.Autotushita)
        end)

 spawn(function()
                   while wait() do
                               if _G.Autotushita then
                                   if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                                       for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                           if v.Name == ("Longma" or v.Name == "Longma") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            repeat wait(_G.Fast_Delay)
                                                AttackNoCoolDown()
                                                   AutoHaki()
                                                   if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                                       wait()
                                                       EquipTool(_G.SelectWeapon)
                                                   end
                                                   FarmPos = v.HumanoidRootPart.CFrame
                                                     --Click
                                                   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                   v.Humanoid.JumpPower = 0
                                                   v.Humanoid.WalkSpeed = 0
                                                   v.HumanoidRootPart.CanCollide = false
                                                   v.Humanoid:ChangeState(11)
                                                   topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                               until not _G.Autotushita or not v.Parent or v.Humanoid.Health <= 0
                                           end
                                       end
                                   else
                                       topos(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                                   end
                               end
                           end
                   end)


Tabs.Qs:AddSection("Auto Get Cursed Dual Katana")    

Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Get Yama Quest",Description = "Yama Quest 1 Quest 2 Quest 3", Default = false })

Toggle:OnChanged(function(Quest1)
        Yama_Quest = Quest1				
    end)

Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Get Tushita Quest",Description = "Tushita Quest 1 Quest 2 Quest 3", Default = false })

    Toggle:OnChanged(function(Quest2)
        Tushita_Quest = Quest2				
    end)

Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Cursed Dual Katana Quest",Description = "Kill Boss Get Cursed Dual Katana", Default = false })

    Toggle:OnChanged(function(Quest3)
        Get_Cursed = Quest3			
    end)

spawn(function()
	while task.wait() do
		pcall(function()
			if Tushita_Quest then
				-- BodyClip()
				--_G.Noclip = true
				if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
					wait(.7)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
					wait(.3)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
					warn("กำลังเปิดเปิดประตู...")
				else
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then
						if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -3 then
							repeat wait() topos(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875)) until (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
							if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(.7)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"),"Check")
								wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"))
							end
							wait(1)
							repeat wait() topos(CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125)) until (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
							if (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(.7)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"),"Check")
								wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"))
							end
							wait(1)
							repeat wait() topos(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625)) until (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
							if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(.7)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"),"Check")
								wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("apsara Boat Dealer"))
							end
							task.wait(1)
						elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -4 then
							if game:GetService("Workspace").Enemies:FindFirstChildOfClass("Model") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-5463.74560546875, 313.7947082519531, -2844.50390625).Position).Magnitude <= 1000 then
										if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
											repeat task.wait()
												if AutoHaki() then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
													wait()
													EquipWeapon(_G.SelectWeapon)
												end
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false 
												topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
												NeedAttacking = true 
												PosTHQuest = v.HumanoidRootPart.CFrame
												MagnetTHQuest = true
												NameTH = v.Name
											until not Tushita_Quest or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 2
											NeedAttacking = false
										end
									else
										topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
									end
								end
							else
								topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
							end
						elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -5 then
							---
							if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Cake Queen" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat task.wait()
												if AutoHaki() then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
													wait()
													EquipWeapon(_G.SelectWeapon)
												end                                                
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false 
												topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
												NeedAttacking = true
											until not Tushita_Quest or not v.Parent or v.Humanoid.Health <= 0 or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
											NeedAttacking = false
										end
									end
								end
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") and game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").Humanoid.Health > 0 then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
							else
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HeavenlyDimension.Spawn.Position).Magnitude <= 1000 then
									for i,v in pairs(game:GetService("Workspace").Map.HeavenlyDimension.Exit:GetChildren()) do
										Ex = i
									end
									if Ex == 2 then
										repeat task.wait()
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame
										until not Tushita_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
									end
									NeedAttacking = true
									repeat task.wait()
										repeat task.wait() 
											topos(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625)) 
											for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
												if v:IsA("ProximityPrompt") then
													fireproximityprompt(v)
												end
											end

										until (CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
										wait(2)
										_G.DoneT1 = true
									until not Tushita_Quest or _G.DoneT1
									repeat task.wait()
										repeat task.wait()
											topos(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875)) 
											for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
												if v:IsA("ProximityPrompt") then
													fireproximityprompt(v)
												end
											end
										until (CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
										wait(2)
										_G.DoneT2 = true
									until _G.DoneT2 or Tushita_Quest == false
									repeat wait()
										repeat task.wait() 
											topos(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375)) 
											for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
												if v:IsA("ProximityPrompt") then
													fireproximityprompt(v)
												end
											end
										until (CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
										wait(2)
										_G.DoneT3 = true
									until _G.DoneT3 or Tushita_Quest == false
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-22695.7012, 5270.93652, 3814.42847, 0.11794927, 3.32185834e-08, 0.99301964, -8.73070718e-08, 1, -2.30819008e-08, -0.99301964, -8.3975138e-08, 0.11794927).Position).Magnitude <= 300 then
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
												repeat task.wait()
													if AutoHaki() then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
														wait()
														EquipWeapon(_G.SelectWeapon)
													end        
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false 
													topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
													NeedAttacking = true
													PosTHQuest = v.HumanoidRootPart.CFrame
													MagnetTHQuest = true
													NameTH = v.Name
												until not Tushita_Quest or v.Humanoid.Health <= 0 or not v.Parent
												NeedAttacking = false
											end
										else
											MagnetTHQuest = false
										end
									end
								end
							end
						end
					end
				end
			end
		end)
	end
end)

PosMsList = {
	["Pirate Millionaire"] = CFrame.new(-426, 176, 5558),
	["Pistol Billionaire"] = CFrame.new(-83, 127, 6097),
	["Dragon Crew Warrior"] = CFrame.new(6320, 52, -1282),
	["Dragon Crew Archer"] = CFrame.new(6625, 378, 244),
	["Female Islander"] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
	["Giant Islander"] = CFrame.new(4902, 670, 39), 
	["Marine Commodore"] = CFrame.new(2401, 123, -7589),
	["Marine Rear Admiral"] = CFrame.new(3588, 229, -7085),
	["Fishman Raider"] = CFrame.new(-10941, 332, -8760),
	["Fishman Captain"] = CFrame.new(-11035, 332, -9087),
	["Forest Pirate"] = CFrame.new(-13446, 413, -7760),
	["Mythological Pirate"] = CFrame.new(-13510, 584, -6987),
	["Jungle Pirate"] = CFrame.new(-11778, 426, -10592),
	["Musketeer Pirate"] = CFrame.new(-13282, 496, -9565),
	["Reborn Skeleton"] = CFrame.new(-8764, 142, 5963),
	["Living Zombie"] = CFrame.new(-10227, 421, 6161),
	["Demonic Soul"] = CFrame.new(-9579, 6, 6194),
	["Posessed Mummy"] = CFrame.new(-9579, 6, 6194),
	["Peanut Scout"] = CFrame.new(-1993, 187, -10103),
	["Peanut President"] = CFrame.new(-2215, 159, -10474),
	["Ice Cream Chef"] = CFrame.new(-877, 118, -11032),
	["Ice Cream Commander"] = CFrame.new(-877, 118, -11032),
	["Cookie Crafter"] = CFrame.new(-2021, 38, -12028),
	["Cake Guard"] = CFrame.new(-2024, 38, -12026),
	["Baking Staff"] = CFrame.new(-1932, 38, -12848),
	["Head Baker"] = CFrame.new(-1932, 38, -12848),
	["Cocoa Warrior"] = CFrame.new(95, 73, -12309),
	["Chocolate Bar Battler"] = CFrame.new(647, 42, -12401),
	["Sweet Thief"] = CFrame.new(116, 36, -12478),
	["Candy Rebel"] = CFrame.new(47, 61, -12889),
	["Ghost"] = CFrame.new(5251, 5, 1111)
}

task.spawn(function()
	while task.wait() do
		pcall(function()
			if Yama_Quest then
				--BodyClip()
				--_G.Noclip = true 
				if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then                  
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
				else
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then                        
						if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -3 then
							repeat task.wait()
								if not game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
									topos(CFrame.new(-13223.521484375, 428.1938171386719, -7766.06787109375))
								else
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Forest Pirate" then
											PosMon = v.HumanoidRootPart.CFrame
											spawn(function()
												BringMobs(PosMon,v.Name)
											end)
											topos(game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate").HumanoidRootPart.CFrame)
										end
									end
								end
							until tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 1 or not Yama_Quest
						elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -4 then
							for ix,HitMon in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
								for NameMonHaze, CFramePos in pairs(PosMsList) do
									if string.find(NameMonHaze,HitMon.Name) and HitMon.Value > 0 then
										if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
													repeat task.wait()
														if AutoHaki() then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
															wait()
															EquipWeapon(_G.SelectWeapon)
														end
														v.HumanoidRootPart.CanCollide = false
														v.Head.CanCollide = false
														topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
														NeedAttacking = true
														PosMon = v.HumanoidRootPart.CFrame
														spawn(function()
															BringMobs(PosMon,v.Name)
														end)
													until not Yama_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2
												end
											end
										else
											repeat wait()
												if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
													for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
														if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
															repeat task.wait()
																if AutoHaki() then
																	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																	end
																end
																if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
																	wait()
																	EquipWeapon(_G.SelectWeapon)
																end
																v.HumanoidRootPart.CanCollide = false
																v.Head.CanCollide = false
																topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
																NeedAttacking = true
																PosMon = v.HumanoidRootPart.CFrame
																spawn(function()
																	BringMobs(PosMon,v.Name)
																end)
															until not v:FindFirstChild("HazeESP") or not Yama_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2
														end
													end
												else
													if (CFramePos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
														topos(CFramePos)
													else
														game.Players.LocalPlayer.Character.Humanoid.Health = die
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFramePos
														wait(.2)
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
													end
												end
											until not Yama_Quest
										end
									end
								end
							end
						elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
							if game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000 then
									for gg,ez in pairs(game:GetService("Workspace").Map.HellDimension.Exit:GetChildren()) do
										if tonumber(gg) == 2 then
											repeat task.wait()
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HellDimension.Exit.CFrame
											until not Yama_Quest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
										end
									end
									NeedAttacking = true
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
										wait()
										EquipWeapon(_G.SelectWeapon)
									end      
									if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) ~= 3 then
										repeat task.wait()
											repeat task.wait() 
												topos(game:GetService("Workspace").Map.HellDimension.Torch1.Particles.CFrame) 
												for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
													if v:IsA("ProximityPrompt") then
														fireproximityprompt(v)
													end
												end
											until (game:GetService("Workspace").Map.HellDimension.Torch1.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
											wait(2)
											_G.T1Yama = true
										until not Yama_Quest or _G.T1Yama or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
										repeat task.wait()
											repeat task.wait()
												topos(game:GetService("Workspace").Map.HellDimension.Torch2.Particles.CFrame) 
												for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
													if v:IsA("ProximityPrompt") then
														fireproximityprompt(v)
													end
												end
											until (game:GetService("Workspace").Map.HellDimension.Torch2.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
											wait(2)
											_G.T2Yama = true
										until _G.T2Yama or Yama_Quest == false or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
										repeat wait()
											repeat task.wait() 
												topos(game:GetService("Workspace").Map.HellDimension.Torch3.Particles.CFrame) 
												for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
													if v:IsA("ProximityPrompt") then
														fireproximityprompt(v)
													end
												end
											until (game:GetService("Workspace").Map.HellDimension.Torch3.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 
											wait(2)
											_G.T3Yama = true
										until _G.T3Yama or Yama_Quest == false or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
									end
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if (v:FindFirstChild("HumanoidRootPart").Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 300 then
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
												repeat task.wait()
													if AutoHaki() then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
														wait()
														EquipWeapon(_G.SelectWeapon)
													end                                                    
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
													NeedAttacking = true
													PosMon = v.HumanoidRootPart.CFrame
													spawn(function()
														BringMobs(PosMon,v.Name)
													end)
												until not Yama_Quest or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
												NeedAttacking = false
											end
										else
											MagnetYamaQuest = false
										end
									end
								end
							end
						end
					end
				end
			end
		end)
	end
end)

spawn(function()
	while task.wait() do
		pcall(function()
			if Yama_Quest then
				if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
					if not game:GetService("Workspace").Map:FindFirstChild("HellDimension") or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude > 1000 then
						if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if string.find(v.Name , "Soul Reaper") then
									repeat task.wait()
										topos(v.HumanoidRootPart.CFrame)
									until v.Humanoid.Health <= 0 or not Yama_Quest or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3 or (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000)
								end
							end
						elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
							repeat topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) task.wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
							EquipWeapon("Hallow Essence")
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") and game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").Humanoid.Health > 0 then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame)
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") < 50 and not game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") and not game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") and not game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
												repeat task.wait()
													if AutoHaki() then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
														wait()
														EquipWeapon(_G.SelectWeapon)
													end                                                           
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
													NeedAttacking = true
													PosMon = v.HumanoidRootPart.CFrame
													spawn(function()
														BringMobs(PosMon,v.Name)
													end)
												until not Yama_Quest or v.Humanoid.Health <= 0 or not v.Parent
												NeedAttacking = false
											end
										end
									end
								else
									MagnetWaitY = false
									topos(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
							end
						end
					end
				end
			end
		end)
	end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if Get_Cursed then
				--BodyClip()
				--_G.Noclip = true
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Boss")
				if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Cursed Skeleton" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									if game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
										EquipWeapon("Yama")
									elseif game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
										EquipWeapon("Tushita")
									else
										warn("Yama or Tushita Only!!!")
										wait(5)
									end
									if AutoHaki() then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
									NeedAttacking = true 
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								until not Get_Cursed or not v.Parent or v.Humanoid.Health <= 0
								NeedAttacking = false
							end
						end
					end
				else
					topos(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375))
					task.wait(.5)
					topos(game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.CFrame)
				end
			end
		end)
	end
end)

Tabs.Qs:AddSection("Get Items Sea 1")    

Tabs.Qs:AddParagraph({
        Title = "Auto Get Items Sea1",
        Content = ""
    })
    
Tabs.Qs:AddSection("Auto Get Pole Sword Sea1")    

 local CheckPoleBoss = Tabs.Qs:AddParagraph({
        Title = "Pole Status",
        Content = ""
    })
spawn(function()
    while wait() do
    pcall(function()
      if game.ReplicatedStorage:FindFirstChild("Thunder God") or game.Workspace.Enemies:FindFirstChild("Thunder God") then
        CheckPoleBoss:SetTitle("Pole Boss ".."✅")
      else
        CheckPoleBoss:SetTitle("Pole Boss ".."❌")
      end
      end)
    end
    end)

local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Get Pole V1", Default = false })

    Toggle:OnChanged(function(Value)
        _G.Autopole = Value    
          StopTween(_G.Autopole)
        end)

local getpole = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)
spawn(function()
    while wait() do
        if  _G.Autopole and World1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Thunder God" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not  _G.Autopole or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                if BypassTP then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - getpole.Position).Magnitude > 1500 then
                BTP(getpole)
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - getpole.Position).Magnitude < 1500 then
                topos(getpole)
                end
            else
                topos(TridentPos)
            end
                EquipWeapon(_G.SelectWeapon)
                topos(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    else
                        if  _G.Autopolehop then
                            Hop()
                        end
                    end
                end
            end)
        end
    end
end)
    
    local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Get Saber", Default = false })

    Toggle:OnChanged(function(autosaberfunc)
        AutoSaber = autosaberfunc
		StopTween(AutoSaber)
        end)
        
        spawn(function()
        while task.wait() do
            if AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                            if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                                wait(1)
                            else
                                topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                            end
                        else
                            if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                    EquipWeapon("Torch")
                                    topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                                  else
                                  topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                    wait(0.5)
                                    EquipWeapon("Cup")
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                    wait(0)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                                else
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Mob Leader" then
                                                   if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until v.Humanoid.Health <= 0 or not AutoSaber
                                                     end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                     end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                        wait(0.5)
                                        EquipWeapon("Relic")
                                        wait(0.5)
                                        topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Saber Expert" then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                        until v.Humanoid.Health <= 0 or not AutoSaber
                                        if v.Humanoid.Health <= 0 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    

local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Get Saw", Default = false })

    Toggle:OnChanged(function(Value)
        _G.Autosaw = Value    
          StopTween(_G.Autosaw)
        end)
       
    local SharkPos = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
    spawn(function()
        while wait() do
            if  _G.Autosaw then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "The Saw" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait(_G.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                       topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        AttackNoCD()
                                        -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autosaw or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SharkPos.Position).Magnitude > 1500 then
			        BTP(SharkPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SharkPos.Position).Magnitude < 1500 then
				    topos(SharkPos)
					end
				else
				    topos(SharkPos)
				end
				    EquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2,40,2))
                       
                        end
                    end
                end)
            end
        end
    end)

Tabs.Qs:AddSection("Auto Evo Race")    

Tabs.Qs:AddParagraph({
        Title = "Auto Race V2",
        Content = ""
    })

local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Evo Race V2", Default = false })

    Toggle:OnChanged(function(Value)
        _G.Auto_EvoRace = Value    
          StopTween(_G.Auto_EvoRace)
        end)
        
spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_EvoRace then
                    if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                            topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                            if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.3)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                            pcall(function()
                                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                    topos(game:GetService("Workspace").Flower1.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                    topos(game:GetService("Workspace").Flower2.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Zombie" then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    PosMonEvo = v.HumanoidRootPart.CFrame
                                                    StartEvoMagnet = true
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
                                                StartEvoMagnet = false
                                            end
                                        end
                                    else
                                        StartEvoMagnet = false
                                        topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                    end
                                end
                            end)
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                        end
                    end
                end
            end
        end)
    end)

function ClaimQuestV3()
    local bf = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    if bf == 0 then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
    elseif bf == -1 then
    end
end

local Toggle = Tabs.Qs:AddToggle("MyToggle", {Title = "Auto Evo Race V3", Default = false })

    Toggle:OnChanged(function(Value)
        AutoUpgradeV3 = Value    
          StopTween(AutoUpgradeV3)
        end)

Fruit1M = {}
for i,v in next, game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits",game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop:GetAttribute("Shop2")) do
    if v.Price >= 1000000 then
        Fruit1M[v.Price] = v.Name
    end
end

function getFruitDuoi1M()
    local ab
    local cf = {}
    for r, v in pairs(FruitAbout1M) do
        table.insert(cf, v)
    end
    for r, v in next, game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
        if v.Type == "Blox Fruit" then
            if not table.find(cf, v.Name) then
                ab = v.Name
            end
        end
    end
    return ab
end

function AnyDFInBackpack()
    for r, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            return true
        end
    end
    for r, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            return true
        end
    end
end

function UpV3NoTween()
    Arowe=CFrame.new(-1988.55322,124.841248,-70.4718018,0.173624337,0,0.984811902,0,1,0,-0.984811902,0,0.173624337)*CFrame.new(0,3,0)
    local args = {[1] = "Wenlocktoad", [2] = "3"}
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

function GetNearestChest()
    if not game.Workspace:FindFirstChild("Chest1") and not game.Workspace:FindFirstChild("Chest2") and game.Workspace:FindFirstChild("Chest1") and not game.Workspace:FindFirstChild("Chest3") then
        return nil
    end
    ClosetDistance = math.huge
    chests = {}
    for r, v in pairs(game.Workspace:GetChildren()) do
        if string.find(v.Name, "Chest") then
            table.insert(chests, v.CFrame)
        end
    end
    for r, v in pairs(chests) do
        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < ClosetDistance then
            ClosetDistance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        end
    end
    for r, v in pairs(chests) do
        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= ClosetDistance then
            return v
        end
    end
end

task.spawn(function ()
    while task.wait() do
        if AutoUpgradeV3 then
            Race = CheckRace()
            if Race == "Human V2" then
                ClaimQuestV3()
                local Boss_Human = {"Diamond", "Fajita", "Jeremy"}
                if CheckEnemies(Boss_Human) then
                    v = CheckEnemies(Boss_Human)
                    pcall(function ()
                        repeat task.wait()
                            KillMonster(v.Name, false, AutoUpgradeV3==false)
                        until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("Humanoid") or AutoUpgradeV3 == false
                    end)
                end
            elseif Race == "Cyborg V2" then
                if not AnyDFInBackpack() then
                    repeat task.wait()
                        fruit = getFruitDuoi1M()
                        if fruit then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", fruit)
                        end
                    until AnyDFInBackpack()
                end
            elseif Race == "Mink V2" then
                ClaimQuestV3()
                local chest = GetNearestChest()
                if chest and Race ~= "Mink V3" then
                    topos(chest)
                    CountChest = CountChest + 30                    
                    if CountChest >= 30 then
                     UpV3NoTween()                        
                     DiscordLib:Notification("information" , "Completed Upgrade Race V3" , 10 ,11816162894 )
                     DiscordLib:Notification("information" , "Đã Sao Chép Link Facebook" , 10 ,11816162894 )
                    end
                end
            end
            if string.find(Race, "V3") or string.find(Race, "V4") then
                AutoUpgradeV3 = false
                DiscordLib:Notification("information" , "You don't have race v2 because you're" , 10 ,11816162894 )   
            end
        end
    end
end)       

Tabs.Se:AddSection("Kitsune Island")

    local Kitsune = Tabs.Se:AddParagraph({
        Title = "Kitsune Island",
        Content = ""
    })
    
    spawn(function()
        pcall(function()
            while wait() do
    if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
    Kitsune:SetDesc('Spawning ✅')
    else
      Kitsune:SetDesc('Not Spawning ❌' )
            end
               end
        end)
end)

Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Esp Kitsune", Default = false })

    Toggle:OnChanged(function(adep)
        KitsuneIslandEsp = adep
        while KitsuneIslandEsp do wait()
            UpdateIslandKisuneESP()   
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if KitsuneIslandEsp then
			    UpdateIslandKisuneESP()  
		    end
	    end
    end)

      local ToggleTPKitsune = Tabs.Se:AddToggle("ToggleTPKitsune", {Title = "Tween To Kitsune Island",Description = "", Default = false })
      ToggleTPKitsune:OnChanged(function(Value)
        _G.TweenToKitsune = Value
      end)
      Options.ToggleTPKitsune:SetValue(false)
      spawn(function()
        local kitsuneIsland
        while not kitsuneIsland do
            kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
            wait(1)
        end
        while wait() do
            if _G.TweenToKitsune then
                local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
                if shrineActive then
                    for _, v in pairs(shrineActive:GetDescendants()) do
                        if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                            Tween(v.CFrame)
                        end
                    end
                end
            end
        end
    end)
        
	spawn(function()
        pcall(function()
            while wait() do
                if _G.TweenToKitsune then
                    topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,0,10))
                end
            end
        end)
    end)
            
local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Auto Azuer Ember", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoAzuerEmber = Value
        end)    
spawn(function()
            while wait() do
                if _G.AutoAzuerEmber then
                    pcall(function()
                        if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                            topos(game.Workspace.EmberTemplate.Part.CFrame)
                        end
                    end)
                end
            end
        end)
local Slider = Tabs.Se:AddSlider("Slider", {
        Title = "Set Azure Ember",
        Description = "",
        Default = 25,
        Min = 10,
        Max = 25,
        Rounding = 5,
        Callback = function(Value)
            _G.SetToTradeAureEmber = Value
        end
    })

local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Auto Trade Azuer", Default = false })

    Toggle:OnChanged(function(Value)
        _G.TradeAureEmber = Value
        end)    

    spawn(function()
    while wait() do
        if _G.TradeAureEmber then
            pcall(function()
                local AzureAvilable = GetCountMaterials("Azure Ember")
                if AzureAvilable >= _G.SetToTradeAureEmber then
                    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KitsuneStatuePray")
                end
            end)
        end
    end
end)    
                                
    Tabs.Se:AddSection("Rough Sea")         
                
    Tabs.Se:AddParagraph({
        Title = "Events Game",
        Content = ""
    })
    
    Tabs.Se:AddButton({
        Title = "Buy boat",
        Description = "",
        Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat","PirateBrigade")
        end
    })
    
    Tabs.Se:AddButton({
        Title = "Remove Fog",
        Description = "",
        Callback = function()
        game:GetService("Lighting").BaseAtmosphere:Destroy()
        end
    })
    
    local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Remove Fog[ Sea 1 And Sea 2]", Default = false })

    Toggle:OnChanged(function(Value)
    RemoveFog = Value
        if not RemoveFog then return end
        while RemoveFog do wait()
            game.Lighting.FogEnd = 9e9
            if not RemoveFog then
                game.Lighting.FogEnd = 2500
            end
        end
    end)

local ListSeaBoat = {
        "Guardian",
        "Dinghy",
	    "PirateSloop",
    	"PirateBrigade",
    	"PirateGrandBrigade",
    	"MarineSloop",
    	"MarineBrigade",
    	"MarineGrandBrigade",
        "BeastHunter",
    }
    
local ListSeaZone = {
        "Zone 1",
        "Zone 2",
        "Zone 3",
        "Zone 4",
        "Zone 5",
        "Zone 6",
    }
    
local selectthuyen = Tabs.Se:AddDropdown("selectthuyen", {
	Title = "Select Boat",
	Values = ListSeaBoat,
	Multi = false,
	Default = SelectBoat,
})

selectthuyen:OnChanged(function(value)
	SelectBoat = value
end)
  
local selectthuyen = Tabs.Se:AddDropdown("selectthuyen", {
	Title = "Select Zone",
	Values = ListSeaZone,
	Multi = false,
	Default = _G.SelectLocalTeleportSea,
})

selectthuyen:OnChanged(function(value)
	_G.SelectLocalTeleportSea = value
end)
    
local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Auto Zone Beta", Default = false })

    Toggle:OnChanged(function(Value)
        _G.MatsuAutoDriveBoat = Value    
          StopTween(_G.MatsuAutoDriveBoat)
        end)
spawn(function()
        while wait() do
            pcall(function()
                if _G.MatsuAutoDriveBoat then
                    if not game:GetService("Workspace").Enemies:FindFirstChild("Shark") or not game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or not game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or not game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                        if not game:GetService("Workspace").Boats:FindFirstChild(SelectBoat) then
                            buyb = TPP(CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781))
                            if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                if buyb then buyb:Stop() end
                                local args = {
                                    [1] = "BuyBoat",
                                    [2] = SelectBoat
                                }
    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        elseif game:GetService("Workspace").Boats:FindFirstChild(SelectBoat) then
                            if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                TPP(game:GetService("Workspace").Boats[SelectBoat].VehicleSeat.CFrame * CFrame.new(0,1,0))
                            else
                                for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                    if v.Name == SelectBoat then
                                        repeat wait()
                                            if _G.SelectLocalTeleportSea == "Zone 1" then
				                        		TPB(CFrame.new(-22526.0098, -0.3221744, 1716.89185, -0.210707203, 1.100981e-07, 0.977549195, 2.74631451e-09, 1, -1.12034698e-07, -0.977549195, -2.09218598e-08, -0.210707203))
			                            	elseif _G.SelectLocalTeleportSea == "Zone 2" then
					                        	TPB(CFrame.new(-25645.3535, -0.3221744, 2554.41016, -0.334876329, -5.05522451e-08, 0.942262113, -3.13346469e-08, 1, 4.25136619e-08, -0.942262113, -1.52886308e-08, -0.334876329))
			                            	elseif _G.SelectLocalTeleportSea == "Zone 3" then
				                        		TPB(CFrame.new(-29842.2227, -0.3221744, 4070.85767, -0.270609587, 3.60968606e-08, 0.962689161, -4.47193429e-08, 1, -5.00663617e-08, -0.962689161, -5.65992657e-08, -0.270609587))
		                            		elseif _G.SelectLocalTeleportSea == "Zone 4" then
			                        			TPB(CFrame.new(-32654.7188, -0.3221744, 4788.14697, -0.183276221, 2.0033232e-08, 0.983061433, 3.66669433e-08, 1, -1.35424418e-08, -0.983061433, 3.35638504e-08, -0.183276221))
	                            			elseif _G.SelectLocalTeleportSea == "Zone 5" then
					                        	TPB(CFrame.new(-37813.6953, -0.3221744, 6105.16895, -0.252362996, 4.13621581e-09, 0.967632651, 2.87320709e-08, 1, 3.21888249e-09, -0.967632651, 2.86144175e-08, -0.252362996))
			                            	elseif _G.SelectLocalTeleportSea == "Zone 6" then
					                        	TPB(CFrame.new(-42250.2227, -0.3221744, 9247.07715, -0.45916447, 6.39043236e-08, 0.888351262, -3.36711423e-08, 1, -8.93395651e-08, -0.888351262, -7.09333605e-08, -0.45916447))
                                            end 
                                        until game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or _G.MatsuAutoDriveBoat == false
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
		pcall(function()
			while wait() do
				if _G.MatsuAutoDriveBoat then
					if game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
					    game.Players.LocalPlayer.Character.Humanoid.Sit = false
					end
				end
			end
		end)
	end)

local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "No Clip Rock", Default = true })

    Toggle:OnChanged(function(Value)
        _G.Nocliprock = Value
        StopTween(_G.Nocliprock)
    end)
spawn(function()
	while wait() do
		if _G.Nocliprock then
			if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
				for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
			elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
				for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == false then
						v.CanCollide = true
					end
				end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == false then
						v.CanCollide = true
					end
				end
			end
		end
	end
end)

local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Auto Dodge Rough Sea", Default = false })

    Toggle:OnChanged(function(dodge)
        RoughSea = dodge		
    end)

spawn(function()
    while task.wait() do
        if RoughSea then
            if WO.Locations:FindFirstChild("Rough Sea") then
                if not LP.Character.Humanoid.Sit then
                    topos(checkboat().VehicleSeat.CFrame)
                elseif LP.Character.Humanoid.Sit and (checkboat().VehicleSeat.Position - CFrame.new(-28464.876953125, 45.90665817260742, 6896.8076171875).Position).Magnitude >= 50 then
                    topos(CFrame.new(-28464.876953125, 45.90665817260742, 6896.8076171875),checkboat().VehicleSeat,350)
                end
            end
        end
    end
end)
    
SpeedTable = {
  "200",
  "250",
  "300",
  "350",
  "400",
  "450",
  "500",
  "550",
  "600"
 }
    
    local Dropdown = Tabs.Se:AddDropdown("Dropdown", {
        Title = "Selected Boat Speed",
        Values = SpeedTable,
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("300")

    Dropdown:OnChanged(function(Value)
        SetSpeedBoat = Value
    end)

local SpeedBoatToggle = Tabs.Se:AddToggle("SpeedBoat_Toggle", {Title = "Speed Boat", Default = false })
Options.SpeedBoat_Toggle:SetValue(false)

SpeedBoatToggle:OnChanged(function(value)
	_G.SpeedBoat = value
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if _G.SpeedBoat then
        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                v:FindFirstChild("VehicleSeat").MaxSpeed = SetSpeedBoat
            end
        end
    end
end)

local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Auto Kill Terror Shark", Default = false })

    Toggle:OnChanged(function(Value)
        _G.KillTerrorShark = Value
        UFFF = Value
        StopTween(_G.KillTerrorShark)
        end)

spawn(function()
        while wait() do 
            if _G.KillTerrorShark and World3 then
                pcall(function()                    
                    if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Shark")  or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Terrorshark" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        UFFF = true
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,40,10))
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
            if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Typhoon Splash") then
   topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0)); 
else
   topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0));
end
                                    until not _G.KillTerrorShark or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else 
                      topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))		                       
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do                                 
                            if v.Name == "Terrorshark" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                           else   
                           game:GetService("Workspace").Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                        end
                    end
                end)
            end
        end
    end)    
    
    spawn(function()
while wait() do 
    if _G.dao then
         pcall(function()
    if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then 
		             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat","PirateBrigade")
		          end
        end)
    end
    end
end)
               
    spawn(function()
	while wait() do 
		if _G.dao then		
				if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
		TPB(CFrame.new(-25351.8418, 10.7575607, 26430.791, -0.998379767, -0.00721008703, -0.0564435199, -0.00722159958, 0.999973953, -1.53919405e-10, 0.0564420484, 0.000407612359, -0.998405814))		
		  end
		end
	end
end)   
 
local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Kill Sea Beast", Default = false })

    Toggle:OnChanged(function(Value)
        _G.SeaBeasts1 = Value
		StopTween(_G.SeaBeasts1)
    end)
    
    local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {...}
    if tostring(method) == "FireServer" then
        if tostring(args[1]) == "RemoteEvent" then
            if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                if Skillaimbot then
                    args[2] = AimBotSkillPosition
                    return old(unpack(args))
                end
            end
        end
    end
    return old(...)
end)

spawn(function()
    while wait() do
		pcall(function()
			if AutoSkill then
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
			end
		end)
    end
    end)
    
    spawn(function()
        while wait() do
            if _G.SeaBeasts1 then
                pcall(function()  
                      if game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
                    for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
						if v:FindFirstChild("HumanoidRootPart") then
                            repeat wait()                
					        AutoHaki()
					        topos(v.HumanoidRootPart.CFrame * CFrame.new(1,PosC,45))
					        EquipAllWeapon()  
					        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                            AutoSkill = true
                            AimBotSkillPosition = v.HumanoidRootPart
                            Skillaimbot = true
                            until not _G.SeaBeasts1 or not v:FindFirstChild("HumanoidRootPart") 
                            AutoSkill = false
                            Skillaimbot = false                            
                        end
                    end
                    else
                   topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))
                    end
                end)
            end
        end
    end)
    
    local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Turn On Sea Kill Beast", Default = false })

    Toggle:OnChanged(function(Value)
        _G.SkipSeaBeast = Value
    end)
    
    spawn(function()
        while wait() do
        pcall(function()
            if _G.SeaBeasts1 and  not _G.SkipSeaBeast then
                PosC = 450
                end
                if _G.SeaBeasts1 and _G.SkipSeaBeast then
                PosC = 4000
                end
            end)
        end
    end)
        
local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Auto Kill Shark", Default = false })

    Toggle:OnChanged(function(Value)
        _G.KillShark = Value
        StopTween(_G.KillShark)
    end)
    
    spawn(function()
        while wait() do 
            if _G.KillShark and World3 and _G.SailBoat then
                pcall(function()                    
                    if game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Shark" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,40,10))
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    until not _G.KillShark or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else        
                      topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))		                
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if not v.Name == "Shark" then
                                game:GetService("Workspace").Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            elseif v.Name == "Shark" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))                                   
                            end
                        end
                    end
                end)
            end
        end
    end)    
    
    local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Auto Kill Piranha", Default = false })

    Toggle:OnChanged(function(Value)
        _G.KillPiranha = Value
        StopTween(_G.KillPiranha)
    end)
    
    spawn(function()
        while wait() do 
            if _G.KillPiranha and World3 then
                pcall(function()                    
                    if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Piranha" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,40,10))
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    until not _G.KillPiranha or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                      topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))		                        
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if not v.Name == "Piranha" then
                                game:GetService("Workspace").Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            elseif v.Name == "Piranha" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))   
                            end
                        end
                    end
                end)
            end
        end
    end)    
    
    local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Auto Kill Fish Crew Member", Default = false })

    Toggle:OnChanged(function(Value)
        _G.KillFishCrew = Value
        StopTween(_G.KillFishCrew)
        end)
        
        spawn(function()
        while wait() do 
            if _G.KillFishCrew and World3 then
                pcall(function()                    
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fish Crew Member" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,40,10))
                                        MonFarm = v.Name                
                                        PosMon = v.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    until not _G.KillFishCrew or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                      topos(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0, -1, 0))		
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if not v.Name == "Fish Crew Member" then
                                game:GetService("Workspace").Boats.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                        end
                    end
                end)
            end
        end
    end)    
    
local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Auto Kill Raid Ship", Default = false })

Toggle:OnChanged(function(Value)
        _G.KillGhostShip = Value
        StopTween(_G.KillGhostShip)
    end)
        
        spawn(function()
    while wait() do
        if _G.KillGhostShip then
            pcall(function()
                if CheckPirateBoat() then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,32,false,game)
                    wait(.5)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,32,false,game)
                    local v = CheckPirateBoat()
                    repeat
                        wait()
                        topos(v.Engine.CFrame * CFrame.new(0,20, 0))
                        AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                        Skillaimbot = true
                        AutoSkill = false
                    until not v or not v.Parent or v.Health.Value <= 0 or not CheckPirateBoat()
                    Skillaimbot = true
                    AutoSkill = false
                end
            end)
        end
    end
end)    
    
local Toggle = Tabs.Se:AddToggle("MyToggle", {Title = "Auto Kill Ghost Ship", Default = false })

    Toggle:OnChanged(function(Value)
        _G.bjirFishBoat = Value
        end)
       
spawn(function()
    while wait() do
        pcall(function()
            if _G.bjirFishBoat then
                if CheckPirateBoat() then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                    wait(0.5)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                    local v = CheckPirateBoat()
                    repeat
                        wait()
                        topos(v.Engine.CFrame * CFrame.new(0, 30, 0))
                        AutoSkill = true
                        Skillaimbot = true
                        AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                    until v.Parent or v.Health.Value <= 0 or not CheckPirateBoat()
                    AutoSkill = false
                    Skillaimbot = false
                end
            end
        end)
    end
end)
    
    spawn(function()
        while wait() do
            if _G.bjirFishBoat then
                   pcall(function()
						if CheckPirateBoat() then
						    AutoHaki()
							game:GetService("VirtualUser"):CaptureController()
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
					        game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.6)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
                    end)
                end
        end
          end)
                 
   Tabs.Migare:AddSection("Mirage Island")
   
    Tabs.Se:AddParagraph({
        Title = "Mirage Island",
        Content = ""
    })
    
    local Mirragecheck = Tabs.Migare:AddParagraph({
        Title = "Mirrage Island",
        Content = ""
    })
    
    spawn(function()
        pcall(function()
            while wait() do
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
    Mirragecheck:SetDesc('Spawning ✅')
    else
      Mirragecheck:SetDesc('Not Spawning ❌' )end
            end
        end)
end)
    
    local Toggle = Tabs.Migare:AddToggle("MyToggle", {Title = "Auto Zone Summon Mirage Island", Default = false })

    Toggle:OnChanged(function(Value)
        _G.MatsuAutoDriveBoat = Value
        StopTween(_G.MatsuAutoDriveBoat)
    end)

local Toggle = Tabs.Migare:AddToggle("MyToggle", {Title = "Look Moon + Auto V3", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoDooHee = Value
        end)
        
        local virtualInputManager = game:GetService("VirtualInputManager")
spawn(function()
    while wait() do
        pcall(function()
            if getgenv()._G.AutoDooHee then
                local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
                wait(2)
                virtualInputManager:SendKeyEvent(true, "T", false, game)
                wait(0.1)
                virtualInputManager:SendKeyEvent(false, "T", false, game)
            end
        end)
    end
end)

local Toggle = Tabs.Migare:AddToggle("MyToggle", {Title = "Tween Gear", Default = false })

    Toggle:OnChanged(function(Value)
        _G.TweenMGear = Value
		StopTween(_G.TweenMGear)
        end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenMGear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material ==  Enum.Material.Neon then  
                                topos(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
    end)
    
Tabs.Migare:AddButton({
        Title = "Tween Advanced Fruit Dealer",
        Description = "",
        Callback = function()            
        TweenNpc()
        end
    })    
function TweenNpc()
                    repeat
                        wait()
                    until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        AllNPCS = getnilinstances()
                        for r, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                            table.insert(AllNPCS, v)
                        end
                        for r, v in pairs(AllNPCS) do
                            if v.Name == "Advanced Fruit Dealer" then
                                topos(v.HumanoidRootPart.CFrame)
                                end
                            end
                        end
                    end 


Toggle = Tabs.Migare:AddToggle("MyToggle", {Title = "Esp Mirage island", Default = false })

    Toggle:OnChanged(function(cha)
        MirageIslandESP = cha
        while MirageIslandESP do wait()
            UpdateIslandMirageESP()   
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if MirageIslandESP then
			    UpdateIslandMirageESP()   
		    end
	    end
    end)
    
                   
local Toggle = Tabs.Migare:AddToggle("MyToggle", {Title = "Auto Farm Chest Mirage", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoChestMirage = Value
	    StopTween(_G.AutoChestMirage)
        end)

_G.MagnitudeAdd = 0
spawn(function()
	while wait() do 
		if _G.AutoChestMirage then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v.Name:find("Chest") then
					if game:GetService("Workspace"):FindFirstChild(v.Name) then
						if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
							repeat wait()
								if game:GetService("Workspace"):FindFirstChild(v.Name) then
									topos(v.CFrame)
								end
							until _G.AutoChestMirage == false or not v.Parent
							topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							_G.MagnitudeAdd = _G.MagnitudeAdd+1500
							break
						end
					end
				end
			end
		end
	end
end)
    
spawn(function()
            while wait() do
                if _G.AutoFrozenDimension then
                    pcall(function()
                        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                            topos(game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension').HumanoidRootPart.CFrame * CFrame.new(0,500,-100))
                        end
                    end)
                end
            end
        end)    

local UserStat = Tabs.spl:AddParagraph({
    Title = "Start number",
    Content = "MELEEr: "..game.Players.localPlayer.Data.Stats.Melee.Level.Value..
"\nDEFENSE : "..game.Players.localPlayer.Data.Stats.Defense.Level.Value..
"\nSWORD : "..game.Players.localPlayer.Data.Stats.Sword.Level.Value..
"\nGUN : "..game.Players.localPlayer.Data.Stats.Gun.Level.Value..
"\nFRUIT : "..game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value..""
})
    
    local Cuto = {
  "1",
  "2",
  "3",
  "5",
  "10",
  "15",
  "20",
  "25",
  "30",
  "45",
  "50",
  "100",
  "999999"
}
PointStats = "20"
local Dropdown = Tabs.spl:AddDropdown("Dropdown", {
        Title = "Select Start",
        Values = Cuto,
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue(PointStats)

    Dropdown:OnChanged(function(Value)
        PointStats = Value
          if Value == false then
          wait(.1)
        end
    end)
      
spawn(function()
	while wait() do
		if game.Players.localPlayer.Data.Points.Value <= PointStats then
			if melee then
				local args = {
					[1] = "AddPoint",
					[2] = "Melee",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if defense then
				local args = {
					[1] = "AddPoint",
					[2] = "Defense",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if sword then
				local args = {
					[1] = "AddPoint",
					[2] = "Sword",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if gun then
				local args = {
					[1] = "AddPoint",
					[2] = "Gun",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if demonfruit then
				local args = {
					[1] = "AddPoint",
					[2] = "Demon Fruit",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
		end;
	end;
end);
    
    PosY = 35
        
local ToggleMelee = Tabs.spl:AddToggle("ToggleMelee", {Title = "Auto Melee",Description = "", Default = false })
ToggleMelee:OnChanged(function(Value)
    _G.Auto_Stats_Melee = Value
    end)
Options.ToggleMelee:SetValue(false)



local ToggleDe = Tabs.spl:AddToggle("ToggleDe", {Title = "Auto Defense",Description = "", Default = false })
ToggleDe:OnChanged(function(Value)
    _G.Auto_Stats_Defense = Value
    end)
Options.ToggleDe:SetValue(false)



local ToggleSword = Tabs.spl:AddToggle("ToggleSword", {Title = "Auto Sword",Description = "", Default = false })
ToggleSword:OnChanged(function(Value)
    _G.Auto_Stats_Sword = Value
    end)
Options.ToggleSword:SetValue(false)



local ToggleGun = Tabs.spl:AddToggle("ToggleGun", {Title = "Auto Gun", Description = "",Default = false })
ToggleGun:OnChanged(function(Value)
    _G.Auto_Stats_Gun = Value
    end)
Options.ToggleGun:SetValue(false)


local Toggle = Tabs.spl:AddToggle("Toggle", {Title = "Auto Demon Fruit",Description = "", Default = false })
Toggle:OnChanged(function(Value)
    _G.Auto_Stats_Devil_Fruit = Value
    end)
Options.Toggle:SetValue(false)


spawn(function()
    while wait() do
        if _G.Auto_Stats_Devil_Fruit then
            local args = {
                [1] = "AddPoint",
                [2] = "Demon Fruit",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Gun then
            local args = {
                [1] = "AddPoint",
                [2] = "Gun",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)


spawn(function()
    while wait() do
        if _G.Auto_Stats_Sword then
            local args = {
                [1] = "AddPoint",
                [2] = "Sword",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Defense then
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)


spawn(function()
    while wait() do
        if _G.Auto_Stats_Melee then
            local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end) 

spawn(function()
	local gt = getrawmetatable(game)
	local old = gt.__namecall
	setreadonly(gt,false)
	gt.__namecall = newcclosure(function(...)
		local args = {...}
		if getnamecallmethod() == "InvokeServer" then 
			if SelectWeaponGun then
				if SelectWeaponGun == "Soul Guitar" then
					if tostring(args[2]) == "TAP" then
						if Auto_Farm_Gun_Mastery and UseSkillMasteryGun then
							args[3] = PositionSkillMasteryGun
						end
					end
				end
			end
		end
		return old(unpack(args))
	end)
	setreadonly(gt,true)
end)

LPH_NO_VIRTUALIZE(function()
	spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectWeaponGun = v.Name
					end
				end
			end
		end
	end)
end)()

local MiscFarm = Tabs.Lc:AddSection("Players Kill")
    
local Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end
    
    local Dropdown = Tabs.playerpvp:AddDropdown("Dropdown", {
        Title = "Select Player",
        Values = Playerslist,
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("nil")

    Dropdown:OnChanged(function(TGB)
        _G.SelectPly = TGB
    end)   

Tabs.playerpvp:AddButton({
    Title = "Refresh Player",
    Description = "",
    Callback = function()
        table.clear(Playerslist)
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(Playerslist,v.Name)
        end
    end
})

    local Toggle = Tabs.playerpvp:AddToggle("Toggle", {Title = "Spectate Selected Player",Description = "", Default = false })
Toggle:OnChanged(function(ytb)
     SpectatePlys = ytb
    local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
    local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
    repeat wait(.1)
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
    until SpectatePlys == false 
    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)

local Toggle = Tabs.playerpvp:AddToggle("MyToggle", {Title = "Teleport Player", Default = false })
  Toggle:OnChanged(function(AFG)
  _G.TeleportPly = AFG
    if Value == false then
        wait()
        AutoHaki()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)

spawn(function()
	while wait() do
		if _G.TeleportPly then
			pcall(function()
				if game.Players:FindFirstChild(_G.SelectPly) then
					topos(game.Players[_G.SelectPly].Character.HumanoidRootPart.CFrame)
				end
			end)
		end
	end
end)

Toggle = Tabs.playerpvp:AddToggle("MyToggle", {Title = "Auto Kill Player", Default = false })

    Toggle:OnChanged(function(Value)
        _G.Auto_Kill_Ply = Value
		StopTween(_G.Auto_Kill_Ply)		
    end)
    
spawn(function()
        while wait() do
            if _G.Auto_Kill_Ply then
                pcall(function()
                    if _G.SelectPly ~= nil then 
                        if game.Players:FindFirstChild(_G.SelectPly) then
                            if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false
                                    topos(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
                                    spawn(function()
                                        pcall(function()
                                            if _G.SelectWeapon == SelectWeaponGun then
                                                local args = {
                                                    [1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
                                                    [2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                            else
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            end
                                        end)
                                    end)
                                until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPly) or not _G.Auto_Kill_Ply
                            end
                        end
                    end
                end)
            end
        end
    end)

QuestPlayer = Tabs.playerpvp:AddSection("Quest Player")

spawn(function()
        while wait() do
            pcall(function()
                local MaxDistance = math.huge
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                        local Distance = v:DistanceFromCharacter(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
                        if Distance < MaxDistance then
                            MaxDistance = Distance
                            PlayerSelectAimbot = v.Name
                        end
                    end
                end
            end)
        end
    end)

Tabs.playerpvp:AddButton({
        Title = "Get Quest Elite Players",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
    end
    })
    
Toggle = Tabs.playerpvp:AddToggle("MyToggle", {Title = "Auto Kill Player Quest", Default = false })

    Toggle:OnChanged(function(que)
        _G.AutoPlayerHunter = que
		StopTween(_G.AutoPlayerHunter)		
    end)
   
 spawn(function()
		game:GetService("RunService").Heartbeat:connect(function()
			pcall(function()
				if _G.AutoPlayerHunter then
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
						game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end
			end)
		end)
	end)

	   spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoPlayerHunter then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                end
            end
        end)
    end)

	spawn(function()
		while wait() do
			if _G.AutoPlayerHunter then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
				else
					for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
							repeat wait()
								AutoHaki()
								EquipWeapon(_G.SelectWeapon)
								Useskill = true
								topos(v.HumanoidRootPart.CFrame * CFrame.new(1,7,3))								
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until _G.AutoPlayerHunter == false or v.Humanoid.Health <= 0
							Useskill = false
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
					end
				end
			end
		end
	end)

Player = Tabs.playerpvp:AddSection("Aimbot")

Toggle = Tabs.playerpvp:AddToggle("MyToggle", {Title = "Aimbot Skill Gun", Default = false })

    Toggle:OnChanged(function(memaybeo)
        _G.Aimbot_Gun = memaybeo
		StopTween(_G.Aimbot_Gun)		
    end)
    
    
    spawn(function()
        while task.wait() do
            if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
                pcall(function()
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
                        [2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
                    }
                    game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                end)
            end
        end
    end)
    
    
Toggle = Tabs.playerpvp:AddToggle("MyToggle", {Title = "Aim Bot Skill Nearest", Default = false })

    Toggle:OnChanged(function(siuugay)
        AimSkillNearest = siuugay
		StopTween(AimSkillNearest)		
    end)

spawn(function()
	while wait(.1) do
		pcall(function()
			local MaxDistance = math.huge
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name ~= game.Players.LocalPlayer.Name then
					local Distance = v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
					if Distance < MaxDistance then
						MaxDistance = Distance
						TargetPlayerAim = v.Name
					end
				end
			end
		end)
	end
end)

spawn(function()
	pcall(function()
		game:GetService("RunService").RenderStepped:connect(function()
			if AimSkillNearest and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
				local args = {
					[1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
				}
				game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
			end
		end)
	end)
end)
    
Toggle = Tabs.playerpvp:AddToggle("MyToggle", {Title = "Aimbot All Skill", Default = false })

    Toggle:OnChanged(function(que)
        _G.Aimbot_Skill = que
		StopTween(_G.Aimbot_Skill)		
    end)

spawn(function()
        pcall(function()
            while task.wait() do
                if _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
                    }
                    
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
                end
            end
        end)
    end)
    
Toggle = Tabs.playerpvp:AddToggle("MyToggle", {Title = "Enable PvP", Default = false })

    Toggle:OnChanged(function(calli)
        _G.EnabledPvP = calli
		StopTween(_G.EnabledPvP)		
    end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.EnabledPvP then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                end
            end
        end)
    end)    

Toggle = Tabs.playerpvp:AddToggle("MyToggle", {Title = "Auto Teleport To Up", Default = false })

    Toggle:OnChanged(function(calli)
        _G.Safe_Mode = calli
		StopTween(_G.Safe_Mode)		
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.Safe_Mode then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,200,0)
                end
            end
        end)
    end)

Tabs.playerpvp:AddButton({
        Title = "Respawn",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
        wait()
    end
   })    

local MiscFarm = Tabs.Lc:AddSection("World Teleport")			
							
    Tabs.Lc:AddButton({
        Title = "Teleport Old World",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
    })
    
    Tabs.Lc:AddButton({
        Title = "Teleport New World",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    })
    
    Tabs.Lc:AddButton({
        Title = "Teleport Third Sea",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
    })

 local MiscFarm = Tabs.Lc:AddSection("Teleport Island")
    
    if World1 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Select island",
        Values = {"WindMill",
                      "Marine",
                      "Middle Town",
                      "Jungle",
                      "Pirate Village",
                      "Desert",
                      "Snow Island",
                      "MarineFord",
                      "Colosseum",
                      "Sky Island 1",
                      "Sky Island 2",
                      "Sky Island 3",
                      "Prison",
                      "Magma Village",
                      "Under Water Island",
                      "Fountain City",
                      "Shank Room",
                      "Mob Island"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectIsland = Value
    end)
    end
    if World2 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Select island",
        Values = {"The Cafe",
                                "Frist Spot",
                                "Dark Area",
                                "Flamingo Mansion",
                                "Flamingo Room",
                                "Green Zone",
                                "Factory",
                                "Colossuim",
                                "Zombie Island",
                                "Two Snow Mountain",
                                "Punk Hazard",
                                "Cursed Ship",
                                "Ice Castle",
                                "Forgotten Island",
                                "Ussop Island",
                                "Mini Sky Island"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectIsland = Value
    end)
    end
    if World3 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Select island",
        Values = {"Mansion",
                                          "Port Town",
                                          "Great Tree",
                                          "Castle On The Sea",
                                          "MiniSky", 
                                          "Hydra Island",
                                          "Floating Turtle",
                                          "Haunted Castle",
                                          "Ice Cream Island",
                                          "Peanut Island",
                                          "Cake Island",
                                          "Cocoa Island",
                                          "Candy Island",
"Tiki Outpost"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectIsland = Value
    end)
    end
    local Toggle = Tabs.Lc:AddToggle("MyToggle", {Title = "Tele Island[Tween]", Default = false })

    Toggle:OnChanged(function(Value)
        _G.TeleportIsland = Value
		if _G.TeleportIsland == true then
		    repeat wait()
		        if _G.SelectIsland == "WindMill" then
		            topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
		        elseif _G.SelectIsland == "Marine" then
		            topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
		        elseif _G.SelectIsland == "Middle Town" then
		            topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
		        elseif _G.SelectIsland == "Jungle" then
		            topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
		        elseif _G.SelectIsland == "Pirate Village" then
		            topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
		        elseif _G.SelectIsland == "Desert" then
		            topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
		        elseif _G.SelectIsland == "Snow Island" then
		            topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
		        elseif _G.SelectIsland == "MarineFord" then
		            topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
		        elseif _G.SelectIsland == "Colosseum" then
		            topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
		        elseif _G.SelectIsland == "Sky Island 1" then
		            topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
		        elseif _G.SelectIsland == "Sky Island 2" then  
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
		        elseif _G.SelectIsland == "Sky Island 3" then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		        elseif _G.SelectIsland == "Prison" then
		            topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
		        elseif _G.SelectIsland == "Magma Village" then
		            topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
		        elseif _G.SelectIsland == "Under Water Island" then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		        elseif _G.SelectIsland == "Fountain City" then
		            topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
		        elseif _G.SelectIsland == "Shank Room" then
		            topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
		        elseif _G.SelectIsland == "Mob Island" then
		            topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
		        elseif _G.SelectIsland == "The Cafe" then
		            topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
		        elseif _G.SelectIsland == "Frist Spot" then
		            topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
		        elseif _G.SelectIsland == "Dark Area" then
		            topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
		        elseif _G.SelectIsland == "Flamingo Mansion" then
		            topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
		        elseif _G.SelectIsland == "Flamingo Room" then
		            topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
		        elseif _G.SelectIsland == "Green Zone" then
		            topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
		        elseif _G.SelectIsland == "Factory" then
		            topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
		        elseif _G.SelectIsland == "Colossuim" then
		            topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
		        elseif _G.SelectIsland == "Zombie Island" then
		            topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
		        elseif _G.SelectIsland == "Two Snow Mountain" then
		            topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
		        elseif _G.SelectIsland == "Punk Hazard" then
		            topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
		        elseif _G.SelectIsland == "Cursed Ship" then
		            topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
		        elseif _G.SelectIsland == "Ice Castle" then
		            topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
		        elseif _G.SelectIsland == "Forgotten Island" then
		            topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
		        elseif _G.SelectIsland == "Ussop Island" then
		            topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
		        elseif _G.SelectIsland == "Mini Sky Island" then
		            topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
		        elseif _G.SelectIsland == "Great Tree" then
		            topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
		        elseif _G.SelectIsland == "Castle On The Sea" then
		            topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
		        elseif _G.SelectIsland == "MiniSky" then
		            topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
		        elseif _G.SelectIsland == "Port Town" then
		            topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
		        elseif _G.SelectIsland == "Hydra Island" then
		            topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
		        elseif _G.SelectIsland == "Floating Turtle" then
		            topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
		        elseif _G.SelectIsland == "Mansion" then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
		        elseif _G.SelectIsland == "Haunted Castle" then
		            topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
		        elseif _G.SelectIsland == "Ice Cream Island" then
		            topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
		        elseif _G.SelectIsland == "Peanut Island" then
		            topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
		        elseif _G.SelectIsland == "Cake Island" then
		            topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
		        elseif _G.SelectIsland == "Cocoa Island" then
		            topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
		        elseif _G.SelectIsland == "Candy Island" then
		            topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
		elseif _G.SelectIsland == "Tiki Outpost" then
		topos(CFrame.new(-16101.1885, 12.8422165, 380.942291, 0.194113985, 1.39194061e-08, -0.980978966, -9.82904691e-09, 1, 1.22443504e-08, 0.980978966, 7.26528837e-09, 0.194113985))
		        end
		    until not _G.TeleportIsland
		end
		StopTween(_G.TeleportIsland)
    end)
  
    if World1 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Select island",
        Values = {"WindMill",
                      "Marine",
                      "Middle Town",
                      "Jungle",
                      "Pirate Village",
                      "Desert",
                      "Snow Island",
                      "MarineFord",
                      "Colosseum",
                      "Sky Island 1",
                      "Sky Island 2",
                      "Sky Island 3",
                      "Prison",
                      "Magma Village",
                      "Under Water Island",
                      "Fountain City",
                      "Shank Room",
                      "Mob Island"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectWarp = Value
    end)
    end
    if World2 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Select island",
        Values = {"The Cafe",
                                "Frist Spot",
                                "Dark Area",
                                "Flamingo Mansion",
                                "Flamingo Room",
                                "Green Zone",
                                "Factory",
                                "Colossuim",
                                "Zombie Island",
                                "Two Snow Mountain",
                                "Punk Hazard",
                                "Cursed Ship",
                                "Ice Castle",
                                "Forgotten Island",
                                "Ussop Island",
                                "Mini Sky Island"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectWarp = Value
    end)
    end
    if World3 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Select island",
        Values = {"Mansion",
                                          "Port Town",
                                          "Great Tree",
                                          "Castle On The Sea",
                                          "MiniSky", 
                                          "Hydra Island",
                                          "Floating Turtle",
                                          "Haunted Castle",
                                          "Ice Cream Island",
                                          "Peanut Island",
                                          "Cake Island",
                                          "Cocoa Island",
                                          "Candy Island",
"Tiki Outpost"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectWarp = Value
    end)
    end
    Tabs.Lc:AddButton({
        Title = "Tele [Bp]",
        Description = "",
        Callback = function()
            if _G.TeleportWarp == "Manslon" then
                elseif _G.SelectWarp == "WindMill" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Marine" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Middle Town" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Jungle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Pirate Village" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Desert" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Snow Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "MarineFord" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Colosseum" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Sky Island 1" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Prison" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Magma Village" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Under Water Island" then
					wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectWarp == "Fountain City" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Shank Room" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mob Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "The Cafe" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Frist Spot" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Dark Area" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Flamingo Mansion" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Flamingo Room" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2284.4140625, 15.152037620544, 875.72534179688)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Green Zone" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Factory" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Colossuim" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")      
                elseif _G.SelectWarp == "Zombie Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint") 
                elseif _G.SelectWarp == "Two Snow Mountain" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")    
                elseif _G.SelectWarp == "Punk Hazard" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cursed Ship" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(923.40197753906, 125.05712890625, 32885.875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ice Castle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Forgotten Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ussop Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mini Sky Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-288.74060058594, 49326.31640625, -35248.59375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Great Tree" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Castle On The Sea" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5085.23681640625, 316.5072021484375, -3156.202880859375)
                elseif _G.SelectWarp == "MiniSky" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Port Town" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Hydra Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5749.7861328125, 611.9736938476562, -276.2497863769531)
                elseif _G.SelectWarp == "Floating Turtle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mansion" then
					wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Haunted Castle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ice Cream Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Peanut Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cake Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Sea to Treats Old" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(508.21466064453125, 25.07753562927246, -12438.2294921875) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cake Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1141.0223388671875, 47.25519561767578, -14204.609375) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					elseif _G.SelectWarp == "Tiki Outpost" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16101.1885, 12.8422165, 380.942291, 0.194113985, 1.39194061e-08, -0.980978966, -9.82904691e-09, 1, 1.22443504e-08, 0.980978966, 7.26528837e-09, 0.194113985) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                 end
        end
    }) 
    
 Tabs.RC:AddSection("Auto Quest Teleport")
 
     local FM = Tabs.RC:AddParagraph({
        Title = "Moon",
        Content = ""
    })
    
    task.spawn(function()
            while task.wait() do
                pcall(function()
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        FM:SetDesc("Moon: 5/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        FM:SetDesc("Moon: 4/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        FM:SetDesc("Moon: 3/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        FM:SetDesc("Moon: 2/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        FM:SetDesc("Moon: 1/5")
                    else
                        FM:SetDesc("Moon: 0/5")
                    end
                end)
            end
    end)
            
Tabs.RC:AddButton({
        Title = "Reset Character",
        Description = "",
        Callback = function()            
game.Players.LocalPlayer.Character.Head:Destroy()
        end
    })
       
Tabs.RC:AddButton({
        Title = "Teleport Temple Of Time",
        Description = "",
        Callback = function()            
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        end
 
   })

Tabs.RC:AddButton({
        Title = "Teleport Lever Pull",
        Description = "",
        Callback = function()            
             topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
        end
    })
    
    Tabs.RC:AddButton({
        Title = "Teleport To The Clock",
        Description = "",
        Callback = function()            
             topos(CFrame.new(29553.7812, 15066.6133, -88.2750015, 1, 0, 0, 0, 1, 0, 0, 0, 1))
        end
    })

local Toggle = Tabs.RC:AddToggle("MyToggle", {Title = "Quest Buy Gear", Default = false })

    Toggle:OnChanged(function(Value)
        _G.Auto_Farm_Bone4 = Value
		StopTween(_G.Auto_Farm_Bone4)
    end)

spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_Farm_Bone4 then
    local args = {
    [1] = true
}

local args = {
    [1] = "UpgradeRace",
    [2] = "Buy"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
            end
end 
end)  
end)

local Toggle = Tabs.RC:AddToggle("MyToggle", {Title = "Disable Inf Stairs", Default = false })

    Toggle:OnChanged(function(Value)
        game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = Value
    end)

Tabs.RC:AddButton({
    Title = "Auto Race Door",
    Description = "",
    Callback = function()
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
        wait(0.1)
           Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
           wait(0.1)
              Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
              wait(0.1)
                 Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
            wait(0.5)
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    topos(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    topos(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    topos(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    topos(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    topos(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    topos(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                    end
    end
})

Tabs.RC:AddButton({
        Title = "Buy Acient One Quest",
        Description = "",
        Callback = function()            
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace','Buy')
        end
    })
   
Tabs.RC:AddSection("Auto Trial Complete V4")

Tabs.RC:AddParagraph({
        Title = "Trial Race",
        Content = "RACE V4 TRIALS"
    })

local Toggle = Tabs.RC:AddToggle("MyToggle", {Title = "Auto Trial Human Ghost", Default = false })

    Toggle:OnChanged(function(Value)
        _G.autokillaura = Value
		StopTween(_G.autokillaura)
    end)
    
local Toggle = Tabs.RC:AddToggle("MyToggle", {Title = "Auto Trial Shanks", Default = false })

    Toggle:OnChanged(function(Value)
        _G.Auto_Seabest = Value
		StopTween(_G.Auto_Seabest)
    end)

local Toggle = Tabs.RC:AddToggle("MyToggle", {Title = "Auto Trial All Race", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoQuestRace = Value
		StopTween(_G.AutoQuestRace)
    end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
             if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            pcall(function()
                                repeat wait(.1)
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                            end)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
                        if v.Name ==  "snowisland_Cylinder.081" then
                            topos(v.CFrame* CFrame.new(0,0,0))
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                        if v.Name ==  "HumanoidRootPart" then
                            topos(v.CFrame* Pos)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                    
                            wait(0.5)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(0.5)
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            pcall(function()
                                repeat wait(.1)
                                    v.Humanoid.Health = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                            end)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.Name == "StartPoint" then
                            topos(v.CFrame* CFrame.new(0,3,0))
                            if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                                _G.AutoQuestRace = false
                                StopTween(_G.AutoQuestRace)
                                end
                            end
                          end
                       end
                end
            end
        end
    end)
end)

local Toggle = Tabs.RC:AddToggle("MyToggle", {Title = "Auto Kill Player V4", Default = false })

Toggle:OnChanged(function(Value)
        ProjectTrialPro = Value
        _G.AUTOKen = Value
		StopTween(ProjectTrialPro)
    end)

spawn(function()
    while task.wait() do 
        pcall(function()
            if ProjectTrialPro then
                for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    local player = game.Players.LocalPlayer
                    local character = player.Character                    
                    if v.Name ~= player.Name and (v.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude <= 450 then
                        if v.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                NameTarget = v.Name
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(1,1,10))
                                v.HumanoidRootPart.CanCollide = false
                                ProjectXTrial = true
                                UsefastattackPlayers = true
                                Click()                                
                            until not ProjectTrialPro or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
        end)
    end
end)
spawn(
    function()
        while wait() do
            if ProjectXTrial then
                pcall(
                    function()
                        ac = aQ.activeController
                        ac:attack()
                        AttackFunctgggggion()
                        ac.hitboxMagnitude = 55
                        wait(.1)
                    end
                )
            end
        end
    end
)

spawn(function()
    while wait(0.2) do
        pcall(function()
            if _G.XaiSkillZ and ProjectTrialPro then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
            end
            if _G.XaiSkillX and ProjectTrialPro then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
            end
            if _G.XaiSkillC and ProjectTrialPro then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
            end
        end)
    end
end)

Tabs.RC:AddSection("Auto Skill Trial V4")

local Toggle = Tabs.RC:AddToggle("MyToggle", {Title = "Auto Skill Z", Default = false })

Toggle:OnChanged(function(Value)
        _G.XaiSkillZ = Value       
    end)
    
local Toggle = Tabs.RC:AddToggle("MyToggle", {Title = "Auto Skill X", Default = false })

Toggle:OnChanged(function(Value)
        _G.XaiSkillX = Value       
    end)
 
local Toggle = Tabs.RC:AddToggle("MyToggle", {Title = "Auto Skill C", Default = false })

Toggle:OnChanged(function(Value)
        _G.XaiSkillC = Value       
    end)    

Tabs.RC:AddSection("Ancient Quests")

local Toggle = Tabs.RC:AddToggle("MyToggle", {Title = "Auto Ancient One Quest", Default = false })

Toggle:OnChanged(function(Value)
  _G.TrainGear = Value
    StardFarm = Value
    StopTween(_G.TrainGear)          
  end)

	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.TrainGear then
					if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
						StardFarm = false;
						topos(CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625));
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			if StardFarm and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))									
									until not StardFarm or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625));
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.TrainGear then
					if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
						StardFarm = true;
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.TrainGear then
					(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Y", false, game);
					wait(0.1);
					(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Y", false, game);
				end;
			end);
		end;
	end);


Tabs.RC:AddButton({
        Title = "Teleport Acient One",
        Description = "",
        Callback = function()            
             topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
        end
    })

local Toggle = Tabs.RC:AddToggle("MyToggle", {Title = "Auto Buy Gear", Default = true })

    Toggle:OnChanged(function(Value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace','Buy')
    end)

Tabs.raid:AddParagraph({
        Title = "Dungeon",
        Content = "Awaken Fruit"
    })
    
local TimeRaid =  Tabs.raid:AddParagraph({
        Title = "Time Left : ",
        Content = ""
    })
    
spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                TimeRaid:SetTitle("" .. game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
            else
                TimeRaid:SetTitle("Time Left : Wait For Dungeon")
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 5') then
    TimeRaid:SetDesc('Status : Island 5')
elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 4') then
    TimeRaid:SetDesc('Status : Island 4')
  elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 3') then
    TimeRaid:SetDesc('Status : Island 3')
  elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 2') then
    TimeRaid:SetDesc('Status : Island 2')
  elseif game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 1') then
    TimeRaid:SetDesc('Status : Island 1')
  else
    TimeRaid:SetDesc("Status : Start Dungeon") 
  end
        end
    end)
end)        
    
    local Dropdown = Tabs.raid:AddDropdown("Dropdown", {
        Title = "Select Chip",
        Values = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("")

    Dropdown:OnChanged(function(Value)
        _G.SelectChip = Value
    end)
    Tabs.raid:AddButton({
        Title = "Buy Chip",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
        end
    })
    Tabs.raid:AddButton({
        Title = "Start Raid",
        Description = "",
        Callback = function()
            if World2 then
      		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
      	elseif World3 then
      	    fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
      	end
        end
    })
   local Toggle = Tabs.raid:AddToggle("MyToggle", {Title = "Buy MicroChip", Default = false })
    Toggle:OnChanged(function(Value)
   _G.AutoBuyChip = Value
		end)
		
		spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoBuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end
                    end
                end
            end
        end)
    end)
    
    local Toggle = Tabs.raid:AddToggle("MyToggle", {Title = "Next Island", Default = false })
    Toggle:OnChanged(function(Value)
   _G.Auto_Dungeon = Value
		StopTween(_G.Auto_Dungeon)
		end)
		
		local islandNames = {"Island 5", "Island 4", "Island 3", "Island 2", "Island 1"}
spawn(function()
    while wait() do
        if _G.Auto_Dungeon then
			if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                for _, islandName in ipairs(islandNames) do
                    local island = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(islandName)
                    if island then
                        topos(island.CFrame * CFrame.new(0, 70, 100))
                        break
                    end
                end
			end
        end
    end
end)

local Toggle = Tabs.raid:AddToggle("MyToggle", {Title = "Kill Aura", Default = false })
    Toggle:OnChanged(function(Value)
   _G.autokillaura = Value
		end)
		
spawn(function()
    while wait() do
        if _G.autokillaura then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.autokillaura or not v.Parent or v.Humanoid.Health <= 0
                end
            end
        end
    end
end)

local Toggle = Tabs.raid:AddToggle("MyToggle", {Title = "Awakener Fruit", Default = false })
    Toggle:OnChanged(function(Value)
   _G.Auto_Awakener = Value
		end)
		
		spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)

local Toggle = Tabs.raid:AddToggle("MyToggle", {Title = "Auto Get Fruit Low Beli", Default = false })
    Toggle:OnChanged(function(Value)
   _G.Autofruit = Value
		end)
		
spawn(function()
    while wait(.1) do
        pcall(function()
     if _G.Autofruit then
         
local args = {
    [1] = "LoadFruit",
    [2] = "Rocket-Rocket"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))




local args = {
    [1] = "LoadFruit",
    [2] = "Spin-Spin"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Chop-Chop"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))





local args = {
    [1] = "LoadFruit",
    [2] = "Spring-Spring"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Bomb-Bomb"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Smoke-Smoke"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Spike-Spike"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Flame-Flame"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Falcon-Falcon"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Ice-Ice"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Sand-Sand"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Dark-Dark"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Ghost-Ghost"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Diamond-Diamond"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Light-Light"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Rubber-Rubber"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Barrier-Barrier"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)
end
end)

lawraid = Tabs.raid:AddSection("Law Raid")	

Tabs.raid:AddButton({
    Title = "Auto Buy Chip Law",
    Description = "",
    Callback = function()
    local args = {
       [1] = "BlackbeardReward",
       [2] = "Microchip",
       [3] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

Tabs.raid:AddButton({
        Title = "Auto Start Raid Law",
        Description = "",
        Callback = function()            
fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
        end
    })



local Toggle = Tabs.raid:AddToggle("MyToggle", {Title = "Auto Kill Law Raid", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoLawRaid = Value
		StopTween(_G.AutoLawRaid)
    end)

 spawn(function()
        while wait() do
            if _G.AutoLawRaid then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                    NeedAttacking = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                                                     
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoLawRaid or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    NeedAttacking = true
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)

    Tabs.De:AddParagraph({
        Title = "Fruit",
        Content = ""
    })
     
    FruitList = {
  "Bomb-Bomb",
  "Spike-Spike",
  "Chop-Chop",
  "Spring-Spring",
  "Kilo-Kilo",
  "Spin-Spin",
  "Bird: Falcon",
  "Smoke-Smoke",
  "Flame-Flame",
  "Ice-Ice",
  "Sand-Sand",
  "Dark-Dark",
  "Ghost-Ghost",
  "Diamond-Diamond",
  "Light-Light",
  "Love-Love",
  "Rubber-Rubber",
  "Barrier-Barrier",
  "Magma-Magma",
  "Portal-Portal",
  "Quake-Quake",
  "Human-Human: Buddha",
  "Spider-Spider",
  "Bird-Bird: Phoenix",
  "Rumble-Rumble",
  "Pain-Pain",
  "Gravity-Gravity",
  "Dough-Dough",
  "Venom-Venom",
  "Shadow-Shadow",
  "Control-Control",
  "Soul-Soul",
  "Dragon-Dragon",
  "Leopard-Leopard"
 }
    
    local Dropdown = Tabs.De:AddDropdown("Dropdown", {
        Title = "Select Fruit Buy",
        Values = FruitList,
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("")

    Dropdown:OnChanged(function(Value)
        SelectedMasteryMode = Value
    end)
    
    local Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Buy Fruit", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoBuyFruitSniper = Value
    end)
    
    spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.AutoBuyFruitSniper then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
   end
   end
   end)
  end)
        
local Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Auto Random Fruit", Default = false })

    Toggle:OnChanged(function(Value)
        _G.RandomFruit = Value
    end)
    
    spawn(function()
        while wait(.1) do
            if _G.RandomFruit then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
end)

Tabs.De:AddButton({
    Title = "Random Fruit",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end
})

Tabs.De:AddButton({
    Title = "Open Fruit Dealer [Normal]",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
})

Tabs.De:AddButton({
    Title = "Open Fruit Dealer [Advanced]",
    Description = "",
    Callback = function()
        local function StartDialog(DialogName)
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local DialogueController = require(ReplicatedStorage.DialogueController)
            local DialoguesList = require(ReplicatedStorage.DialoguesList)
            
            for Index,Dialog in pairs(DialoguesList) do
              if tostring(Index) == DialogName then
                DialogueController.Start(DialogueController, Dialog)
              end
            end
          end
          
          StartDialog("FruitShop2")
    end
})
    
    local Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Auto store Fruit", Default = false })

    Toggle:OnChanged(function(Value)
        _G.AutoStoreFruit = Value
    end)
    
    spawn(function()
    while task.wait() do
        if _G.AutoStoreFruit then
            pcall(function()
                if _G.AutoStoreFruit then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rocket-Rocket",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ghost-Ghost",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                    end

                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spider-Spider",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Pain-Pain",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Soul-Soul",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                    end
                end
                end
            end)
        end
        wait(0.3)
    end
    end)        
        
 Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Teleport Fruit", Default = false })

    Toggle:OnChanged(function(Value)
        Tween_Fruit = Value
		StopTween(Tween_Fruit)
    end)
    
    spawn(function()
		while wait(.1) do
			if Tween_Fruit then
				for i,v in pairs(game.Workspace:GetChildren()) do
					if string.find(v.Name, "Fruit") then
						topos(v.Handle.CFrame)
					end
				end
			end
        end
    end)

Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Auto Grab Fruit", Default = false })

    Toggle:OnChanged(function(Value)
        _G.Grabfruit = Value
		StopTween(_G.Grabfruit)
    end)
   
spawn(function()
    while wait(.1) do
        if _G.Grabfruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                end
            end
        end
   end
end)
 
Tabs.De:AddButton({
        Title = "Grab All Fruit",
        Description = "",
Callback = function()
        for i,v in pairs(game.Workspace:GetChildren()) do
            if v:IsA("Tool") then
                v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end	
    end
})           
          
Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Island", Default = false })

    Toggle:OnChanged(function(Dk)
        IslandESP = Dk
        while IslandESP do wait()
            UpdateIslandESP()  
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if IslandESP then
			    UpdateIslandESP() 
		    end
	    end
    end)
    

Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Mirage island", Default = false })

    Toggle:OnChanged(function(cha)
        MirageIslandESP = cha
        while MirageIslandESP do wait()
            UpdateIslandMirageESP()   
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if MirageIslandESP then
			    UpdateIslandMirageESP()   
		    end
	    end
    end)

Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Kitsune", Default = false })

    Toggle:OnChanged(function(adep)
        KitsuneIslandEsp = adep
        while KitsuneIslandEsp do wait()
            UpdateIslandKisuneESP()   
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if KitsuneIslandEsp then
			    UpdateIslandKisuneESP()  
		    end
	    end
    end)

Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Flower", Default = false })

    Toggle:OnChanged(function(b)
        FlowerESP = b
        while FlowerESP do wait()
            UpdateFlowerChams()
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if FlowerESP then
			    UpdateFlowerChams()
		    end
	    end
    end)

Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Chest", Default = false })

    Toggle:OnChanged(function(bc)
        ChestESP = bc
        while ChestESP do wait()
            UpdateChestChams() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if ChestESP then
			    UpdateChestChams() 
		    end
	    end
    end)    

Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Player", Default = false })

    Toggle:OnChanged(function(IkB)
        ESPPlayer = IkB
        while ESPPlayer do wait()
            UpdatePlayerChams()  
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if ESPPlayer then
			    UpdatePlayerChams() 
		    end
	    end
    end)
    
Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Devil Fruits", Default = false })

    Toggle:OnChanged(function(a)
        DevilFruitESP = a
        while DevilFruitESP do wait()
            UpdateDevilChams() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if DevilFruitESP then
			    UpdateDevilChams() 
		    end
	    end
    end)
   
Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Npc Sword Legendary", Default = false })

    Toggle:OnChanged(function(henten)
        LADESP = henten
        while LADESP do wait()
            UpdateLSDESP()  
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if LADESP then
			    UpdateLSDESP()  
		    end
	    end
    end)
    
 Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Npc Haki Legendary", Default = false })

    Toggle:OnChanged(function(lopdep)
        AuraESP = lopdep
        while AuraESP do wait()
            UpdateAuraESP()
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if AuraESP then
			    UpdateAuraESP() 
		    end
	    end
    end)    
                 
Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Real Fruit", Default = false })

    Toggle:OnChanged(function(c)
        RealFruitESP = c
        while RealFruitESP do wait()
            UpdateRealFruitChams() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if RealFruitESP then
			    UpdateRealFruitChams() 
		    end
	    end
    end)
   
Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Mod", Default = false })

Toggle:OnChanged(function(dfg)
        MobESP = dfg       
    end)
    
local Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Sea", Default = false })

Toggle:OnChanged(function(vega)
        SeaESP = vega       
    end)
    
local Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Npc", Default = false })

Toggle:OnChanged(function(sikibidi)
        NpcESP = sikibidi       
    end)
    
local Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Gear", Default = false })

    Toggle:OnChanged(function(senpai)
        GearESP = senpai
        while GearESP do wait()
            UpdateGeaESP()   
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if GearESP then
			    UpdateGeaESP()  
		    end
	    end
    end)
        
local Toggle = Tabs.esp:AddToggle("MyToggle", {Title = "Esp Npc Fruit Mirage", Default = false })

    Toggle:OnChanged(function(henten)
        AfdESP = henten
        while AfdESP do wait()
            UpdateAfdESP() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if AfdESP then
			    UpdateAfdESP()  
		    end
	    end
    end)    
                                			    
    Tabs.Sh:AddSection("Fighting Style")
    
    Tabs.Sh:AddButton({
        Title = "Buy Sanguine Art(New)",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy God Human",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Superhuman",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Death Step",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Sharkman Karate",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Dragon Talon",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Electric Claw",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Dark Step",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Electro",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Fishman Karate",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Dragon Claw",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
        end
    })
    
    Tabs.Sh:AddSection("Abilities Shop")
    
    Tabs.Sh:AddButton({
        Title = "Buy Sky Jumb",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Buso Haki",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Observation haki",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Soru",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
        end
    })
    
    Tabs.Sh:AddSection("Misc")
    
    Tabs.Sh:AddButton({
        Title = "Buy ghoul race",
        Description = "",
        Callback = function()            
local args = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Buy Cyborg race",
        Description = "",
        Callback = function()            
local args = {[1] = "CyborgTrainer", [2] = "Buy"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Reroll Race",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
        end
    })
    
    Tabs.Sh:AddButton({
        Title = "Refund Stats",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
        end
    })        

    spawn(function()
        while task.wait() do 
            if UFFF then 
                pcall(function()
                    local Fastflux = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
                    Fastflux.activeController.hitboxMagnitude = 55
                    Fastflux.activeController.timeToNextAttack = 0
                    Fastflux.activeController.attacking = false
                    Fastflux.activeController.increment = 3
                    Fastflux.activeController.blocking = false
                    Fastflux.activeController.timeToNextBlock = 0
                    a = math.random(1,5)
                    if a > 1 then 
                        game:GetService "VirtualUser":CaptureController()
                        game:GetService "VirtualUser":Button1Down(Vector2.new(50, 50))
                    end
                    task.wait(0.2)
                end)
            end
        end
    end)
    
Tabs.Ms:AddButton({
        Title = "Open Devil Fruit Shop",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
      	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
        end
    })
    
    Tabs.Ms:AddButton({
        Title = "Open Haki Color",
        Description = "",
        Callback = function()
            game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
        end
    })
    
    Tabs.Ms:AddButton({
        Title = "Open Title Name",
        Description = "",
        Callback = function()
            local args = {
        [1] = "getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
        end
    })
    
    function fpsboost()
		pcall(function()
		local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
		local g = game
		local w = g.Workspace
		local l = g.Lighting
		local t = w.Terrain
		t.WaterWaveSize = 0
		t.WaterWaveSpeed = 0
		t.WaterReflectance = 0
		t.WaterTransparency = 0
		l.GlobalShadows = false
		l.FogEnd = 9e9
		l.Brightness = 0
		settings().Rendering.QualityLevel = "Level01"
		for i, v in pairs(g:GetDescendants()) do
			if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
					v.Material = "Plastic"
					v.Reflectance = 0
					--v.CanCollide = false
			elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
					v.Transparency = 1
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
					v.Lifetime = NumberRange.new(0)
			elseif v:IsA("Explosion") then
					v.BlastPressure = 1
					v.BlastRadius = 1
			elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
					v.Enabled = false
			elseif v:IsA("MeshPart") then
					v.Material = "Plastic"
					v.Reflectance = 0
					v.TextureID = 10385902758728957    
			end
		end
		for i, e in pairs(l:GetChildren()) do
			if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
					e.Enabled = false
			end
		end
		for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
			if v.Name == ("Water;") then
				v.Transparency = 1
				v.Material = "Plastic"
			end
		end
		end)
		pcall(function()
			if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
			if hookfunction and setreadonly then
			local mt = getrawmetatable(game)
			local old = mt.__newindex
			setreadonly(mt, false)
			local sda
			sda = hookfunction(old, function(t, k, v)
				if k == "Material" then
					if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
				elseif k == "TopSurface" then v = "Smooth"
				elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
				elseif k == "WaterTransparency" then v = 1
				elseif k == "GlobalShadows" then v = false end
				return sda(t, k, v)
			end)
			setreadonly(mt, true)
			end
			local g = game
			local w = g.Workspace
			local l = g:GetService"Lighting"
			local t = w:WaitForChild"Terrain"
			t.WaterWaveSize = 0
			t.WaterWaveSpeed = 0
			t.WaterReflectance = 0
			t.WaterTransparency = 1
			l.GlobalShadows = false
		end)
	end
	
    Tabs.Ms:AddButton({
        Title = "Boost FPS",
        Description = "",
        Callback = function()
            fpsboost()
        end
    })
		
		Tabs.Ms:AddButton({
        Title = "Rejoin Server",
        Description = "",
        Callback = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end
    })
print("Fix Code By Hoang Nam")
print("Hub Skid qua ghe gom")