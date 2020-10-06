local Roact = require(game.ReplicatedStorage.Roact)

local Currency = Roact.Component:extend("Currency")

function Currency:render()
    return Roact.createElement("TextLabel")
end

return Currency