--[[
	LocalHub v1.0 — local script for Roblox executors
	ESP · Aimbot · Movement · Misc · Config save/load · Dark GUI

	Usage: open your executor (Solara / Delta / Wave / Synapse / Krnl),
	open the Script tab, paste this whole file and hit Execute.
	Hotkey: Insert or Right Shift toggles the menu.
]]

local Players           = game:GetService("Players")
local RunService        = game:GetService("RunService")
local UserInputService  = game:GetService("UserInputService")
local Workspace         = game:GetService("Workspace")
local Lighting          = game:GetService("Lighting")
local TweenService      = game:GetService("TweenService")
local HttpService       = game:GetService("HttpService")
local GuiService        = game:GetService("GuiService")
local VirtualUser       = game:GetService("VirtualUser")
local Stats             = game:GetService("Stats")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
	Players.PlayerAdded:Wait()
	LocalPlayer = Players.LocalPlayer
end

--=============================================================
-- Compat layer
--=============================================================

local function safeGlobal(name)
	local ok, v = pcall(function()
		local env = getfenv and getfenv()
		if env and env[name] ~= nil then
			return env[name]
		end
		return nil
	end)
	if ok and v ~= nil then
		return v
	end
	ok, v = pcall(function()
		local env = getgenv and getgenv()
		if env and env[name] ~= nil then
			return env[name]
		end
		return nil
	end)
	if ok and v ~= nil then
		return v
	end
	ok, v = pcall(function()
		return _ENV[name]
	end)
	if ok and v ~= nil then
		return v
	end
	return nil
end

local function executorEnv()
	local ok, env = pcall(function()
		return getgenv and getgenv()
	end)
	if ok and type(env) == "table" then
		return env
	end
	ok, env = pcall(function()
		local fallback = getfenv and getfenv()
		if type(fallback) == "table" then
			return fallback
		end
		return nil
	end)
	if ok and type(env) == "table" then
		return env
	end
	return nil
end

local DrawingLib          = safeGlobal("Drawing")
local writefile_fn        = safeGlobal("writefile")
local readfile_fn         = safeGlobal("readfile")
local isfile_fn           = safeGlobal("isfile")
local identifyexecutor_fn = safeGlobal("identifyexecutor")
local gethui_fn           = safeGlobal("gethui")

local hasDrawing = type(DrawingLib) == "table" and type(DrawingLib.new) == "function"

local executorName = "Unknown"
do
	local ok, n = pcall(function()
		if identifyexecutor_fn then
			return identifyexecutor_fn()
		end
		return nil
	end)
	if ok and type(n) == "string" and n ~= "" then
		executorName = n
	elseif syn then
		executorName = "Synapse"
	elseif Delta then
		executorName = "Delta"
	elseif Wave then
		executorName = "Wave"
	elseif Solara then
		executorName = "Solara"
	end
end

--=============================================================
-- Config
--=============================================================

local DEFAULTS = {
	ESP = {
		Enabled     = false,
		Box         = true,
		Fill        = false,
		Name        = true,
		Distance    = true,
		Health      = true,
		Tracer      = false,
		Skeleton    = false,
		TeamCheck   = false,
		MaxDistance = 800,
		Color       = "Red",
	},
	Aimbot = {
		Enabled   = false,
		FOV       = 150,
		Smooth    = 8,
		Key       = "RMB",
		TeamCheck = false,
	},
	Movement = {
		Speed    = false,
		SpeedVal = 32,
		Jump     = false,
		JumpVal  = 70,
		Gravity  = 196.2,
		Fly      = false,
		FlySpeed = 90,
		Noclip   = false,
		InfJump  = false,
	},
	Misc = {
		AntiAfk    = true,
		Fullbright = false,
		FOV        = 0,
		ShowFPS    = true,
		Freecam    = false,
	},
}

local Config = {}
for section, values in pairs(DEFAULTS) do
	Config[section] = {}
	for key, value in pairs(values) do
		Config[section][key] = value
	end
end

local function cfgGet(path)
	local node = Config
	for part in string.gmatch(path, "[^%.]+") do
		if type(node) ~= "table" then
			return nil
		end
		node = node[part]
		if node == nil then
			return nil
		end
	end
	return node
end

