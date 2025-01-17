-- Script tự động khóa camera với GUI bật/tắt
-- Dành cho mục đích học tập

-- Các dịch vụ cần thiết
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- Biến kiểm soát trạng thái
local isActive = false
local connection -- Để lưu kết nối RenderStepped

-- Hàm tính khoảng cách giữa hai điểm
local function getDistance(pos1, pos2)
    return (pos1 - pos2).Magnitude
end

-- Hàm tìm người chơi gần nhất
local function findClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge -- Giá trị rất lớn để so sánh

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = getDistance(LocalPlayer.Character.HumanoidRootPart.Position, player.Character.HumanoidRootPart.Position)
            if distance < shortestDistance then
                closestPlayer = player
                shortestDistance = distance
            end
        end
    end

    return closestPlayer
end

-- Hàm bật/tắt khóa camera
local function toggleCameraLock()
    if isActive then
        -- Tắt khóa camera
        isActive = false
        Camera.CameraType = Enum.CameraType.Custom -- Trả camera về chế độ mặc định
        if connection then
            connection:Disconnect()
            connection = nil
        end
        print("Camera lock: OFF")
        toggleButton.Text = "Bật Khóa Camera"
    else
        -- Bật khóa camera
        isActive = true
        local targetPlayer = findClosestPlayer()
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPart = targetPlayer.Character.HumanoidRootPart
            Camera.CameraType = Enum.CameraType.Scriptable
            print("Camera lock: ON (Target: " .. targetPlayer.Name .. ")")
            toggleButton.Text = "Tắt Khóa Camera"
            
            connection = RunService.RenderStepped:Connect(function()
                if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPart.Position)
                else
                    warn("Không tìm thấy người chơi mục tiêu hoặc nhân vật đã bị xóa.")
                end
            end)
        else
            warn("Không tìm thấy người chơi gần bạn.")
            isActive = false
        end
    end
end

-- Tạo GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CameraLockGUI"
screenGui.Parent = game.CoreGui -- Đảm bảo giao diện được hiển thị

local toggleButton = Instance.new("TextButton")
toggleButton.Parent = screenGui
toggleButton.Size = UDim2.new(0, 200, 0, 50) -- Kích thước nút
toggleButton.Position = UDim2.new(0.5, -100, 0.9, -25) -- Vị trí nút giữa màn hình
toggleButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.TextSize = 20
toggleButton.Text = "Bật Khóa Camera"

-- Thêm sự kiện nhấn nút
toggleButton.MouseButton1Click:Connect(toggleCameraLock)

-- In thông báo khi script chạy
print("Nhấn nút trên màn hình để bật/tắt khóa camera.")
