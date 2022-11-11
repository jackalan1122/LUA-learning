local trap = script.Parent

local function onTouch(objectTouched)
	print("Something touched the trap")
	objectTouched:Destroy()
end

-- Connect the function to the touched event
trap.Touched:Connect(onTouch)