local function cfgSet(path, value)
	local parts = {}
	for part in string.gmatch(path, "[^%.]+") do
		parts[#parts + 1] = part
	end
	if #parts == 0 then
		return
	end
	local node = Config
	for i = 1, #parts - 1 do
		node = node[parts[i]]
		if type(node) ~= "table" then
			return
		end
	end
	node[parts[#parts]] = value
end

local ESP_COLORS = {
	Red    = Color3.fromRGB(255, 80, 80),
	Green  = Color3.fromRGB(80, 220, 120),
	Blue   = Color3.fromRGB(90, 160, 255),
	Yellow = Color3.fromRGB(255, 210, 80),
	Purple = Color3.fromRGB(190, 130, 255),
}

local function espColor()
	return ESP_COLORS[Config.ESP.Color] or ESP_COLORS.Red
end

--=============================================================
-- Theme
--=============================================================

local Theme = {
	bg      = Color3.fromRGB(14, 14, 18),
	panel   = Color3.fromRGB(20, 20, 26),
	bar     = Color3.fromRGB(26, 26, 34),
	card    = Color3.fromRGB(38, 38, 48),
	stroke  = Color3.fromRGB(52, 52, 66),
	text    = Color3.fromRGB(232, 232, 242),
	muted   = Color3.fromRGB(138, 138, 158),
	accent  = Color3.fromRGB(99, 165, 250),
	danger  = Color3.fromRGB(248, 113, 113),
}

--=============================================================
-- UI factory
--=============================================================

local layoutCounter = 0
local function nextOrder()
	layoutCounter = layoutCounter + 1
	return layoutCounter
end

local function new(class, props, parent)
	local inst = Instance.new(class)
	if props then
		for key, value in pairs(props) do
			inst[key] = value
		end
	end
	if parent then
		inst.Parent = parent
	end
	return inst
end

local function round(inst, radius)
	return new("UICorner", { CornerRadius = UDim.new(0, radius or 10) }, inst)
end

local function border(inst, color, thickness)
	return new("UIStroke", {
		Color = color or Theme.stroke,
		Thickness = thickness or 1,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	}, inst)
end

local function clearChildren(parent)
	for _, child in ipairs(parent:GetChildren()) do
		if child:IsA("GuiObject") then
			child:Destroy()
		end
	end
end

local guiParent = game:GetService("CoreGui")
if gethui_fn then
	local ok, h = pcall(gethui_fn)
	if ok and h then
		guiParent = h
	end
end

local gui = new("ScreenGui", {
	Name = "LocalHub",
	ResetOnSpawn = false,
	IgnoreGuiInset = false,
	DisplayOrder = 200,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
}, guiParent)

--=============================================================
-- Window
--=============================================================

local window = new("Frame", {
	BackgroundColor3 = Theme.panel,
	BorderSizePixel = 0,
	Position = UDim2.new(0.5, -280, 0.5, -205),
	Size = UDim2.new(0, 560, 0, 410),
	Active = true,
}, gui)
round(window, 14)
border(window, Theme.stroke, 1)

local titleBar = new("Frame", {
	BackgroundColor3 = Theme.bar,
	BorderSizePixel = 0,
	Size = UDim2.new(1, 0, 0, 44),
}, window)
round(titleBar, 14)
new("Frame", {
	BackgroundColor3 = Theme.bar,
	BorderSizePixel = 0,
	Position = UDim2.new(0, 0, 0, 22),
	Size = UDim2.new(1, 0, 0, 22),
}, titleBar)

local accentDot = new("Frame", {
	BackgroundColor3 = Theme.accent,
	BorderSizePixel = 0,
	Position = UDim2.new(0, 16, 0.5, -4),
	Size = UDim2.new(0, 8, 0, 8),
}, titleBar)
round(accentDot, 4)

new("TextLabel", {
	BackgroundTransparency = 1,
	Text = "LocalHub",
	TextSize = 16,
	Font = Enum.Font.GothamBold,
	TextColor3 = Theme.text,
	TextXAlignment = Enum.TextXAlignment.Left,
	Position = UDim2.new(0, 32, 0, 0),
	Size = UDim2.new(0, 160, 1, 0),
}, titleBar)

local badge = new("TextLabel", {
	BackgroundColor3 = Theme.card,
	BorderSizePixel = 0,
	Text = executorName,
	TextSize = 11,
	Font = Enum.Font.Gotham,
	TextColor3 = Theme.muted,
	Position = UDim2.new(0, 112, 0.5, -11),
	Size = UDim2.new(0, 92, 0, 22),
}, titleBar)
round(badge, 6)

local fpsLabel = new("TextLabel", {
	BackgroundTransparency = 1,
	Text = "",
	TextSize = 12,
	Font = Enum.Font.GothamMedium,
	TextColor3 = Theme.muted,
	TextXAlignment = Enum.TextXAlignment.Right,
	Position = UDim2.new(1, -130, 0, 0),
	Size = UDim2.new(0, 80, 1, 0),
}, titleBar)

local function iconButton(text, xOffset)
	local btn = new("TextButton", {
		BackgroundColor3 = Theme.card,
		BorderSizePixel = 0,
		Text = text,
		TextSize = 14,
		Font = Enum.Font.GothamBold,
		TextColor3 = Theme.muted,
		Position = UDim2.new(1, xOffset, 0.5, -11),
		Size = UDim2.new(0, 22, 0, 22),
		AutoButtonColor = true,
	}, titleBar)
	round(btn, 6)
	return btn
end

local closeBtn = iconButton("X", -28)
local minimizeBtn = iconButton("-", -56)

--=============================================================
-- Sidebar + content
--=============================================================

local sidebar = new("Frame", {
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Position = UDim2.new(0, 10, 0, 52),
	Size = UDim2.new(0, 128, 1, -62),
}, window)

local content = new("ScrollingFrame", {
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Position = UDim2.new(0, 146, 0, 52),
	Size = UDim2.new(1, -156, 1, -62),
	ScrollBarThickness = 4,
	ScrollBarImageColor3 = Theme.stroke,
	ScrollBarImageTransparency = 0.2,
	AutomaticCanvasSize = Enum.AutomaticSize.Y,
	CanvasSize = UDim2.new(0, 0, 0, 0),
}, window)

new("UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 6),
	HorizontalAlignment = Enum.HorizontalAlignment.Left,
}, content)

new("UIPadding", {
	PaddingTop = UDim.new(0, 2),
	PaddingBottom = UDim.new(0, 8),
	PaddingRight = UDim.new(0, 6),
}, content)

local TABS = { "ESP", "Aimbot", "Movement", "Misc", "Config" }
local TAB_BUILDERS = {}
local tabButtons = {}
local currentTab = "ESP"

local function setTab(name)
	currentTab = name
	clearChildren(content)
	for tab, button in pairs(tabButtons) do
		local active = tab == name
		button.BackgroundColor3 = active and Theme.card or Theme.panel
		button.TextColor3 = active and Theme.text or Theme.muted
		button.Indicator.Visible = active
	end
	local builder = TAB_BUILDERS[name]
	if builder then
		builder(content)
	end
end

for index, tab in ipairs(TABS) do
	local button = new("TextButton", {
		BackgroundColor3 = Theme.panel,
		BorderSizePixel = 0,
		Text = tab,
		TextSize = 14,
		Font = Enum.Font.GothamMedium,
		TextColor3 = Theme.muted,
		TextXAlignment = Enum.TextXAlignment.Left,
		Position = UDim2.new(0, 0, 0, (index - 1) * 38),
		Size = UDim2.new(1, 0, 0, 32),
		AutoButtonColor = false,
	}, sidebar)
	round(button, 8)
	local indicator = new("Frame", {
		BackgroundColor3 = Theme.accent,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0.5, -8),
		Size = UDim2.new(0, 3, 0, 16),
		Visible = false,
	}, button)
	round(indicator, 2)
	button.Indicator = indicator
	button.MouseButton1Click:Connect(function()
		setTab(tab)
	end)
	tabButtons[tab] = button
end

--=============================================================
-- Widgets
--=============================================================

local function section(parent, text)
	local holder = new("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -12, 0, 28),
		LayoutOrder = nextOrder(),
	}, parent)
	new("TextLabel", {
		BackgroundTransparency = 1,
		Text = string.upper(text),
		TextSize = 11,
		Font = Enum.Font.GothamBold,
		TextColor3 = Theme.muted,
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.new(1, 0, 0, 20),
	}, holder)
	new("Frame", {
		BackgroundColor3 = Theme.stroke,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0, 22),
		Size = UDim2.new(1, 0, 0, 1),
	}, holder)
	return holder
