local Rodux = require(game.ReplicatedStorage.Rodux)

local status = Rodux.createReducer("",{
    updateStatus = function(state,action)
        return action.status or state
    end
})

return status