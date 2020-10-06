local ServerStore = require(game.ServerScriptService.ServerStore)
local incrementTimer = require(game.ReplicatedStorage.Actions.incrementTimer)

while wait(1) do
    ServerStore:dispatch(incrementTimer())
end