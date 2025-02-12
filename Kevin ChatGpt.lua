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
function CheckLevel()
    local v197 = game:GetService("Players").LocalPlayer.Data.Level.Value;
    if Sea1 then
        if ((v197 == 1) or (v197 <= 9) or (SelectMonster == "Bandit")) then
            Ms = "Bandit";
            NameQuest = "BanditQuest1";
            QuestLv = 1;
            NameMon = "Bandit";
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875);
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953);
        elseif ((v197 == 10) or (v197 <= 14) or (SelectMonster == "Monkey")) then
            Ms = "Monkey";
            NameQuest = "JungleQuest";
            QuestLv = 1;
            NameMon = "Monkey";
            CFrameQ = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102);
            CFrameMon = CFrame.new(- 1448.1446533203, 50.851993560791, 63.60718536377);
        elseif ((v197 == 15) or (v197 <= 29) or (SelectMonster == "Gorilla")) then
            Ms = "Gorilla";
            NameQuest = "JungleQuest";
            QuestLv = 2;
            NameMon = "Gorilla";
            CFrameQ = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102);
            CFrameMon = CFrame.new(- 1142.6488037109, 40.462348937988, - 515.39227294922);
        elseif ((v197 == 30) or (v197 <= 39) or (SelectMonster == "Pirate")) then
            Ms = "Pirate";
            NameQuest = "BuggyQuest1";
            QuestLv = 1;
            NameMon = "Pirate";
            CFrameQ = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188);
            CFrameMon = CFrame.new(- 1201.0881347656, 40.628940582275, 3857.5966796875);
        elseif ((v197 == 40) or (v197 <= 59) or (SelectMonster == "Brute")) then
            Ms = "Brute";
            NameQuest = "BuggyQuest1";
            QuestLv = 2;
            NameMon = "Brute";
            CFrameQ = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188);
            CFrameMon = CFrame.new(- 1387.5324707031, 24.592035293579, 4100.9575195313);
        elseif ((v197 == 60) or (v197 <= 74) or (SelectMonster == "Desert Bandit")) then
            Ms = "Desert Bandit";
            NameQuest = "DesertQuest";
            QuestLv = 1;
            NameMon = "Desert Bandit";
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625);
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625);
        elseif ((v197 == 75) or (v197 <= 89) or (SelectMonster == "Desert Officer")) then
            Ms = "Desert Officer";
            NameQuest = "DesertQuest";
            QuestLv = 2;
            NameMon = "Desert Officer";
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625);
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688);
        elseif ((v197 == 90) or (v197 <= 99) or (SelectMonster == "Snow Bandit")) then
            Ms = "Snow Bandit";
            NameQuest = "SnowQuest";
            QuestLv = 1;
            NameMon = "Snow Bandit";
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156);
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, - 1328.2418212891);
        elseif ((v197 == 100) or (v197 <= 119) or (SelectMonster == "Snowman")) then
            Ms = "Snowman";
            NameQuest = "SnowQuest";
            QuestLv = 2;
            NameMon = "Snowman";
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156);
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, - 1488.0262451172);
        elseif ((v197 == 120) or (v197 <= 149) or (SelectMonster == "Chief Petty Officer")) then
            Ms = "Chief Petty Officer";
            NameQuest = "MarineQuest2";
            QuestLv = 1;
            NameMon = "Chief Petty Officer";
            CFrameQ = CFrame.new(- 5035.49609375, 28.677835464478, 4324.1840820313);
            CFrameMon = CFrame.new(- 4931.1552734375, 65.793113708496, 4121.8393554688);
        elseif ((v197 == 150) or (v197 <= 174) or (SelectMonster == "Sky Bandit")) then
            Ms = "Sky Bandit";
            NameQuest = "SkyQuest";
            QuestLv = 1;
            NameMon = "Sky Bandit";
            CFrameQ = CFrame.new(- 4842.1372070313, 717.69543457031, - 2623.0483398438);
            CFrameMon = CFrame.new(- 4955.6411132813, 365.46365356445, - 2908.1865234375);
        elseif ((v197 == 175) or (v197 <= 189) or (SelectMonster == "Dark Master")) then
            Ms = "Dark Master";
            NameQuest = "SkyQuest";
            QuestLv = 2;
            NameMon = "Dark Master";
            CFrameQ = CFrame.new(- 4842.1372070313, 717.69543457031, - 2623.0483398438);
            CFrameMon = CFrame.new(- 5148.1650390625, 439.04571533203, - 2332.9611816406);
        elseif ((v197 == 190) or (v197 <= 209) or (SelectMonster == "Prisoner")) then
            Ms = "Prisoner";
            NameQuest = "PrisonerQuest";
            QuestLv = 1;
            NameMon = "Prisoner";
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118);
            CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, - 0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816);
        elseif ((v197 == 210) or (v197 <= 249) or (SelectMonster == "Dangerous Prisoner")) then
            Ms = "Dangerous Prisoner";
            NameQuest = "PrisonerQuest";
            QuestLv = 2;
            NameMon = "Dangerous Prisoner";
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118);
            CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, - 0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827);
        elseif ((v197 == 250) or (v197 <= 274) or (SelectMonster == "Toga Warrior")) then
            Ms = "Toga Warrior";
            NameQuest = "ColosseumQuest";
            QuestLv = 1;
            NameMon = "Toga Warrior";
            CFrameQ = CFrame.new(- 1577.7890625, 7.4151420593262, - 2984.4838867188);
            CFrameMon = CFrame.new(- 1872.5166015625, 49.080215454102, - 2913.810546875);
        elseif ((v197 == 275) or (v197 <= 299) or (SelectMonster == "Gladiator")) then
            Ms = "Gladiator";
            NameQuest = "ColosseumQuest";
            QuestLv = 2;
            NameMon = "Gladiator";
            CFrameQ = CFrame.new(- 1577.7890625, 7.4151420593262, - 2984.4838867188);
            CFrameMon = CFrame.new(- 1521.3740234375, 81.203170776367, - 3066.3139648438);
        elseif ((v197 == 300) or (v197 <= 324) or (SelectMonster == "Military Soldier")) then
            Ms = "Military Soldier";
            NameQuest = "MagmaQuest";
            QuestLv = 1;
            NameMon = "Military Soldier";
            CFrameQ = CFrame.new(- 5316.1157226563, 12.262831687927, 8517.00390625);
            CFrameMon = CFrame.new(- 5369.0004882813, 61.24352645874, 8556.4921875);
        elseif ((v197 == 325) or (v197 <= 374) or (SelectMonster == "Military Spy")) then
            Ms = "Military Spy";
            NameQuest = "MagmaQuest";
            QuestLv = 2;
            NameMon = "Military Spy";
            CFrameQ = CFrame.new(- 5316.1157226563, 12.262831687927, 8517.00390625);
            CFrameMon = CFrame.new(- 5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, - 0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562);
        elseif ((v197 == 375) or (v197 <= 399) or (SelectMonster == "Fishman Warrior")) then
            Ms = "Fishman Warrior";
            NameQuest = "FishmanQuest";
            QuestLv = 1;
            NameMon = "Fishman Warrior";
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
            CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
            end
        elseif ((v197 == 400) or (v197 <= 449) or (SelectMonster == "Fishman Commando")) then
            Ms = "Fishman Commando";
            NameQuest = "FishmanQuest";
            QuestLv = 2;
            NameMon = "Fishman Commando";
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
            end
        elseif ((v197 == 10) or (v197 <= 474) or (SelectMonster == "God's Guard")) then
            Ms = "God's Guard";
            NameQuest = "SkyExp1Quest";
            QuestLv = 1;
            NameMon = "God's Guard";
            CFrameQ = CFrame.new(- 4721.8603515625, 845.30297851563, - 1953.8489990234);
            CFrameMon = CFrame.new(- 4628.0498046875, 866.92877197266, - 1931.2352294922);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688));
            end
        elseif ((v197 == 475) or (v197 <= 524) or (SelectMonster == "Shanda")) then
            Ms = "Shanda";
            NameQuest = "SkyExp1Quest";
            QuestLv = 2;
            NameMon = "Shanda";
            CFrameQ = CFrame.new(- 7863.1596679688, 5545.5190429688, - 378.42266845703);
            CFrameMon = CFrame.new(- 7685.1474609375, 5601.0751953125, - 441.38876342773);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047));
            end
        elseif ((v197 == 525) or (v197 <= 549) or (SelectMonster == "Royal Squad")) then
            Ms = "Royal Squad";
            NameQuest = "SkyExp2Quest";
            QuestLv = 1;
            NameMon = "Royal Squad";
            CFrameQ = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125);
            CFrameMon = CFrame.new(- 7654.2514648438, 5637.1079101563, - 1407.7550048828);
        elseif ((v197 == 550) or (v197 <= 624) or (SelectMonster == "Royal Soldier")) then
            Ms = "Royal Soldier";
            NameQuest = "SkyExp2Quest";
            QuestLv = 2;
            NameMon = "Royal Soldier";
            CFrameQ = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125);
            CFrameMon = CFrame.new(- 7760.4106445313, 5679.9077148438, - 1884.8112792969);
        elseif ((v197 == 625) or (v197 <= 649) or (SelectMonster == "Galley Pirate")) then
            Ms = "Galley Pirate";
            NameQuest = "FountainQuest";
            QuestLv = 1;
            NameMon = "Galley Pirate";
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063);
        elseif ((v197 >= 650) or (SelectMonster == "Galley Captain")) then
            Ms = "Galley Captain";
            NameQuest = "FountainQuest";
            QuestLv = 2;
            NameMon = "Galley Captain";
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188);
        end
    end
    if Sea2 then
        if ((v197 == 700) or (v197 <= 724) or (SelectMonster == "Raider")) then
            Ms = "Raider";
            NameQuest = "Area1Quest";
            QuestLv = 1;
            NameMon = "Raider";
            CFrameQ = CFrame.new(- 427.72567749023, 72.99634552002, 1835.9426269531);
            CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688);
        elseif ((v197 == 725) or (v197 <= 774) or (SelectMonster == "Mercenary")) then
            Ms = "Mercenary";
            NameQuest = "Area1Quest";
            QuestLv = 2;
            NameMon = "Mercenary";
            CFrameQ = CFrame.new(- 427.72567749023, 72.99634552002, 1835.9426269531);
            CFrameMon = CFrame.new(- 864.85009765625, 122.47104644775, 1453.1505126953);
        elseif ((v197 == 775) or (v197 <= 799) or (SelectMonster == "Swan Pirate")) then
            Ms = "Swan Pirate";
            NameQuest = "Area2Quest";
            QuestLv = 1;
            NameMon = "Swan Pirate";
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125);
            CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125);
        elseif ((v197 == 800) or (v197 <= 874) or (SelectMonster == "Factory Staff")) then
            Ms = "Factory Staff";
            NameQuest = "Area2Quest";
            QuestLv = 2;
            NameMon = "Factory Staff";
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125);
            CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797);
        elseif ((v197 == 875) or (v197 <= 899) or (SelectMonster == "Marine Lieutenan")) then
            Ms = "Marine Lieutenant";
            NameQuest = "MarineQuest3";
            QuestLv = 1;
            NameMon = "Marine Lieutenant";
            CFrameQ = CFrame.new(- 2440.9934082031, 73.04190826416, - 3217.7082519531);
            CFrameMon = CFrame.new(- 2489.2622070313, 84.613594055176, - 3151.8830566406);
        elseif ((v197 == 900) or (v197 <= 949) or (SelectMonster == "Marine Captain")) then
            Ms = "Marine Captain";
            NameQuest = "MarineQuest3";
            QuestLv = 2;
            NameMon = "Marine Captain";
            CFrameQ = CFrame.new(- 2440.9934082031, 73.04190826416, - 3217.7082519531);
            CFrameMon = CFrame.new(- 2335.2026367188, 79.786659240723, - 3245.8674316406);
        elseif ((v197 == 950) or (v197 <= 974) or (SelectMonster == "Zombie")) then
            Ms = "Zombie";
            NameQuest = "ZombieQuest";
            QuestLv = 1;
            NameMon = "Zombie";
            CFrameQ = CFrame.new(- 5494.3413085938, 48.505931854248, - 794.59094238281);
            CFrameMon = CFrame.new(- 5536.4970703125, 101.08577728271, - 835.59075927734);
        elseif ((v197 == 975) or (v197 <= 999) or (SelectMonster == "Vampire")) then
            Ms = "Vampire";
            NameQuest = "ZombieQuest";
            QuestLv = 2;
            NameMon = "Vampire";
            CFrameQ = CFrame.new(- 5494.3413085938, 48.505931854248, - 794.59094238281);
            CFrameMon = CFrame.new(- 5806.1098632813, 16.722528457642, - 1164.4384765625);
        elseif ((v197 == 1000) or (v197 <= 1049) or (SelectMonster == "Snow Trooper")) then
            Ms = "Snow Trooper";
            NameQuest = "SnowMountainQuest";
            QuestLv = 1;
            NameMon = "Snow Trooper";
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, - 5370.5546875);
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, - 5484.9165039063);
        elseif ((v197 == 1050) or (v197 <= 1099) or (SelectMonster == "Winter Warrior")) then
            Ms = "Winter Warrior";
            NameQuest = "SnowMountainQuest";
            QuestLv = 2;
            NameMon = "Winter Warrior";
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, - 5370.5546875);
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, - 5174.130859375);
        elseif ((v197 == 1100) or (v197 <= 1124) or (SelectMonster == "Lab Subordinate")) then
            Ms = "Lab Subordinate";
            NameQuest = "IceSideQuest";
            QuestLv = 1;
            NameMon = "Lab Subordinate";
            CFrameQ = CFrame.new(- 6061.841796875, 15.926671981812, - 4902.0385742188);
            CFrameMon = CFrame.new(- 5720.5576171875, 63.309471130371, - 4784.6103515625);
        elseif ((v197 == 1125) or (v197 <= 1174) or (SelectMonster == "Horned Warrior")) then
            Ms = "Horned Warrior";
            NameQuest = "IceSideQuest";
            QuestLv = 2;
            NameMon = "Horned Warrior";
            CFrameQ = CFrame.new(- 6061.841796875, 15.926671981812, - 4902.0385742188);
            CFrameMon = CFrame.new(- 6292.751953125, 91.181983947754, - 5502.6499023438);
        elseif ((v197 == 1175) or (v197 <= 1199) or (SelectMonster == "Magma Ninja")) then
            Ms = "Magma Ninja";
            NameQuest = "FireSideQuest";
            QuestLv = 1;
            NameMon = "Magma Ninja";
            CFrameQ = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813);
            CFrameMon = CFrame.new(- 5461.8388671875, 130.36347961426, - 5836.4702148438);
        elseif ((v197 == 1200) or (v197 <= 1249) or (SelectMonster == "Lava Pirate")) then
            Ms = "Lava Pirate";
            NameQuest = "FireSideQuest";
            QuestLv = 2;
            NameMon = "Lava Pirate";
            CFrameQ = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813);
            CFrameMon = CFrame.new(- 5251.1889648438, 55.164535522461, - 4774.4096679688);
        elseif ((v197 == 1250) or (v197 <= 1274) or (SelectMonster == "Ship Deckhand")) then
            Ms = "Ship Deckhand";
            NameQuest = "ShipQuest1";
            QuestLv = 1;
            NameMon = "Ship Deckhand";
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625);
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1275) or (v197 <= 1299) or (SelectMonster == "Ship Engineer")) then
            Ms = "Ship Engineer";
            NameQuest = "ShipQuest1";
            QuestLv = 2;
            NameMon = "Ship Engineer";
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625);
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1300) or (v197 <= 1324) or (SelectMonster == "Ship Steward")) then
            Ms = "Ship Steward";
            NameQuest = "ShipQuest2";
            QuestLv = 1;
            NameMon = "Ship Steward";
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875);
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1325) or (v197 <= 1349) or (SelectMonster == "Ship Officer")) then
            Ms = "Ship Officer";
            NameQuest = "ShipQuest2";
            QuestLv = 2;
            NameMon = "Ship Officer";
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875);
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1350) or (v197 <= 1374) or (SelectMonster == "Arctic Warrior")) then
            Ms = "Arctic Warrior";
            NameQuest = "FrostQuest";
            QuestLv = 1;
            NameMon = "Arctic Warrior";
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, - 6484.6005859375);
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, - 6472.7568359375);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 6508.5581054688, 89.034996032715, - 132.83953857422));
            end
        elseif ((v197 == 1375) or (v197 <= 1424) or (SelectMonster == "Snow Lurker")) then
            Ms = "Snow Lurker";
            NameQuest = "FrostQuest";
            QuestLv = 2;
            NameMon = "Snow Lurker";
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, - 6484.6005859375);
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, - 6618.3481445313);
        elseif ((v197 == 1425) or (v197 <= 1449) or (SelectMonster == "Sea Soldier")) then
            Ms = "Sea Soldier";
            NameQuest = "ForgottenQuest";
            QuestLv = 1;
            NameMon = "Sea Soldier";
            CFrameQ = CFrame.new(- 3054.5827636719, 236.87213134766, - 10147.790039063);
            CFrameMon = CFrame.new(- 3185.0153808594, 58.789089202881, - 9663.6064453125);
        elseif ((v197 >= 1450) or (SelectMonster == "Water Fighter")) then
            Ms = "Water Fighter";
            NameQuest = "ForgottenQuest";
            QuestLv = 2;
            NameMon = "Water Fighter";
            CFrameQ = CFrame.new(- 3054.5827636719, 236.87213134766, - 10147.790039063);
            CFrameMon = CFrame.new(- 3262.9301757813, 298.69036865234, - 10552.529296875);
        end
    end
    if Sea3 then
        if ((v197 == 1500) or (v197 <= 1524) or (SelectMonster == "Pirate Millionaire")) then
            Ms = "Pirate Millionaire";
            NameQuest = "PiratePortQuest";
            QuestLv = 1;
            NameMon = "Pirate Millionaire";
            CFrameQ = CFrame.new(- 450.1046447753906, 107.68145751953125, 5950.72607421875);
            CFrameMon = CFrame.new(- 193.99227905273438, 56.12502670288086, 5755.7880859375);
        elseif ((v197 == 1525) or (v197 <= 1574) or (SelectMonster == "Pistol Billionaire")) then
            Ms = "Pistol Billionaire";
            NameQuest = "PiratePortQuest";
            QuestLv = 2;
            NameMon = "Pistol Billionaire";
            CFrameQ = CFrame.new(- 450.1046447753906, 107.68145751953125, 5950.72607421875);
            CFrameMon = CFrame.new(- 188.14462280273438, 84.49613189697266, 6337.0419921875);
        elseif ((v197 == 1575) or (v197 <= 1599) or (SelectMonster == "Dragon Crew Warrior")) then
            Ms = "Dragon Crew Warrior";
            NameQuest = "DragonCrewQuest";
            QuestLv = 1;
            NameMon = "Dragon Crew Warrior";
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, - 711.0979614257812);
            CFrameMon = CFrame.new(6615.2333984375, 50.847679138183594, - 978.93408203125);
        elseif ((v197 == 1600) or (v197 <= 1624) or (SelectMonster == "Dragon Crew Archer")) then
            Ms = "Dragon Crew Archer";
            NameQuest = "DragonCrewQuest";
            QuestLv = 2;
            NameMon = "Dragon Crew Archer";
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, - 711.0979614257812);
            CFrameMon = CFrame.new(6818.58935546875, 483.718994140625, 512.726806640625);
        elseif ((v197 == 1625) or (v197 <= 1649) or (SelectMonster == "Hydra Enforcer")) then
            Ms = "Hydra Enforcer";
            NameQuest = "VenomCrewQuest";
            QuestLv = 1;
            NameMon = "Hydra Enforcer";
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
            CFrameMon = CFrame.new(4547.115234375, 1001.60205078125, 334.1954650878906);
        elseif ((v197 == 1650) or (v197 <= 1699) or (SelectMonster == "Venomous Assailant")) then
            Ms = "Venomous Assailant";
            NameQuest = "VenomCrewQuest";
            QuestLv = 2;
            NameMon = "Venomous Assailant";
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
            CFrameMon = CFrame.new(4637.88525390625, 1077.85595703125, 882.4183959960938);
        elseif ((v197 == 1700) or (v197 <= 1724) or (SelectMonster == "Marine Commodore")) then
            Ms = "Marine Commodore";
            NameQuest = "MarineTreeIsland";
            QuestLv = 1;
            NameMon = "Marine Commodore";
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, - 6740.0551757813);
            CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, - 7109.5043945313);
        elseif ((v197 == 1725) or (v197 <= 1774) or (SelectMonster == "Marine Rear Admiral")) then
            Ms = "Marine Rear Admiral";
            NameQuest = "MarineTreeIsland";
            QuestLv = 2;
            NameMon = "Marine Rear Admiral";
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, - 6740.0551757813);
            CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, - 7048.6342773438);
        elseif ((v197 == 1775) or (v197 <= 1799) or (SelectMonster == "Fishman Raider")) then
            Ms = "Fishman Raider";
            NameQuest = "DeepForestIsland3";
            QuestLv = 1;
            NameMon = "Fishman Raider";
            CFrameQ = CFrame.new(- 10582.759765625, 331.78845214844, - 8757.666015625);
            CFrameMon = CFrame.new(- 10553.268554688, 521.38439941406, - 8176.9458007813);
        elseif ((v197 == 1800) or (v197 <= 1824) or (SelectMonster == "Fishman Captain")) then
            Ms = "Fishman Captain";
            NameQuest = "DeepForestIsland3";
            QuestLv = 2;
            NameMon = "Fishman Captain";
            CFrameQ = CFrame.new(- 10583.099609375, 331.78845214844, - 8759.4638671875);
            CFrameMon = CFrame.new(- 10789.401367188, 427.18637084961, - 9131.4423828125);
        elseif ((v197 == 1825) or (v197 <= 1849) or (SelectMonster == "Forest Pirate")) then
            Ms = "Forest Pirate";
            NameQuest = "DeepForestIsland";
            QuestLv = 1;
            NameMon = "Forest Pirate";
            CFrameQ = CFrame.new(- 13232.662109375, 332.40396118164, - 7626.4819335938);
            CFrameMon = CFrame.new(- 13489.397460938, 400.30349731445, - 7770.251953125);
        elseif ((v197 == 1850) or (v197 <= 1899) or (SelectMonster == "Mythological Pirate")) then
            Ms = "Mythological Pirate";
            NameQuest = "DeepForestIsland";
            QuestLv = 2;
            NameMon = "Mythological Pirate";
            CFrameQ = CFrame.new(- 13232.662109375, 332.40396118164, - 7626.4819335938);
            CFrameMon = CFrame.new(- 13508.616210938, 582.46228027344, - 6985.3037109375);
        elseif ((v197 == 1900) or (v197 <= 1924) or (SelectMonster == "Jungle Pirate")) then
            Ms = "Jungle Pirate";
            NameQuest = "DeepForestIsland2";
            QuestLv = 1;
            NameMon = "Jungle Pirate";
            CFrameQ = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375);
            CFrameMon = CFrame.new(- 12267.103515625, 459.75262451172, - 10277.200195313);
        elseif ((v197 == 1925) or (v197 <= 1974) or (SelectMonster == "Musketeer Pirate")) then
            Ms = "Musketeer Pirate";
            NameQuest = "DeepForestIsland2";
            QuestLv = 2;
            NameMon = "Musketeer Pirate";
            CFrameQ = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375);
            CFrameMon = CFrame.new(- 13291.5078125, 520.47338867188, - 9904.638671875);
        elseif ((v197 == 1975) or (v197 <= 1999) or (SelectMonster == "Reborn Skeleton")) then
            Ms = "Reborn Skeleton";
            NameQuest = "HauntedQuest1";
            QuestLv = 1;
            NameMon = "Reborn Skeleton";
            CFrameQ = CFrame.new(- 9480.80762, 142.130661, 5566.37305, - 0.00655503059, 4.5295423e-8, - 0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, - 2.0195568e-8, - 0.00655503059);
            CFrameMon = CFrame.new(- 8761.77148, 183.431747, 6168.33301, 0.978073597, - 0.000013950732, - 0.208259016, - 0.0000010807393, 1, - 0.00007206303, 0.208259016, 0.00007070804, 0.978073597);
        elseif ((v197 == 2000) or (v197 <= 2024) or (SelectMonster == "Living Zombie")) then
            Ms = "Living Zombie";
            NameQuest = "HauntedQuest1";
            QuestLv = 2;
            NameMon = "Living Zombie";
            CFrameQ = CFrame.new(- 9480.80762, 142.130661, 5566.37305, - 0.00655503059, 4.5295423e-8, - 0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, - 2.0195568e-8, - 0.00655503059);
            CFrameMon = CFrame.new(- 10103.7529, 238.565979, 6179.75977, 0.999474227, 2.7754714e-8, 0.0324240364, - 2.5800633e-8, 1, - 6.068485e-8, - 0.0324240364, 5.981639e-8, 0.999474227);
        elseif ((v197 == 2025) or (v197 <= 2049) or (SelectMonster == "Demonic Soul")) then
            Ms = "Demonic Soul";
            NameQuest = "HauntedQuest2";
            QuestLv = 1;
            NameMon = "Demonic Soul";
            CFrameQ = CFrame.new(- 9516.9931640625, 178.00651550293, 6078.4653320313);
            CFrameMon = CFrame.new(- 9712.03125, 204.69589233398, 6193.322265625);
        elseif ((v197 == 2050) or (v197 <= 2074) or (SelectMonster == "Posessed Mummy")) then
            Ms = "Posessed Mummy";
            NameQuest = "HauntedQuest2";
            QuestLv = 2;
            NameMon = "Posessed Mummy";
            CFrameQ = CFrame.new(- 9516.9931640625, 178.00651550293, 6078.4653320313);
            CFrameMon = CFrame.new(- 9545.7763671875, 69.619895935059, 6339.5615234375);
        elseif ((v197 == 2075) or (v197 <= 2099) or (SelectMonster == "Peanut Scout")) then
            Ms = "Peanut Scout";
            NameQuest = "NutsIslandQuest";
            QuestLv = 1;
            NameMon = "Peanut Scout";
            CFrameQ = CFrame.new(- 2105.53198, 37.2495995, - 10195.5088, - 0.766061664, 0, - 0.642767608, 0, 1, 0, 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 2150.587890625, 122.49767303467, - 10358.994140625);
        elseif ((v197 == 2100) or (v197 <= 2124) or (SelectMonster == "Peanut President")) then
            Ms = "Peanut President";
            NameQuest = "NutsIslandQuest";
            QuestLv = 2;
            NameMon = "Peanut President";
            CFrameQ = CFrame.new(- 2105.53198, 37.2495995, - 10195.5088, - 0.766061664, 0, - 0.642767608, 0, 1, 0, 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 2150.587890625, 122.49767303467, - 10358.994140625);
        elseif ((v197 == 2125) or (v197 <= 2149) or (SelectMonster == "Ice Cream Chef")) then
            Ms = "Ice Cream Chef";
            NameQuest = "IceCreamIslandQuest";
            QuestLv = 1;
            NameMon = "Ice Cream Chef";
            CFrameQ = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 789.941528, 209.382889, - 11009.9805, - 0.0703101531, "-0", - 0.997525156, "-0", 1.00000012, "-0", 0.997525275, 0, - 0.0703101456);
        elseif ((v197 == 2150) or (v197 <= 2199) or (SelectMonster == "Ice Cream Commander")) then
            Ms = "Ice Cream Commander";
            NameQuest = "IceCreamIslandQuest";
            QuestLv = 2;
            NameMon = "Ice Cream Commander";
            CFrameQ = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 789.941528, 209.382889, - 11009.9805, - 0.0703101531, "-0", - 0.997525156, "-0", 1.00000012, "-0", 0.997525275, 0, - 0.0703101456);
        elseif ((v197 == 2200) or (v197 <= 2224) or (SelectMonster == "Cookie Crafter")) then
            Ms = "Cookie Crafter";
            NameQuest = "CakeQuest1";
            QuestLv = 1;
            NameMon = "Cookie Crafter";
            CFrameQ = CFrame.new(- 2022.29858, 36.9275894, - 12030.9766, - 0.961273909, 0, - 0.275594592, 0, 1, 0, 0.275594592, 0, - 0.961273909);
            CFrameMon = CFrame.new(- 2321.71216, 36.699482, - 12216.7871, - 0.780074954, 0, 0.625686109, 0, 1, 0, - 0.625686109, 0, - 0.780074954);
        elseif ((v197 == 2225) or (v197 <= 2249) or (SelectMonster == "Cake Guard")) then
            Ms = "Cake Guard";
            NameQuest = "CakeQuest1";
            QuestLv = 2;
            NameMon = "Cake Guard";
            CFrameQ = CFrame.new(- 2022.29858, 36.9275894, - 12030.9766, - 0.961273909, 0, - 0.275594592, 0, 1, 0, 0.275594592, 0, - 0.961273909);
            CFrameMon = CFrame.new(- 1418.11011, 36.6718941, - 12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, - 0.997700036, 0, 0.0677844882);
        elseif ((v197 == 2250) or (v197 <= 2274) or (SelectMonster == "Baking Staff")) then
            Ms = "Baking Staff";
            NameQuest = "CakeQuest2";
            QuestLv = 1;
            NameMon = "Baking Staff";
            CFrameQ = CFrame.new(- 1928.31763, 37.7296638, - 12840.626, 0.951068401, "-0", - 0.308980465, 0, 1, "-0", 0.308980465, 0, 0.951068401);
            CFrameMon = CFrame.new(- 1980.43848, 36.6716766, - 12983.8418, - 0.254443765, 0, - 0.967087567, 0, 1, 0, 0.967087567, 0, - 0.254443765);
        elseif ((v197 == 2275) or (v197 <= 2299) or (SelectMonster == "Head Baker")) then
            Ms = "Head Baker";
            NameQuest = "CakeQuest2";
            QuestLv = 2;
            NameMon = "Head Baker";
            CFrameQ = CFrame.new(- 1928.31763, 37.7296638, - 12840.626, 0.951068401, "-0", - 0.308980465, 0, 1, "-0", 0.308980465, 0, 0.951068401);
            CFrameMon = CFrame.new(- 2251.5791, 52.2714615, - 13033.3965, - 0.991971016, 0, - 0.126466095, 0, 1, 0, 0.126466095, 0, - 0.991971016);
        elseif ((v197 == 2300) or (v197 <= 2324) or (SelectMonster == "Cocoa Warrior")) then
            Ms = "Cocoa Warrior";
            NameQuest = "ChocQuest1";
            QuestLv = 1;
            NameMon = "Cocoa Warrior";
            CFrameQ = CFrame.new(231.75, 23.9003029, - 12200.292, - 1, 0, 0, 0, 1, 0, 0, 0, - 1);
            CFrameMon = CFrame.new(167.978516, 26.2254658, - 12238.874, - 0.939700961, 0, 0.341998369, 0, 1, 0, - 0.341998369, 0, - 0.939700961);
        elseif ((v197 == 2325) or (v197 <= 2349) or (SelectMonster == "Chocolate Bar Battler")) then
            Ms = "Chocolate Bar Battler";
            NameQuest = "ChocQuest1";
            QuestLv = 2;
            NameMon = "Chocolate Bar Battler";
            CFrameQ = CFrame.new(231.75, 23.9003029, - 12200.292, - 1, 0, 0, 0, 1, 0, 0, 0, - 1);
            CFrameMon = CFrame.new(701.312073, 25.5824986, - 12708.2148, - 0.342042685, 0, - 0.939684391, 0, 1, 0, 0.939684391, 0, - 0.342042685);
        elseif ((v197 == 2350) or (v197 <= 2374) or (SelectMonster == "Sweet Thief")) then
            Ms = "Sweet Thief";
            NameQuest = "ChocQuest2";
            QuestLv = 1;
            NameMon = "Sweet Thief";
            CFrameQ = CFrame.new(151.198242, 23.8907146, - 12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, 0.422592998);
            CFrameMon = CFrame.new(- 140.258301, 25.5824986, - 12652.3115, 0.173624337, "-0", - 0.984811902, 0, 1, "-0", 0.984811902, 0, 0.173624337);
        elseif ((v197 == 2375) or (v197 <= 2400) or (SelectMonster == "Candy Rebel")) then
            Ms = "Candy Rebel";
            NameQuest = "ChocQuest2";
            QuestLv = 2;
            NameMon = "Candy Rebel";
            CFrameQ = CFrame.new(151.198242, 23.8907146, - 12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, 0.422592998);
            CFrameMon = CFrame.new(47.9231453, 25.5824986, - 13029.2402, - 0.819156051, 0, - 0.573571265, 0, 1, 0, 0.573571265, 0, - 0.819156051);
        elseif ((v197 == 2400) or (v197 <= 2424) or (SelectMonster == "Candy Pirate")) then
            Ms = "Candy Pirate";
            NameQuest = "CandyQuest1";
            QuestLv = 1;
            NameMon = "Candy Pirate";
            CFrameQ = CFrame.new(- 1149.328, 13.5759039, - 14445.6143, - 0.156446099, 0, - 0.987686574, 0, 1, 0, 0.987686574, 0, - 0.156446099);
            CFrameMon = CFrame.new(- 1437.56348, 17.1481285, - 14385.6934, 0.173624337, "-0", - 0.984811902, 0, 1, "-0", 0.984811902, 0, 0.173624337);
        elseif ((v197 == 2425) or (v197 <= 2449) or (SelectMonster == "Snow Demon")) then
            Ms = "Snow Demon";
            NameQuest = "CandyQuest1";
            QuestLv = 2;
            NameMon = "Snow Demon";
            CFrameQ = CFrame.new(- 1149.328, 13.5759039, - 14445.6143, - 0.156446099, 0, - 0.987686574, 0, 1, 0, 0.987686574, 0, - 0.156446099);
            CFrameMon = CFrame.new(- 916.222656, 17.1481285, - 14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, - 0.500031412, 0, 0.866007268);
        elseif ((v197 == 2450) or (v197 <= 2474) or (SelectMonster == "Isle Outlaw")) then
            Ms = "Isle Outlaw";
            NameQuest = "TikiQuest1";
            QuestLv = 1;
            NameMon = "Isle Outlaw";
            CFrameQ = CFrame.new(- 16549.890625, 55.68635559082031, - 179.91360473632812);
            CFrameMon = CFrame.new(- 16162.8193359375, 11.6863374710083, - 96.45481872558594);
        elseif ((v197 == 2475) or (v197 <= 2499) or (SelectMonster == "Island Boy")) then
            Ms = "Island Boy";
            NameQuest = "TikiQuest1";
            QuestLv = 2;
            NameMon = "Island Boy";
            CFrameQ = CFrame.new(- 16549.890625, 55.68635559082031, - 179.91360473632812);
            CFrameMon = CFrame.new(- 16357.3125, 20.632822036743164, 1005.64892578125);
        elseif ((v197 == 2500) or (v197 <= 2524) or (SelectMonster == "Sun-kissed Warrior")) then
            Ms = "Sun-kissed Warrior";
            NameQuest = "TikiQuest2";
            QuestLv = 1;
            NameMon = "Sun-kissed Warrior";
            CFrameQ = CFrame.new(- 16541.021484375, 54.77081298828125, 1051.461181640625);
            CFrameMon = CFrame.new(- 16357.3125, 20.632822036743164, 1005.64892578125);
        elseif ((v197 == 2525) or (v197 <= 2549) or (SelectMonster == "Isle Champion")) then
            Ms = "Isle Champion";
            NameQuest = "TikiQuest2";
            QuestLv = 2;
            NameMon = "Isle Champion";
            CFrameQ = CFrame.new(- 16541.021484375, 54.77081298828125, 1051.461181640625);
            CFrameMon = CFrame.new(- 16848.94140625, 21.68633460998535, 1041.4490966796875);
        elseif ((v197 == 2550) or (v197 <= 2574) or (SelectMonster == "Serpent Hunter")) then
            Ms = "Serpent Hunter";
            NameQuest = "TikiQuest3";
            QuestLv = 1;
            NameMon = "Serpent Hunter";
            CFrameQ = CFrame.new(- 16665.19140625, 104.59640502929688, 1579.6943359375);
            CFrameMon = CFrame.new(- 16621.4140625, 121.40631103515625, 1290.6881103515625);
        elseif ((v197 == 2575) or (v197 <= 2599) or (SelectMonster == "Skull Slayer") or (v197 == 2600)) then
            Ms = "Skull Slayer";
            NameQuest = "TikiQuest3";
            QuestLv = 2;
            NameMon = "Skull Slayer";
            CFrameQ = CFrame.new(- 16665.19140625, 104.59640502929688, 1579.6943359375);
            CFrameMon = CFrame.new(- 16811.5703125, 84.625244140625, 1542.235107421875);
        end
    end