end

local function toggle(parent, path, label)
	local row = new("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -12, 0, 34),
		LayoutOrder = nextOrder(),
	}, parent)

	new("TextLabel", {
		BackgroundTransparency = 1,
		Text = label,
		TextSize = 14,
		Font = Enum.Font.Gotham,
		TextColor3 = Theme.text,
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.new(1, -70, 1, 0),
	}, row)

	local track = new("Frame", {
		BackgroundColor3 = Theme.card,
		BorderSizePixel = 0,
		Position = UDim2.new(1, -46, 0.5, -11),
		Size = UDim2.new(0, 44, 0, 22),
	}, row)
	round(track, 11)

	local knob = new("Frame", {
		BackgroundColor3 = Theme.muted,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 3, 0, 3),
		Size = UDim2.new(0, 16, 0, 16),
	}, track)
	round(knob, 8)

	local function refresh(on)
		track.BackgroundColor3 = on and Theme.accent or Theme.card
		knob.BackgroundColor3 = on and Color3.new(1, 1, 1) or Theme.muted
		TweenService:Create(knob, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {
			Position = UDim2.new(0, on and 25 or 3, 0, 3),
		}):Play()
	end

	refresh(cfgGet(path))

	row.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			local on = not cfgGet(path)
			cfgSet(path, on)
			refresh(on)
		end
	end)

	return row
end

-- one shared drag state so only the slider under the mouse reacts
local sliderState = { active = nil, apply = nil }

local function slider(parent, path, label, min, max, step)
	local value = cfgGet(path)
	local row = new("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -12, 0, 56),
		LayoutOrder = nextOrder(),
	}, parent)

	new("TextLabel", {
		BackgroundTransparency = 1,
		Text = label,
		TextSize = 14,
		Font = Enum.Font.Gotham,
		TextColor3 = Theme.text,
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.new(0.6, 0, 0, 22),
	}, row)

	local valueLabel = new("TextLabel", {
		BackgroundTransparency = 1,
		Text = "",
		TextSize = 13,
		Font = Enum.Font.GothamMedium,
		TextColor3 = Theme.accent,
		TextXAlignment = Enum.TextXAlignment.Right,
		Position = UDim2.new(0.4, 0, 0, 0),
		Size = UDim2.new(0.6, -6, 0, 22),
	}, row)

	local track = new("Frame", {
		BackgroundColor3 = Theme.card,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0, 32),
		Size = UDim2.new(1, -6, 0, 6),
	}, row)
	round(track, 3)

	local fill = new("Frame", {
		BackgroundColor3 = Theme.accent,
		BorderSizePixel = 0,
		Size = UDim2.new(0, 0, 1, 0),
	}, track)
	round(fill, 3)

	local knob = new("Frame", {
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0, 0, 0.5, 0),
		Size = UDim2.new(0, 13, 0, 13),
		ZIndex = 2,
	}, track)
	round(knob, 7)

	local function format(v)
		if step >= 1 then
			return string.format("%d", v)
		end
		return string.format("%.1f", v)
	end

	local function apply(v)
		v = math.clamp(v, min, max)
		if step then
			v = math.floor(v / step + 0.5) * step
			v = math.clamp(v, min, max)
		end
		cfgSet(path, v)
		local ratio = (v - min) / (max - min)
		fill.Size = UDim2.new(ratio, 0, 1, 0)
		knob.Position = UDim2.new(ratio, 0, 0.5, 0)
		valueLabel.Text = format(v)
	end

	apply(value)

	local function beginDrag()
		sliderState.active = track
		sliderState.apply = function(ratio)
			apply(min + ratio * (max - min))
		end
	end

	knob.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			beginDrag()
		end
	end)
	track.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			beginDrag()
		end
	end)
	row.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			beginDrag()
		end
	end)

	return row
end

UserInputService.InputChanged:Connect(function(input)
	if not sliderState.active or not sliderState.apply then
		return
	end
	local x
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		x = UserInputService:GetMouseLocation().X
	elseif input.UserInputType == Enum.UserInputType.Touch then
		x = input.Position.X
	end
	if not x then
		return
	end
	local track = sliderState.active
	local size = track.AbsoluteSize.X
	if size <= 0 then
		return
	end
	local ratio = math.clamp((x - track.AbsolutePosition.X) / size, 0, 1)
	sliderState.apply(ratio)
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		sliderState.active = nil
		sliderState.apply = nil
	end
end)

