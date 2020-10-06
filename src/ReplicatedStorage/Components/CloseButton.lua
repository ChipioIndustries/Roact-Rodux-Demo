local Roact = require(game.ReplicatedStorage.Roact)

local CloseButton = Roact.Component:extend("CloseButton")

function CloseButton:render()
    return Roact.createElement("TextButton",{
        AnchorPoint = Vector2.new(0,1);
        BackgroundColor3 = Color3.fromRGB(255,85,85);
        Position = UDim2.new(1,0,0,0);
        Size = UDim2.new(0,40,0,40);
        Font = Enum.Font.GothamBlack;
        Text = "X";
        TextColor3 = Color3.new(1,1,1);
        TextScaled = true;
        [Roact.Event.Activated] = self.props.callback;
    })
end

return CloseButton