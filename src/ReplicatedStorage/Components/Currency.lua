local Roact = require(game.ReplicatedStorage.Roact)

local Currency = Roact.Component:extend("Currency")

local padding = UDim.new(0,16)

function Currency:render()
    return Roact.createElement("Frame",{
        AnchorPoint = Vector2.new(0.5,0.5);
        BackgroundColor3 = Color3.new(1,1,1);
        Position = UDim2.new(0.5,0,0.5,0);
        Size = UDim2.new(0.8,0,0.8,0);
        Visible = true; --TODO: make toggleable
        ZIndex = 2;
    },{
        Corner = Roact.createElement("UICorner",{
            CornerRadius = UDim.new(0,16);
        });
        Padding = Roact.createElement("UIPadding",{
            PaddingBottom = padding;
            PaddingLeft = padding;
            PaddingRight = padding;
            PaddingTop = padding;
        });
        SizeConstraint = Roact.createElement("UISizeConstraint",{
            MaxSize = Vector2.new(300,200);
        });
        
    })
end

return Currency