local function choice(parent, path, label, options)
	local current = cfgGet(path)
	local columns = 4
	local rows = math.ceil(#options / columns)
	local holder = new("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -12, 0, 28 + rows * 32),
		LayoutOrder = nextOrder(),
	}, parent)

	new("TextLabel", {
		BackgroundTransparency = 1,
		Text = label,
		TextSize = 14,
		Font = Enum.Font.Gotham,
		TextColor3 = Theme.text,
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.new(1, 0, 0, 22),
	}, holder)

	local grid = new("Frame", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 26),
		Size = UDim2.new(1, 0, 0, rows * 32),
	}, holder)

	new("UIGridLayout", {
		CellSize = UDim2.new(0, 82, 0, 26),
		CellPadding = UDim2.new(0, 6, 0, 6),
		FillDirection = Enum.FillDirection.MaxCells,
		MaxCells = columns,
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
	}, grid)

	local buttons = {}
	for index, option in ipairs(options) do
		local button = new("TextButton", {
			BackgroundColor3 = Theme.card,
			BorderSizePixel = 0,
			Text = option,
			TextSize = 12,
			Font = Enum.Font.GothamMedium,
			TextColor3 = Theme.muted,
			AutoButtonColor = false,
			LayoutOrder = index,
		}, grid)
		round(button, 6)
		buttons[option] = button
		button.MouseButton1Click:Connect(function()
			cfgSet(path, option)
			for name, other in pairs(buttons) do
				local active = name == option
				other.BackgroundColor3 = active and Theme.accent or Theme.card
				other.TextColor3 = active and Color3.new(1, 1, 1) or Theme.muted
			end
		end)
	end

	for name, button in pairs(buttons) do
		local active = name == current
		button.BackgroundColor3 = active and Theme.accent or Theme.card
		button.TextColor3 = active and Color3.new(1, 1, 1) or Theme.muted
	end

	return holder
end

local function action(parent, label, callback, danger)
	local button = new("TextButton", {
		BackgroundColor3 = Theme.card,
		BorderSizePixel = 0,
		Text = label,
		TextSize = 13,
		Font = Enum.Font.GothamMedium,
		TextColor3 = danger and Theme.danger or Theme.text,
		AutoButtonColor = false,
		Size = UDim2.new(1, -12, 0, 32),
		LayoutOrder = nextOrder(),
	}, parent)
	round(button, 8)
	button.MouseButton1Click:Connect(callback)
	return button
end

local function note(parent, text, color)
	return new("TextLabel", {
		BackgroundTransparency = 1,
		Text = text,
		TextSize = 12,
		Font = Enum.Font.Gotham,
		TextColor3 = color or Theme.muted,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		Size = UDim2.new(1, -12, 0, 34),
		LayoutOrder = nextOrder(),
	}, parent)
end

--=============================================================
-- Notifications
--=============================================================

local toast = nil

local function notify(text, ok)
	ok = ok ~= false
	if toast then
		toast:Destroy()
		toast = nil
	end
	toast = Instance.new("ScreenGui")
	toast.Name = "LocalHubToast"
	toast.ResetOnSpawn = false
	toast.DisplayOrder = 201
	toast.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	toast.Parent = guiParent

	local card = Instance.new("TextLabel")
	card.BackgroundColor3 = ok and Theme.card or Theme.danger
	card.BorderSizePixel = 0
	card.Text = text
	card.TextSize = 14
	card.Font = Enum.Font.GothamMedium
	card.TextColor3 = Theme.text
	card.TextXAlignment = Enum.TextXAlignment.Left
	card.Position = UDim2.new(0.5, -110, 1, -70)
	card.Size = UDim2.new(0, 220, 0, 36)
	card.Parent = toast
	round(card, 10)

	TweenService:Create(card, TweenInfo.new(0.25, Enum.EasingStyle.Back), {
		Position = UDim2.new(0.5, -110, 1, -110),
	}):Play()

	task.delay(2.2, function()
		if card and card.Parent then
			TweenService:Create(card, TweenInfo.new(0.25), {
				Position = UDim2.new(0.5, -110, 1, -50),
				TextTransparency = 1,
				BackgroundTransparency = 1,
			}):Play()
			task.delay(0.3, function()
				if toast and toast.Parent then
					toast:Destroy()
				end
			end)
		end
	end)
end

--=============================================================
-- ESP
--=============================================================

local BONE_LINKS = {
	{ "Head", "UpperTorso" },
	{ "UpperTorso", "LowerTorso" },
	{ "LowerTorso", "LeftUpperArm" },
	{ "LowerTorso", "RightUpperArm" },
	{ "LeftUpperArm", "LeftLowerArm" },
	{ "RightUpperArm", "RightLowerArm" },
	{ "LeftLowerArm", "LeftHand" },
	{ "RightLowerArm", "RightHand" },
	{ "LowerTorso", "LeftUpperLeg" },
	{ "LowerTorso", "RightUpperLeg" },
	{ "LeftUpperLeg", "LeftLowerLeg" },
	{ "RightUpperLeg", "RightLowerLeg" },
	{ "Head", "Torso" },
	{ "Torso", "Left Arm" },
	{ "Torso", "Right Arm" },
	{ "Torso", "Left Leg" },
	{ "Torso", "Right Leg" },
}

local espObjects = {}

local function newDraw(class, props)
	if not hasDrawing then
		return nil
	end
	local d = DrawingLib.new(class)
	if props then
		for key, value in pairs(props) do
			d[key] = value
		end
	end
	return d
end

