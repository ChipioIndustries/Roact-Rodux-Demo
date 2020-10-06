local Rodux = require(game.ReplicatedStorage.Rodux)

local reducers = {}

for index,reducer in pairs(script:GetChildren()) do
    if reducer:IsA("ModuleScript") then
        reducers[reducer.Name] = require(reducer)
    end
end

return Rodux.combineReducers(reducers)