-- Tải Fluent UI Library
local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()

-- Tạo cửa sổ chính
local Window = Library:CreateWindow{
    Title = "Dino Hub",
    SubTitle = "| gg/67tG8nmaQX",
    TabWidth = 160,
    Size = UDim2.fromOffset(1280, 860),
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

-- Đảm bảo các thành phần đã được vẽ
Window:Render()
