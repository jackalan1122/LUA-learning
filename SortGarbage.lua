local plastic = game.Workspace.Plastic
local gold = game.Workspace.Gold

local function sortGarbage(trash, recyclable)
	local sparkle = Instance.new("ParticleEmitter")
	
	-- Destroy the trash
	trash:Destroy()
	sparkle.Parent = recyclable
end
sortGarbage(plastic, gold)