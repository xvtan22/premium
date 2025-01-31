-- Tải Fluent UI Library
local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()

-- Tạo cửa sổ chính với kích thước vừa phải
local Window = Library:CreateWindow{
    Title = "Dino Hub",  -- Đặt tiêu đề cửa sổ
    SubTitle = "| .gg/67tG8nmaQX",  -- Đặt phụ đề cửa sổ
    TabWidth = 160,
    Size = UDim2.fromOffset(800, 600),  -- Kích thước vừa phải
    Resize = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl -- Phím thu nhỏ
}

-- Tạo các tab
local MainTab = Window:AddTab({ Title = "Main", Icon = "" })
local PlayerTab = Window:AddTab({ Title = "Player", Icon = "" })
local OtherTab = Window:AddTab({ Title = "Khác", Icon = "" })

-- Tab Main
MainTab:AddToggle("LevithanToggle", {
    Title = "Auto collect chest",
    Description = "Bật/Tắt Auto collect chest"
})

-- Tab Player
PlayerTab:AddDropdown("Chọn người chơi", {
    Title = "Chọn người chơi",
    Description = "Danh sách người chơi",
})
PlayerTab:AddButton({
    Title = "Refresh",
    Description = "Làm mới danh sách người chơi",
})

-- Tab Other
OtherTab:AddToggle("Anti Die", {
    Title = "Anti Die",
    Description = "Anti die chỉ có hiệu lực khi HP=30%",
})
OtherTab:AddToggle("WalkSpeed", {
    Title = "WalkSpeed",
    Description = "Bật/Tắt WalkSpeed",
})

-- Tạo ScreenGui để chứa nút toggle
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Tạo nút bên ngoài để đóng/mở cửa sổ Fluent
local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0, 100, 0, 50)  -- Kích thước của nút
ToggleButton.Position = UDim2.new(0, 10, 0.5, -25)  -- Đặt vị trí ở góc giữa bên trái màn hình
ToggleButton.Text = "Dino"  -- Đổi tên thành Dino
ToggleButton.Parent = ScreenGui  -- Đặt nút vào ScreenGui

-- Xử lý sự kiện khi nhấn nút toggle để bật/tắt cửa sổ Fluent
ToggleButton.MouseButton1Click:Connect(function()
    Window:Toggle()  -- Đóng/mở cửa sổ GUI khi nhấn nút
end)

-- Đảm bảo các thành phần đã được vẽ
Window:Render()
