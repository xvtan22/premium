-- Tải Fluent UI Library
local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
-- Âm thanh khởi động
local startupSound = Instance.new("Sound")
startupSound.SoundId = "rbxassetid://8594342648"
startupSound.Volume = 5 -- Điều chỉnh âm lượng nếu cần
startupSound.Looped = false -- Không lặp lại âm thanh
startupSound.Parent = game.CoreGui-- Đặt parent vào CoreGui để đảm bảo âm thanh phát
startupSound:Play() -- Phát âm thanh khi script chạy
-- Tạo cửa sổ chính
local Window = Library:CreateWindow{
    Title = "#OlwenTh",
    SubTitle = "@kevinproxlucky",
    TabWidth = 160,
    Size = UDim2.fromOffset(1280, 860),
    Resize = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl -- Phím thu nhỏ
}

-- Tạo ScreenGui chứa nút điều khiển
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ControlGUI"
screenGui.Parent = game.CoreGui

-- Tạo nút (ImageButton)
local toggleButton = Instance.new("ImageButton")
toggleButton.Size = UDim2.new(0, 50, 0, 50) -- Kích thước nhỏ, hình vuông
toggleButton.Position = UDim2.new(1, -60, 0, 10) -- Vị trí gần góc phải trên
toggleButton.Image = "rbxassetid://7229442422" -- Hình ảnh của nút
toggleButton.BackgroundTransparency = 1 -- Không có nền
toggleButton.Parent = screenGui

-- Biến lưu trạng thái hiển thị Fluent UI
local isFluentVisible = true

-- Di chuyển nút
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    toggleButton.Position = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
end

toggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = toggleButton.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

toggleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)

-- Ẩn/Hiện Fluent UI khi nhấn nút
toggleButton.MouseButton1Click:Connect(function()
    isFluentVisible = not isFluentVisible

    if isFluentVisible then
        -- Hiện Fluent UI
        Window:Minimize(false) -- Mở lại cửa sổ
    else
        -- Ẩn Fluent UI
        Window:Minimize(true) -- Thu nhỏ cửa sổ
    end
end)

-- Tạo các tab
local MainTab = Window:AddTab({ Title = "Main", Icon = "" })
local PlayerTab = Window:AddTab({ Title = "Player", Icon = "" })
local OtherTab = Window:AddTab({ Title = "Khác", Icon = "" })
local FruitTab = Window:AddTab({ Title = "Fruit", Icon = "" }) -- Tab Fruit mới

-- Biến toàn cục
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
local Fluent = Library -- Gán biến Fluent

local currentTween = nil
local leviathanGateConnection = nil
local rockConnection = nil -- No longer used for DescendantAdded
local scriptEnabled = false
local lockHeightMode = true
local destroyRockMode = false
local customY = 100
local tweenSpeed = 350
local minimized = false
local lastBoat, lastSeat = nil, nil
local playerTweening = false -- Khôi phục biến playerTweening
local autoReturnEnabled = false
local killAuraEnabled = false
local killAuraRange = 100
local selectedIslandCoord = nil
local islandTweening = false
local boatProtectEnabled = false -- Bảo vệ thuyền
local boatProtectImmediateEnabled = false -- Bảo vệ thuyền ngay lập tức
local boatProtectTween = nil
local boatProtectConnection = nil
local originalBoatProtectY = nil
local currentBoat = nil
_G.Random_Auto = false -- Auto Random Fruit
local selectedPlayer = nil -- Biến lưu player được chọn cho Spectate và Tween Player
local playerTweenInfo = nil
local rockTouchConnection = nil -- Biến connection cho sự kiện chạm đá

-- Hàm hỗ trợ
local function setBoatNoClip(boat, enable)
    for _, desc in ipairs(boat:GetDescendants()) do
        if desc:IsA("BasePart") then
            desc.CanCollide = not enable
        end
    end
end

local function setPlayerNoClip(char, enable)
    for _, desc in ipairs(char:GetDescendants()) do
        if desc:IsA("BasePart") then
            desc.CanCollide = not enable
        end
    end
end

local function getBoatVehicleSeat()
    local boatsFolder = Workspace:FindFirstChild("Boats")
    if not boatsFolder then return nil, nil end

    for _, boat in ipairs(boatsFolder:GetChildren()) do
        local seat = boat:FindFirstChild("VehicleSeat")
        if seat and seat.Occupant and seat.Occupant.Parent == LocalPlayer.Character then
            return boat, seat
        end
    end
    return nil, nil
end

local function stopTween(reason)
    if currentTween then
        currentTween:Cancel()
        currentTween = nil
        print(reason or "Tween dừng.")
    end
    if leviathanGateConnection then
        leviathanGateConnection:Disconnect()
        leviathanGateConnection = nil
    end
    if playerTweenInfo then
        playerTweenInfo:Cancel()
        playerTweenInfo = nil
    end
    scriptEnabled = false
    playerTweening = false
    islandTweening = false
    local boat, _ = getBoatVehicleSeat()
    if boat then
        setBoatNoClip(boat, false)
    end
    if LocalPlayer.Character then
        setPlayerNoClip(LocalPlayer.Character, false)
    end
    stopBoatProtect() -- Dừng bảo vệ thuyền khi tween dừng
    setRockDestruction(false) -- Ensure rock destruction is off when tween is stopped
end

local function stopIfMapObjectAppears(child)
    if child.Name == "LeviathanGate" then
        stopTween("LeviathanGate xuất hiện.")
    elseif child.Name == "PrehistoricIsland" then
        stopTween("PrehistoricIsland xuất hiện.")
    end
end

local function checkLeaveBoat()
    local _, seat = getBoatVehicleSeat()
    if not seat then
        stopTween("Bạn đã rời thuyền.")
    end