local function createESP(player)
	if not hasDrawing then
		return
	end
	local obj = {}
	obj.name = newDraw("Text", { Center = true, Size = 14, Outline = true, Color = Theme.text, Visible = false })
	obj.dist = newDraw("Text", { Center = true, Size = 12, Outline = true, Color = Theme.muted, Visible = false })
	obj.box = newDraw("Square", { Thickness = 1, Color = espColor(), Visible = false })
	obj.fill = newDraw("Square", { Thickness = 1, Color = espColor(), Filled = true, Transparency = 0.85, Visible = false })
	obj.health = newDraw("Line", { Thickness = 3, Color = Color3.new(0, 1, 0), Visible = false })
	obj.healthBg = newDraw("Line", { Thickness = 3, Color = Color3.new(0, 0, 0), Visible = false })
	obj.tracer = newDraw("Line", { Thickness = 1, Color = espColor(), Visible = false })
	obj.bones = {}
	for i = 1, #BONE_LINKS do
		obj.bones[i] = newDraw("Line", { Thickness = 1, Color = espColor(), Visible = false })
	end
	espObjects[player] = obj
end

local function destroyESP(player)
	local obj = espObjects[player]
	if not obj then
		return
	end
	for _, key in ipairs({ "name", "dist", "box", "fill", "health", "healthBg", "tracer" }) do
		if obj[key] then
			obj[key]:Remove()
		end
	end
	for i = 1, #BONE_LINKS do
		if obj.bones[i] then
			obj.bones[i]:Remove()
		end
	end
	espObjects[player] = nil
end

local function isTeammate(player)
	if not player.Team or not LocalPlayer.Team then
		return false
	end
	return player.Team == LocalPlayer.Team
end

local function hideESP(obj)
	obj.name.Visible = false
	obj.dist.Visible = false
	obj.box.Visible = false
	obj.fill.Visible = false
	obj.health.Visible = false
	obj.healthBg.Visible = false
	obj.tracer.Visible = false
	for i = 1, #BONE_LINKS do
		obj.bones[i].Visible = false
	end
end

local function updateESP()
	if not hasDrawing then
		return
	end
	local cam = Workspace.CurrentCamera
	if not cam then
		return
	end
	local char = LocalPlayer.Character
	local myRoot = char and char:FindFirstChild("HumanoidRootPart")
	local color = espColor()

	for player, obj in pairs(espObjects) do
		local shown = false
		if Config.ESP.Enabled and myRoot then
			local pChar = player.Character
			local hum = pChar and pChar:FindFirstChildOfClass("Humanoid")
			local root = pChar and pChar:FindFirstChild("HumanoidRootPart")
			local head = pChar and pChar:FindFirstChild("Head")
			if pChar and hum and hum.Health > 0 and root then
				local dist = (myRoot.Position - root.Position).Magnitude
				local teamOk = not Config.ESP.TeamCheck or not isTeammate(player)
				if dist <= Config.ESP.MaxDistance and teamOk then
					local screen, onScreen = cam:WorldToScreenPoint(root.Position)
					if onScreen and screen then
						local headScreen = head and cam:WorldToScreenPoint(head.Position)
						shown = true
						local size = math.clamp(360 / dist, 16, 240)
						local half = size / 2
						local topY = (headScreen and headScreen.Y or screen.Y) - half * 0.4

						obj.box.Color = color
						obj.fill.Color = color
						obj.tracer.Color = color

						if Config.ESP.Box then
							obj.box.Position = Vector2.new(screen.X - half, topY - half)
							obj.box.Size = Vector2.new(size, size)
							obj.box.Visible = true
						else
							obj.box.Visible = false
						end

						if Config.ESP.Fill then
							obj.fill.Position = Vector2.new(screen.X - half, topY - half)
							obj.fill.Size = Vector2.new(size, size)
							obj.fill.Visible = true
						else
							obj.fill.Visible = false
						end

						if Config.ESP.Name then
							obj.name.Text = player.DisplayName or player.Name
							obj.name.Position = Vector2.new(screen.X, topY - half - 12)
							obj.name.Visible = true
						else
							obj.name.Visible = false
						end

						if Config.ESP.Distance then
							obj.dist.Text = string.format("%d studs", math.floor(dist))
							obj.dist.Position = Vector2.new(screen.X, topY + half + 8)
							obj.dist.Visible = true
						else
							obj.dist.Visible = false
						end

						if Config.ESP.Health then
							local maxHealth = hum.MaxHealth > 0 and hum.MaxHealth or 1
							local ratio = math.clamp(hum.Health / maxHealth, 0, 1)
							local barHeight = size * 0.6
							local barX = screen.X + half + 6
							obj.healthBg.From = Vector2.new(barX, topY - half)
							obj.healthBg.To = Vector2.new(barX, topY + half)
							obj.healthBg.Visible = true
							obj.health.From = Vector2.new(barX, topY - half)
							obj.health.To = Vector2.new(barX, topY - half + barHeight * 2 * ratio)
							obj.health.Color = Color3.fromRGB(
								math.floor(255 * (1 - ratio)),
								math.floor(255 * ratio),
								0
							)
							obj.health.Visible = true
						else
							obj.health.Visible = false
							obj.healthBg.Visible = false
						end

						if Config.ESP.Tracer then
							local inset = GuiService:GetGuiInset()
							local screenSize = cam.ViewportSize + inset
							obj.tracer.From = Vector2.new(screenSize.X / 2, screenSize.Y)
							obj.tracer.To = Vector2.new(screen.X, screen.Y)
							obj.tracer.Visible = true
						else
							obj.tracer.Visible = false
						end

						if Config.ESP.Skeleton then
							for i = 1, #BONE_LINKS do
								local link = BONE_LINKS[i]
								local a = pChar:FindFirstChild(link[1])
								local b = pChar:FindFirstChild(link[2])
								local line = obj.bones[i]
								if a and b and a:IsA("BasePart") and b:IsA("BasePart") then
									local pa = cam:WorldToScreenPoint(a.Position)
									local pb = cam:WorldToScreenPoint(b.Position)
									if pa and pb and pa.Z > 0 and pb.Z > 0 then
										line.From = Vector2.new(pa.X, pa.Y)
										line.To = Vector2.new(pb.X, pb.Y)
										line.Color = color
										line.Visible = true
									else
										line.Visible = false
									end
								else
									line.Visible = false
								end
							end
						else
							for i = 1, #BONE_LINKS do
								obj.bones[i].Visible = false
							end
						end
					end
				end
			end
		end

		if not shown then
			hideESP(obj)
		end
	end
