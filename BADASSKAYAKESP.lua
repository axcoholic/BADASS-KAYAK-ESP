-- the most Badas cript
local BADASS = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")

BADASS.Name = "BADASS"
BADASS.Parent = game.CoreGui
BADASS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = BADASS
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 241, 0, 147)
Frame.Draggable = true
Frame.Selectable = true
Frame.Active = true

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderSizePixel = 6
ImageButton.BorderColor3 = Color3.fromRGB(255, 0, 221)
ImageButton.Position = UDim2.new(0.0327224433, 0, 0.25041604, 0)
ImageButton.Size = UDim2.new(0, 225, 0, 102)
ImageButton.Image = "http://www.roblox.com/asset/?id=9114316"

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.0748299286, 0)
TextLabel.Size = UDim2.new(0, 240, 0, 13)
TextLabel.Font = Enum.Font.SpecialElite
TextLabel.Text = "BADASS KAYAK ESP"
TextLabel.TextColor3 = Color3.fromRGB(252, 0, 19)
TextLabel.TextSize = 24.000

local function nards()
	local script = Instance.new('LocalScript', ImageButton)
	local function esp(fard)
		local highlight = Instance.new("Highlight", game:GetService("CoreGui"))
		highlight.Adornee = fard
		highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		highlight.FillColor = Color3.fromRGB(239, 184, 56)
	end
	script.Parent.MouseButton1Down:Connect(function()
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if v.Name == "kayak" then
				esp(v)
			end
		end
		game:GetService("Workspace").ChildAdded:Connect(function(Part)
			if Part.Name == "kayak" then
				esp(Part)
			end
		end)
	end)
end
coroutine.wrap(nards)()
