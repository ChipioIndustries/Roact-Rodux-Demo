local player = game.Players.LocalPlayer

local Roact = require(game.ReplicatedStorage.Roact)
local RoactRodux = require(game.ReplicatedStorage.RoactRodux)

local MenuButton = require(game.ReplicatedStorage.Components.MenuButton)

local Menu = Roact.Component:extend("Menu")

function Menu:render()
	local seconds = self.props.timer
	local minutes = tostring(math.floor(seconds/60))
	seconds = tostring(seconds%60)
	if #seconds==1 then
		seconds = "0"..seconds
	end

	return Roact.createElement("Frame",{
		AnchorPoint = Vector2.new(0,1);
		BackgroundColor3 = Color3.new(1,1,1);
		Position = UDim2.new(0,0,1,0);
		Size = UDim2.new(0,160,0,120);
	},{
		Corner = Roact.createElement("UICorner",{
			CornerRadius = UDim.new(0,16);
		});
		Timer = Roact.createElement("TextLabel",{
			AnchorPoint = Vector2.new(0,1);
			Position = UDim2.new(0,16,0,8);
			Size = UDim2.new(1,-32,0,36);
			Visible = (self.props.timer~=0);
			Text = minutes..":"..seconds;
			TextColor3 = Color3.new();
			TextSize = 36;
		},{
			Corner = Roact.createElement("UICorner",{
				CornerRadius = UDim.new(0,8);
			})
		});
		Currency = Roact.createElement("TextLabel",{
			BackgroundTransparency = 1;
			Size = UDim2.new(1,0,0,46);
			Font = Enum.Font.GothamBlack;
			Text = "$"..tostring(self.props.credits);
			TextColor3 = Color3.new();
			TextSize = 36;
		});
		Buttons = Roact.createElement("Frame",{
			AnchorPoint = Vector2.new(0,1);
			BackgroundTransparency = 1;
			Position = UDim2.new(0,0,1,0);
			Size = UDim2.new(1,0,0,80);
		},{
			Layout = Roact.createElement("UIGridLayout",{
				CellSize = UDim2.new(0,72,0,72);
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			}),
			Currency = Roact.createElement(MenuButton,{
				color = Color3.fromRGB(0,170,0);
				symbol = "$";
				callback = function()

				end
			});
			Shop = Roact.createElement(MenuButton,{
				color = Color3.fromRGB(0,170,255);
				symbol = "+";
				callback = function()

				end
			})
		})
	})
end

Menu = RoactRodux.connect(
	function(state,props)
		return {
			--credits = state.playerData[player].credits or 0;
			credits = 0;
			timer = state.timer or 0;
		}
	end
)(Menu)

return Menu