end

for _, player in ipairs(Players:GetPlayers()) do
	if player ~= LocalPlayer then
		createESP(player)
	end
end

Players.PlayerAdded:Connect(function(player)
	if player ~= LocalPlayer then
		createESP(player)
	end
end)

Players.PlayerRemoving:Connect(function(player)
	destroyESP(player)
end)

--=============================================================
-- Aimbot
--=============================================================

local AIM_KEYS = {
	RMB = { kind = "mouse", button = Enum.UserInputType.MouseButton2 },
	LMB = { kind = "mouse", button = Enum.UserInputType.MouseButton1 },
	MMB = { kind = "mouse", button = Enum.UserInputType.MouseButton3 },
	E   = { kind = "key", code = Enum.KeyCode.E },
	Q   = { kind = "key", code = Enum.KeyCode.Q },
	X   = { kind = "key", code = Enum.KeyCode.X },
	F   = { kind = "key", code = Enum.KeyCode.F },
	Always = { kind = "always" },
}

local function aimKeyDown()
	local def = AIM_KEYS[Config.Aimbot.Key] or AIM_KEYS.RMB
	if def.kind == "always" then
		return true
	end
	if def.kind == "mouse" then
		return UserInputService:IsMouseButtonPressed(def.button)
	end
	return UserInputService:IsKeyDown(def.code)
end

local function updateAimbot(dt)
	if not Config.Aimbot.Enabled then
		return
	end
	local cam = Workspace.CurrentCamera
	if not cam then
		return
	end
	if not aimKeyDown() then
		return
	end

	local mouse = UserInputService:GetMouseLocation()
	local best, bestDist = nil, math.huge

	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= LocalPlayer then
			local pChar = player.Character
			local hum = pChar and pChar:FindFirstChildOfClass("Humanoid")
			local head = pChar and pChar:FindFirstChild("Head")
			local upper = pChar and pChar:FindFirstChild("UpperTorso")
			local torso = pChar and pChar:FindFirstChild("Torso")
			local target = head or upper or torso
			if pChar and hum and hum.Health > 0 and target then
				local teamOk = not Config.Aimbot.TeamCheck or not isTeammate(player)
				if teamOk then
					local screen, onScreen = cam:WorldToScreenPoint(target.Position)
					if onScreen and screen then
						local dist = (Vector2.new(screen.X, screen.Y) - mouse).Magnitude
						if dist <= Config.Aimbot.FOV and dist < bestDist then
							bestDist = dist
							best = target
						end
					end
				end
			end
		end
	end

	if best then
		local alpha = math.clamp(dt * Config.Aimbot.Smooth, 0, 1)
		local goal = CFrame.lookAt(cam.CFrame.Position, best.Position)
		cam.CFrame = cam.CFrame:Lerp(goal, alpha)
	end
end

--=============================================================
-- Movement
--=============================================================

local noclipParts = {}

local function clearNoclip()
	for part in pairs(noclipParts) do
		if part and part.Parent then
			part.CanCollide = true
		end
	end
	noclipParts = {}
end

local function updateMovement(dt)
	local char = LocalPlayer.Character
	if not char then
		return
	end
	local hum = char:FindFirstChildOfClass("Humanoid")
	local root = char:FindFirstChild("HumanoidRootPart")
	local cam = Workspace.CurrentCamera

	if Config.Movement.Speed and hum then
		hum.WalkSpeed = Config.Movement.SpeedVal
	end

	if Config.Movement.Jump and hum then
		hum.UseJumpPower = true
		hum.JumpPower = Config.Movement.JumpVal
	end

	Workspace.Gravity = Config.Movement.Gravity

	if Config.Movement.Noclip then
		for _, descendant in ipairs(char:GetDescendants()) do
			if descendant:IsA("BasePart") and descendant.CanCollide then
				descendant.CanCollide = false
				noclipParts[descendant] = true
			end
		end
	elseif next(noclipParts) ~= nil then
		clearNoclip()
	end

	if Config.Movement.Fly and root and cam then
		local dir = Vector3.new(0, 0, 0)
		if UserInputService:IsKeyDown(Enum.KeyCode.W) then
			dir = dir + cam.CFrame.LookVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.S) then
			dir = dir - cam.CFrame.LookVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.A) then
			dir = dir - cam.CFrame.RightVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.D) then
			dir = dir + cam.CFrame.RightVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
			dir = dir + Vector3.new(0, 1, 0)
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.C) or UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
			dir = dir - Vector3.new(0, 1, 0)
		end
		local multiplier = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) and 2 or 1
		if dir.Magnitude > 0 then
			root.AssemblyLinearVelocity = dir.Unit * (Config.Movement.FlySpeed * multiplier)
		end
	end
end

UserInputService.JumpRequest:Connect(function()
	if Config.Movement.InfJump then
		local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if hum then
			hum.Jump = true
		end
	end
end)

--=============================================================
-- Misc
--=============================================================

local lightingBackup = {
	Brightness = Lighting.Brightness,
	Ambient = Lighting.Ambient,
	OutdoorAmbient = Lighting.OutdoorAmbient,
	ClockTime = Lighting.ClockTime,
}

