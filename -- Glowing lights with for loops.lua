-- Glowing lights with for loops

local lightPart = script.Parent
local light = lightPart.Spotlight

-- how much light brightness will change
local brightnessChange = 1
local timeChange = 1

-- To make lamp glow, it will use two for loops. 
-- First loop (increases light)
for currentBrightness = 0, 5, brightnessChange do
    light.Brightness = currentBrightness
    wait(timeChange)
end

-- Second loop
for currentBrightness = 5, 0, - brightnessChange do
    light.Brightness = currentBrightness
    wait(timeChange)
end

-- Tp make the loops repeat put the 2 for loops in a while loop
while true do
    for currentBrightness = 0, 5, brightnessChange do
        light.Brightness = currentBrightness
        wait(timeChange)
    end
    
    -- Second loop
    for currentBrightness = 5, 0, - brightnessChange do
        light.Brightness = currentBrightness
        wait(timeChange)
    end
end
