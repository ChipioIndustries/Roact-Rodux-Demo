local Roact = require(game.ReplicatedStorage.Roact)

local MenuButton = Roact.Component:extend("MenuButton")

function MenuButton:render()
    return Roact.createElement("TextButton",{
        BackgroundColor3 = self.props.color;
        Font = Enum.Font.GothamBlack;
        Text = self.props.symbol;
        TextColor3 = Color3.new(1,1,1);
        TextScaled = true;
        [Roact.Event.Activated] = self.props.callback;
    })
end

return MenuButton