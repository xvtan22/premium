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
    while wait() do
        if _G.ToggleAutoCollect then -- Chỉ chạy nếu bật toggle
            local Chests = getChestsSorted()
            if #Chests > 0 then
                Teleport(Chests[1].CFrame)
            else
                -- Bạn có thể thêm logic serverhop ở đây
            end
        end
    end
end

-- Tạo GUI để bật/tắt Auto Collect
local ToggleGui = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)
local ToggleButton = Instance.new("TextButton", ToggleGui)
ToggleButton.Size = UDim2.new(0, 200, 0, 50)
ToggleButton.Position = UDim2.new(0.9, 0, 0.5, -25) -- Bên phải, giữa màn hình
ToggleButton.AnchorPoint = Vector2.new(1, 0.5)
ToggleButton.Text = "Auto Collect OFF"
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

ToggleButton.MouseButton1Click:Connect(function()
    _G.ToggleAutoCollect = not _G.ToggleAutoCollect
    if _G.ToggleAutoCollect then
        ToggleButton.Text = "Auto Collect ON"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    else
        ToggleButton.Text = "Auto Collect OFF"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

-- Chạy script Auto Collect
task.spawn(main)
