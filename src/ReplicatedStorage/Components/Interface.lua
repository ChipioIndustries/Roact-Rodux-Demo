local Roact = require(game.ReplicatedStorage.Roact)

local HUD = require(game.ReplicatedStorage.Components.HUD)

local Interface = Roact.Component:extend("Interface")

function Interface:render()
	return Roact.createElement("ScreenGui",{
		ResetOnSpawn = false;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	},{
		HUD = Roact.createElement(HUD,{
			test2 = "test2"
		})
	})
end

return Interface