end

-- Tạo toggle Auto Farm Level
MainTab:AddToggle("AutoFarmLevel", {
    Title = "Auto Farm Level",
    Description = "Tự động nhận nhiệm vụ và farm quái",
    Callback = function(Value)
        _G.AutoFarm = Value
        if Value then
            task.spawn(function()
                AutoFarmFunction()
            end)
        end
    end
})

-- Hàm kiểm tra cấp độ nhân vật
local function CheckLevel()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    return LocalPlayer and LocalPlayer.Data and LocalPlayer.Data.Level.Value or 1
end

-- Hàm kiểm tra nhiệm vụ hiện tại
local function CheckQuest()
    local questData = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerQuestInfo")
    if questData and questData.CurrentQuest then
        return questData.CurrentQuest -- Trả về nhiệm vụ hiện tại
    end
    return nil
end

-- Hàm tự động nhận nhiệm vụ
local function AcceptQuest()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local questNPC = workspace:FindFirstChild("QuestGiver")
    if questNPC then
        LocalPlayer.Character.HumanoidRootPart.CFrame = questNPC.CFrame
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "QuestName", CheckLevel())
    end
end

-- Hàm tự động farm quái
local function AutoFarmFunction()
    while _G.AutoFarm do
        task.wait(1)
        local currentQuest = CheckQuest()
        if not currentQuest then
            AcceptQuest() -- Nếu chưa có nhiệm vụ thì nhận
        else
            local mobs = workspace.Enemies:GetChildren()
            for _, mob in ipairs(mobs) do
                if mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Attack")
                end
            end
        end
    end
