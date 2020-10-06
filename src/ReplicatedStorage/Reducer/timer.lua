local Rodux = require(game.ReplicatedStorage.Rodux)

local timer = Rodux.createReducer(0,{
    setTimer = function(state,action)
        return action.timer or state
    end;
    incrementTimer = function(state,action)
        return math.max(0,state-1)
    end;
})

return timer