local function applyFullbright(on)
	if on then
		Lighting.Brightness = 3
		Lighting.Ambient = Color3.new(1, 1, 1)
		Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
		Lighting.ClockTime = 14
	else
		Lighting.Brightness = lightingBackup.Brightness
		Lighting.Ambient = lightingBackup.Ambient
		Lighting.OutdoorAmbient = lightingBackup.OutdoorAmbient
		Lighting.ClockTime = lightingBackup.ClockTime
	end
end

local function setupAntiAfk()
	pcall(function()
		VirtualUser:ClickButton2()
	end)
	LocalPlayer.Idled:Connect(function()
		if Config.Misc.AntiAfk then
			pcall(function()
				VirtualUser:ClickButton2()
			end)
		end
	end)
end

setupAntiAfk()

local freecamCF = nil

local function setFreecam(on)
	local cam = Workspace.CurrentCamera
	if on and cam then
		freecamCF = cam.CFrame
		cam.CameraType = Enum.CameraType.Scriptable
	elseif cam then
		cam.CameraType = Enum.CameraType.Custom
		freecamCF = nil
	end
end

local function updateFreecam(dt)
	if not Config.Misc.Freecam then
		return
	end
	local cam = Workspace.CurrentCamera
	if not cam or not freecamCF then
		return
	end
	local speed = 70 * dt
	if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
		speed = speed * 3
	end
	local cf = freecamCF
	if UserInputService:IsKeyDown(Enum.KeyCode.W) then
		cf = cf * CFrame.new(0, 0, -speed)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.S) then
		cf = cf * CFrame.new(0, 0, speed)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.A) then
		cf = cf * CFrame.new(-speed, 0, 0)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.D) then
		cf = cf * CFrame.new(speed, 0, 0)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.E) then
		cf = cf * CFrame.Angles(0, math.rad(speed * 2), 0)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.Q) then
		cf = cf * CFrame.Angles(0, math.rad(-speed * 2), 0)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
		cf = cf * CFrame.new(0, speed, 0)
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.C) then
		cf = cf * CFrame.new(0, -speed, 0)
	end
	freecamCF = cf
	cam.CFrame = cf
end

local function teleportToNearest()
	local char = LocalPlayer.Character
	local root = char and char:FindFirstChild("HumanoidRootPart")
	if not root then
		return
	end
	local best, bestDist = nil, math.huge
	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= LocalPlayer then
			local target = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
			if target then
				local dist = (target.Position - root.Position).Magnitude
				if dist < bestDist then
					bestDist = dist
					best = target
				end
			end
		end
	end
	if best then
		root.CFrame = best.CFrame * CFrame.new(0, 0, 4)
	end
end

local function updateFPS()
	if not Config.Misc.ShowFPS then
		fpsLabel.Text = ""
		return
	end
	local fps = Stats.Workspace and Stats.Workspace.FPS or 0
	fpsLabel.Text = string.format("%d FPS", math.floor(fps))
end

-- toggles that need a one-time side effect when they flip
local appliedFullbright = false
local appliedFreecam = false

local function syncToggles()
	if appliedFullbright ~= Config.Misc.Fullbright then
		appliedFullbright = Config.Misc.Fullbright
		applyFullbright(appliedFullbright)
	end
	if appliedFreecam ~= Config.Misc.Freecam then
		appliedFreecam = Config.Misc.Freecam
		setFreecam(appliedFreecam)
	end
end

--=============================================================
-- Config file
--=============================================================

local CONFIG_FILE = "localhub_config.json"

local function saveConfig()
	if not writefile_fn then
		return false, "writefile not supported by this executor"
	end
	local ok, json = pcall(function()
		return HttpService:JSONEncode(Config)
	end)
	if not ok then
		return false, "failed to encode config"
	end
	local wrote = pcall(writefile_fn, CONFIG_FILE, json)
	if not wrote then
		return false, "failed to write " .. CONFIG_FILE
	end
	return true, "config saved"
end

local function loadConfig()
	if not readfile_fn then
		return false, "readfile not supported by this executor"
	end
	if isfile_fn and not isfile_fn(CONFIG_FILE) then
		return false, "no config file found"
	end
	local ok, content = pcall(readfile_fn, CONFIG_FILE)
	if not ok or type(content) ~= "string" then
		return false, "failed to read config"
	end
	local decoded, data = pcall(function()
		return HttpService:JSONDecode(content)
	end)
	if not decoded or type(data) ~= "table" then
		return false, "corrupt config file"
	end
	for section, values in pairs(DEFAULTS) do
		if type(data[section]) == "table" then
			for key, default in pairs(values) do
				local incoming = data[section][key]
				if incoming ~= nil and type(incoming) == type(default) then
					Config[section][key] = incoming
				end
			end
		end
	end
	setTab(currentTab)
	return true, "config loaded"
end

local function resetConfig()
	for section, values in pairs(DEFAULTS) do
		for key, value in pairs(values) do
			Config[section][key] = value
		end
	end
	applyFullbright(false)
	setFreecam(false)
	clearNoclip()
	setTab(currentTab)
end

--=============================================================
-- Tabs
--=============================================================

TAB_BUILDERS.ESP = function(parent)
	section(parent, "ESP")
	if not hasDrawing then
		note(parent, "This executor has no Drawing API — ESP is unavailable.", Theme.danger)
	end
	toggle(parent, "ESP.Enabled", "Enable ESP")
	toggle(parent, "ESP.Box", "Box")
	toggle(parent, "ESP.Fill", "Filled box")
	toggle(parent, "ESP.Name", "Name")
	toggle(parent, "ESP.Distance", "Distance")
	toggle(parent, "ESP.Health", "Health bar")
	toggle(parent, "ESP.Tracer", "Tracer")
	toggle(parent, "ESP.Skeleton", "Skeleton")
	toggle(parent, "ESP.TeamCheck", "Team check")
	slider(parent, "ESP.MaxDistance", "Max distance", 50, 2000, 10)
	choice(parent, "ESP.Color", "Colour", { "Red", "Green", "Blue", "Yellow", "Purple" })
