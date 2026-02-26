--< Services >--
local GameId = game.PlaceId
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local isSupport= ""

local GameList = {
	[96645548064314] = "704ea577b061c618d665a49ed1fd1edd", -- Catch and Tame
	[7305309231] = "1725ab280d83cfe931abb9bfd65727f2", -- Taxi Boss
	[129315204746120] = "bfa25d3dcae98bcc456c63d553891ac9", -- Escape Quicksand From Brainrots!
	[12604352060] = "c5025cc54b4b7c0ada934dd330307437", -- Arcane Oddysey
	[2772610559] = "4185ccf81058a54bde1342c7df545d51", -- Farming And Friends
	[6735572261] = "5ffb6831448bdbc12601651dd26af653", -- Pillgrammed
}

for id, scriptid in pairs(GameList) do
	if id == GameId then
		isSupport = scriptid
	end
end

if isSupport == "" then
	StarterGui:SetCore("SendNotification",{
		Title = "Purge",
		Text = "Game not supported!",
		Duration = 5,
	})
	return
end

--< Ui Instances >--
local Scr = Instance.new("ScreenGui", game.CoreGui)

local MainFrame = Instance.new("Frame", Scr)
MainFrame.BorderSizePixel = 0
MainFrame.BackgroundColor3 = Color3.fromRGB(23, 33, 45)
MainFrame.Size = UDim2.new(0, 486, 0, 271)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)

local Rad1 = Instance.new("UICorner", MainFrame)
Rad1.CornerRadius = UDim.new(0, 16)

local Title = Instance.new("TextLabel", MainFrame)
Title.BorderSizePixel = 0
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Title.TextColor3 = Color3.fromRGB(221, 221, 221)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 200, 0, 46)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.Text = "Purge - Key System"
Title.Position = UDim2.new(0.27, 0, 0.05, 0)

local KeyInput = Instance.new("TextBox", MainFrame)
KeyInput.CursorPosition = -1
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.BorderSizePixel = 0
KeyInput.TextWrapped = true
KeyInput.TextSize = 14
KeyInput.BackgroundColor3 = Color3.fromRGB(18, 26, 35)
KeyInput.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
KeyInput.PlaceholderText = "Enter Key.."
KeyInput.Size = UDim2.new(0, 316, 0, 43)
KeyInput.Position = UDim2.new(0.16, 0, 0.41, 0)
KeyInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyInput.Text = ""

local InputRad = Instance.new("UICorner", KeyInput)
InputRad.CornerRadius = UDim.new(0, 8)

local Line = Instance.new("Frame", MainFrame)
Line.BorderSizePixel = 0
Line.BackgroundColor3 = Color3.fromRGB(36, 53, 72)
Line.Size = UDim2.new(0, 447, 0, 3)
Line.Position = UDim2.new(0.03, 0, 0.24, 0)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)

local LineRad = Instance.new("UICorner", Line)
LineRad.CornerRadius = UDim.new(0, 8)

local Discord = Instance.new("ImageButton", MainFrame)
Discord.BorderSizePixel = 0
Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discord.Image = "rbxassetid://7948857489"
Discord.Size = UDim2.new(0, 34, 0, 37)
Discord.BackgroundTransparency = 1
Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord.Position = UDim2.new(0.03909, 0, 0.07011, 0)


local ValidateBtn = Instance.new("TextButton", MainFrame)
ValidateBtn.BorderSizePixel = 0
ValidateBtn.TextSize = 14
ValidateBtn.TextColor3 = Color3.fromRGB(221, 221, 221)
ValidateBtn.BackgroundColor3 = Color3.fromRGB(46, 68, 92)
ValidateBtn.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
ValidateBtn.Size = UDim2.new(0, 150, 0, 50)
ValidateBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
ValidateBtn.Text = "Validate"
ValidateBtn.Position = UDim2.new(0.16, 0, 0.7, 0)

local ValRad = Instance.new("UICorner", ValidateBtn)
ValRad.CornerRadius = UDim.new(0, 8)

local GetKey = Instance.new("TextButton", MainFrame)
GetKey.BorderSizePixel = 0
GetKey.TextSize = 14
GetKey.TextColor3 = Color3.fromRGB(221, 221, 221)
GetKey.BackgroundColor3 = Color3.fromRGB(46, 68, 92)
GetKey.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
GetKey.Size = UDim2.new(0, 150, 0, 50)
GetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
GetKey.Text = "Get Key"
GetKey.Position = UDim2.new(0.51, 0, 0.7, 0)

local GetRad = Instance.new("UICorner", GetKey)
GetRad.CornerRadius = UDim.new(0, 8)

local CloseBtn = Instance.new("TextButton", MainFrame)
CloseBtn.BorderSizePixel = 0
CloseBtn.TextSize = 23
CloseBtn.TextColor3 = Color3.fromRGB(221, 221, 221)
CloseBtn.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
CloseBtn.Size = UDim2.new(0, 31, 0, 28)
CloseBtn.BackgroundTransparency = 1
CloseBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseBtn.Text = "X"
CloseBtn.Position = UDim2.new(0.9, 0, 0.09, 0)

local UIStroke = Instance.new("UIStroke", MainFrame)
UIStroke.Thickness = 4
UIStroke.Color = Color3.fromRGB(23, 49, 50)

--< Ui Instances >--

--< Functions >--
local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"));

local gui = MainFrame

local dragging
local dragInput
local dragStart
local startPos

function Lerp(a, b, m)
	return a + (b - a) * m
end;

local lastMousePos
local lastGoalPos
local DRAG_SPEED = (8);
function Update(dt)
	if not (startPos) then return end;
	if not (dragging) and (lastGoalPos) then
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
		return 
	end;

	local delta = (lastMousePos - UserInputService:GetMouseLocation())
	local xGoal = (startPos.X.Offset - delta.X);
	local yGoal = (startPos.Y.Offset - delta.Y);
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
	gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
end;

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		lastMousePos = UserInputService:GetMouseLocation()

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

runService.Heartbeat:Connect(Update)

local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
api.script_id = isSupport

local Checking = false

function CheckKey(key)
	if Checking then return end
	Checking = true
	key = key:gsub("[\r\n%z]", " "):gsub("[ \t]", ""):gsub("[ \n]", ""):gsub("[ \t]+%f[\r\n%z]", "")
	local status = api.check_key(key);

	StarterGui:SetCore("SendNotification",{
		Title = "Key System",
		Text = "[".. status.code .. "] " .. status.message,
		Duration = 5,
	})

	if (status.code == "KEY_VALID") then			
		script_key = key;
		getfenv(0).script_key = key;
		getfenv(1).script_key = key;
		getgenv().script_key = key;

		Scr:Destroy()
		
		writefile("PurgeKey.txt", key)
		api.load_script()
	end
	Checking = false
end

if isfile("PurgeKey.txt") then
	CheckKey(readfile("PurgeKey.txt"))
end

CloseBtn.MouseButton1Click:Connect(function() 
	Scr:Destroy()
end)

local Copy = setclipboard or setrbxclipboard
GetKey.MouseButton1Click:Connect(function()
	Copy("https://ads.luarmor.net/get_key?for=Purge_Hub_Keysystem-PJcGdcMNSvbV")
	StarterGui:SetCore("SendNotification",{
		Title = "Key System",
		Text = "Key Link Copied!",
		Duration = 5,
	})
end)

ValidateBtn.MouseButton1Click:Connect(function()
	CheckKey(KeyInput.Text)
end)

Discord.MouseButton1Click:Connect(function()
	Copy("https://discord.gg/Euza3CCYnR")
end)
