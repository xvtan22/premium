-- Tải Fluent UI Library
local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()

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

-- Tạo các tab
local MainTab = Window:AddTab({ Title = "Main", Icon = "" })
local PlayerTab = Window:AddTab({ Title = "Player", Icon = "" })
local IslandTab = Window:AddTab({ Title = "Đảo 🏝️", Icon = "" })
local OtherTab = Window:AddTab({ Title = "Khác", Icon = "" })
local FruitTab = Window:AddTab({ Title = "Fruit", Icon = "" }) -- Tab Fruit mới

-- Tab Main
MainTab:AddToggle("LevithanToggle", {
    Title = "Tìm Levithan và 🌋",
    Description = "Bật/Tắt tìm Levithan và 🌋",
})
MainTab:AddInput("Speed", {
    Title = "Tốc độ",
    Description = "Nhập tốc độ tween",
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

-- Tab Island
IslandTab:AddDropdown("Chọn đảo", {
    Title = "Chọn đảo",
    Description = "Danh sách đảo",
    Values = {"Tiki", "Hydra", "Pháo đài", "Dinh Thự", "Lâu Đài Bóng Tối", "Cảng", "Cây Đại Thụ", "Đảo Bánh"},
})
IslandTab:AddButton({
    Title = "Tween: OFF",
    Description = "Bật/Tắt tween đến đảo",
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

-- Tab Fruit
FruitTab:AddToggle("Find Fruit", {
    Title = "Find Fruit",
    Description = "Tự động nhặt Fruit + Esp fruit",
})