end

TAB_BUILDERS.Aimbot = function(parent)
	section(parent, "Aimbot")
	toggle(parent, "Aimbot.Enabled", "Enable aimbot")
	toggle(parent, "Aimbot.TeamCheck", "Team check")
	slider(parent, "Aimbot.FOV", "FOV radius", 20, 600, 10)
	slider(parent, "Aimbot.Smooth", "Smoothness", 1, 30, 1)
	choice(parent, "Aimbot.Key", "Aim key", { "RMB", "LMB", "MMB", "E", "Q", "X", "F", "Always" })
	note(parent, "Hold the aim key to lock onto the closest player inside the FOV circle.")
end

TAB_BUILDERS.Movement = function(parent)
	section(parent, "Movement")
	toggle(parent, "Movement.Speed", "Walk speed")
	slider(parent, "Movement.SpeedVal", "Speed value", 8, 300, 1)
	toggle(parent, "Movement.Jump", "Jump power")
	slider(parent, "Movement.JumpVal", "Jump value", 20, 250, 1)
	slider(parent, "Movement.Gravity", "Gravity", 0, 400, 0.5)
	toggle(parent, "Movement.Fly", "Fly")
	slider(parent, "Movement.FlySpeed", "Fly speed", 20, 400, 1)
	toggle(parent, "Movement.Noclip", "Noclip")
	toggle(parent, "Movement.InfJump", "Infinite jump")
	note(parent, "Fly: WASD to move, Space / C for up and down, Shift to boost.")
end

TAB_BUILDERS.Misc = function(parent)
	section(parent, "Misc")
	toggle(parent, "Misc.AntiAfk", "Anti-AFK")
	toggle(parent, "Misc.Fullbright", "Fullbright")
	toggle(parent, "Misc.ShowFPS", "Show FPS")
	toggle(parent, "Misc.Freecam", "Freecam")
	slider(parent, "Misc.FOV", "Camera FOV (0 = game)", 0, 170, 1)
	action(parent, "Teleport to nearest player", teleportToNearest)
	note(parent, "Freecam: WASD to move, Space / C vertical, Q / E to rotate.")
end

TAB_BUILDERS.Config = function(parent)
	section(parent, "Profile")
	action(parent, "Save config", function()
		local ok, message = saveConfig()
		notify(message, ok)
	end)
	action(parent, "Load config", function()
		local ok, message = loadConfig()
		notify(message, ok)
	end)
	action(parent, "Reset to defaults", function()
		resetConfig()
		notify("config reset", true)
	end, true)
	section(parent, "About")
	note(parent, "LocalHub v1.0 — local script for executors.")
	note(parent, "Executor: " .. executorName .. " · Drawing: " .. (hasDrawing and "yes" or "no"))
	note(parent, "Hotkey: Insert or Right Shift toggles the menu.")
end

--=============================================================
-- Window behaviour
--=============================================================

local dragging = false
local dragStart = Vector2.new(0, 0)
local dragOrigin = UDim2.new(0, 0, 0, 0)

titleBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		dragOrigin = window.Position
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if not dragging then
		return
	end
	if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then
		return
	end
	local delta = input.Position - dragStart
	window.Position = UDim2.new(
		dragOrigin.X.Scale, dragOrigin.X.Offset + delta.X,
		dragOrigin.Y.Scale, dragOrigin.Y.Offset + delta.Y
	)
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = false
	end
end)

closeBtn.MouseButton1Click:Connect(function()
	window.Visible = false
end)

minimizeBtn.MouseButton1Click:Connect(function()
	window.Visible = not window.Visible
end)

UserInputService.InputBegan:Connect(function(input, processed)
	if processed then
		return
	end
	if input.KeyCode == Enum.KeyCode.Insert or input.KeyCode == Enum.KeyCode.RightShift then
		window.Visible = not window.Visible
	end
end)

--=============================================================
-- Main loop
--=============================================================

local lastFPSUpdate = 0

RunService.RenderStepped:Connect(function(dt)
	syncToggles()
	updateESP()
	updateMovement(dt)
	updateFreecam(dt)

	local cam = Workspace.CurrentCamera
	if cam and Config.Misc.FOV and Config.Misc.FOV > 0 then
		cam.FieldOfView = Config.Misc.FOV
	end

	lastFPSUpdate = lastFPSUpdate + dt
	if lastFPSUpdate > 0.25 then
		lastFPSUpdate = 0
		updateFPS()
	end
end)

RunService:BindToRenderStep("LocalHubAim", Enum.RenderPriority.Camera.Value + 1, function(dt)
	if not Config.Aimbot.Enabled then
		return
	end
	updateAimbot(dt)
end)

setTab("ESP")
updateFPS()

--=============================================================
-- Public API
--=============================================================

local api = {
	Set = function(path, value)
		cfgSet(path, value)
		setTab(currentTab)
	end,
	Get = cfgGet,
	Toggle = function(path)
		cfgSet(path, not cfgGet(path))
		setTab(currentTab)
	end,
	Save = saveConfig,
	Load = loadConfig,
	Reset = resetConfig,
	Show = function()
		window.Visible = true
	end,
	Hide = function()
		window.Visible = false
	end,
	Teleport = teleportToNearest,
}

local env = executorEnv()
if env then
	env.LocalHub = api
end
