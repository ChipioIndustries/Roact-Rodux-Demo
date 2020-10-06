local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local Roact = require(game.ReplicatedStorage.Roact)
local RoactRodux = require(game.ReplicatedStorage.RoactRodux)
local Rodux = require(game.ReplicatedStorage.Rodux)

local Interface = require(game.ReplicatedStorage.Components:WaitForChild("Interface"))

local ClientStore = require(game.ReplicatedStorage.ClientStore)

Roact.setGlobalConfig({
	elementTracing = true;
})

local interface = Roact.createElement(RoactRodux.StoreProvider,{
	store = ClientStore;
},{
	Interface = Roact.createElement(Interface);
})

Roact.mount(interface,playerGui)