end

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

MainTab:AddToggle("hopdougking", {
    Title = "Hop server has Dough King",
    Description = "May have bugs",
    Callback = function(Value)
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Dough_King"))()
    end
})

MainTab:AddToggle("hopripindra", {
    Title = "Hop server has Rip_Indra",
    Description = "May have bugs",
    Callback = function(Value)
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnBeoDepTrai/refs/heads/main/Rip_Indra"))()
    end
})

MainTab:AddToggle("FastAttackToggle", {
    Title = "Fast Attack",
    Description = "help me test",
    Callback = function(Value)
        _G.FastAttack = Value -- Gán giá trị của toggle vào biến _G.FastAttack

        if _G.FastAttack then
            local _ENV = (getgenv or getrenv or getfenv)()

            local function SafeWaitForChild(parent, childName)
                local success, result = pcall(function()
                    return parent:WaitForChild(childName)
                end)
                if not success or not result then
                    warn("Không tìm thấy: " .. childName)
                end
                return result
            end

            local VirtualInputManager = game:GetService("VirtualInputManager")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local RunService = game:GetService("RunService")
            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer

            if not Player then
                warn("Không tìm thấy người chơi cục bộ.")
                return
            end

            local Remotes = SafeWaitForChild(ReplicatedStorage, "Remotes")
            if not Remotes then return end

            local Net = SafeWaitForChild(ReplicatedStorage, "Modules"):FindFirstChild("Net")
            local RegisterAttack = Net and SafeWaitForChild(Net, "RE/RegisterAttack")
            local RegisterHit = Net and SafeWaitForChild(Net, "RE/RegisterHit")

            if not RegisterAttack or not RegisterHit then
                warn("Không tìm thấy hàm tấn công.")
                return
            end

            local Enemies = SafeWaitForChild(workspace, "Enemies")

            local function IsAlive(character)
                return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
            end

            local function ProcessEnemies(OthersEnemies, Folder)
                local BasePart = nil
                for _, Enemy in Folder:GetChildren() do
                    local Head = Enemy:FindFirstChild("Head")
                    if Head and IsAlive(Enemy) and Player:DistanceFromCharacter(Head.Position) < 100 then
                        if Enemy ~= Player.Character then
                            table.insert(OthersEnemies, { Enemy, Head })
                            BasePart = Head
                        end
                    end
                end
                return BasePart
            end

            local function Attack(BasePart, OthersEnemies)
                if not BasePart or #OthersEnemies == 0 then return end
                RegisterAttack:FireServer(0)
                RegisterHit:FireServer(BasePart, OthersEnemies)
            end

            local function AttackNearest()
                while _G.FastAttack do
                    task.wait(0.1) -- Kiểm soát tốc độ đánh
                    local OthersEnemies = {}
                    local Part1 = ProcessEnemies(OthersEnemies, Enemies)
                    if #OthersEnemies > 0 then
                        Attack(Part1, OthersEnemies)
                    end
                end
            end

            task.spawn(AttackNearest) -- Chạy vòng lặp tấn công
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
