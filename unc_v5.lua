-- unc v5 | delta | mobile + pc
-- account risk: alt only
if not game:IsLoaded() then repeat task.wait(.1) until game:IsLoaded() end

local plrs     = game:GetService("Players")
local rs       = game:GetService("RunService")
local uis      = game:GetService("UserInputService")
local ws       = game:GetService("Workspace")
local http     = game:GetService("HttpService")
local stats    = game:GetService("Stats")
local lighting = game:GetService("Lighting")
local ts       = game:GetService("TeleportService")
local vu       = game:GetService("VirtualUser")
local tws      = game:GetService("TweenService")
local pps      = game:GetService("ProximityPromptService")
local lp       = plrs.LocalPlayer

local g = (getgenv and getgenv()) or _G
if type(g.__uncKill) == "function" then pcall(g.__uncKill) end
if not Drawing then return warn("[unc] no drawing lib") end

-- platform: detected once, everything below adapts
local TOUCH  = uis.TouchEnabled
local HASKB  = uis.KeyboardEnabled
local MOBILE = TOUCH and not HASKB

-- auto reload after teleport needs ONE of these:
local RELOAD_URL  = "" -- FILL: raw link to this script (optional)
local RELOAD_FILE = "unc_v5.lua" -- or save the script in the executor workspace under this name

--------------------------------------------------------------- look + config

local ACC = {
	{"ember",  Color3.fromRGB(255, 94, 58)},
	{"ice",    Color3.fromRGB(86, 196, 255)},
	{"mint",   Color3.fromRGB(74, 222, 128)},
	{"violet", Color3.fromRGB(150, 122, 255)},
	{"gold",   Color3.fromRGB(255, 190, 70)},
	{"rose",   Color3.fromRGB(255, 96, 142)},
}

local T = {
	bg   = Color3.fromRGB(20, 20, 23),
	bar  = Color3.fromRGB(29, 29, 34),
	off  = Color3.fromRGB(40, 40, 47),
	line = Color3.fromRGB(46, 46, 54),
	text = Color3.fromRGB(222, 222, 228),
	sub  = Color3.fromRGB(135, 135, 146),
	dark = Color3.fromRGB(16, 16, 19),
	red  = Color3.fromRGB(240, 90, 90),
	far  = Color3.fromRGB(255, 62, 62),
	blk  = Color3.fromRGB(0, 0, 0),
}

local CFG = {
	-- esp
	on = true, box = true, style = "corner", fill = false, outline = true,
	name = true, uname = false, dist = true, hp = true, hpnum = false, tool = false,
	tracer = true, tfrom = "bottom", head = false, look = false,
	skel = false, joints = false,
	chams = true, chamMode = "fill", arrows = true, vis = true, grad = false, teamcol = false,
	team = true, friend = true, npc = false, hud = true,
	maxdist = 1000, npcmax = 500, tsize = 13, thick = 1, fillA = 0.18,
	-- aim
	aim = false, aimMode = "hold", aimPart = "head", aimPrio = "crosshair",
	aimFov = 140, aimSmooth = 0.35, aimMax = 1500, aimVis = true, aimSticky = true, aimNpc = false,
	pred = false, bspeed = 1200, fovShow = true, aimLine = true,
	trig = false, thead = false, tdelay = 40, tcd = 90,
	-- move
	fly = false, flySpeed = 60, noclip = false,
	spd = false, spdMode = "walk", spdVal = 32,
	ijump = false, jp = false, jpVal = 80, ctp = false,
	-- world
	fb = false, cfov = false, cfovVal = 90, grav = false, gravVal = 100, afk = true,
	tc = false, tcVal = 12, xray = false, xrayT = 0.6, fps = false, ipp = false, ipa = false,
	-- crosshair
	xh = false, xhStyle = "cross", xhSize = 8, xhGap = 3, xhThick = 1, xhDot = false, xhOut = true, xhAcc = true,
	-- session
	ntf = true, ntfJoin = true, ntfDie = false, reload = false,
	-- ui
	acc = 1, page = "esp", ui = 1, qbar = TOUCH,
	wx = 12, wy = 56, qx = -1, qy = -1, fx = -1, fy = -1,
	kAim = "MouseButton2", kFly = "F", kNoclip = "N", kMenu = "RightShift",
}

local DEF = {}
for k, v in next, CFG do DEF[k] = v end

local ENUM = {
	style    = {corner = 1, full = 1, none = 1},
	chamMode = {fill = 1, outline = 1, both = 1},
	tfrom    = {bottom = 1, center = 1, top = 1},
	page     = {esp = 1, aim = 1, move = 1, world = 1, plrs = 1, cfg = 1},
	xhStyle  = {cross = 1, dot = 1, circle = 1},
	aimMode  = {hold = 1, toggle = 1, always = 1},
	aimPart  = {head = 1, torso = 1, closest = 1},
	aimPrio  = {crosshair = 1, distance = 1, health = 1},
	spdMode  = {walk = 1, cframe = 1},
}

-- gameplay modules never come back on by themselves after a re-exec
local VOLATILE = {"aim", "trig", "fly", "noclip", "spd", "jp", "ijump", "ctp", "grav", "ipa"}

-- keys that belong to the user's setup, shared by every profile
local GLOBAL = {
	wx = 1, wy = 1, qx = 1, qy = 1, fx = 1, fy = 1, page = 1, acc = 1, ui = 1, qbar = 1,
	kAim = 1, kFly = 1, kNoclip = 1, kMenu = 1, reload = 1,
}

local FILE = "unc_v5.json"
local OLD  = "unc_v4_cfg.json"
local PID  = tostring(game.PlaceId)
local STORE = {slots = {}, active = "default", games = {}, global = {}}

local function okVal(k, v)
	return CFG[k] ~= nil and type(v) == type(CFG[k]) and (not ENUM[k] or ENUM[k][v])
end

local function slotData()
	local d = {}
	for k, v in next, CFG do
		if not GLOBAL[k] then d[k] = v end
	end
	return d
end

local function applyData(d)
	for k, v in next, DEF do
		if not GLOBAL[k] then CFG[k] = v end
	end
	if type(d) == "table" then
		for k, v in next, d do
			if not GLOBAL[k] and okVal(k, v) then CFG[k] = v end
		end
	end
end

local function save()
	if not writefile then return end
	STORE.slots[STORE.active] = slotData()
	local gl = {}
	for k in next, GLOBAL do gl[k] = CFG[k] end
	STORE.global = gl
	pcall(function() writefile(FILE, http:JSONEncode(STORE)) end)
end

local function loadStore()
	local d
	if isfile and readfile then
		local ok, r = pcall(function()
			if isfile(FILE) then return http:JSONDecode(readfile(FILE)) end
			if isfile(OLD) then return {slots = {default = http:JSONDecode(readfile(OLD))}} end -- v4 import
		end)
		if ok and type(r) == "table" then d = r end
	end
	if d then
		if type(d.slots) == "table" then
			for n, sl in next, d.slots do
				if type(n) == "string" and type(sl) == "table" then STORE.slots[n] = sl end
			end
		end
		if type(d.games) == "table" then
			for k, v in next, d.games do
				if type(v) == "string" then STORE.games[tostring(k)] = v end
			end
		end
		if type(d.active) == "string" then STORE.active = d.active end
		if type(d.global) == "table" then
			for k, v in next, d.global do
				if GLOBAL[k] and okVal(k, v) then CFG[k] = v end
			end
		end
	end
	-- per-game profile wins over "last used"
	local want = STORE.games[PID]
	if want and STORE.slots[want] then STORE.active = want end
	if not STORE.slots[STORE.active] then STORE.active = "default" end
	applyData(STORE.slots[STORE.active])
	for _, k in ipairs(VOLATILE) do CFG[k] = DEF[k] end
	if not STORE.slots[STORE.active] then STORE.slots[STORE.active] = slotData() end
end
loadStore()

local function acc()
	local i = math.floor(CFG.acc)
	if i < 1 or i > #ACC then i = 1 end
	return ACC[i][2]
end

