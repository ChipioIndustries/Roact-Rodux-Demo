local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local Roact = require(game.ReplicatedStorage.Roact)
local RoactRodux = require(game.ReplicatedStorage.RoactRodux)
local Rodux = require(game.ReplicatedStorage.Rodux)

local Interface = require(game.ReplicatedStorage.Components:WaitForChild("Interface"))

local store = Rodux.Store.new(Rodux.createReducer(nil,{}),{})

Roact.setGlobalConfig({
	elementTracing = true;
})

local interface = Roact.createElement(RoactRodux.StoreProvider,{
	store = store; --TODO
},{
	Interface = Roact.createElement(Interface);
})

Roact.mount(interface,playerGui)