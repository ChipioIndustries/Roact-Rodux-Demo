local Rodux = require(game.ReplicatedStorage.Rodux)
local reducer = require(game.ReplicatedStorage.Reducer)
local replicationMiddleware = require(game.ReplicatedStorage.ReplicationMiddleware)

local ServerStore = Rodux.Store.new(reducer,{},{
    Rodux.loggerMiddleware;
    replicationMiddleware;
})

return ServerStore