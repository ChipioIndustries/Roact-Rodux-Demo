local Roact = require(game.ReplicatedStorage.Roact)
local RoactRodux = require(game.ReplicatedStorage.RoactRodux)

local Status = Roact.Component:extend("Status")

function Status:render()
    return Roact.createElement("TextLabel",{
        BackgroundTransparency = 1;
        Size = UDim2.new(1,0,0,40);
        Text = self.props.status;
        TextScaled = true;
        TextColor3 = Color3.new(1,1,1);
        Font = Enum.Font.GothamBlack;
    })
end

Status = RoactRodux.connect(
    function(state,props)
        return {
            status = state.status;
        }
    end
)(Status)

return Status