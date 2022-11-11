local Button = script.Parent
local Bridge = game.Workspace.Bridge

local function buttonPressed()
	print("Button Touched")
	Button.Color = Color3.fromRGB(43, 232, 50)
	Bridge.CanCollide = true
	Bridge.Transparency = 0
end
Button.Touched:Connect(buttonPressed)