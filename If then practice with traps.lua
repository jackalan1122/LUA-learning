-- If then practice with traps

-- creating the part and script
-- Create and name a trap part. In the part add a script named trap script

local trapPart = script.Parent -- insert it in trap part
local function onTouch(otherPart)
    local character = otherPart.Parent
    local humanoid = character:FindFirstChildWhichIsA("Humanoid")

    if humanoid then
        humanoid.Health = 0
end
trapPart.Touched:Connect(onTouch)