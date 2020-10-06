local Rodux = require(game.ReplicatedStorage.Rodux)
local reducer = require(game.ReplicatedStorage.Reducer)

local remotes = game.ReplicatedStorage.Remotes
local stateReplicationRemote = remotes.StateReplication
local initialState = remotes.InitialState:InvokeServer() or {}

local ClientStore = Rodux.Store.new(reducer,initialState,{
    Rodux.loggerMiddleware;
})

stateReplicationRemote.OnClientEvent:Connect(function(action)
    ClientStore:dispatch(action)
end)

return ClientStore