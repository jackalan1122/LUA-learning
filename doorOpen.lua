local doorButton = script.Parent
local Door = game.Workspace.Door

local function buttonTouched()
	print("Door Opened")
	doorButton.Color = Color3.fromRGB(74, 255, 110)
	Door.CanCollide = false
	Door.Transparency = 0.5
end
doorButton.Touched:Connect(buttonTouched)