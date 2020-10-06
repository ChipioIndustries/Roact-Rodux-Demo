local MarketplaceService = game:GetService("MarketplaceService")

local setConfig = require(game.ReplicatedStorage.Actions.setConfig)
local ServerStore = require(game.ServerScriptService.ServerStore)

local CONFIG = {
    CurrencyProducts = {
        [100] = 0;
        [500] = 0;
        [1000] = 0;
        [5000] = 0;
        [10000] = 0;
        [50000] = 0;
        [100000] = 0;
        [500000] = 0;
        [1000000] = 0;
    }

    Items = {

    }
}

for amount,id in pairs(CONFIG.CurrencyProducts) do
    local info = MarketplaceService:GetProductInfo(id)
    local entry = {
        Name = info.Name;
        Price = info.PriceInRobux;
        ProductID = id;
    }
    CONFIG.CurrencyProducts[amount] = entry
end

ServerStore:dispatch(setConfig(CONFIG))
