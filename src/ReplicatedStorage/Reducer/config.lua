local Rodux = require(game.ReplicatedStorage.Rodux)

local config = Rodux.createReducer({},{
    setConfig = function(state,action)
        return action.config
    end
})

return config