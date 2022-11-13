-- If/then practice with power ups
-- Create a new part and insert a script in it

local powerUpPart = script.Parent
local function onTouch(otherPart)
    local character = otherPart.Parent
    local humanoid = character:FindFirstChildWhichIsA("Humanoid")
    if humanoid and humanoid.WalkSpeed <= 16 then
        humanoid.WalkSpeed = 60
        powerUpPart:Destroy()
        wait(2)
        humanoid.WalkSpeed = 16
end
powerUpPart.Touched:Connect(onTouch)