local ServerStore = require(game.ServerScriptService.ServerStore)
local actions = game.ReplicatedStorage.Actions
local addInventoryItem = require(actions.addInventoryItem)
local changeCredits = require(actions.changeCredits)

local purchaseItemRemote = game.ReplicatedStorage.Remotes.PurchaseItem

function attemptItemPurchase(player,item)
    ServerStore:dispatch(changeCredits(player,50))
    ServerStore:dispatch(addInventoryItem(player,item))
end

purchaseItemRemote.OnServerInvoke = attemptItemPurchase