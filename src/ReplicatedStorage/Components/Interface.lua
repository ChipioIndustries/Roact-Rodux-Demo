local Roact = require(game.ReplicatedStorage.Roact)

local Status = require(game.ReplicatedStorage.Components.Status)
local Menu = require(game.ReplicatedStorage.Components.Menu)

local Interface = Roact.Component:extend("Interface")

local padding = UDim.new(0,8)

function Interface:render()
	return Roact.createElement("ScreenGui",{
		ResetOnSpawn = false;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	},{
		Padding = Roact.createElement("UIPadding",{
			PaddingBottom = padding;
			PaddingLeft = padding;
			PaddingRight = padding;
			PaddingTop = padding;
		});
		Status = Roact.createElement(Status);
		Menu = Roact.createElement(Menu);
	})
end

return Interface