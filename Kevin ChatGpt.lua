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
local OtherTab = Window:AddTab({ Title = "Khác", Icon = "" })

-- Biến tốc độ và trạng thái toggle
local MaxSpeed = 300 -- Tốc độ tối đa (studs/giây)
_G.ToggleAutoCollect = false -- Mặc định tắt

-- Lấy character của LocalPlayer
local function getCharacter()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    if not LocalPlayer.Character then
        LocalPlayer.CharacterAdded:Wait()
    end
    LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    return LocalPlayer.Character
end

-- Sắp xếp danh sách Object theo khoảng cách
table.sort = function(list, comparator)
    local len = #list
    for i = 1, len - 1 do
        for j = i + 1, len do
            if comparator(list[j], list[i]) then
                list[i], list[j] = list[j], list[i]
            end
        end
    end
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
            if Object.Name:find("Chest") and Object:IsA("BasePart") then
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
        RootPart.CFrame = CFrame.new(RootPart.Position + Direction * (Speed * task.wait()))
    end
    toggleNoclip(false)
end

local function main()
    task.spawn(function()
        while task.wait() do
            if _G.ToggleAutoCollect then
                local Chests = getChestsSorted()
                if #Chests > 0 then
                    Teleport(Chests[1], MaxSpeed)
                end
            end
        end
    end)
end

-- Tab Main
MainTab:AddToggle("LevithanToggle", {
    Title = "Auto collect chest",
    Description = "Bật/Tắt Auto collect chest",
    Callback = function(Value)
        _G.ToggleAutoCollect = Value
        if Value then
            main()
        end
    end
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