local con = {}
local function keep(c) con[#con + 1] = c; return c end

-- widget refresh registry (ui repaints from CFG)
local refreshers = {}
local function reg(f) refreshers[#refreshers + 1] = f; f() end
local function refreshAll() for _, f in ipairs(refreshers) do pcall(f) end end
local notify -- assigned with the ui helpers

--------------------------------------------------------------- drawing helpers

local function sq()
	local o = Drawing.new("Square")
	o.Filled, o.Thickness, o.Transparency, o.Visible = false, 1, 1, false
	return o
end

local function ln()
	local o = Drawing.new("Line")
	o.Thickness, o.Transparency, o.Visible = 1, 1, false
	return o
end

local function tx(size)
	local o = Drawing.new("Text")
	o.Font, o.Size, o.Transparency, o.Visible = 2, size, 1, false
	o.Outline, o.OutlineColor, o.Center = true, T.blk, false
	return o
end

local function cr()
	local o = Drawing.new("Circle")
	o.Filled, o.Thickness, o.NumSides, o.Transparency, o.Visible = false, 1, 24, 1, false
	return o
end

local function w2s(p, cam)
	local v = cam:WorldToViewportPoint(p)
	if v.Z <= 0 then return nil end
	return Vector2.new(v.X, v.Y)
end

local HP_LO  = Color3.fromRGB(255, 55, 55)
local HP_MID = Color3.fromRGB(255, 205, 60)
local HP_HI  = Color3.fromRGB(70, 235, 120)
local function hpcol(f)
	if f > .5 then return HP_MID:Lerp(HP_HI, (f - .5) * 2) end
	return HP_LO:Lerp(HP_MID, f * 2)
end

local rp = RaycastParams.new()
rp.FilterType = Enum.RaycastFilterType.Exclude
rp.IgnoreWater = true
rp.RespectCanCollide = true

local rpT = RaycastParams.new() -- triggerbot: hits hitboxes even if cancollide off
rpT.FilterType = Enum.RaycastFilterType.Exclude
rpT.IgnoreWater = true

local function clear(char, from, to)
	local hit = ws:Raycast(from, to - from, rp)
	return hit == nil or hit.Instance:IsDescendantOf(char)
end

local function sees(char, from, a, b)
	local f = {char}
	if lp.Character then f[2] = lp.Character end
	rp.FilterDescendantsInstances = f
	return clear(char, from, a) or clear(char, from, b)
end

--------------------------------------------------------------- pool

local R15 = {
	{"Head", "UpperTorso"}, {"UpperTorso", "LowerTorso"},
	{"UpperTorso", "LeftUpperArm"}, {"LeftUpperArm", "LeftLowerArm"}, {"LeftLowerArm", "LeftHand"},
	{"UpperTorso", "RightUpperArm"}, {"RightUpperArm", "RightLowerArm"}, {"RightLowerArm", "RightHand"},
	{"LowerTorso", "LeftUpperLeg"}, {"LeftUpperLeg", "LeftLowerLeg"}, {"LeftLowerLeg", "LeftFoot"},
	{"LowerTorso", "RightUpperLeg"}, {"RightUpperLeg", "RightLowerLeg"}, {"RightLowerLeg", "RightFoot"},
}
local R6 = {
	{"Head", "Torso"}, {"Torso", "Left Arm"}, {"Torso", "Right Arm"},
	{"Torso", "Left Leg"}, {"Torso", "Right Leg"},
}

local POOL = {}
local ticks = 0
local CHAM_MAX = 28 -- roblox renders ~31 highlights at once

local function slot(k)
	local s = POOL[k]
	if not s then
		s = {o = {}, bone = {}, dot = {}, hl = nil, visAt = -9, seen = true, last = ticks}
		POOL[k] = s
	end
	s.last = ticks
	return s
end

local function get(s, k, make)
	local o = s.o[k]
	if not o then o = make(); s.o[k] = o end
	return o
end

local function txt(s, k, size)
	local o = get(s, k, function() return tx(size) end)
	o.Size = size
	return o
end

local function hideAll(s)
	for _, o in next, s.o do o.Visible = false end
	for _, o in next, s.bone do o.Visible = false end
	for _, o in next, s.dot do o.Visible = false end
end

local function uncham(s)
	if s.hl then
		pcall(function() s.hl:Destroy() end)
		s.hl = nil
	end
end

local function killSlot(k)
	local s = POOL[k]
	if not s then return end
	for _, o in next, s.o do pcall(function() o:Remove() end) end
	for _, o in next, s.bone do pcall(function() o:Remove() end) end
	for _, o in next, s.dot do pcall(function() o:Remove() end) end
	uncham(s)
	POOL[k] = nil
end

--------------------------------------------------------------- friends / body

local fCache, fBusy = {}, {}
local function friend(p) -- IsFriendsWith yields, so it runs off-thread
	if not CFG.friend then return false end
	local id = p.UserId
	local c = fCache[id]
	if c ~= nil then return c end
	if not fBusy[id] then
		fBusy[id] = true
		task.spawn(function()
			local ok, r = pcall(lp.IsFriendsWith, lp, id)
			fCache[id] = (ok and r == true) and true or false
			fBusy[id] = nil
		end)
	end
	return false
end

local function body(char)
	if not char or not char.Parent then return end
	local hum = char:FindFirstChildOfClass("Humanoid")
	local hrp = char:FindFirstChild("HumanoidRootPart")
	if not hum or not hrp or hum.Health <= 0 then return end
	return hum, hrp
end

local function ch()
	local c = lp.Character
	if not c then return end
	return c, c:FindFirstChildOfClass("Humanoid"), c:FindFirstChild("HumanoidRootPart")
end

--------------------------------------------------------------- npcs + target gather

local npcs, npcAt = {}, 0

local function consider(m, out)
	if m == lp.Character then return false end
	local h = m:FindFirstChildOfClass("Humanoid")
	if h and h.Health > 0 and not plrs:GetPlayerFromCharacter(m) then
		out[#out + 1] = m
		return true
	end
	return false
end

local function scan()
	local out = {}
	for _, m in next, ws:GetChildren() do
		if not consider(m, out) and (m:IsA("Model") or m:IsA("Folder")) then
			for _, c in next, m:GetChildren() do consider(c, out) end
		end
	end
	npcs = out
end

-- shared by esp and aimbot, sorted nearest first
local function gather(cam, now, maxd, npcOn, npcMax)
	local eye = cam.CFrame.Position
	local out = {}

	for _, p in next, plrs:GetPlayers() do
		if p ~= lp then
			local char = p.Character
			local hum, hrp = body(char)
			if hum then
				local skip = (CFG.team and lp.Team ~= nil and p.Team == lp.Team) or friend(p)
				if not skip then
					local d = (hrp.Position - eye).Magnitude
					if d <= maxd then
						out[#out + 1] = {
							key = p, char = char, hum = hum, hrp = hrp, dist = d, lim = maxd,
							label = CFG.uname and p.Name or p.DisplayName,
							tcol = p.Team and p.TeamColor.Color or nil,
						}
					end
				end
			end
		end
	end

	if npcOn then
		if now - npcAt > 1 then npcAt = now; pcall(scan) end
		for _, m in next, npcs do
			if m and m.Parent then
				local hum, hrp = body(m)
				if hum then
					local d = (hrp.Position - eye).Magnitude
					if d <= npcMax then
						out[#out + 1] = {
							key = m, char = m, hum = hum, hrp = hrp, dist = d, lim = npcMax,
							label = m.Name,
						}
					end
				end
			end
		end
	end

	table.sort(out, function(a, b) return a.dist < b.dist end)
	return out
end

--------------------------------------------------------------- aim state

local AS = {held = false, latch = false, target = nil}

local function aimOn()
	if not CFG.aim then return false end
	if CFG.aimMode == "always" then return true end
	if CFG.aimMode == "hold" then return AS.held end
	return AS.latch
end

local function aimPress()
	if CFG.aimMode == "hold" then AS.held = true
	elseif CFG.aimMode == "toggle" then AS.latch = not AS.latch
	else CFG.aim = not CFG.aim end
end

local function aimRelease()
	if CFG.aimMode == "hold" then AS.held = false end
end

--------------------------------------------------------------- esp: offscreen arrow

local function arrow(s, pt, dist, vp, col)
	local c = Vector2.new(vp.X * .5, vp.Y * .5)
	local d = Vector2.new(pt.X, pt.Y) - c
	if pt.Z < 0 then d = -d end
	if d.Magnitude < 1 then d = Vector2.new(0, 1) end
	d = d.Unit

	local tip = c + d * (math.min(vp.X, vp.Y) * .36)
	local side = Vector2.new(-d.Y, d.X)
	local b = tip - d * 14
	local pts = {tip, b + side * 7, b - side * 7}

	for i = 1, 3 do
		local l = get(s, "arw" .. i, ln)
		l.From, l.To = pts[i], pts[i % 3 + 1]
		l.Color, l.Thickness, l.Transparency = col, 2, .9
		l.Visible = true
	end
	local t = get(s, "arwt", function() return tx(11) end)
	t.Text = tostring(math.floor(dist))
	t.Center = true
	t.Position = tip + d * 16
	t.Color = col
	t.Visible = true
end

--------------------------------------------------------------- esp: render one

local function draw(t, rank, cam, vp, eye)
	local s = slot(t.key)
	local char, hum, hrp = t.char, t.hum, t.hrp
	local dist, lim = t.dist, t.lim
	local head = char:FindFirstChild("Head")
	local hpos = head and head.Position or hrp.Position

	if CFG.vis and ticks >= s.visAt then
		s.visAt = ticks + 4 + math.random(0, 2)
		s.seen = sees(char, eye, hpos, hrp.Position)
	end
	local lit = (not CFG.vis) or s.seen

	local base = acc()
	if CFG.teamcol and t.tcol then base = t.tcol end
	if CFG.grad then base = base:Lerp(T.far, math.clamp(dist / lim, 0, 1) * .85) end
	local col = lit and base or base:Lerp(Color3.fromRGB(120, 120, 130), .75)

	local pt = cam:WorldToViewportPoint(hrp.Position)
	if not (pt.Z > 0 and pt.X > -60 and pt.X < vp.X + 60 and pt.Y > -60 and pt.Y < vp.Y + 60) then
		if CFG.arrows then arrow(s, pt, dist, vp, base) end
		return
	end

	local feet = (hum.RigType == Enum.HumanoidRigType.R15) and (hrp.Size.Y * .5 + hum.HipHeight) or 3
	local over = head and (head.Size.Y * .5 + .15) or 1.8
	local top = w2s(hpos + Vector3.new(0, over, 0), cam)
	local bot = w2s(hrp.Position - Vector3.new(0, feet, 0), cam)
	if not top or not bot then return end

	local h = math.abs(bot.Y - top.Y)
	if h < 4 then return end
	local w = h * .54
	local x = top.X - w * .5
	local y = math.min(top.Y, bot.Y)
	local cx = x + w * .5
	local thick = CFG.thick
	local style = CFG.style

	if CFG.box and style ~= "none" then
		if CFG.fill then
			local f = get(s, "fill", sq)
			f.Size, f.Position = Vector2.new(w, h), Vector2.new(x, y)
			f.Color, f.Filled, f.Transparency = col, true, CFG.fillA -- drawing: 1 = opaque
			f.Visible = true
		end
		if style == "full" then
			local o = get(s, "bo", sq) -- created first so it sits behind
			local b = get(s, "box", sq)
			if CFG.outline then
				o.Size, o.Position = Vector2.new(w + 2, h + 2), Vector2.new(x - 1, y - 1)
				o.Color, o.Thickness, o.Filled, o.Transparency = T.blk, thick + 2, false, .55
				o.Visible = true
			end
			b.Size, b.Position = Vector2.new(w, h), Vector2.new(x, y)
			b.Color, b.Thickness, b.Filled, b.Transparency = col, thick, false, 1
			b.Visible = true
		else
			local arm = math.min(math.max(4, h * .16), w * .4)
			local segs = {
				{x, y, x + arm, y}, {x, y, x, y + arm},
				{x + w, y, x + w - arm, y}, {x + w, y, x + w, y + arm},
				{x, y + h, x + arm, y + h}, {x, y + h, x, y + h - arm},
				{x + w, y + h, x + w - arm, y + h}, {x + w, y + h, x + w, y + h - arm},
			}
			for i = 1, 8 do
				local q = segs[i]
				local l = get(s, "c" .. i, ln)
				l.From, l.To = Vector2.new(q[1], q[2]), Vector2.new(q[3], q[4])
				l.Color, l.Thickness, l.Transparency = col, thick, 1
				l.Visible = true
			end
		end
	end

	if CFG.hp then
		local f = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)
		local bx = x - 6
		local back = get(s, "hpb", sq)
		back.Size, back.Position = Vector2.new(5, h + 2), Vector2.new(bx - 1, y - 1)
		back.Color, back.Filled, back.Transparency = T.blk, true, .55
		back.Visible = true

		local fh = math.max(1, h * f)
		local front = get(s, "hpf", sq)
		front.Size, front.Position = Vector2.new(3, fh), Vector2.new(bx, y + h - fh)
		front.Color, front.Filled, front.Transparency = hpcol(f), true, 1
		front.Visible = true

		if CFG.hpnum then
			local n = txt(s, "hpn", 11)
			n.Text = tostring(math.floor(f * 100))
			n.Center = true
			n.Position = Vector2.new(bx - 11, math.clamp(y + h - fh - 6, y - 2, y + h - 10))
			n.Color = hpcol(f)
			n.Visible = true
		end
	end

	if CFG.name then
		local n = txt(s, "nm", CFG.tsize)
		n.Text = t.label
		n.Center = true
		n.Position = Vector2.new(cx, y - CFG.tsize - 3)
		n.Color = lit and T.text or Color3.fromRGB(170, 170, 180)
		n.Visible = true
	end

	local by = y + h + 2
	local sz = math.max(10, CFG.tsize - 2)

	if CFG.dist then
		local d = txt(s, "ds", sz)
		d.Text = math.floor(dist) .. "s"
		d.Center = true
		d.Position = Vector2.new(cx, by)
		d.Color = T.sub
		d.Visible = true
		by = by + sz + 1
	end

	if CFG.tool then
		local tool = char:FindFirstChildOfClass("Tool")
		if tool then
			local tl = txt(s, "tl", sz)
			tl.Text = tool.Name
			tl.Center = true
			tl.Position = Vector2.new(cx, by)
			tl.Color = Color3.fromRGB(255, 214, 120)
			tl.Visible = true
		end
	end

	if CFG.tracer then
		local tr = get(s, "tr", ln)
		local ay = (CFG.tfrom == "top" and 0) or (CFG.tfrom == "center" and vp.Y * .5) or vp.Y
		tr.From = Vector2.new(vp.X * .5, ay)
		tr.To = Vector2.new(cx, CFG.tfrom == "top" and y or y + h)
		tr.Color, tr.Thickness, tr.Transparency = col, 1, .6
		tr.Visible = true
	end

	if CFG.head and head then
		local p = w2s(head.Position, cam)
		if p then
			local c = get(s, "hd", cr)
			c.Position, c.Radius = p, math.clamp(h * .045, 2, 6)
			c.Color, c.Filled, c.Transparency = col, true, 1
			c.Visible = true
		end
	end

	if CFG.look and head then
		local a = w2s(head.Position, cam)
		local b = w2s(head.Position + head.CFrame.LookVector * 5, cam)
		if a and b then
			local l = get(s, "lk", ln)
			l.From, l.To = a, b
			l.Color, l.Thickness, l.Transparency = Color3.fromRGB(255, 255, 255), 1, .85
			l.Visible = true
		end
	end

	if CFG.skel then
		local set = (hum.RigType == Enum.HumanoidRigType.R15) and R15 or R6
		local n = 0
		for _, pair in ipairs(set) do
			local a, b = char:FindFirstChild(pair[1]), char:FindFirstChild(pair[2])
			if a and b then
				local p1, p2 = w2s(a.Position, cam), w2s(b.Position, cam)
				if p1 and p2 then
					n = n + 1
					local l = s.bone[n]
					if not l then l = ln(); s.bone[n] = l end
					l.From, l.To = p1, p2
					l.Color, l.Thickness, l.Transparency = col, 1, .85
					l.Visible = true
					if CFG.joints then
						local dd = s.dot[n]
						if not dd then dd = cr(); s.dot[n] = dd end
						dd.Position, dd.Radius = p1, 2
						dd.Color, dd.Filled, dd.Transparency = col, true, 1
						dd.Visible = true
					end
				end
			end
		end
	end

	if CFG.chams and rank <= CHAM_MAX then
		if not s.hl or s.hl.Parent ~= char then
			uncham(s)
			local hl = Instance.new("Highlight")
			hl.Name = "unc"
			hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			hl.Adornee = char
			hl.Parent = char
			s.hl = hl
		end
		local mode = CFG.chamMode
		s.hl.FillColor = base
		s.hl.OutlineColor = base
		s.hl.FillTransparency = (mode == "outline") and 1 or .74
		s.hl.OutlineTransparency = (mode == "fill") and 1 or (lit and .1 or .6)
	else
		uncham(s)
	end
end

--------------------------------------------------------------- hud

local HUD = {}
local function hudObj(k, make)
	local o = HUD[k]
	if not o then o = make(); HUD[k] = o end
	return o
end

local fps, ping = 60, 0
local gui, fpsLabel

local function statusText()
	local s = {}
	if aimOn() then s[#s + 1] = "aim" end
	if CFG.trig then s[#s + 1] = "trig" end
	if CFG.fly then s[#s + 1] = "fly" end
	if CFG.noclip then s[#s + 1] = "nc" end
	if CFG.spd then s[#s + 1] = "spd" end
	return table.concat(s, " ")
end

local function hud(t, n)
	local cam = ws.CurrentCamera
	if not CFG.hud or not cam then
		for _, o in next, HUD do o.Visible = false end
		return
	end
	local vp = cam.ViewportSize
	local w, h = 140, 58
	local x, y = vp.X - w - 10, 10

	local bg = hudObj("bg", sq)
	bg.Size, bg.Position = Vector2.new(w, h), Vector2.new(x, y)
	bg.Color, bg.Filled, bg.Transparency = Color3.fromRGB(10, 10, 12), true, .4
	bg.Visible = true

	local a = hudObj("a", ln)
	a.From, a.To = Vector2.new(x, y + .5), Vector2.new(x + w, y + .5)
	a.Color, a.Transparency, a.Thickness = acc(), .5, 1
	a.Visible = true

	local f = hudObj("fps", function() return tx(12) end)
	f.Text = fps .. " fps"
	f.Position = Vector2.new(x + 8, y + 6)
	f.Color = fps > 45 and T.text or T.red
	f.Visible = true

	local p = hudObj("ping", function() return tx(11) end)
	p.Text = ping > 0 and (ping .. " ms") or "--"
	p.Position = Vector2.new(x + w - 8 - p.TextBounds.X, y + 7)
	p.Color = T.sub
	p.Visible = true

	local nr = hudObj("near", function() return tx(11) end)
	nr.Text = t and string.format("%s  %d", t.label, math.floor(t.dist)) or "no targets"
	nr.Position = Vector2.new(x + 8, y + 24)
	nr.Color = t and acc() or T.sub
	nr.Visible = true

	local c = hudObj("cnt", function() return tx(11) end)
	c.Text = "x" .. n
	c.Position = Vector2.new(x + w - 8 - c.TextBounds.X, y + 24)
	c.Color = T.sub
	c.Visible = true

	local st = hudObj("stat", function() return tx(11) end)
	st.Text = statusText()
	st.Position = Vector2.new(x + 8, y + 40)
	st.Color = acc()
	st.Visible = st.Text ~= ""
end

--------------------------------------------------------------- esp loop

local function tick(dt)
	ticks = ticks + 1

	if dt > 0 then fps = math.floor(fps * .9 + (1 / dt) * .1 + .5) end
	if ticks % 30 == 0 then
		pcall(function()
			ping = math.floor(stats.Network.ServerStatsItem["Data Ping"]:GetValue())
		end)
	end
	if ticks % 10 == 0 and fpsLabel and fpsLabel.Parent then
		fpsLabel.Text = fps .. " fps"
	end

	for _, s in next, POOL do hideAll(s) end

	local cam = ws.CurrentCamera
	local list = {}
	if cam and CFG.on then
		list = gather(cam, os.clock(), CFG.maxdist, CFG.npc, CFG.npcmax)
		local vp, eye = cam.ViewportSize, cam.CFrame.Position
		for i, t in ipairs(list) do draw(t, i, cam, vp, eye) end
	end

	-- slots nobody touched this frame: drop chams now, free drawings after ~4s
	for k, s in next, POOL do
		if s.last ~= ticks then
			uncham(s)
			if ticks - s.last > 240 then killSlot(k) end
		end
	end

	hud(list[1], #list)
end

--------------------------------------------------------------- aimbot + triggerbot

local AIMP = {"Head", "UpperTorso", "Torso", "HumanoidRootPart", "LowerTorso",
	"LeftUpperArm", "RightUpperArm", "LeftUpperLeg", "RightUpperLeg"}

local function partFor(char, org, cam)
	local mode = CFG.aimPart
	if mode == "head" then
		return char:FindFirstChild("Head") or char:FindFirstChild("HumanoidRootPart")
	elseif mode == "torso" then
		return char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso") or char:FindFirstChild("HumanoidRootPart")
	end
	local best, bd
	for _, n in ipairs(AIMP) do
		local pr = char:FindFirstChild(n)
		if pr then
			local sp = w2s(pr.Position, cam)
			if sp then
				local d = (sp - org).Magnitude
				if not bd or d < bd then best, bd = pr, d end
			end
		end
	end
	return best
end

-- smart origin: centre on touch / locked mouse, cursor on pc with free mouse
local function origin(vp)
	if (not uis.MouseEnabled) or uis.MouseBehavior == Enum.MouseBehavior.LockCenter then
		return vp * .5
	end
	return uis:GetMouseLocation()
end

local function pick(cam, org, eye, now)
	local list = gather(cam, now, CFG.aimMax, CFG.aimNpc, CFG.aimMax)
	local cands = {}
	for _, t in ipairs(list) do
		local part = partFor(t.char, org, cam)
		if part then
			local sp = w2s(part.Position, cam)
			if sp then
				local d2 = (sp - org).Magnitude
				if d2 <= CFG.aimFov then
					local score = d2
					if CFG.aimPrio == "distance" then score = t.dist
					elseif CFG.aimPrio == "health" then score = t.hum.Health end
					cands[#cands + 1] = {t = t, part = part, score = score}
				end
			end
		end
	end
	table.sort(cands, function(a, b) return a.score < b.score end)
	for i = 1, math.min(#cands, 4) do -- cap raycasts per frame
		local c = cands[i]
		if not CFG.aimVis or sees(c.t.char, eye, c.part.Position, c.part.Position) then return c end
	end
end

local function fire()
	local c = lp.Character
	local tool = c and c:FindFirstChildOfClass("Tool")
	if mouse1click and uis.MouseEnabled then
		pcall(mouse1click) -- covers custom gun scripts on pc
	elseif tool then
		pcall(tool.Activate, tool) -- mobile / no executor click
	elseif mouse1click then
		pcall(mouse1click)
	end
end

local trig = {since = nil, last = 0}

local function trigStep(cam, org, now)
	if not CFG.trig then trig.since = nil return end
	local ray = cam:ViewportPointToRay(org.X, org.Y)
	rpT.FilterDescendantsInstances = {lp.Character or ws}
	local hit = ws:Raycast(ray.Origin, ray.Direction * 2000, rpT)

	local valid = false
	if hit then
		local model = hit.Instance:FindFirstAncestorOfClass("Model")
		local hum = model and model:FindFirstChildOfClass("Humanoid")
		if hum and hum.Health > 0 then
			local p = plrs:GetPlayerFromCharacter(model)
			if p then
				valid = p ~= lp and not (CFG.team and lp.Team ~= nil and p.Team == lp.Team) and not friend(p)
			else
				valid = CFG.aimNpc
			end
			if valid and CFG.thead and hit.Instance.Name ~= "Head" then valid = false end
		end
	end

	if valid then
		trig.since = trig.since or now
		if now - trig.since >= CFG.tdelay / 1000 and now - trig.last >= CFG.tcd / 1000 then
			trig.last = now
			fire()
		end
	else
		trig.since = nil
	end
end

local fovC, tLine

local function aimStep(dt)
	local cam = ws.CurrentCamera
	if not cam then return end
	local vp = cam.ViewportSize
	local org = origin(vp)
	local now = os.clock()
	local active = aimOn()
	local lockSp

	if active then
		local eye = cam.CFrame.Position
		local part, char
		local tg = AS.target

		if tg and CFG.aimSticky then
			local hum2 = body(tg.char)
			local pr = hum2 and tg.char:FindFirstChild(tg.pn)
			if pr then
				local sp = w2s(pr.Position, cam)
				if sp and (sp - org).Magnitude <= CFG.aimFov * 1.35
					and (pr.Position - eye).Magnitude <= CFG.aimMax
					and (not CFG.aimVis or sees(tg.char, eye, pr.Position, pr.Position)) then
					part, char = pr, tg.char
				end
			end
		end

		if not part then
			local c = pick(cam, org, eye, now)
			if c then
				part, char = c.part, c.t.char
				AS.target = {char = char, pn = c.part.Name}
			else
				AS.target = nil
			end
		end

		if part then
			local pos = part.Position
			if CFG.pred then
				local root = char:FindFirstChild("HumanoidRootPart")
				if root then
					pos = pos + root.AssemblyLinearVelocity * ((pos - eye).Magnitude / math.max(CFG.bspeed, 1))
				end
			end
			if (pos - eye).Magnitude > .5 then
				local want = CFrame.lookAt(cam.CFrame.Position, pos)
				local s = CFG.aimSmooth
				local a = (s >= .999) and 1 or (1 - (1 - s) ^ (dt * 60)) -- frame-rate independent
				cam.CFrame = cam.CFrame:Lerp(want, a)
			end
			lockSp = w2s(pos, cam)
		end
	else
		AS.target = nil
	end

	fovC = fovC or cr()
	fovC.NumSides = 64
	fovC.Visible = CFG.aim and CFG.fovShow
	fovC.Position, fovC.Radius = org, CFG.aimFov
	fovC.Color = AS.target and acc() or Color3.fromRGB(220, 220, 220)
	fovC.Transparency = .7

	tLine = tLine or ln()
	tLine.Visible = CFG.aimLine and lockSp ~= nil
	if lockSp then
		tLine.From, tLine.To = org, lockSp
		tLine.Color, tLine.Thickness, tLine.Transparency = acc(), 1, .8
	end

	trigStep(cam, org, now)
end

--------------------------------------------------------------- custom crosshair

local XH = {}

local function xhStep()
	local cam = ws.CurrentCamera
	if not cam then return end
	for _, o in next, XH do o.Visible = false end
	if not CFG.xh then return end

	local c = cam.ViewportSize * .5
	local col = CFG.xhAcc and acc() or Color3.fromRGB(255, 255, 255)
	local size, gap, th, style = CFG.xhSize, CFG.xhGap, CFG.xhThick, CFG.xhStyle

	if style == "cross" then
		local dirs = {Vector2.new(1, 0), Vector2.new(-1, 0), Vector2.new(0, 1), Vector2.new(0, -1)}
		for i, d in ipairs(dirs) do
			local a, b = c + d * gap, c + d * (gap + size)
			if CFG.xhOut then
				local o = XH["o" .. i]
				if not o then o = ln(); XH["o" .. i] = o end
				o.From, o.To = a - d, b + d
				o.Color, o.Thickness, o.Transparency = T.blk, th + 2, .6
				o.Visible = true
			end
			local l = XH["l" .. i]
			if not l then l = ln(); XH["l" .. i] = l end
			l.From, l.To = a, b
			l.Color, l.Thickness, l.Transparency = col, th, 1
			l.Visible = true
		end
	elseif style == "circle" then
		if CFG.xhOut then
			local o = XH.co
			if not o then o = cr(); XH.co = o end
			o.NumSides, o.Position, o.Radius = 32, c, size + 1
			o.Color, o.Thickness, o.Filled, o.Transparency = T.blk, th + 2, false, .6
			o.Visible = true
		end
		local k = XH.ci
		if not k then k = cr(); XH.ci = k end
		k.NumSides, k.Position, k.Radius = 32, c, size
		k.Color, k.Thickness, k.Filled, k.Transparency = col, th, false, 1
		k.Visible = true
	end

	if CFG.xhDot or style == "dot" then
		local d = XH.dot
		if not d then d = cr(); XH.dot = d end
		d.NumSides, d.Position, d.Radius = 16, c, math.max(1.5, th)
		d.Color, d.Filled, d.Thickness, d.Transparency = col, true, 1, 1
		d.Visible = true
	end
end

--------------------------------------------------------------- movement / world

local controls
task.spawn(function()
	pcall(function()
		local pm = lp:WaitForChild("PlayerScripts", 10):WaitForChild("PlayerModule", 10)
		controls = require(pm):GetControls()
	end)
end)

-- x right, z back (same for wasd and thumbstick)
local function getMove(cam, hum)
	if controls then
		local ok, v = pcall(controls.GetMoveVector, controls)
		if ok and typeof(v) == "Vector3" then return v end
	end
	local md = hum.MoveDirection
	local lv = Vector3.new(cam.CFrame.LookVector.X, 0, cam.CFrame.LookVector.Z)
	if lv.Magnitude < 1e-3 then return Vector3.zero end
	lv = lv.Unit
	local rv = Vector3.new(-lv.Z, 0, lv.X)
	return Vector3.new(md:Dot(rv), 0, -md:Dot(lv))
end

local fl = {on = false, up = false, down = false, hum = nil}
local st = {hum = nil, ws = nil, jp = nil, jpU = nil}

local function movement(dt)
	local _, hum, hrp = ch()
	local cam = ws.CurrentCamera
	if not (hum and hrp and cam) or hum.Health <= 0 then
		fl.on, fl.hum = false, nil
		return
	end
	if fl.hum ~= hum then fl.on, fl.hum = false, hum end
	if st.hum ~= hum then st.hum, st.ws, st.jp = hum, nil, nil end

	-- walkspeed
	if CFG.spd and CFG.spdMode == "walk" then
		if st.ws == nil then st.ws = hum.WalkSpeed end
		hum.WalkSpeed = CFG.spdVal
	elseif st.ws ~= nil then
		hum.WalkSpeed = st.ws
		st.ws = nil
	end

	-- jump power / height
	if CFG.jp then
		if st.jp == nil then
			st.jpU = hum.UseJumpPower
			st.jp = st.jpU and hum.JumpPower or hum.JumpHeight
		end
		if hum.UseJumpPower then
			hum.JumpPower = CFG.jpVal
		else
			hum.JumpHeight = CFG.jpVal * CFG.jpVal / (2 * ws.Gravity)
		end
	elseif st.jp ~= nil then
		if st.jpU then hum.JumpPower = st.jp else hum.JumpHeight = st.jp end
		st.jp = nil
	end

	-- fly (cframe based, works on mobile joystick + pc wasd)
	if CFG.fly then
		fl.on = true
		hum.PlatformStand = true
		local cf = cam.CFrame
		local mv = getMove(cam, hum)
		local dir = cf.LookVector * (-mv.Z) + cf.RightVector * mv.X
		local typing = uis:GetFocusedTextBox() ~= nil
		local vy = 0
		if fl.up or (not typing and uis:IsKeyDown(Enum.KeyCode.Space)) then vy = vy + 1 end
		if fl.down or (not typing and (uis:IsKeyDown(Enum.KeyCode.LeftControl) or uis:IsKeyDown(Enum.KeyCode.Q))) then vy = vy - 1 end
		dir = dir + Vector3.new(0, vy, 0)
		if dir.Magnitude > 1 then dir = dir.Unit end

		local pos = hrp.Position + dir * CFG.flySpeed * dt
		local flat = Vector3.new(cf.LookVector.X, 0, cf.LookVector.Z)
		if flat.Magnitude < 1e-3 then flat = Vector3.new(0, 0, -1) end
		hrp.CFrame = CFrame.lookAt(pos, pos + flat)
		hrp.AssemblyLinearVelocity = Vector3.zero
		hrp.AssemblyAngularVelocity = Vector3.zero
	elseif fl.on then
		fl.on = false
		hum.PlatformStand = false
		pcall(hum.ChangeState, hum, Enum.HumanoidStateType.GettingUp)
	end

	-- cframe speed (extra push on top of walkspeed)
	if CFG.spd and CFG.spdMode == "cframe" and not CFG.fly then
		local md = hum.MoveDirection
		local extra = math.max(CFG.spdVal - hum.WalkSpeed, 0)
		if md.Magnitude > 0 and extra > 0 then
			hrp.CFrame = hrp.CFrame + md * (extra * dt)
		end
	end
end

local WS = {fb = false, grav = false, fov = false, tc = false}

--------------------------------------------------------------- prompts / x-ray / boost fps / auto reload

local PP = {
	orig  = setmetatable({}, {__mode = "k"}),
	shown = setmetatable({}, {__mode = "k"}),
	last  = setmetatable({}, {__mode = "k"}),
	t = 0,
}

keep(pps.PromptShown:Connect(function(p) PP.shown[p] = true end))
keep(pps.PromptHidden:Connect(function(p) PP.shown[p] = nil end))

local function firePrompt(p)
	if fireproximityprompt then
		pcall(fireproximityprompt, p)
	else
		task.spawn(function() -- no executor helper: use the prompt's own input api
			pcall(function()
				p:InputHoldBegin()
				task.wait(p.HoldDuration + .05)
				p:InputHoldEnd()
			end)
		end)
	end
end

local function promptStep(now)
	if CFG.ipp then
		for p in next, PP.shown do
			if PP.orig[p] == nil and p.Parent then
				PP.orig[p] = p.HoldDuration
				p.HoldDuration = 0
			end
		end
	elseif next(PP.orig) ~= nil then
		for p, hd in next, PP.orig do
			if p.Parent then p.HoldDuration = hd end
			PP.orig[p] = nil
		end
	end

	if CFG.ipa and now - PP.t > .12 then
		PP.t = now
		for p in next, PP.shown do
			if p.Parent and p.Enabled and (PP.last[p] or 0) + .6 < now then
				PP.last[p] = now
				firePrompt(p)
			end
		end
	end
end

-- batched work so big maps never hitch in one frame
local JOBS = {}
local function startJob(name, list, fn) JOBS[name] = {list = list, i = 1, fn = fn} end
local function runJobs(budget)
	for name, j in next, JOBS do
		local list, fn = j.list, j.fn
		local stop = math.min(j.i + budget - 1, #list)
		for i = j.i, stop do
			local o = list[i]
			if o then pcall(fn, o) end
		end
		j.i = stop + 1
		if j.i > #list then JOBS[name] = nil end
	end
end

local function inChar(o)
	local m = o:FindFirstAncestorOfClass("Model")
	while m do
		if m:FindFirstChildOfClass("Humanoid") then return true end
		m = m:FindFirstAncestorOfClass("Model")
	end
	return false
end

-- x-ray: client-side part transparency, originals kept so it undoes cleanly
local XR = {on = false, orig = setmetatable({}, {__mode = "k"}), t = 0.6, ts = 0}

local function xrayApply(o)
	if o:IsA("BasePart") and not o:IsA("Terrain") and XR.orig[o] == nil
		and o.Transparency < 1 and not inChar(o) then
		XR.orig[o] = o.Transparency
		o.Transparency = math.max(o.Transparency, XR.t)
	end
end

local function xrayReapply(o)
	local og = XR.orig[o]
	if og ~= nil then o.Transparency = math.max(og, XR.t) end
end

local function xrayRestore(o)
	local og = XR.orig[o]
	if og ~= nil then
		o.Transparency = og
		XR.orig[o] = nil
	end
end

-- boost fps: shadows, post effects, particles, decals, water, quality level
local FP = {on = false, orig = setmetatable({}, {__mode = "k"}), L = {}}

local function fpsApply(o)
	if FP.orig[o] ~= nil then return end
	if o:IsA("BasePart") then
		if o:IsA("Terrain") or inChar(o) then return end
		FP.orig[o] = {o.Reflectance, o.CastShadow}
		o.Reflectance = 0
		o.CastShadow = false
	elseif o:IsA("Decal") then -- includes Texture
		if inChar(o) then return end -- keep faces
		FP.orig[o] = {o.Transparency}
		o.Transparency = 1
	elseif o:IsA("ParticleEmitter") or o:IsA("Trail") or o:IsA("Smoke") or o:IsA("Fire")
		or o:IsA("Sparkles") or o:IsA("Beam") then
		FP.orig[o] = {o.Enabled}
		o.Enabled = false
	end
end

local function fpsRestore(o)
	local og = FP.orig[o]
	if not og then return end
	FP.orig[o] = nil
	if o:IsA("BasePart") then
		o.Reflectance, o.CastShadow = og[1], og[2]
	elseif o:IsA("Decal") then
		o.Transparency = og[1]
	else
		o.Enabled = og[1]
	end
end

local function fpsOn()
	FP.on = true
	FP.L = {gs = (WS.fb and WS.L) and WS.L.gs or lighting.GlobalShadows, fx = {}}
	lighting.GlobalShadows = false
	for _, e in ipairs(lighting:GetChildren()) do
		if e:IsA("PostEffect") then
			FP.L.fx[e] = e.Enabled
			e.Enabled = false
		end
	end
	pcall(function()
		local t = ws.Terrain
		FP.L.ww, FP.L.wv, FP.L.wr = t.WaterWaveSize, t.WaterWaveSpeed, t.WaterReflectance
		t.WaterWaveSize, t.WaterWaveSpeed, t.WaterReflectance = 0, 0, 0
	end)
	pcall(function()
		local r = settings().Rendering
		FP.L.ql = r.QualityLevel
		r.QualityLevel = Enum.QualityLevel.Level01
	end)
end

local function fpsOff()
	FP.on = false
	local L = FP.L
	if L.gs ~= nil then lighting.GlobalShadows = L.gs end
	for e, en in next, (L.fx or {}) do
		if e.Parent then e.Enabled = en end
	end
	pcall(function()
		if L.ww then
			local t = ws.Terrain
			t.WaterWaveSize, t.WaterWaveSpeed, t.WaterReflectance = L.ww, L.wv, L.wr
		end
	end)
	pcall(function()
		if L.ql then settings().Rendering.QualityLevel = L.ql end
	end)
end

keep(ws.DescendantAdded:Connect(function(o)
	if XR.on then pcall(xrayApply, o) end
	if FP.on then pcall(fpsApply, o) end
end))

-- auto reload after teleport
local qot = queue_on_teleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)
local RS = {warned = false, t = 0}

local function reloadSrc()
	if RELOAD_URL ~= "" then
		return string.format("loadstring(game:HttpGet(%q))()", RELOAD_URL), "url"
	end
	if isfile and isfile(RELOAD_FILE) then
		return string.format("loadstring(readfile(%q))()", RELOAD_FILE), "file"
	end
end

local function reloadStep(now)
	if not CFG.reload then RS.warned = false return end
	if g.__uncQ == game.JobId or now - RS.t < 5 then return end
	RS.t = now
	if not qot then
		if not RS.warned then
			RS.warned = true
			notify("auto reload: executor has no queue_on_teleport", T.red)
		end
		return
	end
	local code, how = reloadSrc()
	if not code then
		if not RS.warned then
			RS.warned = true
			notify("auto reload: set RELOAD_URL or save as " .. RELOAD_FILE, T.red)
		end
		return
	end
	if pcall(qot, code) then
		g.__uncQ = game.JobId -- once per server
		notify("reload queued (" .. how .. ")")
	end
end

local function world()
	local cam = ws.CurrentCamera
	local now = os.clock()

	if CFG.fb then
		if not WS.fb then
			WS.fb = true
			WS.L = {
				b = lighting.Brightness, c = lighting.ClockTime, fe = lighting.FogEnd,
				gs = lighting.GlobalShadows, am = lighting.Ambient, oa = lighting.OutdoorAmbient,
			}
		end
		if ticks % 5 == 0 then
			lighting.Brightness = 2
			lighting.ClockTime = 14
			lighting.FogEnd = 1e6
			lighting.GlobalShadows = false
			lighting.Ambient = Color3.fromRGB(178, 178, 178)
			lighting.OutdoorAmbient = Color3.fromRGB(178, 178, 178)
		end
	elseif WS.fb then
		WS.fb = false
		local L = WS.L
		lighting.Brightness, lighting.ClockTime, lighting.FogEnd = L.b, L.c, L.fe
		lighting.GlobalShadows, lighting.Ambient, lighting.OutdoorAmbient = L.gs, L.am, L.oa
	end

	if CFG.grav then
		if not WS.grav then WS.grav = true; WS.g0 = ws.Gravity end
		ws.Gravity = CFG.gravVal
	elseif WS.grav then
		WS.grav = false
		ws.Gravity = WS.g0
	end

	if CFG.cfov and cam then
		if not WS.fov then WS.fov = true; WS.f0 = cam.FieldOfView end
		cam.FieldOfView = CFG.cfovVal
	elseif WS.fov then
		WS.fov = false
		if cam then cam.FieldOfView = WS.f0 end
	end

	-- time of day
	if CFG.tc then
		if not WS.tc then
			WS.tc = true
			WS.t0 = (WS.fb and WS.L) and WS.L.c or lighting.ClockTime
		end
		lighting.ClockTime = CFG.tcVal
	elseif WS.tc then
		WS.tc = false
		lighting.ClockTime = WS.t0
	end

	-- x-ray
	if CFG.xray then
		if not XR.on then
			XR.on, XR.t = true, CFG.xrayT
			JOBS.xrayOff = nil
			startJob("xrayOn", ws:GetDescendants(), xrayApply)
		elseif XR.t ~= CFG.xrayT and now - XR.ts > .3 then
			XR.t, XR.ts = CFG.xrayT, now
			local list = {}
			for p in next, XR.orig do list[#list + 1] = p end
			startJob("xrayRe", list, xrayReapply)
		end
	elseif XR.on then
		XR.on = false
		JOBS.xrayOn, JOBS.xrayRe = nil, nil
		local list = {}
		for p in next, XR.orig do list[#list + 1] = p end
		startJob("xrayOff", list, xrayRestore)
	end

	-- boost fps
	if CFG.fps then
		if not FP.on then
			fpsOn()
			JOBS.fpsOff = nil
			startJob("fpsOn", ws:GetDescendants(), fpsApply)
		end
	elseif FP.on then
		fpsOff()
		JOBS.fpsOn = nil
		local list = {}
		for p in next, FP.orig do list[#list + 1] = p end
		startJob("fpsOff", list, fpsRestore)
	end

	promptStep(now)
	reloadStep(now)
	runJobs(600)
end

local function tpTo(x, y)
	local cam = ws.CurrentCamera
	local _, _, hrp = ch()
	if not cam or not hrp then return end
	local ray = cam:ViewportPointToRay(x, y)
	rp.FilterDescendantsInstances = {lp.Character}
	local hit = ws:Raycast(ray.Origin, ray.Direction * 2000, rp)
	if hit then hrp.CFrame = CFrame.new(hit.Position + Vector3.new(0, 3.5, 0)) end
end

keep(rs.Stepped:Connect(function()
	if not CFG.noclip then return end
	local c = lp.Character
	if not c then return end
	for _, p in ipairs(c:GetDescendants()) do
		if p:IsA("BasePart") and p.CanCollide then p.CanCollide = false end
	end
end))

--------------------------------------------------------------- input

local KT = {
	MouseButton1 = "LMB", MouseButton2 = "RMB", MouseButton3 = "MMB",
	RightShift = "RShift", LeftShift = "LShift", LeftControl = "LCtrl",
	RightControl = "RCtrl", LeftAlt = "LAlt",
}
local function keyText(n)
	if n == nil or n == "" then return "none" end
	return KT[n] or n
end

local function keyHit(i, name)
	if not name or name == "" then return false end
	if name:sub(1, 11) == "MouseButton" then return i.UserInputType.Name == name end
	return i.UserInputType == Enum.UserInputType.Keyboard and i.KeyCode.Name == name
end

local binding
local menuToggle

keep(uis.InputBegan:Connect(function(i, gp)
	if binding then
		local ty = i.UserInputType
		local nm
		if ty == Enum.UserInputType.Keyboard then
			if i.KeyCode == Enum.KeyCode.Escape then
				binding = nil
				refreshAll()
				return
			elseif i.KeyCode == Enum.KeyCode.Backspace then
				nm = ""
			else
				nm = i.KeyCode.Name
			end
		elseif ty == Enum.UserInputType.MouseButton1 or ty == Enum.UserInputType.MouseButton2 or ty == Enum.UserInputType.MouseButton3 then
			nm = ty.Name
		end
		if nm ~= nil then
			CFG[binding] = nm
			binding = nil
			refreshAll()
			save()
		end
		return
	end
	if gp then return end

	if keyHit(i, CFG.kMenu) then
		if menuToggle then menuToggle() end
	elseif keyHit(i, CFG.kAim) then
		aimPress(); refreshAll()
	elseif keyHit(i, CFG.kFly) then
		CFG.fly = not CFG.fly; refreshAll(); save()
	elseif keyHit(i, CFG.kNoclip) then
		CFG.noclip = not CFG.noclip; refreshAll(); save()
	end

	if CFG.ctp and i.UserInputType == Enum.UserInputType.MouseButton1 and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
		local m = uis:GetMouseLocation()
		tpTo(m.X, m.Y)
	end
end))

keep(uis.InputEnded:Connect(function(i)
	if keyHit(i, CFG.kAim) then aimRelease(); refreshAll() end
end))

keep(uis.TouchTapInWorld:Connect(function(pos, processed)
	if CFG.ctp and not processed then tpTo(pos.X, pos.Y) end
end))

keep(uis.JumpRequest:Connect(function()
	if CFG.ijump then
		local _, hum = ch()
		if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
	end
end))

keep(lp.Idled:Connect(function()
	if CFG.afk then
		pcall(function()
			vu:CaptureController()
			vu:ClickButton2(Vector2.new())
		end)
	end
end))

keep(lp.CharacterAdded:Connect(function()
	fl.on, fl.hum = false, nil
end))

local function hookPlayer(p)
	local function onChar(c)
		task.spawn(function()
			local hum = c:WaitForChild("Humanoid", 5)
			if not hum then return end
			hum.Died:Connect(function()
				if not (CFG.ntf and CFG.ntfDie) then return end
				if p == lp then
					notify("you died", T.red, true)
					return
				end
				local _, _, mine = ch()
				local theirs = c:FindFirstChild("HumanoidRootPart")
				local d = (mine and theirs) and math.floor((mine.Position - theirs.Position).Magnitude) or nil
				notify(p.DisplayName .. " died" .. (d and (" (" .. d .. "s)") or ""), T.red, true)
			end)
		end)
	end
	if p.Character then onChar(p.Character) end
	keep(p.CharacterAdded:Connect(onChar))
end

for _, p in ipairs(plrs:GetPlayers()) do hookPlayer(p) end

keep(plrs.PlayerAdded:Connect(function(p)
	hookPlayer(p)
	if CFG.ntfJoin then notify(p.DisplayName .. " joined", T.text, true) end
end))

keep(plrs.PlayerRemoving:Connect(function(p)
	if CFG.ntfJoin then notify(p.DisplayName .. " left", T.sub, true) end
end))

--------------------------------------------------------------- ui helpers

local function new(cls, props, parent)
	local o = Instance.new(cls)
	for k, v in next, props do o[k] = v end
	o.Parent = parent
	return o
end

local function corner(o, r)
	local u = Instance.new("UICorner")
	u.CornerRadius = UDim.new(0, r)
	u.Parent = o
end

local function stroke(o, col, th)
	local s = Instance.new("UIStroke")
	s.Color, s.Thickness = col, th or 1
	s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	s.Parent = o
	return s
end

-- toasts: top centre, newest last, max 4
local toastBox, toastList, toastPending, toastN = nil, {}, {}, 0

local function showToast(text, col)
	toastN = toastN + 1
	local t = new("TextLabel", {
		Size = UDim2.fromOffset(0, 26),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundColor3 = T.bg, BackgroundTransparency = .08,
		BorderSizePixel = 0, LayoutOrder = toastN,
		Font = Enum.Font.SourceSans, Text = text, TextSize = 15,
		TextColor3 = T.text,
	}, toastBox)
	corner(t, 4)
	local sk = stroke(t, col or acc(), 1)
	new("UIPadding", {PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 10)}, t)
	toastList[#toastList + 1] = t
	while #toastList > 4 do
		local old = table.remove(toastList, 1)
		pcall(function() old:Destroy() end)
	end
	task.delay(3, function()
		if not t.Parent then return end
		local info = TweenInfo.new(.35)
		tws:Create(t, info, {BackgroundTransparency = 1, TextTransparency = 1}):Play()
		tws:Create(sk, info, {Transparency = 1}):Play()
		task.delay(.4, function()
			for i, x in ipairs(toastList) do
				if x == t then table.remove(toastList, i) break end
			end
			pcall(function() t:Destroy() end)
		end)
	end)
end

-- event = true: event toast, obeys the notifications toggle. otherwise it is a system message
notify = function(text, col, event)
	if event and not CFG.ntf then return end
	if toastBox then
		showToast(text, col)
	else
		toastPending[#toastPending + 1] = {text, col}
	end
end

local F, FB, FC = Enum.Font.SourceSans, Enum.Font.SourceSansBold, Enum.Font.Code
local LEFT, RIGHT = Enum.TextXAlignment.Left, Enum.TextXAlignment.Right

local function clampPos(v)
	local cam = ws.CurrentCamera
	local vp = cam and cam.ViewportSize or Vector2.new(800, 400)
	return Vector2.new(
		math.clamp(v.X, 0, math.max(0, vp.X - 44)),
		math.clamp(v.Y, 0, math.max(0, vp.Y - 34))
	)
end

-- touch-safe drag: follows the exact finger that started it, glides to the target
local function draggable(handle, frame, onDone, onTap)
	local dragging, dragInput, startIn, startPos = false, nil, nil, nil
	local cur, target, moved = nil, nil, 0

	handle.InputBegan:Connect(function(i)
		local ty = i.UserInputType
		if ty ~= Enum.UserInputType.MouseButton1 and ty ~= Enum.UserInputType.Touch then return end
		dragging, moved = true, 0
		dragInput = (ty == Enum.UserInputType.Touch) and i or nil
		startIn = i.Position
		startPos = Vector2.new(frame.Position.X.Offset, frame.Position.Y.Offset)
		cur, target = startPos, startPos
		i.Changed:Connect(function()
			if i.UserInputState == Enum.UserInputState.End and dragging and (dragInput == nil or dragInput == i) then
				dragging = false
				if moved < 8 then
					if onTap then onTap() end
				elseif onDone then
					onDone(target)
				end
			end
		end)
	end)

	keep(uis.InputChanged:Connect(function(i)
		if not dragging then return end
		if dragInput then
			if i ~= dragInput then return end
		elseif i.UserInputType ~= Enum.UserInputType.MouseMovement then
			return
		end
		local d = i.Position - startIn
		moved = math.max(moved, math.sqrt(d.X * d.X + d.Y * d.Y))
		if moved >= 8 then target = clampPos(startPos + Vector2.new(d.X, d.Y)) end
	end))

	keep(rs.RenderStepped:Connect(function(dt)
		if not target or not cur then return end
		if (target - cur).Magnitude < .4 then
			if cur ~= target then
				cur = target
				frame.Position = UDim2.fromOffset(cur.X, cur.Y)
			end
			if not dragging then target = nil end
			return
		end
		cur = cur:Lerp(target, 1 - math.exp(-dt * 30))
		frame.Position = UDim2.fromOffset(cur.X, cur.Y)
	end))
end

--------------------------------------------------------------- ui

local function ui()
	local parent
	if type(gethui) == "function" then
		local ok, h = pcall(gethui)
		if ok and h then parent = h end
	end
	parent = parent or game:GetService("CoreGui")

	gui = new("ScreenGui", {
		Name = "unc_" .. math.random(10000, 99999),
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		DisplayOrder = 50,
	}, parent)

	toastBox = new("Frame", {
		AnchorPoint = Vector2.new(.5, 0),
		Position = UDim2.new(.5, 0, 0, 8),
		Size = UDim2.fromOffset(0, 0),
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
	}, gui)
	new("UIListLayout", {
		Padding = UDim.new(0, 4),
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
	}, toastBox)
	for _, tp in ipairs(toastPending) do showToast(tp[1], tp[2]) end
	toastPending = {}

	local cam = ws.CurrentCamera
	local vp = cam and cam.ViewportSize or Vector2.new(800, 400)
	local W = 292
	local HH = MOBILE and 36 or 30
	local RH = MOBILE and 32 or 26
	local SH = MOBILE and 46 or 40
	local sc = math.min(CFG.ui, (vp.X - 10) / W)
	local px = math.clamp(CFG.wx, 0, math.max(0, vp.X - 80))
	local py = math.clamp(CFG.wy, 0, math.max(0, vp.Y - 100))
	local H = math.clamp((vp.Y - py - 8) / sc, 170, 380)

	local win = new("Frame", {
		Size = UDim2.fromOffset(W, H),
		Position = UDim2.fromOffset(px, py),
		BackgroundColor3 = T.bg,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		Active = true,
	}, gui)
	corner(win, 5)
	stroke(win, T.line, 1)

	local us = new("UIScale", {Scale = sc}, win)
	reg(function()
		local c = ws.CurrentCamera
		local vx = c and c.ViewportSize.X or 800
		us.Scale = math.min(CFG.ui, (vx - 10) / W)
	end)

	-- title bar
	local head = new("Frame", {
		Size = UDim2.new(1, 0, 0, HH),
		BackgroundColor3 = T.bar,
		BorderSizePixel = 0,
	}, win)

	local headLine = new("Frame", {
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 1, -1),
		BorderSizePixel = 0,
	}, head)
	reg(function() headLine.BackgroundColor3 = acc() end)

	new("TextLabel", {
		Size = UDim2.new(0, 100, 1, 0),
		Position = UDim2.fromOffset(10, 0),
		BackgroundTransparency = 1,
		Font = FC, Text = "unc v5", TextSize = 14,
		TextColor3 = T.text, TextXAlignment = LEFT,
	}, head)

	fpsLabel = new("TextLabel", {
		Size = UDim2.fromOffset(52, HH),
		Position = UDim2.new(1, -112, 0, 0),
		BackgroundTransparency = 1,
		Font = FC, Text = "0 fps", TextSize = 12,
		TextColor3 = T.sub, TextXAlignment = RIGHT,
	}, head)

	local function headBtn(text, offX, col)
		return new("TextButton", {
			Size = UDim2.fromOffset(28, HH),
			Position = UDim2.new(1, offX, 0, 0),
			BackgroundTransparency = 1,
			Text = text, Font = FB, TextSize = 16,
			TextColor3 = col, BorderSizePixel = 0, AutoButtonColor = false,
		}, head)
	end
	local collapse = headBtn("_", -56, T.sub)
	local close = headBtn("x", -28, T.red)

	-- tabs
	local ptabs = {"esp", "aim", "move", "world", "plrs", "cfg"}
	local pidx = {esp = 1, aim = 2, move = 3, world = 4, plrs = 5, cfg = 6}

	local tabBar = new("Frame", {
		Size = UDim2.new(1, 0, 0, 28),
		Position = UDim2.fromOffset(0, HH),
		BackgroundColor3 = T.bar,
		BorderSizePixel = 0,
	}, win)

	local tabBtn, pages, cur = {}, {}, 1
	local function showTabs()
		for k, b in ipairs(tabBtn) do
			local on = k == cur
			b.BackgroundColor3 = on and T.bg or T.bar
			b.TextColor3 = on and acc() or T.sub
		end
	end
	reg(showTabs)

	local function page(i)
		cur = i
		showTabs()
		for k, p in ipairs(pages) do p.Visible = (k == i) end
		CFG.page = ptabs[i]
	end

	local order = {}
	local function seq(p)
		order[p] = (order[p] or 0) + 1
		return order[p]
	end

	for i, name in ipairs(ptabs) do
		local b = new("TextButton", {
			Size = UDim2.new(1 / #ptabs, 0, 1, 0),
			Position = UDim2.new((i - 1) / #ptabs, 0, 0, 0),
			BackgroundColor3 = T.bar,
			Text = name, Font = FB, TextSize = 12,
			TextColor3 = T.sub, BorderSizePixel = 0, AutoButtonColor = false,
		}, tabBar)
		tabBtn[i] = b
		b.MouseButton1Click:Connect(function() page(i); save() end)

		local pg = new("ScrollingFrame", {
			Size = UDim2.new(1, -12, 1, -(HH + 28 + 8)),
			Position = UDim2.fromOffset(6, HH + 31),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			CanvasSize = UDim2.new(),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			ScrollBarThickness = 3,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			Visible = false,
		}, win)
		reg(function() pg.ScrollBarImageColor3 = acc() end)
		new("UIListLayout", {Padding = UDim.new(0, 0), SortOrder = Enum.SortOrder.LayoutOrder}, pg)
		pages[i] = pg
	end

	-- widgets
	local function divider(r)
		new("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, -1),
			BackgroundColor3 = T.line, BorderSizePixel = 0,
		}, r)
	end

	local function row(p, h)
		local r = new("Frame", {
			Size = UDim2.new(1, -6, 0, h),
			BackgroundTransparency = 1,
			LayoutOrder = seq(p),
		}, p)
		divider(r)
		return r
	end

	local function label(r, text, w)
		return new("TextLabel", {
			Size = UDim2.new(1, -(w or 40), 1, 0),
			Position = UDim2.fromOffset(6, 0),
			BackgroundTransparency = 1,
			Font = F, Text = text, TextSize = 15,
			TextColor3 = T.text, TextXAlignment = LEFT,
		}, r)
	end

	local function section(p, text)
		local l = new("TextLabel", {
			Size = UDim2.new(1, -6, 0, 22),
			BackgroundTransparency = 1,
			Font = FB, Text = text, TextSize = 13,
			TextXAlignment = LEFT, TextYAlignment = Enum.TextYAlignment.Bottom,
			LayoutOrder = seq(p),
		}, p)
		new("UIPadding", {PaddingLeft = UDim.new(0, 6), PaddingBottom = UDim.new(0, 3)}, l)
		reg(function() l.TextColor3 = acc() end)
	end

	local function toggle(p, key, text)
		local r = row(p, RH)
		label(r, text)
		local box = new("Frame", {
			Size = UDim2.fromOffset(16, 16),
			Position = UDim2.new(1, -24, .5, -8),
			BackgroundColor3 = T.off, BorderSizePixel = 0,
		}, r)
		corner(box, 3)
		local sk = stroke(box, T.line, 1)

		reg(function()
			local on = CFG[key] and true or false
			box.BackgroundColor3 = on and acc() or T.off
			sk.Color = on and acc() or T.line
		end)

		local hitb = new("TextButton", {
			Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
			Text = "", AutoButtonColor = false,
		}, r)
		hitb.MouseButton1Click:Connect(function()
			CFG[key] = not CFG[key]
			refreshAll()
			save()
		end)
	end

	local function slider(p, key, text, min, max, step)
		local r = row(p, SH)
		new("TextLabel", {
			Size = UDim2.new(1, -70, 0, 20),
			Position = UDim2.fromOffset(6, 2),
			BackgroundTransparency = 1,
			Font = F, Text = text, TextSize = 15,
			TextColor3 = T.text, TextXAlignment = LEFT,
		}, r)
		local val = new("TextLabel", {
			Size = UDim2.fromOffset(60, 20),
			Position = UDim2.new(1, -66, 0, 2),
			BackgroundTransparency = 1,
			Font = FC, TextSize = 12,
			TextColor3 = T.sub, TextXAlignment = RIGHT,
		}, r)

		local bar = new("Frame", {
			Size = UDim2.new(1, -16, 0, 4),
			Position = UDim2.fromOffset(8, SH - 12),
			BackgroundColor3 = T.off, BorderSizePixel = 0,
		}, r)
		local fill = new("Frame", {Size = UDim2.new(0, 0, 1, 0), BorderSizePixel = 0}, bar)
		local knob = new("Frame", {
			Size = UDim2.fromOffset(6, 14),
			AnchorPoint = Vector2.new(.5, .5),
			Position = UDim2.new(0, 0, .5, 0),
			BackgroundColor3 = T.text, BorderSizePixel = 0,
		}, bar)
		corner(knob, 2)

		local fmt = step < 1 and "%.2f" or "%d"
		reg(function()
			local t = math.clamp((CFG[key] - min) / (max - min), 0, 1)
			fill.Size = UDim2.new(t, 0, 1, 0)
			fill.BackgroundColor3 = acc()
			knob.Position = UDim2.new(t, 0, .5, 0)
			val.Text = string.format(fmt, CFG[key])
		end)

		local function set(x)
			local w = bar.AbsoluteSize.X
			if w <= 0 then return end
			local t = math.clamp((x - bar.AbsolutePosition.X) / w, 0, 1)
			local v = math.floor((min + t * (max - min)) / step + .5) * step
			if step < 1 then v = tonumber(string.format("%.2f", v)) end
			CFG[key] = math.clamp(v, min, max)
			refreshAll()
		end

		local drag, dInput = false, nil
		local hitb = new("TextButton", {
			Size = UDim2.new(1, 0, 0, SH - 18),
			Position = UDim2.fromOffset(0, 18),
			BackgroundTransparency = 1, Text = "", AutoButtonColor = false,
		}, r)
		hitb.InputBegan:Connect(function(i)
			local ty = i.UserInputType
			if ty == Enum.UserInputType.Touch or ty == Enum.UserInputType.MouseButton1 then
				drag = true
				dInput = (ty == Enum.UserInputType.Touch) and i or nil
				p.ScrollingEnabled = false -- page must not scroll while sliding
				set(i.Position.X)
			end
		end)
		keep(uis.InputChanged:Connect(function(i)
			if not drag then return end
			if dInput then
				if i ~= dInput then return end
			elseif i.UserInputType ~= Enum.UserInputType.MouseMovement then
				return
			end
			set(i.Position.X)
		end))
		keep(uis.InputEnded:Connect(function(i)
			local ty = i.UserInputType
			if drag and (ty == Enum.UserInputType.Touch or ty == Enum.UserInputType.MouseButton1) then
				if dInput and i ~= dInput then return end
				drag = false
				p.ScrollingEnabled = true
				save()
			end
		end))
	end

	local function segment(p, key, text, opts)
		local r = row(p, RH + 22)
		label(r, text, 12).Size = UDim2.new(1, -12, 0, 22)

		local holder = new("Frame", {
			Size = UDim2.new(1, -12, 0, RH - 6),
			Position = UDim2.fromOffset(6, 24),
			BackgroundTransparency = 1, BorderSizePixel = 0,
		}, r)

		local list = {}
		for i, o in ipairs(opts) do
			local b = new("TextButton", {
				Size = UDim2.new(1 / #opts, -3, 1, 0),
				Position = UDim2.new((i - 1) / #opts, 0, 0, 0),
				BackgroundColor3 = T.off,
				Text = o[1], Font = FB, TextSize = 13,
				TextColor3 = T.sub, BorderSizePixel = 0, AutoButtonColor = false,
			}, holder)
			corner(b, 3)
			list[#list + 1] = {b = b, v = o[2]}
			b.MouseButton1Click:Connect(function()
				CFG[key] = o[2]
				refreshAll()
				save()
			end)
		end
		reg(function()
			for _, it in ipairs(list) do
				local on = CFG[key] == it.v
				it.b.BackgroundColor3 = on and acc() or T.off
				it.b.TextColor3 = on and T.dark or T.sub
			end
		end)
	end

	local function keybind(p, key, text)
		local r = row(p, RH)
		label(r, text, 100)
		local b = new("TextButton", {
			Size = UDim2.fromOffset(84, RH - 8),
			Position = UDim2.new(1, -92, .5, -(RH - 8) / 2),
			BackgroundColor3 = T.off,
			Font = FC, TextSize = 12, TextColor3 = T.text,
			Text = "", AutoButtonColor = false, BorderSizePixel = 0,
		}, r)
		corner(b, 3)
		stroke(b, T.line, 1)
		reg(function()
			b.Text = (binding == key) and "press key..." or keyText(CFG[key])
		end)
		b.MouseButton1Click:Connect(function()
			binding = key
			refreshAll()
		end)
	end

	local function swatches(p)
		local r = row(p, 50)
		label(r, "accent", 12).Size = UDim2.new(1, -12, 0, 22)
		local rings = {}
		for i, a in ipairs(ACC) do
			local b = new("TextButton", {
				Size = UDim2.fromOffset(28, 22),
				Position = UDim2.fromOffset(6 + (i - 1) * 34, 24),
				BackgroundColor3 = a[2],
				Text = "", BorderSizePixel = 0, AutoButtonColor = false,
			}, r)
			corner(b, 3)
			rings[i] = stroke(b, T.text, 2)
			b.MouseButton1Click:Connect(function()
				CFG.acc = i
				refreshAll()
				save()
			end)
		end
		reg(function()
			for i, rg in ipairs(rings) do
				rg.Transparency = (math.floor(CFG.acc) == i) and 0 or 1
			end
		end)
	end

	local function button(p, text, col, cb)
		local b = new("TextButton", {
			Size = UDim2.new(1, -6, 0, RH + 2),
			BackgroundColor3 = T.off,
			Text = text, Font = FB, TextSize = 14,
			TextColor3 = col, BorderSizePixel = 0, AutoButtonColor = false,
			LayoutOrder = seq(p),
		}, p)
		corner(b, 3)
		stroke(b, T.line, 1)
		b.MouseButton1Click:Connect(cb)
		new("Frame", {Size = UDim2.new(1, 0, 0, 4), BackgroundTransparency = 1, LayoutOrder = seq(p)}, p)
	end

	local function note(p, text)
		new("TextLabel", {
			Size = UDim2.new(1, -6, 0, 18),
			BackgroundTransparency = 1,
			Font = F, Text = text, TextSize = 13,
			TextColor3 = T.sub, TextXAlignment = LEFT, LayoutOrder = seq(p),
		}, p)
	end

	----------------------------------------------------------- esp page
	local v = pages[1]
	section(v, "core")
	toggle(v, "on", "enabled")
	toggle(v, "box", "boxes")
	segment(v, "style", "box style", {{"corner", "corner"}, {"full", "full"}, {"none", "off"}})
	toggle(v, "outline", "box outline")
	toggle(v, "fill", "box fill")
	slider(v, "fillA", "fill opacity", 0.05, 0.6, 0.01)
	toggle(v, "grad", "distance tint")
	toggle(v, "teamcol", "use team color")
	section(v, "info")
	toggle(v, "name", "names")
	toggle(v, "uname", "username instead")
	toggle(v, "dist", "distance")
	toggle(v, "hp", "health bar")
	toggle(v, "hpnum", "health number")
	toggle(v, "tool", "held tool")
	section(v, "lines")
	toggle(v, "tracer", "tracers")
	segment(v, "tfrom", "tracer origin", {{"bottom", "bottom"}, {"center", "center"}, {"top", "top"}})
	toggle(v, "head", "head dot")
	toggle(v, "look", "look direction")
	section(v, "skeleton")
	toggle(v, "skel", "skeleton")
	toggle(v, "joints", "joint dots")
	section(v, "chams")
	toggle(v, "chams", "chams")
	segment(v, "chamMode", "cham mode", {{"fill", "fill"}, {"outline", "line"}, {"both", "both"}})
	section(v, "other")
	toggle(v, "arrows", "offscreen arrows")
	toggle(v, "vis", "visibility check")
	slider(v, "maxdist", "max distance", 120, 3000, 40)
	section(v, "filters")
	toggle(v, "team", "team check")
	toggle(v, "friend", "hide friends")
	toggle(v, "npc", "npc esp")
	slider(v, "npcmax", "npc distance", 100, 2000, 50)
	section(v, "scale")
	slider(v, "tsize", "text size", 10, 18, 1)
	slider(v, "thick", "line weight", 1, 3, 1)

	----------------------------------------------------------- aim page
	local a = pages[2]
	section(a, "aimbot")
	toggle(a, "aim", "enabled")
	segment(a, "aimMode", "activation", {{"hold", "hold"}, {"toggle", "toggle"}, {"always", "always"}})
	segment(a, "aimPart", "aim at", {{"head", "head"}, {"torso", "torso"}, {"closest", "nearest"}})
	segment(a, "aimPrio", "target priority", {{"crosshair", "crosshair"}, {"distance", "distance"}, {"health", "low hp"}})
	slider(a, "aimFov", "fov (px)", 30, 700, 5)
	slider(a, "aimSmooth", "strength", 0.05, 1, 0.01)
	slider(a, "aimMax", "max distance", 100, 3000, 50)
	toggle(a, "aimVis", "wall check")
	toggle(a, "aimSticky", "sticky lock")
	toggle(a, "aimNpc", "include npcs")
	section(a, "prediction")
	toggle(a, "pred", "lead moving targets")
	slider(a, "bspeed", "projectile speed", 100, 3000, 50)
	section(a, "visuals")
	toggle(a, "fovShow", "fov circle")
	toggle(a, "aimLine", "lock line")
	section(a, "crosshair")
	toggle(a, "xh", "custom crosshair")
	segment(a, "xhStyle", "style", {{"cross", "cross"}, {"dot", "dot"}, {"circle", "circle"}})
	slider(a, "xhSize", "size", 2, 30, 1)
	slider(a, "xhGap", "gap", 0, 12, 1)
	slider(a, "xhThick", "thickness", 1, 4, 1)
	toggle(a, "xhDot", "center dot")
	toggle(a, "xhOut", "outline")
	toggle(a, "xhAcc", "accent color")
	section(a, "triggerbot")
	toggle(a, "trig", "triggerbot")
	toggle(a, "thead", "head only")
	slider(a, "tdelay", "delay (ms)", 0, 300, 10)
	slider(a, "tcd", "cooldown (ms)", 30, 500, 10)
	if HASKB then
		section(a, "keys")
		keybind(a, "kAim", "aim key")
	else
		note(a, "hold the AIM button on the quick bar")
	end

	----------------------------------------------------------- move page
	local m = pages[3]
	section(m, "fly")
	toggle(m, "fly", "fly")
	slider(m, "flySpeed", "fly speed", 10, 300, 5)
	section(m, "collision")
	toggle(m, "noclip", "noclip")
	section(m, "speed")
	toggle(m, "spd", "speed")
	segment(m, "spdMode", "speed mode", {{"walk", "walkspeed"}, {"cframe", "cframe"}})
	slider(m, "spdVal", "speed value", 16, 250, 2)
	section(m, "jump")
	toggle(m, "ijump", "infinite jump")
	toggle(m, "jp", "high jump")
	slider(m, "jpVal", "jump power", 50, 300, 5)
	section(m, "teleport")
	toggle(m, "ctp", HASKB and "click tp (ctrl + click)" or "tap tp")
	if HASKB then
		section(m, "keys")
		keybind(m, "kFly", "fly key")
		keybind(m, "kNoclip", "noclip key")
		note(m, "fly: space up, ctrl / q down")
	else
		note(m, "fly: joystick moves, UP / DN on quick bar")
	end

	----------------------------------------------------------- world page
	local wd = pages[4]
	section(wd, "lighting")
	toggle(wd, "fb", "fullbright")
	section(wd, "camera")
	toggle(wd, "cfov", "custom fov")
	slider(wd, "cfovVal", "field of view", 40, 120, 1)
	section(wd, "physics")
	toggle(wd, "grav", "custom gravity")
	slider(wd, "gravVal", "gravity", 0, 400, 5)
	section(wd, "time")
	toggle(wd, "tc", "custom time of day")
	slider(wd, "tcVal", "clock time", 0, 24, 0.25)
	section(wd, "x-ray")
	toggle(wd, "xray", "x-ray (see through walls)")
	slider(wd, "xrayT", "wall transparency", 0.3, 0.95, 0.05)
	section(wd, "performance")
	toggle(wd, "fps", "boost fps")
	note(wd, "shadows, effects, particles, decals off")
	section(wd, "interaction")
	toggle(wd, "ipp", "instant prompts")
	toggle(wd, "ipa", "auto interact")
	note(wd, fireproximityprompt and "auto interact: executor fire" or "auto interact: fallback mode")

	----------------------------------------------------------- players page
	local pl = pages[5]
	local function restoreCam()
		local c = ws.CurrentCamera
		local _, hum = ch()
		if c and hum then c.CameraSubject = hum end
	end
	local rebuild
	button(pl, "stop viewing", T.text, restoreCam)
	button(pl, "refresh list", T.text, function() rebuild() end)
	local holder = new("Frame", {
		Size = UDim2.new(1, -6, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = seq(pl),
	}, pl)
	new("UIListLayout", {SortOrder = Enum.SortOrder.LayoutOrder}, holder)

	rebuild = function()
		for _, c in ipairs(holder:GetChildren()) do
			if c:IsA("Frame") then c:Destroy() end
		end
		local list = {}
		for _, p in ipairs(plrs:GetPlayers()) do
			if p ~= lp then list[#list + 1] = p end
		end
		table.sort(list, function(x, y) return x.DisplayName:lower() < y.DisplayName:lower() end)
		for n, p in ipairs(list) do
			local r = new("Frame", {
				Size = UDim2.new(1, 0, 0, RH + 2),
				BackgroundTransparency = 1, LayoutOrder = n,
			}, holder)
			divider(r)
			label(r, p.DisplayName, 100)
			local function mini(text, offX, cb)
				local b = new("TextButton", {
					Size = UDim2.fromOffset(40, RH - 6),
					Position = UDim2.new(1, offX, .5, -(RH - 6) / 2),
					BackgroundColor3 = T.off,
					Text = text, Font = FB, TextSize = 12, TextColor3 = T.text,
					BorderSizePixel = 0, AutoButtonColor = false,
				}, r)
				corner(b, 3)
				b.MouseButton1Click:Connect(cb)
			end
			mini("tp", -88, function()
				local _, _, hrp = ch()
				local tr = p.Character and p.Character:FindFirstChild("HumanoidRootPart")
				if hrp and tr then hrp.CFrame = tr.CFrame * CFrame.new(0, 0, 3) end
			end)
			mini("view", -44, function()
				local c = ws.CurrentCamera
				local hum = p.Character and p.Character:FindFirstChildOfClass("Humanoid")
				if c and hum then c.CameraSubject = hum end
			end)
		end
		if #list == 0 then
			local r = new("Frame", {Size = UDim2.new(1, 0, 0, RH), BackgroundTransparency = 1}, holder)
			label(r, "nobody else here", 12).TextColor3 = T.sub
		end
	end
	rebuild()
	keep(plrs.PlayerAdded:Connect(function() task.delay(.3, rebuild) end))
	keep(plrs.PlayerRemoving:Connect(function() task.delay(.3, rebuild) end))
	g.__uncCam = restoreCam

	----------------------------------------------------------- cfg page
	local cf = pages[6]
	section(cf, "appearance")
	swatches(cf)
	slider(cf, "ui", "menu scale", 0.8, 1.4, 0.05)
	toggle(cf, "hud", "stats hud")
	toggle(cf, "qbar", "quick bar")
	if HASKB then keybind(cf, "kMenu", "menu key") end

	section(cf, "notifications")
	toggle(cf, "ntf", "notifications")
	toggle(cf, "ntfJoin", "joins / leaves")
	toggle(cf, "ntfDie", "deaths")

	section(cf, "profiles")
	local pinfo = new("TextLabel", {
		Size = UDim2.new(1, -6, 0, 20), BackgroundTransparency = 1,
		Font = F, TextSize = 14, TextXAlignment = LEFT, LayoutOrder = seq(cf),
	}, cf)
	new("UIPadding", {PaddingLeft = UDim.new(0, 6)}, pinfo)
	reg(function()
		pinfo.TextColor3 = acc()
		pinfo.Text = "active: " .. STORE.active .. (STORE.games[PID] == STORE.active and "  (bound to this game)" or "")
	end)

	local nr = row(cf, RH + 6)
	local tb = new("TextBox", {
		Size = UDim2.new(1, -100, 0, RH - 2),
		Position = UDim2.fromOffset(6, 3),
		BackgroundColor3 = T.off, BorderSizePixel = 0,
		Text = "", PlaceholderText = "profile name", PlaceholderColor3 = T.sub,
		TextColor3 = T.text, Font = F, TextSize = 14,
		ClearTextOnFocus = false, TextXAlignment = LEFT,
	}, nr)
	corner(tb, 3)
	new("UIPadding", {PaddingLeft = UDim.new(0, 6)}, tb)
	local sb = new("TextButton", {
		Size = UDim2.fromOffset(84, RH - 2),
		Position = UDim2.new(1, -90, 0, 3),
		BackgroundColor3 = T.off, BorderSizePixel = 0,
		Text = "save as", Font = FB, TextSize = 13, TextColor3 = T.text, AutoButtonColor = false,
	}, nr)
	corner(sb, 3)

	local slotHolder = new("Frame", {
		Size = UDim2.new(1, -6, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1, LayoutOrder = seq(cf),
	}, cf)
	new("UIListLayout", {SortOrder = Enum.SortOrder.LayoutOrder}, slotHolder)

	local rebuildSlots

	local function switchTo(name)
		if not STORE.slots[name] then return end
		save() -- keep edits made to the profile we are leaving
		STORE.active = name
		applyData(STORE.slots[name])
		save()
		refreshAll()
		rebuildSlots()
		notify("profile: " .. name)
	end

	local function dropSlot(name)
		local n = 0
		for _ in next, STORE.slots do n = n + 1 end
		if n <= 1 then
			notify("cant delete the last profile", T.red)
			return
		end
		STORE.slots[name] = nil
		for k, v in next, STORE.games do
			if v == name then STORE.games[k] = nil end
		end
		if STORE.active == name then
			local nxt
			for k in next, STORE.slots do nxt = k break end
			STORE.active = nxt
			applyData(STORE.slots[nxt])
		end
		save()
		refreshAll()
		rebuildSlots()
	end

	rebuildSlots = function()
		for _, c in ipairs(slotHolder:GetChildren()) do
			if c:IsA("Frame") then c:Destroy() end
		end
		local names = {}
		for n in next, STORE.slots do names[#names + 1] = n end
		table.sort(names, function(x, y) return x:lower() < y:lower() end)
		for i, name in ipairs(names) do
			local r = new("Frame", {
				Size = UDim2.new(1, 0, 0, RH + 2), BackgroundTransparency = 1, LayoutOrder = i,
			}, slotHolder)
			divider(r)
			local l = label(r, name, 100)
			l.TextColor3 = (name == STORE.active) and acc() or T.text
			local function mini(text, offX, cb)
				local b = new("TextButton", {
					Size = UDim2.fromOffset(40, RH - 6),
					Position = UDim2.new(1, offX, .5, -(RH - 6) / 2),
					BackgroundColor3 = T.off, Text = text, Font = FB, TextSize = 12,
					TextColor3 = T.text, BorderSizePixel = 0, AutoButtonColor = false,
				}, r)
				corner(b, 3)
				b.MouseButton1Click:Connect(cb)
			end
			mini("load", -88, function() switchTo(name) end)
			mini("del", -44, function() dropSlot(name) end)
		end
	end

	local function cleanName(str)
		str = str:gsub("[^%w _%-]", "")
		str = str:gsub("^%s+", ""):gsub("%s+$", "")
		return str:sub(1, 20)
	end

	sb.MouseButton1Click:Connect(function()
		local name = cleanName(tb.Text)
		if name == "" then
			local n = 0
			for _ in next, STORE.slots do n = n + 1 end
			name = "profile" .. (n + 1)
		end
		save()
		STORE.slots[name] = slotData()
		STORE.active = name
		save()
		tb.Text = ""
		refreshAll()
		rebuildSlots()
		notify("saved profile: " .. name)
	end)

	button(cf, "use for this game", T.text, function()
		STORE.games[PID] = STORE.active
		save()
		refreshAll()
		notify(STORE.active .. " loads automatically here")
	end)
	button(cf, "unbind this game", T.text, function()
		STORE.games[PID] = nil
		save()
		refreshAll()
	end)
	rebuildSlots()

	section(cf, "session")
	toggle(cf, "afk", "anti afk")
	toggle(cf, "reload", "auto reload on teleport")
	local rinfo = new("TextLabel", {
		Size = UDim2.new(1, -6, 0, 18), BackgroundTransparency = 1,
		Font = F, TextSize = 13, TextColor3 = T.sub, TextXAlignment = LEFT, LayoutOrder = seq(cf),
	}, cf)
	new("UIPadding", {PaddingLeft = UDim.new(0, 6)}, rinfo)
	reg(function()
		local _, how = reloadSrc()
		if not qot then
			rinfo.Text = "executor has no queue_on_teleport"
		elseif how then
			rinfo.Text = "reload source: " .. how
		else
			rinfo.Text = "set RELOAD_URL or save as " .. RELOAD_FILE
		end
	end)
	button(cf, "rejoin server", T.text, function()
		pcall(function()
			if #plrs:GetPlayers() <= 1 then ts:Teleport(game.PlaceId, lp)
			else ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, lp) end
		end)
	end)

	section(cf, "config")
	button(cf, "save now", T.text, function() save(); notify("saved") end)
	button(cf, "reset current profile", T.text, function()
		for k, val in next, DEF do
			if not GLOBAL[k] then CFG[k] = val end
		end
		refreshAll()
		save()
	end)
	button(cf, "unload", T.red, function()
		if g.__uncKill then g.__uncKill() end
	end)
	note(cf, MOBILE and "platform: mobile" or (TOUCH and "platform: touch + keyboard" or "platform: pc"))

	page(pidx[CFG.page] or 1)

	----------------------------------------------------------- window behaviour
	draggable(head, win, function(pos)
		CFG.wx, CFG.wy = math.floor(pos.X), math.floor(pos.Y)
		save()
	end)

	local shrank = false
	collapse.MouseButton1Click:Connect(function()
		shrank = not shrank
		win.Size = shrank and UDim2.fromOffset(W, HH) or UDim2.fromOffset(W, H)
		tabBar.Visible = not shrank
		collapse.Text = shrank and "+" or "_"
		if shrank then
			for _, pg in ipairs(pages) do pg.Visible = false end
		else
			page(cur)
		end
	end)

	close.MouseButton1Click:Connect(function()
		if g.__uncKill then g.__uncKill() end
	end)

	menuToggle = function() win.Visible = not win.Visible end

	----------------------------------------------------------- floating menu button (touch)
	if TOUCH then
		local fx = CFG.fx >= 0 and CFG.fx or 6
		local fy = CFG.fy >= 0 and CFG.fy or math.floor(vp.Y * .4)
		local fab = new("Frame", {
			Size = UDim2.fromOffset(38, 38),
			Position = UDim2.fromOffset(fx, fy),
			BackgroundColor3 = T.bar, BorderSizePixel = 0, Active = true,
		}, gui)
		corner(fab, 6)
		local fs = stroke(fab, T.line, 1)
		local fl2 = new("TextLabel", {
			Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
			Font = FB, Text = "u", TextSize = 20,
		}, fab)
		reg(function()
			fl2.TextColor3 = acc()
			fs.Color = acc()
		end)
		draggable(fab, fab, function(pos)
			CFG.fx, CFG.fy = math.floor(pos.X), math.floor(pos.Y)
			save()
		end, menuToggle)
	end

	----------------------------------------------------------- quick bar (aim / fly / noclip)
	local qx = CFG.qx >= 0 and CFG.qx or math.max(0, vp.X - 270)
	local qy = CFG.qy >= 0 and CFG.qy or math.floor(vp.Y * .5)
	local qb = new("Frame", {
		Size = UDim2.fromOffset(0, 46),
		AutomaticSize = Enum.AutomaticSize.X,
		Position = UDim2.fromOffset(qx, qy),
		BackgroundColor3 = T.bg, BackgroundTransparency = .1,
		BorderSizePixel = 0, Active = true,
	}, gui)
	corner(qb, 5)
	stroke(qb, T.line, 1)
	new("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal,
		Padding = UDim.new(0, 4),
		VerticalAlignment = Enum.VerticalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
	}, qb)
	new("UIPadding", {PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4)}, qb)

	local grip = new("TextLabel", {
		Size = UDim2.fromOffset(18, 38), BackgroundTransparency = 1,
		Text = "::", Font = FB, TextSize = 16, TextColor3 = T.sub,
		LayoutOrder = 1, Active = true,
	}, qb)

	local function qbtn(text, ord)
		local b = new("TextButton", {
			Size = UDim2.fromOffset(46, 38),
			BackgroundColor3 = T.off,
			Text = text, Font = FB, TextSize = 13, TextColor3 = T.sub,
			BorderSizePixel = 0, AutoButtonColor = false, LayoutOrder = ord,
		}, qb)
		corner(b, 4)
		return b
	end
	local aimB, flyB, ncB = qbtn("AIM", 2), qbtn("FLY", 3), qbtn("NC", 4)
	local upB, dnB = qbtn("UP", 5), qbtn("DN", 6)

	local function isPress(i)
		local ty = i.UserInputType
		return ty == Enum.UserInputType.Touch or ty == Enum.UserInputType.MouseButton1
	end

	aimB.InputBegan:Connect(function(i)
		if not isPress(i) then return end
		if CFG.aimMode ~= "always" and not CFG.aim then CFG.aim = true; save() end -- bar press arms the module
		aimPress()
		refreshAll()
	end)
	aimB.InputEnded:Connect(function(i)
		if isPress(i) then aimRelease(); refreshAll() end
	end)
	flyB.MouseButton1Click:Connect(function() CFG.fly = not CFG.fly; refreshAll(); save() end)
	ncB.MouseButton1Click:Connect(function() CFG.noclip = not CFG.noclip; refreshAll(); save() end)
	upB.InputBegan:Connect(function(i) if isPress(i) then fl.up = true end end)
	upB.InputEnded:Connect(function(i) if isPress(i) then fl.up = false end end)
	dnB.InputBegan:Connect(function(i) if isPress(i) then fl.down = true end end)
	dnB.InputEnded:Connect(function(i) if isPress(i) then fl.down = false end end)

	local function paintBtn(b, on)
		b.BackgroundColor3 = on and acc() or T.off
		b.TextColor3 = on and T.dark or T.sub
	end
	reg(function()
		qb.Visible = CFG.qbar
		paintBtn(aimB, aimOn())
		paintBtn(flyB, CFG.fly)
		paintBtn(ncB, CFG.noclip)
		upB.Visible, dnB.Visible = CFG.fly, CFG.fly
		paintBtn(upB, false)
		paintBtn(dnB, false)
	end)

	draggable(grip, qb, function(pos)
		CFG.qx, CFG.qy = math.floor(pos.X), math.floor(pos.Y)
		save()
	end)
end

--------------------------------------------------------------- boot

local okUi, errUi = pcall(ui)
if not okUi then warn("[unc] ui: " .. tostring(errUi)) end
if okUi and STORE.games[PID] == STORE.active then notify("profile: " .. STORE.active) end

local live = true
local errs = {}
local function safe(name, fn, ...)
	local ok, err = pcall(fn, ...)
	if not ok and errs[name] ~= err then
		errs[name] = err
		warn("[unc] " .. name .. ": " .. tostring(err))
	end
end

local BIND = "unc_frame"
-- after the default camera script, so our camera writes win and drawings match the final view
rs:BindToRenderStep(BIND, Enum.RenderPriority.Camera.Value + 1, function(dt)
	if not live then return end
	safe("move", movement, dt)
	safe("world", world)
	safe("aim", aimStep, dt)
	safe("xh", xhStep)
	safe("esp", tick, dt)
end)

keep(plrs.PlayerRemoving:Connect(function(p)
	pcall(function() killSlot(p) end)
end))

local function unload()
	if not live then return end
	live = false
	pcall(function() rs:UnbindFromRenderStep(BIND) end)

	-- put the character / world back exactly how it was
	for _, k in ipairs({"fly", "spd", "jp", "fb", "grav", "cfov", "noclip", "tc", "xray", "fps", "ipp", "ipa"}) do CFG[k] = false end
	pcall(movement, 0)
	pcall(world)
	pcall(runJobs, 1e9) -- finish x-ray / fps restore right now
	if g.__uncCam then pcall(g.__uncCam) end
	g.__uncCam = nil
	fl.up, fl.down = false, false

	for _, c in next, con do pcall(function() c:Disconnect() end) end
	for k in next, POOL do killSlot(k) end
	for _, o in next, HUD do pcall(function() o:Remove() end) end
	if fovC then pcall(function() fovC:Remove() end) end
	if tLine then pcall(function() tLine:Remove() end) end
	for _, o in next, XH do pcall(function() o:Remove() end) end
	if gui then pcall(function() gui:Destroy() end) end
	g.__uncKill = nil
end

g.__uncKill = unload
print("[unc] v5 loaded | " .. (MOBILE and "mobile" or (TOUCH and "touch+kb" or "pc")))
