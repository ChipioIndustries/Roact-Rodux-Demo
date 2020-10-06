local Rodux = require(game.ReplicatedStorage.Rodux)
local Llama = require(game.ReplicatedStorage.Llama)

local playerData = Rodux.createReducer({},{
    addPlayer = function(state,action)
        return Llama.Dictionary.join(state,{
            [action.player.UserId] = {
                credits = 0;
                inventory = {};
            };
        })
    end;
    removePlayer = function(state,action)
        return Llama.Dictionary.join(state,{
            [action.player.UserId] = Llama.None;
        })
    end;
    addInventoryItem = function(state,action)
        local playerState = state[action.player.UserId]
        local playerInventory = playerState.inventory
        return Llama.Dictionary.join(state,{
            [action.player.UserId] = Llama.Dictionary.join(playerState,{
                invntory = Llama.List.join(playerInventory,{
                    action.item;
                });
            });
        })
    end;
    changeCredits = function(state,action)
        local playerState = state[action.player.UserId]
        return Llama.Dictionary.join(state,{
            [action.player.UserId] = Llama.Dictionary.join(playerState,{
                credits = playerState.credits + action.credits;
            });
        })
    end;
})

return playerData