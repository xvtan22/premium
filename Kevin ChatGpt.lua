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
local IslandTab = Window:AddTab({ Title = "Đảo 🏝️", Icon = "" })
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
local rockTouchConnection = nil -- Biến connection cho sự kiện chạm đá

-- Danh sách đảo
local islands = {
    Tiki = Vector3.new(-16208.6, 10.4, 500.9),
    Hydra = Vector3.new(5164.5, 48.1, 2094.1),
    ["Pháo đài"] = Vector3.new(-5122.9, 315.7, -2961.9),
    ["Dinh Thự"] = Vector3.new(-12551.5, 338.5, -7552.3),
    ["Lâu Đài Bóng Tối"] = Vector3.new(-9508.9, 158.4, 4894.1),
    ["Cảng"] = Vector3.new(-221.3, 22.3, 5517.8),
    ["Cây Đại Thụ"] = Vector3.new(2130.8, 23.1, -6635.9),
    ["Đảo Bánh"] = Vector3.new(-1928.6, 15.1, -11582.4)
}

-- Thêm chức năng cho IslandTab
IslandTab:AddDropdown("Chọn đảo", {
    Title = "Chọn đảo",
    Values = {"Tiki", "Hydra", "Pháo đài", "Dinh Thự", "Lâu Đài Bóng Tối"},
    Callback = function(Value)
        selectedIslandCoord = islands[Value]
        Fluent:Notify({
            Title = "Đảo ",
            Content = "Đã chọn " .. Value,
            Duration = 3
        })
    end
})

-- Thêm chức năng cho FruitTab
FruitTab:AddToggle("Find Fruit", {
    Title = "Tìm và ESP Fruit",
    Description = "Tìm kiếm và hiển thị ESP Fruit",
    Callback = function(Value)
        if Value then
            Fluent:Notify({
                Title = "Fruit ESP",
                Content = "Đã bật ESP Fruit",
                Duration = 3
            })
        else
            Fluent:Notify({
                Title = "Fruit ESP",
                Content = "Đã tắt ESP Fruit",
                Duration = 3
            })
        end
    end
})

-- Thêm chức năng cho OtherTab
OtherTab:AddToggle("Anti Die", {
    Title = "Anti Die",
    Description = "Chỉ kích hoạt khi HP <= 30%",
    Callback = function(Value)
        if Value then
            Fluent:Notify({ Title = "Anti Die", Content = "Kích hoạt", Duration = 3 })
        else
            Fluent:Notify({ Title = "Anti Die", Content = "Vô hiệu hóa", Duration = 3 })
        end
    end
})
