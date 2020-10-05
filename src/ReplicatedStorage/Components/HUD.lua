local Roact = require(game.ReplicatedStorage.Roact)
local RoactRodux = require(game.ReplicatedStorage.RoactRodux)

local HUD = Roact.Component:extend("HUD")

function HUD:render()
	print("test: "..self.props.test)
	print("test2: "..self.props.test2)
	return Roact.createElement("TextLabel")
end

HUD = RoactRodux.connect(
	function(state,props)
		return {
			test = "hi";
		}
	end
)(HUD)

return HUD