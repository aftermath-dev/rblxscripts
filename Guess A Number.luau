-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.290167868, 0, 0.283834577, 0)
Frame.Size = UDim2.new(0, 346, 0, 203)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 346, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Guess a number"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.210982665, 0, 0.309854895, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.GothamBold
TextBox.PlaceholderText = "Your number (1-100)"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.210982665, 0, 0.674033165, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "Check!"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.831531346, 0, 0.672478616, 0)
TextButton_2.Size = UDim2.new(0, 48, 0, 50)
TextButton_2.Font = Enum.Font.GothamBold
TextButton_2.Text = "X"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0231213868, 0, 0.674033165, 0)
TextButton_3.Size = UDim2.new(0, 52, 0, 49)
TextButton_3.Font = Enum.Font.GothamBold
TextButton_3.Text = "-"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextButton_4.Parent = ScreenGui
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.127098322, 0, 0.377819538, 0)
TextButton_4.Size = UDim2.new(0, 44, 0, 45)
TextButton_4.Visible = false
TextButton_4.Font = Enum.Font.GothamBold
TextButton_4.Text = "Open"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = TextButton_4

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Parent = TextButton_4

local number = math.random(1, 100)

local answer = ""

TextButton.MouseButton1Click:Connect(function() 
	local answer = TextBox.Text
	if answer == "" then
		TextButton.Text = "bruh enter ur number"
		wait(2)
	    TextButton.Text = "Check!"
	end
	
	if answer == number then
		TextButton.Text = "You're guessed!"
		wait(2)
		ScreenGui:Destroy()
	else
		TextButton.Text = "Wrong!"
		wait(2)
		TextButton.Text = "Check!"
	end
end)

TextButton_2.MouseButton1Click:Connect(function() 
	ScreenGui:Destroy()
end)

TextButton_3.MouseButton1Click:Connect(function() 
	Frame.Visible = false
	TextButton_4.Visible = true
end)

TextButton_4.MouseButton1Click:Connect(function() 
	TextButton_4.Visible = false
	Frame.Visible = true
end)

local Object = Frame

local UserInputService = game:GetService("UserInputService")
local SmoothDragSpeed = 0.1

local SmoothDragToggle
local SmoothDragInput
local SmoothDragStart

function SmoothDrag(Frame)

	local function UpdateSmoothDragInput(Input)
		local Delta = Input.Position - SmoothDragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(SmoothDragSpeed), {Position = Position}):Play()
	end

	Frame.InputBegan:Connect(function(Input)
		if (Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch) and UserInputService:GetFocusedTextBox() == nil then
			SmoothDragToggle = true
			SmoothDragStart = Input.Position
			startPos = Frame.Position
			Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then
					SmoothDragToggle = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
			SmoothDragInput = Input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(Input)
		if Input == SmoothDragInput and SmoothDragToggle then
			UpdateSmoothDragInput(Input)
		end
	end)

end

SmoothDrag(Object)

local Object = TextButton_4

local UserInputService = game:GetService("UserInputService")
local SmoothDragSpeed = 0.1

local SmoothDragToggle
local SmoothDragInput
local SmoothDragStart

function SmoothDrag(Frame)

	local function UpdateSmoothDragInput(Input)
		local Delta = Input.Position - SmoothDragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(SmoothDragSpeed), {Position = Position}):Play()
	end

	Frame.InputBegan:Connect(function(Input)
		if (Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch) and UserInputService:GetFocusedTextBox() == nil then
			SmoothDragToggle = true
			SmoothDragStart = Input.Position
			startPos = Frame.Position
			Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then
					SmoothDragToggle = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
			SmoothDragInput = Input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(Input)
		if Input == SmoothDragInput and SmoothDragToggle then
			UpdateSmoothDragInput(Input)
		end
	end)

end

SmoothDrag(Object)