end

local function tweenBoatToVector3(targetPos)
    -- Nếu đang tween => dừng cũ
    if currentTween then
        stopTween("Dừng tween cũ.")
    end
    local boat, seat = getBoatVehicleSeat()
    if not boat then
        warn("Không tìm thấy thuyền bạn đang ngồi!")
        return
    end
    lastBoat, lastSeat = boat, seat
    currentBoat = boat -- Cập nhật thuyền hiện tại cho bảo vệ thuyền

    local primary = boat.PrimaryPart
    if not primary then
        warn("Thuyền không có PrimaryPart!")
        return
    end

    -- Bật no clip
    setBoatNoClip(boat, true)
    if LocalPlayer.Character then
        setPlayerNoClip(LocalPlayer.Character, true)
    end

    local currentPos = primary.Position
    local finalY = lockHeightMode and customY or currentPos.Y
    if lockHeightMode then
        primary.CFrame = CFrame.new(currentPos.X, finalY, currentPos.Z)
    end

    local distance = (Vector3.new(targetPos.X, finalY, targetPos.Z) - primary.Position).Magnitude
    local tweenTime = distance / tweenSpeed

    local tweenInfo = TweenInfo.new(tweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local goal = { CFrame = CFrame.new(targetPos.X, finalY, targetPos.Z) }

    currentTween = TweenService:Create(primary, tweenInfo, goal)
    currentTween:Play()

    task.spawn(function()
        while currentTween and currentTween.PlaybackState == Enum.PlaybackState.Playing do
            checkLeaveBoat()
            task.wait(0.1)
        end
        -- Khi tween xong => tắt no clip
        setBoatNoClip(boat, false)
        if LocalPlayer.Character then
            setPlayerNoClip(LocalPlayer.Character, false)
        end
        islandTweening = false
        currentBoat = nil -- Reset thuyền hiện tại khi tween xong
    end)

    -- Theo dõi LeviathanGate/PrehistoricIsland
    if leviathanGateConnection then
        leviathanGateConnection:Disconnect()
    end
    leviathanGateConnection = Workspace:WaitForChild("Map").ChildAdded:Connect(stopIfMapObjectAppears)
end

-- Hàm Tween thuyền đến player
local function tweenBoatToPlayer(targetPlayer)
    if playerTweening then
        warn("Đang Tween đến player khác, hãy STOP trước.")
        return
    end
    playerTweening = true

    -- Nếu đang tween => dừng cũ
    if currentTween then
        stopTween("Dừng tween cũ.")
    end

    local boat, seat = getBoatVehicleSeat()
    if not boat then
        warn("Không tìm thấy thuyền đang ngồi!")
        playerTweening = false
        return
    end
    lastBoat, lastSeat = boat, seat

    local primary = boat.PrimaryPart
    if not primary then
        warn("Thuyền không có PrimaryPart!")
        playerTweening = false
        return
    end

    -- Bật no clip
    setBoatNoClip(boat, true)
    if LocalPlayer.Character then
        setPlayerNoClip(LocalPlayer.Character, true)
    end

    local char = targetPlayer.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then
        warn("Player chưa load xong hoặc không có HRP!")
        playerTweening = false
        -- Tắt no clip
        setBoatNoClip(boat, false)
        if LocalPlayer.Character then
            setPlayerNoClip(LocalPlayer.Character, false)
        end
        return
    end

    local playerPos = char.HumanoidRootPart.Position
    local currentPos = primary.Position
    local finalY = lockHeightMode and customY or currentPos.Y
    if lockHeightMode then
        primary.CFrame = CFrame.new(currentPos.X, finalY, currentPos.Z)
    end

    local distance = (Vector3.new(playerPos.X, finalY, playerPos.Z) - primary.Position).Magnitude
    local tweenTime = distance / tweenSpeed

    local tweenInfo = TweenInfo.new(tweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local goal = { CFrame = CFrame.new(playerPos.X, finalY, playerPos.Z) }

    playerTweenInfo = TweenService:Create(primary, tweenInfo, goal)
    playerTweenInfo:Play()

    task.spawn(function()
        while playerTweenInfo and playerTweenInfo.PlaybackState == Enum.PlaybackState.Playing do
            checkLeaveBoat()
            task.wait(0.1)
        end
        -- Tắt no clip
        setBoatNoClip(boat, false)
        if LocalPlayer.Character then
            setPlayerNoClip(LocalPlayer.Character, false)
        end
        playerTweening = false
    end)

    if leviathanGateConnection then
        leviathanGateConnection:Disconnect()
    end
    leviathanGateConnection = Workspace:WaitForChild("Map").ChildAdded:Connect(stopIfMapObjectAppears)
end

-- Hàm Auto Return
local function autoReturnCheck()
    while autoReturnEnabled do
        if lastBoat and lastSeat and lastBoat.Parent then
            local char = LocalPlayer.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            if hrp then
                local seatPos = lastSeat.Position
                local distance = (hrp.Position - seatPos).Magnitude
                if distance > 10 then
                    local speed = 300
                    local time = distance / speed

                    local info = TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
                    local goal = { CFrame = CFrame.new(seatPos + Vector3.new(0,3,0)) }
                    local tween = TweenService:Create(hrp, info, goal)
                    tween:Play()
                end
            end
        end
        task.wait(1)
    end
end

-- Hàm Kill Aura
local function killAuraLoop()
    local monstersFolder = Workspace:FindFirstChild("Enemies")
    while killAuraEnabled do
        task.wait(1)
        local char = LocalPlayer.Character
        if not char then continue end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp or not monstersFolder then continue end

        for _, monster in pairs(monstersFolder:GetChildren()) do
            local hum
