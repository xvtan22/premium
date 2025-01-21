-- Auto-Collect Chest Script for Blox Fruits

-- Maximum teleportation speed in studs per second
local MaxSpeed = 300

-- Player and locations services
local LocalPlayer = game:GetService("Players").LocalPlayer
local Locations = workspace._WorldOrigin.Locations

-- Ensure character is loaded
local function getCharacter()
    if not LocalPlayer.Character then
        LocalPlayer.CharacterAdded:Wait()
    end
    LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    return LocalPlayer.Character
end

-- Sort chests by distance from the player
local function DistanceFromPlrSort(ObjectList)
    local RootPart = getCharacter().HumanoidRootPart
    table.sort(ObjectList, function(ChestA, ChestB)
        local RootPos = RootPart.Position
        local DistanceA = (RootPos - ChestA.Position).Magnitude
        local DistanceB = (RootPos - ChestB.Position).Magnitude
        return DistanceA < DistanceB
    end)
end

-- Retrieve and sort chests
local UncheckedChests = {}
local FirstRun = true
local function getChestsSorted()
    if FirstRun then
        FirstRun = false
        for _, Object in pairs(workspace:GetDescendants()) do
            if Object.Name:find("Chest") and Object:IsA("Part") then
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

-- Enable or disable noclip
local function toggleNoclip(Toggle)
    for _, Part in pairs(getCharacter():GetChildren()) do
        if Part:IsA("BasePart") then
            Part.CanCollide = not Toggle
        end
    end
end

-- Teleport to a target position
local function Teleport(Goal, Speed)
    Speed = Speed or MaxSpeed
    toggleNoclip(true)
    local RootPart = getCharacter().HumanoidRootPart
    while (RootPart.Position - Goal.Position).Magnitude > 1 do
        local Direction = (Goal.Position - RootPart.Position).unit
        RootPart.CFrame = RootPart.CFrame + Direction * (Speed * task.wait())
    end
    toggleNoclip(false)
end

-- Main loop for auto-collecting chests
local function main()
    while task.wait() do
        local Chests = getChestsSorted()
        if #Chests > 0 then
            Teleport(Chests[1].CFrame)
        else
            -- Optional: Implement server hopping here if needed
        end
    end
end

main()
