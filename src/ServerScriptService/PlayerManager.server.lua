local ServerStore = require(game.ServerScriptService.ServerStore)
local actions = game.ReplicatedStorage.Actions
local addPlayer = require(actions.addPlayer)
local removePlayer = require(actions.removePlayer)

function playerAdded(player)
    ServerStore:dispatch(addPlayer(player))
end

function playerRemoving(player)
    ServerStore:dispatch(removePlayer(player))
end

game.Players.PlayerAdded:Connect(playerAdded)
game.Players.PlayerRemoving:Connect(playerRemoving)