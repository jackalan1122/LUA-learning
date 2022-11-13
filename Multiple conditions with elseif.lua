-- Multiple conditions with else/if

-- Parts and Scripts
-- Create an anchored part named finished line
-- create a sreipt named RaceScript

local timePassed = 0
local finishLine = script.Parent
local raceActive = true

-- Runs whenever the player touches the finish line part
local function finish()
    raceActive = false
    print("You finished in " .. timePassed)

    if timePassed <= 10 then
        print("You get a gold medal!")
    elseif timePassed > 10 and timePassed <=20 then
        print("You get a silver medal!")
    elseif timePassed > 20 and timePassed <= 30 then
        print("You get a bronze medal!")
    else
        print("Try again!")
    end
end

local function partTouched(otherPart)
    local character = otherPart.Parent
    local humanoid = character:FindFirstChildWhichIsA("Humanoid")

    if humanoid and raceActive == true then
        finish()
    end
end

while raceActive == true do
    wait(1)
    timePassed = timePassed + 1
    print(timePassed)
end