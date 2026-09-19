--[[
  Oxide HUB | Ein Ei stehlen (Steal an Egg) — Standalone Combined
  Library + Script tek dosyada. Executor'da loadstring / execute ile çalıştır.
  PlaceId: 107778070777162 (Steal an Egg)
]]

-- ==============================================================================
-- UI LIBRARY (OxideUiLibary2)
-- ==============================================================================
local Library = (function()
local TweenService     = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local GuiService       = game:GetService("GuiService")
local Players          = game:GetService("Players")
local Stats            = game:GetService("Stats")
local RunService       = game:GetService("RunService")
local AssetService     = game:GetService("AssetService")
local TextService      = game:GetService("TextService")
local HttpService      = game:GetService("HttpService")
local Workspace        = game:GetService("Workspace")

local DEFAULT_LOGO = "rbxassetid://114345069590059"
local TWEEN = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local NOTIFICATION_TWEEN = TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
local PROFILE_TWEEN = TweenInfo.new(0.32, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

-- ════════════════════════════════════════════════════════════════════════════
-- BUILT-IN ICON LIBRARY
-- ════════════════════════════════════════════════════════════════════════════
local ICONS = {
    home            = "rbxassetid://4562959382",
    dashboard       = "rbxassetid://115870883170035",
    search          = "rbxassetid://18733177504",
    settings        = "rbxassetid://4738901432",
    gear            = "rbxassetid://117427252698455",
    menu            = "rbxassetid://10734896206",
    list            = "rbxassetid://10709790373",
    grid            = "rbxassetid://10734950309",
    sliders         = "rbxassetid://10734897102",
    swords          = "rbxassetid://10747384394",
    sword           = "rbxassetid://10747384394",
    combat          = "rbxassetid://10747384394",
    shield          = "rbxassetid://98206735878224",
    target          = "rbxassetid://123292899197910",
    crosshair       = "rbxassetid://10723434538",
    aim             = "rbxassetid://10723434538",
    bolt            = "rbxassetid://79160363518966",
    lightning       = "rbxassetid://125222658692748",
    zap             = "rbxassetid://79160363518966",
    fire            = "rbxassetid://10723415285",
    flame           = "rbxassetid://10723415285",
    star            = "rbxassetid://10734924532",
    sparkle         = "rbxassetid://10723422246",
    player          = "rbxassetid://82179723353246",
    user            = "rbxassetid://10747387118",
    person          = "rbxassetid://77052607579460",
    users           = "rbxassetid://10747387298",
    team            = "rbxassetid://10747387298",
    group           = "rbxassetid://10747387298",
    eye             = "rbxassetid://131012605615689",
    visible         = "rbxassetid://10709790644",
    visuals         = "rbxassetid://10709790644",
    render          = "rbxassetid://10709790644",
    esp             = "rbxassetid://10709790644",
    eyeoff          = "rbxassetid://10709790497",
    hidden          = "rbxassetid://10709790497",
    globe           = "rbxassetid://13567318216",
    world           = "rbxassetid://10709778567",
    compass         = "rbxassetid://10709790373",
    map             = "rbxassetid://84513890895579",
    move            = "rbxassetid://10723422998",
    arrows          = "rbxassetid://10723422998",
    heart           = "rbxassetid://10723415389",
    like            = "rbxassetid://10723415389",
    bell            = "rbxassetid://10723345067",
    notification    = "rbxassetid://10723345067",
    alert           = "rbxassetid://10723345067",
    info            = "rbxassetid://10723415389",
    about           = "rbxassetid://10723415389",
    help            = "rbxassetid://10723415389",
    warning         = "rbxassetid://10747387522",
    caution         = "rbxassetid://10747387522",
    check           = "rbxassetid://5180860280",
    checkmark       = "rbxassetid://5180860280",
    lock            = "rbxassetid://10723417148",
    unlock          = "rbxassetid://10723422607",
    power           = "rbxassetid://10723422754",
    toggle          = "rbxassetid://10723422754",
    refresh         = "rbxassetid://10723417783",
    folder          = "rbxassetid://10709791437",
    file            = "rbxassetid://10709791258",
    save            = "rbxassetid://10709791258",
    download        = "rbxassetid://10709790497",
    clipboard       = "rbxassetid://10709751190",
    play            = "rbxassetid://10723422607",
    music           = "rbxassetid://10723421745",
    volume          = "rbxassetid://10723421745",
    camera          = "rbxassetid://10709778567",
    image           = "rbxassetid://10709791437",
    clock           = "rbxassetid://10723345037",
    time            = "rbxassetid://10723345037",
    timer           = "rbxassetid://10723345037",
    wrench          = "rbxassetid://100244385350031",
    tool            = "rbxassetid://10734950309",
    code            = "rbxassetid://10709751190",
    terminal        = "rbxassetid://10709751190",
    script          = "rbxassetid://10709751190",
    bug             = "rbxassetid://10723415903",
    debug           = "rbxassetid://10723415903",
    layers          = "rbxassetid://10723417148",
    inventory       = "rbxassetid://14118896735",
    backpack        = "rbxassetid://10723415285",
    box             = "rbxassetid://10723415285",
    package         = "rbxassetid://10723415285",
    gift            = "rbxassetid://10723415389",
    crown           = "rbxassetid://10734924532",
    gem             = "rbxassetid://10723421745",
    coin            = "rbxassetid://13522871708",
    magic           = "rbxassetid://11111111111",
    wand            = "rbxassetid://10734924532",
    potion          = "rbxassetid://10723415285",
    skull           = "rbxassetid://10747384394",
    death           = "rbxassetid://10747384394",
    gamepad         = "rbxassetid://10723422998",
    controller      = "rbxassetid://10723422998",
    teleport        = "rbxassetid://10090587519",
    speed           = "rbxassetid://11111111111",
    running         = "rbxassetid://10723422998",
    favorite        = "rbxassetid://10734924532",
}

local NOTIFICATION_STYLES = {
    info    = { Name = "Info",    Color = Color3.fromRGB(118, 151, 194), Icon = "rbxassetid://10723345067" },
    success = { Name = "Success", Color = Color3.fromRGB(105, 166, 124), Icon = "rbxassetid://5180860280" },
    warning = { Name = "Warning", Color = Color3.fromRGB(190, 154, 84),  Icon = "rbxassetid://10747387522" },
    error   = { Name = "Error",   Color = Color3.fromRGB(190, 99, 99),   Icon = "rbxassetid://10747387522" },
}

local C = {
    WindowBg     = Color3.fromRGB(20, 20, 20),
    CardBg       = Color3.fromRGB(24, 24, 24),
    Border       = Color3.fromRGB(35, 35, 35),
    Element      = Color3.fromRGB(31, 31, 31),
    ElementHover = Color3.fromRGB(38, 38, 38),
    Badge        = Color3.fromRGB(42, 42, 42),
    BadgeIdle    = Color3.fromRGB(34, 34, 34),
    NavActive    = Color3.fromRGB(30, 30, 30),
    NavHover     = Color3.fromRGB(26, 26, 26),
    PillActive   = Color3.fromRGB(36, 36, 36),
    White        = Color3.fromRGB(255, 255, 255),
    TextGray     = Color3.fromRGB(154, 154, 154),
    TextDim      = Color3.fromRGB(139, 139, 139),
    KnobOff      = Color3.fromRGB(85, 85, 85),
    KnobOn       = Color3.fromRGB(17, 17, 17),
    TrackBg      = Color3.fromRGB(43, 43, 43),
    Placeholder  = Color3.fromRGB(86, 86, 86),
    HotbarBg     = Color3.fromRGB(24, 24, 24),
    HotbarBorder = Color3.fromRGB(35, 35, 35),
    HotbarActive = Color3.fromRGB(31, 31, 31),
    HotbarHover  = Color3.fromRGB(38, 38, 38),
    HotbarDot    = Color3.fromRGB(220, 220, 220),
    Accent       = Color3.fromRGB(167, 200, 244),
    AccentDim    = Color3.fromRGB(26, 46, 74),
    AccentText   = Color3.fromRGB(10, 16, 26),
    KnobAccent   = Color3.fromRGB(16, 22, 32),
}

local THEMES = {
    Dark = table.clone(C),
    Light = {
        WindowBg     = Color3.fromRGB(245, 245, 245),
        CardBg       = Color3.fromRGB(249, 249, 249),
        Border       = Color3.fromRGB(218, 218, 218),
        Element      = Color3.fromRGB(235, 235, 235),
        ElementHover = Color3.fromRGB(229, 229, 229),
        Badge        = Color3.fromRGB(224, 224, 224),
        BadgeIdle    = Color3.fromRGB(232, 232, 232),
        NavActive    = Color3.fromRGB(238, 238, 238),
        NavHover     = Color3.fromRGB(242, 242, 242),
        PillActive   = Color3.fromRGB(226, 226, 226),
        White        = Color3.fromRGB(20, 20, 20),
        TextGray     = Color3.fromRGB(84, 84, 84),
        TextDim      = Color3.fromRGB(105, 105, 105),
        KnobOff      = Color3.fromRGB(150, 150, 150),
        KnobOn       = Color3.fromRGB(250, 250, 250),
        TrackBg      = Color3.fromRGB(210, 210, 210),
        Placeholder  = Color3.fromRGB(135, 135, 135),
        HotbarBg     = Color3.fromRGB(249, 249, 249),
        HotbarBorder = Color3.fromRGB(218, 218, 218),
        HotbarActive = Color3.fromRGB(235, 235, 235),
        HotbarHover  = Color3.fromRGB(229, 229, 229),
        HotbarDot    = Color3.fromRGB(60, 60, 60),
        Accent       = Color3.fromRGB(94, 148, 214),
        AccentDim    = Color3.fromRGB(198, 220, 248),
        AccentText   = Color3.fromRGB(255, 255, 255),
        KnobAccent   = Color3.fromRGB(255, 255, 255),
    },
    OLED = {
        WindowBg     = Color3.fromRGB(0, 0, 0),
        CardBg       = Color3.fromRGB(5, 5, 5),
        Border       = Color3.fromRGB(25, 25, 25),
        Element      = Color3.fromRGB(12, 12, 12),
        ElementHover = Color3.fromRGB(20, 20, 20),
        Badge        = Color3.fromRGB(28, 28, 28),
        BadgeIdle    = Color3.fromRGB(16, 16, 16),
        NavActive    = Color3.fromRGB(9, 9, 9),
        NavHover     = Color3.fromRGB(6, 6, 6),
        PillActive   = Color3.fromRGB(22, 22, 22),
        White        = Color3.fromRGB(255, 255, 255),
        TextGray     = Color3.fromRGB(165, 165, 165),
        TextDim      = Color3.fromRGB(125, 125, 125),
        KnobOff      = Color3.fromRGB(75, 75, 75),
        KnobOn       = Color3.fromRGB(3, 3, 3),
        TrackBg      = Color3.fromRGB(32, 32, 32),
        Placeholder  = Color3.fromRGB(90, 90, 90),
        HotbarBg     = Color3.fromRGB(5, 5, 5),
        HotbarBorder = Color3.fromRGB(25, 25, 25),
        HotbarActive = Color3.fromRGB(12, 12, 12),
        HotbarHover  = Color3.fromRGB(20, 20, 20),
        HotbarDot    = Color3.fromRGB(200, 200, 200),
        Accent       = Color3.fromRGB(178, 210, 250),
        AccentDim    = Color3.fromRGB(16, 32, 56),
        AccentText   = Color3.fromRGB(5, 9, 16),
        KnobAccent   = Color3.fromRGB(8, 12, 20),
    },
}

local REVERSE = {}
local function rebuildReverse()
    table.clear(REVERSE)
    for key, color in pairs(C) do
        REVERSE[color:ToHex()] = key
    end
end
rebuildReverse()

local function tween(inst, props)
    TweenService:Create(inst, TWEEN, props):Play()
end
local function paint(inst, prop, key, instant)
    inst:SetAttribute("Theme_" .. prop, key)
    if instant then inst[prop] = C[key] else tween(inst, { [prop] = C[key] }) end
end
local function safeHex(value)
    if typeof(value) ~= "Color3" then return nil end
    local ok, result = pcall(function() return value:ToHex() end)
    return ok and result or nil
end

local function make(className, props)
    local inst = Instance.new(className)
    if inst:IsA("GuiObject") then
        inst.BorderSizePixel = 0
        inst.BackgroundColor3 = C.WindowBg
    end
    if inst:IsA("GuiButton") then inst.AutoButtonColor = false end
    if inst:IsA("TextLabel") or inst:IsA("TextButton") or inst:IsA("TextBox") then
        inst.Font = Enum.Font.Gotham
        inst.TextColor3 = C.White
        inst.TextSize = 13
    end
    for k, v in pairs(props) do
        if k ~= "Parent" then inst[k] = v end
    end
    if inst:IsA("GuiObject") then
        local key = REVERSE[safeHex(inst.BackgroundColor3)]
        if key then inst:SetAttribute("Theme_BackgroundColor3", key) end
    end
    if inst:IsA("TextLabel") or inst:IsA("TextButton") or inst:IsA("TextBox") then
        local key = REVERSE[safeHex(inst.TextColor3)]
        if key then inst:SetAttribute("Theme_TextColor3", key) end
    end
    if inst:IsA("TextBox") then
        local key = REVERSE[safeHex(inst.PlaceholderColor3)]
        if key then inst:SetAttribute("Theme_PlaceholderColor3", key) end
    end
    if inst:IsA("ScrollingFrame") then
        local key = REVERSE[safeHex(inst.ScrollBarImageColor3)]
        if key then inst:SetAttribute("Theme_ScrollBarImageColor3", key) end
    end
    if inst:IsA("UIStroke") then
        local key = REVERSE[safeHex(inst.Color)]
        if key then inst:SetAttribute("Theme_Color", key) end
    end
    inst.Parent = props.Parent
    return inst
end

local function corner(parent, radius) return make("UICorner", { CornerRadius = UDim.new(0, radius), Parent = parent }) end
local function circle(parent) return make("UICorner", { CornerRadius = UDim.new(1, 0), Parent = parent }) end
local function stroke(parent, color)
    return make("UIStroke", {
        Color = color or C.Border, Thickness = 1,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = parent,
    })
end
local function pad(parent, top, bottom, left, right)
    return make("UIPadding", {
        PaddingTop = UDim.new(0, top), PaddingBottom = UDim.new(0, bottom),
        PaddingLeft = UDim.new(0, left), PaddingRight = UDim.new(0, right),
        Parent = parent,
    })
end

-- Rebuild an "accent at both ends" gradient from the theme keys stored on it.
-- Called on creation and again by Library:SetTheme so the colours follow the
-- active palette. The keys live on attributes because a UIGradient's Color is a
-- ColorSequence, which the attribute-driven repaint in SetTheme cannot handle.
local function refreshEdgeGradient(g)
    local edgeKey = g:GetAttribute("ThemeGradient_Edge")
    if not edgeKey then return end
    local edge = C[edgeKey]
    if not edge then return end
    local midKey = g:GetAttribute("ThemeGradient_Mid")
    if midKey then
        -- Static: accent at both ends, base colour across the middle.
        local mid = C[midKey]
        if not mid then return end
        local span = math.clamp(tonumber(g:GetAttribute("ThemeGradient_Span")) or 0.15, 0.02, 0.49)
        g.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, edge),
            ColorSequenceKeypoint.new(span, mid),
            ColorSequenceKeypoint.new(1 - span, mid),
            ColorSequenceKeypoint.new(1, edge),
        })
    else
        -- Travelling band: accent at rest, whitening at the crest. Animated by
        -- sliding the gradient's Offset.
        g.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0.00, edge),
            ColorSequenceKeypoint.new(0.42, edge),
            ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(0.58, edge),
            ColorSequenceKeypoint.new(1.00, edge),
        })
    end
end

-- Vertical fade driven by theme keys: top colour -> bottom colour. Used by
-- cards that want a coloured-to-base transition (e.g. light-blue accent
-- rising from the bottom). Kept theme-aware through attributes so that
-- Library:SetTheme repaints it like the edge gradients above.
local function refreshVerticalFade(g)
    local topKey    = g:GetAttribute("ThemeGradient_Top")
    local bottomKey = g:GetAttribute("ThemeGradient_Bottom")
    if not (topKey and bottomKey) then return end
    local top = C[topKey]
    local bottom = C[bottomKey]
    if not (top and bottom) then return end
    local strength = math.clamp(tonumber(g:GetAttribute("ThemeGradient_Strength")) or 1, 0, 1)
    if strength < 1 then bottom = top:Lerp(bottom, strength) end
    g.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, top),
        ColorSequenceKeypoint.new(1, bottom),
    })
end

-- Tint only the left and right ends of `parent` with the accent, leaving the
-- middle in the base colour. `parent` must be white, since a UIGradient
-- multiplies the object's own colour rather than replacing it.
local function edgeAccentGradient(parent, edgeKey, midKey, span)
    local g = make("UIGradient", { Rotation = 0, Parent = parent })
    g:SetAttribute("ThemeGradient_Edge", edgeKey or "Accent")
    g:SetAttribute("ThemeGradient_Mid", midKey or "Border")
    g:SetAttribute("ThemeGradient_Span", span or 0.15)
    refreshEdgeGradient(g)
    return g
end
local function autoOrder(inst) inst.LayoutOrder = #inst.Parent:GetChildren() end
local function isInside(gui, pos)
    local p, s = gui.AbsolutePosition, gui.AbsoluteSize
    return pos.X >= p.X and pos.X <= p.X + s.X and pos.Y >= p.Y and pos.Y <= p.Y + s.Y
end
local function fire(callback, ...)
    if typeof(callback) == "function" then task.spawn(callback, ...) end
end
local function normalizeAssetId(value)
    if value == nil or value == "" then return DEFAULT_LOGO end
    if type(value) == "number" then return "rbxassetid://" .. tostring(math.floor(value)) end
    local text = tostring(value)
    if string.match(text, "^rbxassetid://")
        or string.match(text, "^rbxthumb://")
        or string.match(text, "^https?://") then
        return text
    end
    local id = string.match(text, "%d+")
    return id and ("rbxassetid://" .. id) or DEFAULT_LOGO
end

local function resolveIcon(value)
    if value == nil or value == "" then return nil, nil end
    local str = tostring(value)
    local key = string.lower(str)
    if ICONS[key] then return "image", ICONS[key] end
    if string.match(str, "^rbxassetid://") or string.match(str, "^rbxthumb://") or string.match(str, "^https?://") then
        return "image", str
    end
    if tonumber(str) then return "image", "rbxassetid://" .. str end
    local numId = string.match(str, "%d+")
    if numId and #numId > 5 then return "image", "rbxassetid://" .. numId end
    return "text", string.upper(string.sub(str, 1, 1))
end

local function getNotificationStyle(kind)
    local key = string.lower(tostring(kind or "Info"))
    return NOTIFICATION_STYLES[key] or NOTIFICATION_STYLES.info
end
local function guiVisible(gui)
    local node = gui
    while node and node:IsA("GuiObject") do
        if not node.Visible then return false end
        node = node.Parent
    end
    return true
end

local function makeDraggable(frame, blockers, onStart, onEnd)
    local dragging = false
    local dragStart, startPos
    frame.InputBegan:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton1
            and input.UserInputType ~= Enum.UserInputType.Touch then return end
        local pos = Vector2.new(input.Position.X, input.Position.Y)
        for _, gui in ipairs(blockers) do
            if guiVisible(gui) and isInside(gui, pos) then return end
        end
        dragging = true
        dragStart = input.Position
        startPos  = frame.Position
        if typeof(onStart) == "function" then onStart() end
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                if dragging then
                    dragging = false
                    if typeof(onEnd) == "function" then onEnd() end
                end
            end
        end)
    end)
    local dragConn = UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end
    end)
    return dragConn
end

local function sortIcon(parent)
    local holder = make("Frame", {
        BackgroundTransparency = 1, AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -7, 0.5, 0), Size = UDim2.fromOffset(9, 7), Parent = parent,
    })
    for i, width in ipairs({ 9, 7, 5 }) do
        make("Frame", {
            Position = UDim2.fromOffset(0, (i - 1) * 3),
            Size = UDim2.fromOffset(width, 1),
            BackgroundColor3 = C.TextDim, Parent = holder,
        })
    end
    return holder
end

local function inputIcon(parent)
    local holder = make("Frame", {
        BackgroundTransparency = 1, AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -7, 0.5, 0), Size = UDim2.fromOffset(10, 10), Parent = parent,
    })
    local box = make("Frame", { BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Parent = holder })
    corner(box, 2); stroke(box, C.TextDim)
    make("Frame", {
        AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromOffset(1, 4), BackgroundColor3 = C.TextDim, Parent = holder,
    })
    return holder
end

local function createIconElement(parent, iconType, iconValue, size, zindex)
    size = size or 10
    zindex = zindex or 6
    if iconType == "image" then
        return make("ImageLabel", {
            Image = iconValue,
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromOffset(size, size),
            ScaleType = Enum.ScaleType.Fit,
            ImageColor3 = C.TextGray,
            ZIndex = zindex,
            Parent = parent,
        })
    else
        return make("TextLabel", {
            Text = iconValue or "?",
            Font = Enum.Font.GothamBold,
            TextSize = math.floor(size * 0.7),
            TextColor3 = C.TextGray,
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(1, 1),
            ZIndex = zindex,
            Parent = parent,
        })
    end
end

-- ════════════════════════════════════════════════════════════════════════════
-- TAG SYSTEM (screen-space, fixed pixel size, matches UI style)
-- ════════════════════════════════════════════════════════════════════════════
local TAG_BASE_URL          = "https://adorable-sallyanne-fgdfgdfgd-b2d051be.koyeb.app"
local TAG_REGISTER          = TAG_BASE_URL .. "/register"
local TAG_USERS             = TAG_BASE_URL .. "/users"
local TAG_ADMIN_DISCONNECT  = TAG_BASE_URL .. "/admin/disconnect"

-- UserIds with access to the admin panel. The server has its own copy of
-- this list — the client-side check just decides whether the panel UI is
-- built. The server still validates every /admin/* request.
local ADMIN_USER_IDS = { [2401825836] = true }
local function isAdminUser(player)
    return player and ADMIN_USER_IDS[player.UserId] == true
end

local TAG_W             = 200   -- fixed pixel width of tag
local TAG_H             = 52    -- fixed pixel height of tag
local TAG_WORLD_HEIGHT  = 3.4   -- world-space studs above HumanoidRootPart where the tag floats
local TAG_FULL_DIST     = 40    -- studs: tag/outline fully visible up to here
local TAG_MAX_DISTANCE  = 110   -- studs: tag/outline fully hidden beyond here

-- Detect HTTP request function
local httpRequest = (syn and syn.request)
    or (http and http.request)
    or (http_request)
    or (request)

local TagSystem = {}
TagSystem._tags        = {}   -- [Player] = { frame, glowGradient, conn, canvasGroup, targetX, targetY }
TagSystem._screenGui   = nil
TagSystem._active      = {}   -- [UserId] = true
TagSystem._userInfo    = {}   -- [UserId] = { userId, displayName, name }
TagSystem._listeners   = {}   -- [n] = function(userInfo, activeSet)
TagSystem._running     = false
TagSystem._connections = {}

-- Register a callback that receives the latest active-user snapshot whenever
-- the tag system polls the presence server. Returns the same fn for removal.
function TagSystem:OnUsersUpdated(fn)
    if type(fn) == "function" then table.insert(TagSystem._listeners, fn) end
    return fn
end
function TagSystem:RemoveListener(fn)
    for i, f in ipairs(TagSystem._listeners) do
        if f == fn then table.remove(TagSystem._listeners, i); return true end
    end
    return false
end

-- Build the tag ScreenGui (once)
local function ensureTagGui()
    if TagSystem._screenGui and TagSystem._screenGui.Parent then return end
    local localPlayer = Players.LocalPlayer
    local targetParent
    pcall(function() targetParent = (gethui and gethui()) or game:GetService("CoreGui") end)
    if not targetParent then targetParent = localPlayer:WaitForChild("PlayerGui") end

    local sg = Instance.new("ScreenGui")
    sg.Name               = "OxideTagGui"
    sg.ResetOnSpawn       = false
    sg.IgnoreGuiInset     = true
    sg.ZIndexBehavior     = Enum.ZIndexBehavior.Sibling
    sg.DisplayOrder       = 8
    pcall(function() sg.Parent = targetParent end)
    if not sg.Parent then
        targetParent = localPlayer:WaitForChild("PlayerGui")
        sg.Parent = targetParent
    end
    TagSystem._screenGui = sg
end

-- Create one tag frame for a player (does NOT position it; RenderStepped does that)
local function buildTagFrame(player)
    ensureTagGui()
    local sg = TagSystem._screenGui

    -- Root container: fixed pixel size, positioned by RenderStepped loop
    local root = Instance.new("Frame")
    root.Name              = "OxideTag_" .. player.UserId
    root.Size              = UDim2.fromOffset(TAG_W, TAG_H)
    root.AnchorPoint       = Vector2.new(0.5, 0.5)
    root.BackgroundColor3  = Color3.fromRGB(22, 22, 26)
    root.BackgroundTransparency = 0.06
    root.BorderSizePixel   = 0
    root.Visible           = false
    root.ZIndex            = 10
    root.Parent            = sg

    local cr = Instance.new("UICorner")
    cr.CornerRadius = UDim.new(0, 10)
    cr.Parent = root

    -- Soft drop shadow under the tag for depth
    local shadow = Instance.new("ImageLabel")
    shadow.Name                = "Shadow"
    shadow.Image               = "rbxassetid://1316045217"
    shadow.ImageColor3         = Color3.fromRGB(0, 0, 0)
    shadow.ImageTransparency   = 0.55
    shadow.ScaleType           = Enum.ScaleType.Slice
    shadow.SliceCenter         = Rect.new(10, 10, 118, 118)
    shadow.BackgroundTransparency = 1
    shadow.AnchorPoint         = Vector2.new(0.5, 0.5)
    shadow.Position           = UDim2.fromScale(0.5, 0.5)
    shadow.Size               = UDim2.new(1, 14, 1, 14)
    shadow.ZIndex             = 0
    shadow.Parent             = root

    -- Transparent overlay used for opacity fade (covers entire tag)
    local fadeOverlay = Instance.new("Frame")
    fadeOverlay.Name               = "FadeOverlay"
    fadeOverlay.Size               = UDim2.fromScale(1, 1)
    fadeOverlay.BackgroundColor3   = Color3.fromRGB(20, 20, 24)
    fadeOverlay.BackgroundTransparency = 1  -- 1 = invisible (tag shown)
    fadeOverlay.BorderSizePixel    = 0
    fadeOverlay.ZIndex             = 99
    fadeOverlay.Parent             = root
    local fadeCr = Instance.new("UICorner")
    fadeCr.CornerRadius = UDim.new(0, 10)
    fadeCr.Parent = fadeOverlay

    -- Traveling glow stroke
    local glowStroke = Instance.new("UIStroke")
    glowStroke.Thickness          = 1.1
    glowStroke.ApplyStrokeMode    = Enum.ApplyStrokeMode.Border
    glowStroke.Color              = C.Accent
    glowStroke.Transparency       = 0.2
    glowStroke.Parent             = root

    local glowGrad = Instance.new("UIGradient")
    glowGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0.00, C.Accent),
        ColorSequenceKeypoint.new(0.40, C.Accent),
        ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 255, 255)),
        ColorSequenceKeypoint.new(0.60, C.Accent),
        ColorSequenceKeypoint.new(1.00, C.Accent),
    })
    glowGrad.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0.00, 1.0),
        NumberSequenceKeypoint.new(0.34, 1.0),
        NumberSequenceKeypoint.new(0.50, 0.0),
        NumberSequenceKeypoint.new(0.66, 1.0),
        NumberSequenceKeypoint.new(1.00, 1.0),
    })
    glowGrad.Parent = glowStroke

    -- ── Left: Avatar circle ────────────────────────────────────────────────
    local avatarHolder = Instance.new("Frame")
    avatarHolder.Size              = UDim2.fromOffset(34, 34)
    avatarHolder.Position          = UDim2.fromOffset(9, 9)
    avatarHolder.BackgroundColor3  = Color3.fromRGB(40, 40, 45)
    avatarHolder.BorderSizePixel   = 0
    avatarHolder.ZIndex            = 2
    avatarHolder.Parent            = root
    local avCr = Instance.new("UICorner")
    avCr.CornerRadius = UDim.new(1, 0)
    avCr.Parent = avatarHolder
    -- avatar ring (light blue accent)
    local avRing = Instance.new("UIStroke")
    avRing.Thickness = 1
    avRing.Color = C.Accent
    avRing.Transparency = 0.4
    avRing.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    avRing.Parent = avatarHolder

    local avatar = Instance.new("ImageLabel")
    avatar.Name                = "TagAvatar"
    avatar.Image                = ""
    avatar.BackgroundTransparency = 1
    avatar.Size                 = UDim2.fromOffset(28, 28)
    avatar.Position             = UDim2.fromOffset(3, 3)
    avatar.ScaleType            = Enum.ScaleType.Crop
    avatar.ImageColor3          = Color3.fromRGB(255, 255, 255)
    avatar.ZIndex               = 3
    avatar.Parent               = avatarHolder
    local avClip = Instance.new("UICorner")
    avClip.CornerRadius = UDim.new(1, 0)
    avClip.Parent = avatar

    -- Online status dot (bottom-right of avatar)
    local onlineRing = Instance.new("Frame")
    onlineRing.AnchorPoint            = Vector2.new(1, 1)
    onlineRing.Position               = UDim2.new(1, -1, 1, -1)
    onlineRing.Size                   = UDim2.fromOffset(11, 11)
    onlineRing.BackgroundColor3       = Color3.fromRGB(22, 22, 26)
    onlineRing.BorderSizePixel        = 0
    onlineRing.ZIndex                 = 4
    onlineRing.Parent                 = avatarHolder
    local orCr = Instance.new("UICorner")
    orCr.CornerRadius = UDim.new(1, 0)
    orCr.Parent = onlineRing

    local onlineDot = Instance.new("Frame")
    onlineDot.AnchorPoint            = Vector2.new(0.5, 0.5)
    onlineDot.Position               = UDim2.fromScale(0.5, 0.5)
    onlineDot.Size                   = UDim2.fromOffset(6, 6)
    onlineDot.BackgroundColor3       = Color3.fromRGB(70, 200, 120)
    onlineDot.BorderSizePixel        = 0
    onlineDot.ZIndex                 = 5
    onlineDot.Parent                 = onlineRing
    local odCr = Instance.new("UICorner")
    odCr.CornerRadius = UDim.new(1, 0)
    odCr.Parent = onlineDot

    -- ── Vertical divider between avatar and text ────────────────────────────
    local divider = Instance.new("Frame")
    divider.Size             = UDim2.fromOffset(1, 30)
    divider.Position         = UDim2.fromOffset(51, 11)
    divider.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
    divider.BorderSizePixel  = 0
    divider.ZIndex           = 2
    divider.Parent           = root

    -- ── Right side: text content ────────────────────────────────────────────
    -- Layout zones: avatar (left) | text (middle) | badge (bottom-right corner)
    local textX      = 60  -- left edge of text
    local badgeW     = 46  -- badge width
    local badgePadR  = 9   -- right padding for badge
    -- Reserve room on the right so text never overlaps the badge
    local textWidth  = TAG_W - textX - badgeW - badgePadR - 6

    -- Player display name (bold, prominent)
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Text           = player.DisplayName
    nameLabel.Font           = Enum.Font.GothamBold
    nameLabel.TextSize       = 13
    nameLabel.TextColor3     = Color3.fromRGB(245, 245, 248)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Size           = UDim2.fromOffset(textWidth, 16)
    nameLabel.Position       = UDim2.fromOffset(textX, 9)
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.TextTruncate   = Enum.TextTruncate.AtEnd
    nameLabel.ZIndex         = 2
    nameLabel.Parent         = root

    -- @username below (dimmer)
    local userLabel = Instance.new("TextLabel")
    userLabel.Text           = "@" .. player.Name
    userLabel.Font           = Enum.Font.Gotham
    userLabel.TextSize       = 11
    userLabel.TextColor3     = Color3.fromRGB(140, 140, 148)
    userLabel.BackgroundTransparency = 1
    userLabel.Size           = UDim2.fromOffset(textWidth, 13)
    userLabel.Position       = UDim2.fromOffset(textX, 26)
    userLabel.TextXAlignment = Enum.TextXAlignment.Left
    userLabel.TextTruncate   = Enum.TextTruncate.AtEnd
    userLabel.ZIndex         = 2
    userLabel.Parent         = root

    -- "Oxide" badge (bottom right, small pill)
    local badge = Instance.new("Frame")
    badge.Size             = UDim2.fromOffset(badgeW, 16)
    badge.AnchorPoint      = Vector2.new(1, 1)
    badge.Position         = UDim2.new(1, -badgePadR, 1, -9)
    badge.BackgroundColor3 = C.Accent
    badge.BackgroundTransparency = 0.82
    badge.BorderSizePixel  = 0
    badge.ZIndex           = 2
    badge.Parent           = root
    local badgeCorner = Instance.new("UICorner")
    badgeCorner.CornerRadius = UDim.new(1, 0)
    badgeCorner.Parent = badge
    local badgeStroke = Instance.new("UIStroke")
    badgeStroke.Thickness = 0.6
    badgeStroke.Color = C.Accent
    badgeStroke.Transparency = 0.4
    badgeStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    badgeStroke.Parent = badge

    local badgeLabel = Instance.new("TextLabel")
    badgeLabel.Text              = "Oxide"
    badgeLabel.Font              = Enum.Font.GothamBold
    badgeLabel.TextSize          = 8
    badgeLabel.TextColor3        = Color3.fromRGB(222, 236, 253)
    badgeLabel.BackgroundTransparency = 1
    badgeLabel.Size              = UDim2.fromScale(1, 1)
    badgeLabel.TextXAlignment    = Enum.TextXAlignment.Center
    badgeLabel.TextYAlignment    = Enum.TextYAlignment.Center
    badgeLabel.ZIndex            = 3
    badgeLabel.Parent            = badge

    -- Fetch avatar thumbnail async
    task.spawn(function()
        local ok, img = pcall(function()
            return Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
        end)
        if ok and avatar and avatar.Parent then
            avatar.Image = img
        end
    end)

    return root, glowGrad, fadeOverlay
end

-- Outline color: matches the moving UI glow color
local TAG_OUTLINE_COLOR = Color3.fromRGB(167, 200, 244)

-- Attach an outline (Highlight, outline-only) to a player's character.
-- Only applied to OTHER players — never the local player themselves.
local function applyOutline(player)
    if player == Players.LocalPlayer then return nil end
    local char = player.Character
    if not char then return nil end

    -- Remove any existing highlight first
    local existing = char:FindFirstChild("OxideOutline")
    if existing then existing:Destroy() end

    local hl = Instance.new("Highlight")
    hl.Name             = "OxideOutline"
    hl.FillColor        = Color3.fromRGB(0, 0, 0)
    hl.FillTransparency = 1            -- outline only, no fill
    hl.OutlineColor     = TAG_OUTLINE_COLOR
    hl.OutlineTransparency = 0
    hl.Adornee          = char
    hl.DepthMode        = Enum.HighlightDepthMode.AlwaysOnTop
    hl.Parent           = char
    return hl
end

local function clearOutline(player)
    local char = player.Character
    if not char then return end
    local existing = char:FindFirstChild("OxideOutline")
    if existing then existing:Destroy() end
end

local function removeTag(player)
    local data = TagSystem._tags[player]
    if data then
        if data.conn then data.conn:Disconnect() end
        if data.charConn then data.charConn:Disconnect() end
        if data.frame and data.frame.Parent then data.frame:Destroy() end
        clearOutline(player)
        TagSystem._tags[player] = nil
    end
end

local function addTag(player)
    if player == Players.LocalPlayer then return end
    if TagSystem._tags[player] then return end

    local frame, glowGrad, fadeOverlay = buildTagFrame(player)
    local glowT = 0
    local currentFade = 0  -- 0 = overlay invisible (tag fully visible), 1 = overlay opaque (tag hidden)

    -- Apply the dark blue outline (Highlight, outline-only). Never on the local player.
    local function refreshOutline()
        local char = player.Character
        if not char then return end
        local existing = char:FindFirstChild("OxideOutline")
        if not existing then applyOutline(player) end
    end
    refreshOutline()
    -- Re-apply when character respawns (Highlight is destroyed with the old char)
    local charConn
    charConn = player.CharacterAdded:Connect(function()
        task.wait(0.2)
        applyOutline(player)
    end)

    -- RenderStepped: update position + glow each frame
    -- Tag tracks the HumanoidRootPart (stable, no walk-bob) at a fixed world-space
    -- height above the character, so it stays steady at the same spot over the head.
    local conn = RunService.RenderStepped:Connect(function(dt)
        if not frame or not frame.Parent then return end

        local char = player.Character
        local hrp = char and (char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso"))
        if not hrp or not hrp:IsA("BasePart") then
            frame.Visible = false
            return
        end

        -- Ensure outline exists on the current character, and animate it
        local outline = char:FindFirstChild("OxideOutline")
        if not outline then outline = applyOutline(player) end

        local camera = Workspace.CurrentCamera
        if not camera then frame.Visible = false; return end

        local cameraPos = camera.CFrame.Position

        -- Stable anchor point: fixed world height above the HumanoidRootPart.
        -- This does NOT bob with the walk animation, so the tag stays steady.
        local anchorWorld = hrp.Position + Vector3.new(0, TAG_WORLD_HEIGHT, 0)
        local distance = (anchorWorld - cameraPos).Magnitude

        local screenPos, onScreen = camera:WorldToScreenPoint(anchorWorld)

        if not onScreen or screenPos.Z <= 0 then
            frame.Visible = false
            if outline then outline.Enabled = false end
            return
        end

        -- Distance-based fade: full opacity up to TAG_FULL_DIST, fade out by TAG_MAX_DISTANCE
        local targetFade = 0  -- 0 = visible
        if distance > TAG_FULL_DIST then
            targetFade = math.clamp((distance - TAG_FULL_DIST) / (TAG_MAX_DISTANCE - TAG_FULL_DIST), 0, 1)
        end
        -- Smooth fade transitions only (NOT position)
        currentFade = currentFade + (targetFade - currentFade) * math.clamp(dt * 6, 0, 1)
        if currentFade > 0.98 then
            frame.Visible = false
            if outline then outline.Enabled = false end
            return
        end

        frame.Visible = true
        -- Force fixed pixel size every frame — never let it scale
        frame.Size = UDim2.fromOffset(TAG_W, TAG_H)
        if fadeOverlay and fadeOverlay.Parent then
            fadeOverlay.BackgroundTransparency = 1 - currentFade
        end

        -- LOCK tag directly to anchor each frame (anchor is center 0.5,0.5)
        -- Floor to integer pixels to kill sub-pixel jitter
        local px = math.floor(screenPos.X + 0.5)
        local py = math.floor(screenPos.Y + 0.5)
        frame.Position = UDim2.fromOffset(px, py)

        -- Animate the traveling glow (same speed as main window: 0.35 cycles/sec)
        glowT = (glowT + dt * 0.35) % 1
        glowGrad.Offset = Vector2.new(glowT * 2 - 1, 0)

        -- Sync the outline animation to the SAME cycle as the UI glow.
        -- The UI glow has a bright band sweeping across; here we emulate it with a
        -- sharp brightness pulse: mostly dim, with a quick white-hot flash at the peak.
        if outline and outline.Parent then
            outline.Enabled = true
            -- Pulse: 0..1 across the cycle, peaks sharply in the middle
            local pulse = math.sin(glowT * math.pi)                 -- 0 -> 1 -> 0 across the cycle
            local sharp = pulse * pulse                              -- sharpen so the flash is brief
            -- Brightness lerp: base dark blue -> near-white at the flash peak
            local r = 100  + (255 - 100)  * sharp
            local g = 50  + (255 - 50)  * sharp
            local b = 200 + (255 - 200) * sharp
            outline.OutlineColor = Color3.fromRGB(math.floor(r), math.floor(g), math.floor(b))
            -- Outline dims when the tag is far (matches the tag fade)
            outline.OutlineTransparency = currentFade * 0.85
        end
    end)

    TagSystem._tags[player] = {
        frame = frame,
        glowGrad = glowGrad,
        fadeOverlay = fadeOverlay,
        conn = conn,
        charConn = charConn,
    }
end

local function getExecutorName()
    -- Executors expose different identification APIs. Try the common forms
    -- in order and normalize the result before sending it to presence.
    local probes = {
        function()
            if type(identifyexecutor) == "function" then return identifyexecutor() end
        end,
        function()
            if type(getexecutorname) == "function" then return getexecutorname() end
        end,
        function()
            if type(getexecutor) == "function" then return getexecutor() end
        end,
        function()
            if type(identifyexecutor) == "string" then return identifyexecutor end
        end,
    }
    for _, probe in ipairs(probes) do
        local ok, name = pcall(probe)
        if ok and type(name) == "string" then
            local trimmed = name
            if #trimmed > 0 then return string.sub(trimmed, 1, 64) end
        end
    end
    return "Unknown"
end

local function tagRegister()
    if not httpRequest then return end
    local lp = Players.LocalPlayer
    if not lp then return end

    local payload
    local pok, encoded = pcall(function()
        return HttpService:JSONEncode({
            userId      = lp.UserId,
            displayName = lp.DisplayName,
            name        = lp.Name,
            jobId       = game.JobId,
            placeId     = game.PlaceId,
            executor    = getExecutorName(),
        })
    end)
    if pok and encoded then
        payload = encoded
    else
        -- Fallback to a minimal body if JSONEncode somehow fails
        payload = '{"userId":' .. lp.UserId .. '}'
    end

    local ok, res = pcall(function()
        return httpRequest({
            Url    = TAG_REGISTER,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body   = payload,
        })
    end)
    if not ok or not res or not res.Body then return end

    -- If the server has queued this user for an admin kick, comply.
    local sok, data = pcall(function() return HttpService:JSONDecode(res.Body) end)
    if sok and type(data) == "table" and data.kick == true then
        pcall(function() lp:Kick("[Oxide] Disconnected by admin") end)
    end
end

local function tagFetchAndUpdate()
    if not httpRequest then return end
    local ok, res = pcall(function()
        return httpRequest({ Url = TAG_USERS, Method = "GET" })
    end)
    if not ok or not res or not res.Body then return end

    local sok, data = pcall(function()
        return HttpService:JSONDecode(res.Body)
    end)
    if not sok or type(data) ~= "table" then return end

    -- Build active set + user info map. Supports both the old format
    -- (array of numeric ids) and the new format (array of {userId, ...}).
    local active, userInfo = {}, {}
    for _, entry in ipairs(data) do
        local id
        if type(entry) == "number" then
            id = entry
            userInfo[id] = { userId = id, displayName = "", name = "" }
        elseif type(entry) == "table" then
            id = tonumber(entry.userId)
            if id then
                userInfo[id] = {
                    userId      = id,
                    displayName = tostring(entry.displayName or ""),
                    name        = tostring(entry.name or ""),
                    jobId       = tostring(entry.jobId or ""),
                    placeId     = tonumber(entry.placeId) or 0,
                }
            end
        end
        if id then active[id] = true end
    end
    TagSystem._active   = active
    TagSystem._userInfo = userInfo

    -- Add/remove tags
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer then
            if active[player.UserId] then
                addTag(player)
            else
                removeTag(player)
            end
        end
    end

    -- Notify subscribers (admin panel, etc.) on the snapshot.
    for _, fn in ipairs(TagSystem._listeners) do
        task.spawn(function() pcall(fn, userInfo, active) end)
    end
end

local function startTagSystem()
    if TagSystem._running then return end
    TagSystem._running = true
    ensureTagGui()

    -- Remove tags when players leave
    local leaveConn = Players.PlayerRemoving:Connect(function(player)
        removeTag(player)
    end)
    table.insert(TagSystem._connections, leaveConn)

    -- Poll loop (18s heartbeat prevents network spam with 300+ players)
    task.spawn(function()
        while TagSystem._running do
            tagRegister()
            tagFetchAndUpdate()
            task.wait(18)
        end
    end)
end

-- Stop the shared tag service when the last window is gone. This is kept out
-- of Window:Destroy until the library has fully loaded, so several windows can
-- safely share one tag polling loop.
local function stopTagSystem()
    TagSystem._running = false
    for _, conn in ipairs(TagSystem._connections) do
        pcall(function() conn:Disconnect() end)
    end
    table.clear(TagSystem._connections)
    for player in pairs(TagSystem._tags) do
        removeTag(player)
    end
    table.clear(TagSystem._active)
    table.clear(TagSystem._userInfo)
    if TagSystem._screenGui and TagSystem._screenGui.Parent then
        TagSystem._screenGui:Destroy()
    end
    TagSystem._screenGui = nil
end

-- ════════════════════════════════════════════════════════════════════════════
-- LIBRARY
-- ════════════════════════════════════════════════════════════════════════════
local Library = {
    Version       = "2.6",
    ChatFree      = true,      -- marker: this build has no hub chat (used by the loader to reject stale CDN copies)
    Themes        = THEMES,
    Icons         = ICONS,
    DefaultLogo   = DEFAULT_LOGO,
    Flags         = {},        -- [flag] = { kind = <string>, api = <handle> }
    State         = {},        -- Unlimited reactive variables / state store
    _stateListeners = {},
    ConfigFolder  = "OxideUI/configs",
    _windows      = {},
    _windowObjects= {},
    _currentTheme = "Dark",
    TagSystem     = TagSystem,
}
local Window = {}; Window.__index = Window
local Tab    = {};    Tab.__index = Tab
local SubTab = {}; SubTab.__index = SubTab

function Library:SetState(key, val)
    local k = tostring(key)
    Library.State[k] = val
    if Library._stateListeners[k] then
        for _, fn in ipairs(Library._stateListeners[k]) do pcall(fn, val) end
    end
    return val
end

function Library:GetState(key, default)
    local v = Library.State[tostring(key)]
    if v == nil then return default end
    return v
end

function Library:BindState(key, fn)
    local k = tostring(key)
    if not Library._stateListeners[k] then Library._stateListeners[k] = {} end
    table.insert(Library._stateListeners[k], fn)
    if Library.State[k] ~= nil then pcall(fn, Library.State[k]) end
    return fn
end

function Library:Get(flag, default)
    local f = tostring(flag)
    local entry = Library.Flags[f]
    if entry and entry.api and entry.api.Get then
        local v = entry.api.Get()
        if v ~= nil then return v end
    end
    local s = Library.State[f]
    if s ~= nil then return s end
    return default
end

function Library:Set(flag, value)
    local f = tostring(flag)
    local entry = Library.Flags[f]
    if entry and entry.api and entry.api.Set then
        entry.api.Set(entry.api, value)
        return true
    end
    Library:SetState(f, value)
    return true
end

-- Track a connection against a window so Window:Destroy() can clean it up.
-- This prevents leaked UserInputService connections from sliders, color
-- pickers, keybinds and dragging that previously lived for the whole session.
local function trackConn(window, conn)
    if window and window._connections and conn then
        table.insert(window._connections, conn)
    end
    return conn
end

-- Register an interactive element under a Flag so its value can be read,
-- written and persisted through the config system.
local function registerFlag(flag, kind, api)
    if flag ~= nil and api then
        local f = tostring(flag)
        Library.Flags[f] = { kind = kind, api = api }
        if Library.State[f] ~= nil and api.Set then
            pcall(function() api:Set(Library.State[f]) end)
        end
    end
    return api
end

-- ImageColor3 is repainted too, but `make` never auto-tags it — only instances
-- that explicitly set a Theme_ImageColor3 attribute take part, so tinted icons
-- keep whatever colour their caller asked for.
local THEME_PROPS = { "BackgroundColor3", "TextColor3", "PlaceholderColor3", "ScrollBarImageColor3", "Color", "ImageColor3" }

function Library:SetTheme(theme)
    local themeName = nil
    if type(theme) == "string" then
        themeName = theme
        theme = THEMES[theme]
        if not theme then warn(("[Oxide UI] unknown theme %q"):format(themeName)); return false end
    elseif type(theme) ~= "table" then
        warn("[Oxide UI] SetTheme expects a built-in theme name or theme table"); return false
    end
    for key in pairs(C) do
        local value = theme[key]
        if value ~= nil and typeof(value) ~= "Color3" then
            warn(("[Oxide UI] theme key %s must be a Color3"):format(key)); return false
        end
    end
    for key in pairs(C) do
        local value = theme[key]
        if value ~= nil then C[key] = value end
    end
    Library._currentTheme = themeName or "Custom"
    rebuildReverse()
    for _, gui in ipairs(Library._windows) do
        if gui and gui.Parent then
            for _, inst in ipairs(gui:GetDescendants()) do
                if inst:IsA("UIGradient") then
                    refreshEdgeGradient(inst)
                    refreshVerticalFade(inst)
                end
                local goal
                for _, prop in ipairs(THEME_PROPS) do
                    local key = inst:GetAttribute("Theme_" .. prop)
                    if key and C[key] then goal = goal or {}; goal[prop] = C[key] end
                end
                if goal then tween(inst, goal) end
            end
        end
    end
    return true
end

function Library:GetTheme() return Library._currentTheme end
function Library:GetIcons() return ICONS end
function Library:GetIcon(name) return ICONS[string.lower(tostring(name or ""))] end

-- ════════════════════════════════════════════════════════════════════════════
-- FLAGS + CONFIG PERSISTENCE
-- ════════════════════════════════════════════════════════════════════════════
-- Read the live value of a flagged element.
function Library:GetFlag(flag, default)
    local entry = Library.Flags[tostring(flag)]
    if not entry or not entry.api or type(entry.api.Get) ~= "function" then return default end
    local ok, value = pcall(entry.api.Get, entry.api)
    if ok and value ~= nil then return value end
    return default
end

-- Write a value into a flagged element (mirrors api:Set).
function Library:SetFlag(flag, value)
    local entry = Library.Flags[tostring(flag)]
    if not entry or not entry.api or type(entry.api.Set) ~= "function" then return false end
    pcall(entry.api.Set, entry.api, value)
    return true
end

-- Capture every flag into a plain, JSON-serialisable table.
function Library:GetConfig()
    local data = {}
    for flag, entry in pairs(Library.Flags) do
        local api = entry.api
        if api then
            local ok, value
            if entry.kind == "color" and type(api.GetHex) == "function" then
                ok, value = pcall(api.GetHex, api)
            elseif type(api.Get) == "function" then
                ok, value = pcall(api.Get, api)
            end
            if ok and value ~= nil then
                if entry.kind == "keybind" then
                    -- value is an EnumItem (or nil) -> store its name
                    data[flag] = (typeof(value) == "EnumItem") and value.Name or false
                else
                    data[flag] = value
                end
            end
        end
    end
    return data
end

-- Apply a config table (as produced by GetConfig) back onto the elements.
function Library:LoadConfigData(data)
    if type(data) ~= "table" then return false end
    Library._autoSaveDisabled = true
    for flag, value in pairs(data) do
        local entry = Library.Flags[tostring(flag)]
        if entry and entry.api and type(entry.api.Set) == "function" then
            if entry.kind == "keybind" then
                local key = nil
                if type(value) == "string" then
                    pcall(function() key = Enum.KeyCode[value] end)
                end
                pcall(entry.api.Set, entry.api, key)
            else
                pcall(entry.api.Set, entry.api, value)
            end
        end
    end
    task.delay(0.2, function() Library._autoSaveDisabled = false end)
    return true
end

-- ── File-system helpers (executor environment) ──────────────────────────────
local function hasFileApi()
    return type(writefile) == "function" and type(readfile) == "function"
end
local function ensureConfigFolder()
    if type(makefolder) ~= "function" or type(isfolder) ~= "function" then return end
    local parts = string.split(Library.ConfigFolder, "/")
    local path = ""
    for _, part in ipairs(parts) do
        if part ~= "" then
            path = (path == "") and part or (path .. "/" .. part)
            if not isfolder(path) then pcall(makefolder, path) end
        end
    end
end
local function configPath(name)
    name = tostring(name or "default"):gsub("[^%w%-_ ]", "")
    if name == "" then name = "default" end
    return Library.ConfigFolder .. "/" .. name .. ".json"
end

local autoSaveThread = nil
function Library:QueueAutoSave()
    if Library._autoSaveDisabled then return end
    if not hasFileApi() then return end
    local cfgName = Library._currentConfigName or "autoload"

    if autoSaveThread then
        pcall(task.cancel, autoSaveThread)
        autoSaveThread = nil
    end

    autoSaveThread = task.delay(0.6, function()
        autoSaveThread = nil
        pcall(function() Library:SaveConfig(cfgName) end)
    end)
end

-- Persist the current state of all flags to a named config file.
function Library:SaveConfig(name)
    if not hasFileApi() then
        warn("[Oxide UI] SaveConfig requires an executor file API (writefile)")
        return false
    end
    ensureConfigFolder()
    local ok, encoded = pcall(function()
        return HttpService:JSONEncode(Library:GetConfig())
    end)
    if not ok then warn("[Oxide UI] SaveConfig failed to encode config"); return false end
    local wrote = pcall(writefile, configPath(name), encoded)
    if not wrote then warn("[Oxide UI] SaveConfig failed to write file"); return false end
    return true
end

-- Load a named config file and apply it to all matching flags.
function Library:LoadConfig(name)
    if not hasFileApi() then
        warn("[Oxide UI] LoadConfig requires an executor file API (readfile)")
        return false
    end
    local path = configPath(name)
    if type(isfile) == "function" and not isfile(path) then return false end
    local ok, raw = pcall(readfile, path)
    if not ok or not raw then return false end
    local decoded, data = pcall(function() return HttpService:JSONDecode(raw) end)
    if not decoded then warn("[Oxide UI] LoadConfig failed to decode config"); return false end
    return Library:LoadConfigData(data)
end

-- List saved config names (without extension).
function Library:ListConfigs()
    local out = {}
    if type(listfiles) ~= "function" then return out end
    ensureConfigFolder()
    local ok, files = pcall(listfiles, Library.ConfigFolder)
    if not ok or type(files) ~= "table" then return out end
    for _, file in ipairs(files) do
        local name = string.match(tostring(file), "([^/\\]+)%.json$")
        if name then table.insert(out, name) end
    end
    return out
end

-- Delete a saved config file.
function Library:DeleteConfig(name)
    if type(delfile) ~= "function" then return false end
    local path = configPath(name)
    if type(isfile) == "function" and not isfile(path) then return false end
    return (pcall(delfile, path))
end

function Library:Notify(opts)
    for index = #Library._windowObjects, 1, -1 do
        local window = Library._windowObjects[index]
        if window and window.ScreenGui and window.ScreenGui.Parent then
            return window:Notify(opts)
        end
    end
    warn("[Oxide UI] create a window before calling Library:Notify")
    return nil
end
function Library:Notification(opts) return self:Notify(opts) end

-- Ask the presence server to kick a user. The local player must be in the
-- server's admin list for this to succeed. Returns (ok, errorString).
function Library:AdminDisconnect(userId)
    if not httpRequest then return false, "no HTTP request function" end
    local lp = Players.LocalPlayer
    if not lp then return false, "no LocalPlayer" end
    userId = tonumber(userId)
    if not userId then return false, "invalid userId" end

    local pok, body = pcall(function()
        return HttpService:JSONEncode({ adminId = lp.UserId, userId = userId })
    end)
    if not pok or not body then return false, "encode failed" end

    local ok, res = pcall(function()
        return httpRequest({
            Url     = TAG_ADMIN_DISCONNECT,
            Method  = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body    = body,
        })
    end)
    if not ok or not res then return false, "request failed" end

    local status = tonumber(res.StatusCode) or 0
    if status >= 200 and status < 300 then return true end
    if status == 403 then return false, "not authorized" end
    return false, ("server returned " .. tostring(status))
end

-- Teleport the local player into the target user's server instance (Join).
-- Requires the target's placeId + jobId (reported by the presence server).
-- Returns (ok, errorString).
function Library:JoinPlayer(placeId, jobId)
    local ts = game:GetService("TeleportService")
    placeId = tonumber(placeId)
    if not placeId or placeId <= 0 then return false, "target has no place info" end
    if not jobId or tostring(jobId) == "" then return false, "target has no server info" end

    local ok, err = pcall(function()
        ts:TeleportToPlaceInstance(placeId, tostring(jobId), Players.LocalPlayer)
    end)
    if not ok then return false, tostring(err) end
    return true
end

-- Returns true if the local player is in the client-side admin list. The
-- server still validates every admin command; this is only used by the UI
-- to decide whether to render the admin panel.
function Library:IsAdmin()
    return isAdminUser(Players.LocalPlayer)
end

function Library:DestroyAll()
    local objects = table.clone(Library._windowObjects or {})
    for _, window in ipairs(objects) do
        if window and type(window.Destroy) == "function" then
            pcall(function() window:Destroy() end)
        end
    end
    local windows = table.clone(Library._windows)
    for _, screenGui in ipairs(windows) do
        if screenGui and screenGui.Parent then pcall(function() screenGui:Destroy() end) end
    end
    table.clear(Library._windows)
    table.clear(Library._windowObjects or {})
    table.clear(Library.Flags)
    stopTagSystem()
end

-- ════════════════════════════════════════════════════════════════════════════
-- MUSIC PLAYER BUILDER (kept as its own function so its locals do not count
-- against CreateWindow's Luau local-register budget)
-- ════════════════════════════════════════════════════════════════════════════
local function buildMusicPlayer(cfg)
    local screenGui      = cfg.screenGui
    local profileWidth   = cfg.profileWidth
    local bottomMargin   = cfg.bottomMargin
    local panelGap       = cfg.panelGap
    local musicToggleBtn = cfg.toggleBtn
    local musicToggleIcon= cfg.toggleIcon
    local musicConns     = cfg.conns
    local opts           = cfg.opts or {}

    local CLOSE_RED      = Color3.fromRGB(190, 60, 60)
    local CLOSE_RED_HI   = Color3.fromRGB(212, 80, 80)
    local MIN_YELLOW     = Color3.fromRGB(255, 195, 0)
    local MIN_YELLOW_HI  = Color3.fromRGB(255, 211, 70)
    local MUSIC_FOLDER   = tostring(opts.MusicFolder or "OxideMusic")
    local musicWidth     = profileWidth
    local fullHeight     = 384
    local compactHeight  = 190
    local profilePanelH  = 382
    local musicOpenPos   = UDim2.new(1, -18, 1, -(bottomMargin + profilePanelH + panelGap))
    local musicClosedPos = UDim2.new(1, musicWidth + 28, 1, -(bottomMargin + profilePanelH + panelGap))
    local musicOpen      = false
    local minimized      = false

    -- 2D audio playback via SoundService
    local SoundService = game:GetService("SoundService")
    local musicSound   = Instance.new("Sound")
    musicSound.Name   = "OxideMusicPlayer"
    musicSound.Volume = 0.5
    musicSound.Looped = false
    pcall(function() musicSound.Parent = SoundService end)

    -- Filesystem / asset capabilities (guarded for non-executor environments)
    local fsList       = (typeof(listfiles) == "function") and listfiles or nil
    local fsIsFolder   = (typeof(isfolder) == "function") and isfolder or nil
    local fsMakeFolder = (typeof(makefolder) == "function") and makefolder or nil
    local assetLoader  = (typeof(getcustomasset) == "function" and getcustomasset)
        or (typeof(getsynasset) == "function" and getsynasset) or nil
    if fsMakeFolder and fsIsFolder and not fsIsFolder(MUSIC_FOLDER) then
        pcall(fsMakeFolder, MUSIC_FOLDER)
    end

    local tracks       = {}
    local currentIndex = 0
    local isPlaying    = false
    local function baseName(p)
        local n = string.match(tostring(p), "[^/\\]+$") or tostring(p)
        return (string.gsub(n, "%.[%w]+$", ""))
    end
    local function fmtTime(t)
        t = math.max(0, math.floor(t or 0))
        return string.format("%d:%02d", math.floor(t / 60), t % 60)
    end

    -- ── Panel shell (compact, matches the profile / performance panels) ─────
    local musicPanel = make("CanvasGroup", { Name = "MusicPlayer", AnchorPoint = Vector2.new(1, 1), Position = musicClosedPos, Size = UDim2.fromOffset(musicWidth, fullHeight), BackgroundColor3 = C.CardBg, GroupTransparency = 1, ClipsDescendants = true, ZIndex = 150, Parent = screenGui })
    corner(musicPanel, 14)

    -- Header
    make("TextLabel", { Text = "MUSIC PLAYER", Font = Enum.Font.GothamBold, TextSize = 13, TextColor3 = C.White, TextXAlignment = Enum.TextXAlignment.Left, BackgroundTransparency = 1, Position = UDim2.fromOffset(16, 12), Size = UDim2.new(1, -70, 0, 18), ZIndex = 152, Parent = musicPanel })
    local subLabel = make("TextLabel", { Text = MUSIC_FOLDER, Font = Enum.Font.Gotham, TextSize = 10, TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Left, BackgroundTransparency = 1, Position = UDim2.fromOffset(16, 30), Size = UDim2.new(1, -70, 0, 14), ZIndex = 152, Parent = musicPanel })
    make("Frame", { Position = UDim2.new(0, 16, 0, 48), Size = UDim2.new(1, -32, 0, 1), BackgroundColor3 = C.Border, ZIndex = 151, Parent = musicPanel })
    -- macOS-style traffic lights (minimize = yellow, close = red), matching the main window
    local controls = make("Frame", { AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -14, 0, 15), Size = UDim2.fromOffset(32, 13), BackgroundTransparency = 1, ZIndex = 152, Parent = musicPanel })
    local minimizeBtn = make("TextButton", { Text = "", AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(0, 13, 0, 0), Size = UDim2.fromOffset(13, 13), BackgroundColor3 = MIN_YELLOW, ZIndex = 153, Parent = controls })
    circle(minimizeBtn)
    local musicCloseBtn = make("TextButton", { Text = "", AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, 0, 0, 0), Size = UDim2.fromOffset(13, 13), BackgroundColor3 = CLOSE_RED, ZIndex = 153, Parent = controls })
    circle(musicCloseBtn)

    -- Now playing (text only — no album-art tile)
    local npTitle = make("TextLabel", { Text = "Nothing playing", Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = C.White, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd, BackgroundTransparency = 1, Position = UDim2.fromOffset(16, 58), Size = UDim2.new(1, -32, 0, 18), ZIndex = 152, Parent = musicPanel })
    local npSub = make("TextLabel", { Text = "Add audio to the " .. MUSIC_FOLDER .. " folder", Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = C.TextGray, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd, BackgroundTransparency = 1, Position = UDim2.fromOffset(16, 78), Size = UDim2.new(1, -32, 0, 15), ZIndex = 152, Parent = musicPanel })

    -- Progress
    local progBg = make("Frame", { Position = UDim2.fromOffset(16, 104), Size = UDim2.new(1, -32, 0, 5), BackgroundColor3 = C.TrackBg, ZIndex = 152, Parent = musicPanel })
    corner(progBg, 3)
    local progFill = make("Frame", { Size = UDim2.new(0, 0, 1, 0), BackgroundColor3 = C.Accent, ZIndex = 153, Parent = progBg })
    corner(progFill, 3)
    local progKnob = make("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0, 0, 0.5, 0), Size = UDim2.fromOffset(10, 10), BackgroundColor3 = C.KnobAccent, ZIndex = 154, Parent = progBg })
    circle(progKnob); stroke(progKnob, C.Accent, 2)
    local curTime = make("TextLabel", { Text = "0:00", Font = Enum.Font.GothamMedium, TextSize = 10, TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Left, BackgroundTransparency = 1, Position = UDim2.fromOffset(16, 114), Size = UDim2.fromOffset(60, 12), ZIndex = 152, Parent = musicPanel })
    local totTime = make("TextLabel", { Text = "0:00", Font = Enum.Font.GothamMedium, TextSize = 10, TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Right, AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -16, 0, 114), Size = UDim2.fromOffset(60, 12), ZIndex = 152, Parent = musicPanel })

    -- Controls (image-based transport icons; rewind sized up to match skip's visual weight)
    local ICON_PREV = "rbxassetid://79890332995329"
    local ICON_PLAY = "rbxassetid://10269757325"
    local ICON_NEXT = "rbxassetid://15946567603"
    local ctl = make("Frame", { Position = UDim2.fromOffset(0, 132), Size = UDim2.new(1, 0, 0, 48), BackgroundTransparency = 1, ZIndex = 152, Parent = musicPanel })
    make("UIListLayout", { FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Center, VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0, 16), Parent = ctl })
    local function iconBtn(imgId, btnSize, imgSize, order)
        local b = make("TextButton", { Text = "", BackgroundTransparency = 1, Size = UDim2.fromOffset(btnSize, btnSize), LayoutOrder = order, ZIndex = 153, Parent = ctl })
        local img = make("ImageLabel", { Image = imgId, ImageColor3 = C.TextGray, BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(imgSize, imgSize), ScaleType = Enum.ScaleType.Fit, ZIndex = 154, Parent = b })
        b.MouseEnter:Connect(function() tween(img, { ImageColor3 = C.White }) end)
        b.MouseLeave:Connect(function() tween(img, { ImageColor3 = C.TextGray }) end)
        return b, img
    end
    local prevBtn = iconBtn(ICON_PREV, 40, 54, 1)
    -- play / pause (icon only, accent-tinted): play uses a texture, pause is two clean bars
    local playBtn = make("TextButton", { Text = "", BackgroundTransparency = 1, Size = UDim2.fromOffset(52, 52), LayoutOrder = 2, ZIndex = 153, Parent = ctl })
    local playImg = make("ImageLabel", { Image = ICON_PLAY, ImageColor3 = C.Accent, BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(34, 34), ScaleType = Enum.ScaleType.Fit, ZIndex = 154, Parent = playBtn })
    local pauseHolder = make("Frame", { BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(16, 18), Visible = false, ZIndex = 154, Parent = playBtn })
    local pb1 = make("Frame", { Size = UDim2.fromOffset(5, 18), Position = UDim2.fromOffset(1, 0), BackgroundColor3 = C.Accent, ZIndex = 155, Parent = pauseHolder }); corner(pb1, 2)
    local pb2 = make("Frame", { Size = UDim2.fromOffset(5, 18), Position = UDim2.fromOffset(10, 0), BackgroundColor3 = C.Accent, ZIndex = 155, Parent = pauseHolder }); corner(pb2, 2)
    local nextBtn = iconBtn(ICON_NEXT, 40, 30, 3)

    -- Volume
    local volRow = make("Frame", { Position = UDim2.fromOffset(16, 190), Size = UDim2.new(1, -32, 0, 16), BackgroundTransparency = 1, ZIndex = 152, Parent = musicPanel })
    make("TextLabel", { Text = "VOL", Font = Enum.Font.GothamBold, TextSize = 9, TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Left, BackgroundTransparency = 1, Position = UDim2.fromOffset(0, 2), Size = UDim2.fromOffset(26, 12), ZIndex = 153, Parent = volRow })
    local volBg = make("Frame", { AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 30, 0.5, 0), Size = UDim2.new(1, -30, 0, 5), BackgroundColor3 = C.TrackBg, ZIndex = 152, Parent = volRow })
    corner(volBg, 3)
    local volFill = make("Frame", { Size = UDim2.new(0.5, 0, 1, 0), BackgroundColor3 = C.Accent, ZIndex = 153, Parent = volBg })
    corner(volFill, 3)
    local volKnob = make("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 0, 0.5, 0), Size = UDim2.fromOffset(10, 10), BackgroundColor3 = C.KnobAccent, ZIndex = 154, Parent = volBg })
    circle(volKnob); stroke(volKnob, C.Accent, 2)

    -- Playlist header (label + refresh)
    local plLabel = make("TextLabel", { Text = "PLAYLIST", Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Left, BackgroundTransparency = 1, Position = UDim2.fromOffset(18, 216), Size = UDim2.fromOffset(120, 14), ZIndex = 152, Parent = musicPanel })
    local refreshBtn = make("TextButton", { Text = "", AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -16, 0, 223), Size = UDim2.fromOffset(22, 22), BackgroundColor3 = C.Element, ZIndex = 152, Parent = musicPanel })
    corner(refreshBtn, 7); stroke(refreshBtn, C.Border)
    local refreshIcon = make("ImageLabel", { Image = ICONS.refresh, ImageColor3 = C.TextGray, BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(13, 13), ZIndex = 153, Parent = refreshBtn })

    -- Playlist
    local list = make("ScrollingFrame", { Position = UDim2.fromOffset(16, 238), Size = UDim2.new(1, -32, 1, -254), BackgroundColor3 = C.WindowBg, ScrollBarThickness = 3, ScrollBarImageColor3 = C.Border, CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y, ZIndex = 152, Parent = musicPanel })
    corner(list, 11); pad(list, 6, 6, 6, 6)
    make("UIListLayout", { Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder, Parent = list })
    local emptyLbl = make("TextLabel", { Text = "No tracks — drop audio files in the\n" .. MUSIC_FOLDER .. " folder, then hit refresh", Font = Enum.Font.GothamMedium, TextSize = 11, TextColor3 = C.TextDim, BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.new(1, -20, 0, 40), ZIndex = 153, Parent = list })

    -- elements hidden when minimized
    local lowerEls = { volRow, plLabel, refreshBtn, list }

    -- ── Behaviour ─────────────────────────────────────────────────────────
    local rows = {}
    local refreshPlaylist, playIndex, updateNowPlaying

    function updateNowPlaying()
        local t = tracks[currentIndex]
        if t then
            npTitle.Text = t.name
            npSub.Text = isPlaying and "Now playing" or "Paused"
        else
            npTitle.Text = "Nothing playing"
            npSub.Text = (#tracks > 0) and "Select a track" or ("Add audio to the " .. MUSIC_FOLDER .. " folder")
        end
        playImg.Visible = not isPlaying
        pauseHolder.Visible = isPlaying
    end

    function refreshPlaylist()
        for _, r in pairs(rows) do r:Destroy() end
        table.clear(rows)
        emptyLbl.Visible = (#tracks == 0)
        for i, t in ipairs(tracks) do
            local active = (i == currentIndex)
            local row = make("TextButton", { Text = "", Size = UDim2.new(1, 0, 0, 38), BackgroundColor3 = active and C.ElementHover or C.Element, LayoutOrder = i, ZIndex = 153, Parent = list })
            corner(row, 9)
            if active then stroke(row, C.Accent, 1) end
            local num = make("Frame", { Position = UDim2.fromOffset(7, 6), Size = UDim2.fromOffset(26, 26), BackgroundColor3 = active and C.Accent or C.CardBg, ZIndex = 154, Parent = row })
            corner(num, 8)
            make("TextLabel", { Text = tostring(i), Font = Enum.Font.GothamBold, TextSize = 11, TextColor3 = active and C.AccentText or C.TextGray, BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 155, Parent = num })
            make("TextLabel", { Text = t.name, Font = Enum.Font.GothamMedium, TextSize = 12, TextColor3 = active and C.White or C.TextGray, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd, BackgroundTransparency = 1, Position = UDim2.fromOffset(42, 0), Size = UDim2.new(1, -76, 1, 0), ZIndex = 154, Parent = row })
            local rm = make("TextButton", { Text = "", AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0), Size = UDim2.fromOffset(20, 20), BackgroundTransparency = 1, ZIndex = 155, Parent = row })
            local x1 = make("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(11, 2), BackgroundColor3 = C.TextDim, Rotation = 45, ZIndex = 156, Parent = rm })
            corner(x1, 1)
            local x2 = make("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(11, 2), BackgroundColor3 = C.TextDim, Rotation = -45, ZIndex = 156, Parent = rm })
            corner(x2, 1)
            row.MouseEnter:Connect(function() if not (currentIndex == i) then tween(row, { BackgroundColor3 = C.ElementHover }) end end)
            row.MouseLeave:Connect(function() if not (currentIndex == i) then tween(row, { BackgroundColor3 = C.Element }) end end)
            rm.MouseEnter:Connect(function() tween(x1, { BackgroundColor3 = C.White }); tween(x2, { BackgroundColor3 = C.White }) end)
            rm.MouseLeave:Connect(function() tween(x1, { BackgroundColor3 = C.TextDim }); tween(x2, { BackgroundColor3 = C.TextDim }) end)
            row.MouseButton1Click:Connect(function() playIndex(i) end)
            rm.MouseButton1Click:Connect(function()
                table.remove(tracks, i)
                if currentIndex == i then
                    pcall(function() musicSound:Stop() end); isPlaying = false; currentIndex = 0
                elseif currentIndex > i then currentIndex = currentIndex - 1 end
                updateNowPlaying(); refreshPlaylist()
            end)
            rows[i] = row
        end
    end

    function playIndex(i)
        if #tracks == 0 then return end
        if i < 1 then i = #tracks elseif i > #tracks then i = 1 end
        local t = tracks[i]
        if not t.id then
            if assetLoader then
                local ok, res = pcall(assetLoader, t.path)
                if ok and res then t.id = res end
            end
        end
        if not t.id then
            currentIndex = i; npTitle.Text = t.name
            npSub.Text = assetLoader and "Couldn't load file" or "Asset loader unavailable"
            isPlaying = false; updateNowPlaying(); refreshPlaylist(); return
        end
        currentIndex = i
        musicSound.SoundId = t.id
        musicSound.TimePosition = t.startTime or 0
        pcall(function() musicSound:Play() end)
        if t.startTime and t.startTime > 0 then
            pcall(function() musicSound.TimePosition = t.startTime end)
            task.delay(0.06, function()
                if isPlaying and currentIndex == i then
                    pcall(function()
                        if musicSound.TimePosition < t.startTime then
                            musicSound.TimePosition = t.startTime
                        end
                    end)
                end
            end)
        end
        isPlaying = true
        updateNowPlaying(); refreshPlaylist()
    end

    local function togglePlay()
        if #tracks == 0 then return end
        if currentIndex == 0 then playIndex(1); return end
        if isPlaying then pcall(function() musicSound:Pause() end); isPlaying = false
        else pcall(function() musicSound:Resume() end); isPlaying = true end
        updateNowPlaying(); refreshPlaylist()
    end
    local function nextTrack()
        if #tracks == 0 then return end
        playIndex(currentIndex + 1)
    end
    local function prevTrack()
        if #tracks == 0 then return end
        local currentTrack = tracks[currentIndex]
        local minT = (currentTrack and currentTrack.startTime) or 0
        if musicSound.TimePosition > minT + 3 then
            musicSound.TimePosition = minT
        else
            playIndex(currentIndex - 1)
        end
    end
    local BUILTIN_TRACKS = {
        { name = "Oxide Anthem", id = "rbxassetid://75485931767123", startTime = 3, endTime = 115 },
        { name = "Lofi Chill Beats", id = "rbxassetid://9043887091" },
        { name = "Phonk Drift", id = "rbxassetid://9048375035" },
        { name = "Synthwave Glow", id = "rbxassetid://9048376510" },
    }

    local function rescan()
        local prev = tracks[currentIndex]
        tracks = {}
        currentIndex = 0

        for _, bt in ipairs(BUILTIN_TRACKS) do
            table.insert(tracks, {
                name = bt.name,
                id = bt.id,
                startTime = bt.startTime,
                endTime = bt.endTime,
                isBuiltin = true
            })
            if prev and prev.id == bt.id then currentIndex = #tracks end
        end

        if fsMakeFolder and fsIsFolder and not fsIsFolder(MUSIC_FOLDER) then pcall(fsMakeFolder, MUSIC_FOLDER) end
        if fsList and fsIsFolder and fsIsFolder(MUSIC_FOLDER) then
            local ok, files = pcall(fsList, MUSIC_FOLDER)
            if ok and files then
                for _, f in ipairs(files) do
                    local lf = string.lower(f)
                    if lf:sub(-4) == ".mp3" or lf:sub(-4) == ".ogg" or lf:sub(-4) == ".wav" or lf:sub(-5) == ".flac" then
                        table.insert(tracks, { name = baseName(f), path = f })
                        if prev and prev.path == f then currentIndex = #tracks end
                    end
                end
            end
        end
        updateNowPlaying(); refreshPlaylist()
    end

    -- Sliders
    local function setVol(f)
        f = math.clamp(f, 0, 1); musicSound.Volume = f
        volFill.Size = UDim2.new(f, 0, 1, 0); volKnob.Position = UDim2.new(f, 0, 0.5, 0)
    end
    setVol(0.5)
    local volDrag, seekDrag = false, false
    volBg.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then volDrag = true; setVol((i.Position.X - volBg.AbsolutePosition.X) / math.max(1, volBg.AbsoluteSize.X)) end end)
    volBg.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then volDrag = false end end)
    progBg.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then seekDrag = true end end)
    progBg.InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            local currentTrack = tracks[currentIndex]
            local minT = (currentTrack and currentTrack.startTime) or 0
            local maxT = (currentTrack and currentTrack.endTime) or (musicSound.TimeLength > 0 and musicSound.TimeLength or nil)
            if seekDrag and maxT and maxT > minT then
                local pct = math.clamp((i.Position.X - progBg.AbsolutePosition.X) / math.max(1, progBg.AbsoluteSize.X), 0, 1)
                pcall(function() musicSound.TimePosition = minT + pct * (maxT - minT) end)
            end
            seekDrag = false
        end
    end)
    table.insert(musicConns, UserInputService.InputChanged:Connect(function(i)
        if i.UserInputType ~= Enum.UserInputType.MouseMovement and i.UserInputType ~= Enum.UserInputType.Touch then return end
        if volDrag then setVol((i.Position.X - volBg.AbsolutePosition.X) / math.max(1, volBg.AbsoluteSize.X)) end
        if seekDrag then
            local f = math.clamp((i.Position.X - progBg.AbsolutePosition.X) / math.max(1, progBg.AbsoluteSize.X), 0, 1)
            progFill.Size = UDim2.new(f, 0, 1, 0); progKnob.Position = UDim2.new(f, 0, 0.5, 0)
        end
    end))

    -- Wire
    playBtn.MouseButton1Click:Connect(togglePlay)
    nextBtn.MouseButton1Click:Connect(nextTrack)
    prevBtn.MouseButton1Click:Connect(prevTrack)
    refreshBtn.MouseButton1Click:Connect(rescan)
    refreshBtn.MouseEnter:Connect(function() tween(refreshBtn, { BackgroundColor3 = C.ElementHover }); tween(refreshIcon, { ImageColor3 = C.White }) end)
    refreshBtn.MouseLeave:Connect(function() tween(refreshBtn, { BackgroundColor3 = C.Element }); tween(refreshIcon, { ImageColor3 = C.TextGray }) end)
    table.insert(musicConns, musicSound.Ended:Connect(function() nextTrack() end))
    table.insert(musicConns, RunService.RenderStepped:Connect(function()
        if not (musicPanel and musicPanel.Parent) or not musicOpen then return end
        local currentTrack = tracks[currentIndex]
        local minT = (currentTrack and currentTrack.startTime) or 0
        local maxT = (currentTrack and currentTrack.endTime) or (musicSound.TimeLength > 0 and musicSound.TimeLength or nil)
        if isPlaying and maxT and maxT > minT then
            if currentTrack and currentTrack.endTime and musicSound.TimePosition >= currentTrack.endTime then
                nextTrack()
                return
            end
            if not seekDrag then
                local dur = math.max(1, maxT - minT)
                local curRel = math.clamp(musicSound.TimePosition - minT, 0, dur)
                local f = math.clamp(curRel / dur, 0, 1)
                progFill.Size = UDim2.new(f, 0, 1, 0); progKnob.Position = UDim2.new(f, 0, 0.5, 0)
            end
            curTime.Text = fmtTime(math.max(0, musicSound.TimePosition - minT))
            totTime.Text = fmtTime(maxT - minT)
        end
    end))
    table.insert(musicConns, { Disconnect = function() pcall(function() musicSound:Stop(); musicSound:Destroy() end) end })

    -- Minimize / close (macOS traffic lights)
    local function setMinimized(m)
        minimized = (m == true)
        for _, e in ipairs(lowerEls) do e.Visible = not minimized end
        TweenService:Create(musicPanel, PROFILE_TWEEN, { Size = UDim2.fromOffset(musicWidth, minimized and compactHeight or fullHeight) }):Play()
    end
    minimizeBtn.MouseEnter:Connect(function() tween(minimizeBtn, { BackgroundColor3 = MIN_YELLOW_HI }) end)
    minimizeBtn.MouseLeave:Connect(function() tween(minimizeBtn, { BackgroundColor3 = MIN_YELLOW }) end)
    minimizeBtn.MouseButton1Click:Connect(function() setMinimized(not minimized) end)
    musicCloseBtn.MouseEnter:Connect(function() tween(musicCloseBtn, { BackgroundColor3 = CLOSE_RED_HI }) end)
    musicCloseBtn.MouseLeave:Connect(function() tween(musicCloseBtn, { BackgroundColor3 = CLOSE_RED }) end)

    local function setMusicVisible(v, instant)
        musicOpen = (v == true)
        local tp = musicOpen and musicOpenPos or musicClosedPos
        local tr = musicOpen and 0 or 1
        if instant then
            musicPanel.Position = tp; musicPanel.GroupTransparency = tr
        else
            TweenService:Create(musicPanel, PROFILE_TWEEN, { Position = tp, GroupTransparency = tr }):Play()
        end
        if musicToggleBtn then musicToggleBtn.BackgroundColor3 = musicOpen and C.PillActive or C.Element end
        if musicToggleIcon then musicToggleIcon.ImageColor3 = musicOpen and C.Accent or C.TextGray end
        if musicOpen and #tracks == 0 then rescan() end
    end
    local function toggleMusic() setMusicVisible(not musicOpen) end
    local function closeMusic(instant) setMusicVisible(false, instant) end
    musicCloseBtn.MouseButton1Click:Connect(function() setMusicVisible(false) end)

    if musicToggleBtn then
        musicToggleBtn.MouseEnter:Connect(function() if not musicOpen then tween(musicToggleBtn, { BackgroundColor3 = C.ElementHover }) end end)
        musicToggleBtn.MouseLeave:Connect(function() tween(musicToggleBtn, { BackgroundColor3 = musicOpen and C.PillActive or C.Element }) end)
    end

    rescan(); updateNowPlaying()
    return toggleMusic, closeMusic
end

function Library:CreateWindow(opts)
    opts = opts or {}

    -- Auto-start the tag system
    startTagSystem()

    local logoAsset      = normalizeAssetId(opts.Logo or DEFAULT_LOGO)
    -- Zoom factor applied to the logo inside its clipping holder. The default
    -- asset is mostly transparent padding, so it needs a healthy zoom to read;
    -- a caller-supplied logo is assumed to be already cropped.
    local logoZoom       = math.clamp(tonumber(opts.LogoZoom) or (logoAsset == DEFAULT_LOGO and 2.4 or 1), 1, 6)
    local windowSize     = opts.Size or UDim2.fromOffset(700, 490)
    local windowPosition = opts.Position or UDim2.fromScale(0.5, 0.5)
    local guiName        = opts.GuiName or "OxideUI"

    -- Mobile detection (auto, or forced via opts.Mobile = true/false).
    -- Platform is the most reliable signal (iOS/Android), with the touch
    -- heuristic as a fallback for executors that stub GetPlatform().
    local function detectMobile()
        local platform = nil
        pcall(function() platform = UserInputService:GetPlatform() end)
        if platform == Enum.Platform.IOS or platform == Enum.Platform.Android then return true end
        if platform and platform ~= Enum.Platform.Windows and platform ~= Enum.Platform.OSX and platform ~= Enum.Platform.XBoxOne then
            return UserInputService.TouchEnabled
        end
        return UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
    end
    local isMobile = (opts.Mobile == true) or (opts.Mobile ~= false and detectMobile())

    local HOTBAR_HEIGHT  = 36
    local HOTBAR_GAP     = 8

    local targetParent
    if typeof(opts.Parent) == "Instance" then
        targetParent = opts.Parent
    else
        pcall(function() targetParent = (gethui and gethui()) or game:GetService("CoreGui") end)
        if not targetParent then targetParent = Players.LocalPlayer:WaitForChild("PlayerGui") end
    end

    local function removeExistingGui(parent)
        if opts.ReplaceExisting == false or not parent then return end
        for _, child in ipairs(parent:GetChildren()) do
            if child:IsA("ScreenGui") and child.Name == guiName then child:Destroy() end
        end
    end

    removeExistingGui(targetParent)

    local screenGui = make("ScreenGui", {
        Name = guiName, ResetOnSpawn = false, IgnoreGuiInset = true,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        DisplayOrder = opts.DisplayOrder or 10,
    })
    local parented = pcall(function() screenGui.Parent = targetParent end)
    if not parented then
        targetParent = Players.LocalPlayer:WaitForChild("PlayerGui")
        removeExistingGui(targetParent)
        screenGui.Parent = targetParent
    end
    table.insert(Library._windows, screenGui)

    local containerW = windowSize.X.Offset
    local containerH = windowSize.Y.Offset + HOTBAR_GAP + HOTBAR_HEIGHT

    local container = make("Frame", {
        Name = "OxideContainer",
        Size = UDim2.fromOffset(containerW, containerH),
        Position = windowPosition,
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        ZIndex = 2,
        Parent = screenGui,
    })
    local containerScale = make("UIScale", { Scale = 1, Parent = container })

    -- ── LOADING SCREEN (slam-in intro, themed with the accent colour) ─────
    local loadingEnabled      = opts.LoadingAnimation ~= false
    local loadingDuration     = math.clamp(tonumber(opts.LoadingDuration) or 1.2, 0.4, 8)
    local loadingText         = tostring(opts.LoadingText or opts.Name or "Oxide")
    local loadingSub          = tostring(opts.LoadingSubtitle or "HUB")
    local loadingFooter       = tostring(opts.LoadingFooter or "Oxide HUB")
    local overlayTransparency = math.clamp(tonumber(opts.LoadingOverlayTransparency) or 0.35, 0, 0.9)

    -- accent palette derived from the active theme
    local ACC       = C.Accent
    local ACC_DARK  = C.AccentDim or Color3.fromRGB(20, 38, 64)
    local ACC_LIGHT = Color3.fromRGB(255, 255, 255)

    local loadingComplete       = not loadingEnabled
    local loadingMotionComplete = not loadingEnabled
    local loadingLayer, loadingContent, loadingLogoScale, loadingTitleScale, loadingProgressFill
    local loadingBlur, loadingSound

    if loadingEnabled then
        loadingLayer = make("CanvasGroup", {
            Name = "StartupLoader", Size = UDim2.fromScale(1, 1),
            BackgroundColor3 = Color3.fromRGB(0, 0, 0), BackgroundTransparency = 1,
            GroupTransparency = 0, ZIndex = 500, Parent = screenGui,
        })

        if opts.LoadingBlur ~= false then
            loadingBlur = Instance.new("BlurEffect")
            loadingBlur.Size = 0
            pcall(function() loadingBlur.Parent = game:GetService("Lighting") end)
        end

        if opts.LoadingSound then
            loadingSound = Instance.new("Sound")
            loadingSound.SoundId = normalizeAssetId(opts.LoadingSound)
            loadingSound.Volume = 0
            loadingSound.Looped = false
            loadingSound.TimePosition = tonumber(opts.LoadingSoundStart) or 0
            pcall(function() loadingSound.Parent = SoundService end)
        end

        local function sideLabel(anchorX)
            local lbl = make("TextLabel", {
                Size = UDim2.fromOffset(260, 54), Position = UDim2.new(anchorX, 0, 0.5, -27),
                AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1,
                Text = loadingText, Font = Enum.Font.GothamBlack, TextScaled = true,
                TextColor3 = C.White, TextStrokeColor3 = Color3.fromRGB(0, 0, 0), TextStrokeTransparency = 0.45,
                TextTransparency = 1, ZIndex = 508, Parent = loadingLayer,
            })
            make("UIGradient", { Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, ACC_DARK),
                ColorSequenceKeypoint.new(0.5, ACC_LIGHT),
                ColorSequenceKeypoint.new(1, ACC_DARK),
            }), Parent = lbl })
            return lbl
        end
        local leftLbl  = sideLabel(0.18)
        local rightLbl = sideLabel(0.82)

        local mainWrap = make("Frame", {
            AnchorPoint = Vector2.new(0.5, 0.5), Size = UDim2.fromOffset(80, 36),
            Position = UDim2.new(0.5, 0, 0.5, -20), BackgroundTransparency = 1, ZIndex = 510, Parent = loadingLayer,
        })
        local tag = make("TextLabel", {
            Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = loadingText,
            Font = Enum.Font.GothamBlack, TextScaled = true, TextColor3 = C.White,
            TextStrokeColor3 = Color3.fromRGB(0, 0, 0), TextStrokeTransparency = 0.3,
            TextXAlignment = Enum.TextXAlignment.Center, TextTransparency = 1, ZIndex = 510, Parent = mainWrap,
        })
        local tagGrad = make("UIGradient", { Rotation = 0, Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, ACC_DARK),
            ColorSequenceKeypoint.new(0.35, ACC),
            ColorSequenceKeypoint.new(0.5, ACC_LIGHT),
            ColorSequenceKeypoint.new(0.65, ACC),
            ColorSequenceKeypoint.new(1, ACC_DARK),
        }), Parent = tag })

        local line = make("Frame", {
            Size = UDim2.fromOffset(0, 2), Position = UDim2.new(0.5, 0, 0.5, 60), AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = ACC, BackgroundTransparency = 1, ZIndex = 510, Parent = loadingLayer,
        })
        make("UIGradient", { Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1),
        }), Parent = line })

        local sub = make("TextLabel", {
            Size = UDim2.fromOffset(400, 22), Position = UDim2.new(0.5, 0, 0.5, 82), AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1, Text = loadingSub, Font = Enum.Font.GothamBold, TextSize = 16,
            TextColor3 = ACC_LIGHT, TextStrokeColor3 = Color3.fromRGB(0, 0, 0), TextStrokeTransparency = 0.5,
            TextXAlignment = Enum.TextXAlignment.Center, TextTransparency = 1, ZIndex = 510, Parent = loadingLayer,
        })
        local footer = make("TextLabel", {
            Size = UDim2.fromOffset(400, 16), Position = UDim2.new(0.5, 0, 0.5, 112), AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1, Text = loadingFooter, Font = Enum.Font.GothamMedium, TextSize = 11,
            TextColor3 = Color3.fromRGB(200, 150, 90), TextStrokeColor3 = Color3.fromRGB(0, 0, 0), TextStrokeTransparency = 0.6,
            TextXAlignment = Enum.TextXAlignment.Center, TextTransparency = 1, ZIndex = 510, Parent = loadingLayer,
        })

        task.spawn(function()
            if loadingBlur then TweenService:Create(loadingBlur, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { Size = 10 }):Play() end
            if loadingSound then
                pcall(function() loadingSound:Play() end)
                TweenService:Create(loadingSound, TweenInfo.new(0.3), { Volume = math.clamp(tonumber(opts.LoadingSoundVolume) or 0.45, 0, 1) }):Play()
            end
            TweenService:Create(loadingLayer, TweenInfo.new(0.18, Enum.EasingStyle.Quad), { BackgroundTransparency = overlayTransparency }):Play()
            TweenService:Create(leftLbl, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
            task.wait(0.08)
            TweenService:Create(rightLbl, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
            task.wait(math.clamp(loadingDuration * 0.25, 0.15, 0.8))
            if not loadingLayer.Parent then return end
            local slideInfo = TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
            TweenService:Create(leftLbl, slideInfo, { Position = UDim2.new(0.5, 0, 0.5, -27) }):Play()
            TweenService:Create(rightLbl, slideInfo, { Position = UDim2.new(0.5, 0, 0.5, -27) }):Play()
            task.wait(0.22)
            leftLbl.Visible = false; rightLbl.Visible = false
            tag.TextTransparency = 0
            TweenService:Create(mainWrap, TweenInfo.new(0.16, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(820, 140) }):Play()
            task.wait(0.15)
            line.BackgroundTransparency = 0
            TweenService:Create(line, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(380, 2) }):Play()
            TweenService:Create(sub, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextTransparency = 0 }):Play()
            task.wait(0.08)
            TweenService:Create(footer, TweenInfo.new(0.2, Enum.EasingStyle.Quad), { TextTransparency = 0.1 }):Play()
            task.spawn(function()
                local off = -0.5
                while loadingLayer.Parent and not loadingComplete and tag.Parent do
                    off = off + 0.018; if off > 1.5 then off = -0.5 end
                    tagGrad.Offset = Vector2.new(off, 0)
                    task.wait()
                end
            end)
            task.wait(math.clamp(loadingDuration * 0.35, 0.15, 1.0))
            loadingMotionComplete = true
        end)
    end

    -- ── MAIN WINDOW ───────────────────────────────────────────────────────
    local main = make("Frame", {
        Name = "Main", Size = windowSize,
        Position = UDim2.fromOffset(0, 0),
        BackgroundColor3 = C.WindowBg, ClipsDescendants = true,
        Visible = not loadingEnabled, ZIndex = 2, Parent = container,
    })
    corner(main, 12); stroke(main, C.Border)

    -- Animated traveling outline
    local mainGlowStroke = make("UIStroke", {
        Color = C.Accent,
        Thickness = 1.6,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        Transparency = 0,
        Parent = main,
    })
    local mainGlowGradient = make("UIGradient", {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0.00, C.Accent),
            ColorSequenceKeypoint.new(0.42, C.Accent),
            ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(0.58, C.Accent),
            ColorSequenceKeypoint.new(1.00, C.Accent),
        }),
        Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0.00, 1.0),
            NumberSequenceKeypoint.new(0.36, 1.0),
            NumberSequenceKeypoint.new(0.50, 0.0),
            NumberSequenceKeypoint.new(0.64, 1.0),
            NumberSequenceKeypoint.new(1.00, 1.0),
        }),
        Parent = mainGlowStroke,
    })
    mainGlowGradient:SetAttribute("ThemeGradient_Edge", "Accent")
    local mainRevealScale = make("UIScale", { Scale = loadingEnabled and 0.965 or 1, Parent = main })
    -- Assigned further down, once the sidebar watermark exists. Driving the logo
    -- outline from this same loop keeps it in phase with the window glow.
    local logoGlowGradient
    local brandShimmerGradient
    local glowT = 0
    local glowConn
    glowConn = RunService.RenderStepped:Connect(function(dt)
        if not main or not main.Parent then
            if glowConn then glowConn:Disconnect(); glowConn = nil end
            return
        end
        glowT = (glowT + dt * 0.35) % 1
        local offset = Vector2.new(glowT * 2 - 1, 0)
        mainGlowGradient.Offset = offset
        if logoGlowGradient then logoGlowGradient.Offset = offset end
        if brandShimmerGradient then brandShimmerGradient.Offset = offset end
    end)

    -- ── HOTBAR ────────────────────────────────────────────────────────────
    local hotbar = make("Frame", {
        Name = "TabHotbar",
        AnchorPoint = Vector2.new(0.5, 0),
        Position = UDim2.new(0.5, 0, 0, windowSize.Y.Offset + HOTBAR_GAP),
        Size = UDim2.fromOffset(0, HOTBAR_HEIGHT),
        AutomaticSize = Enum.AutomaticSize.X,
        BackgroundColor3 = C.HotbarBg,
        ClipsDescendants = false,
        Visible = not loadingEnabled,
        ZIndex = 3, Parent = container,
    })
    corner(hotbar, 11)
    -- Border is white and driven entirely by the gradient below: accent at the
    -- left and right ends, normal border colour through the middle. The
    -- Theme_Color tag has to go, otherwise SetTheme would repaint the white
    -- base and dim the whole gradient (it multiplies, it does not replace).
    local hotbarStroke = make("UIStroke", {
        Color = Color3.fromRGB(255, 255, 255), Thickness = 1,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = hotbar,
    })
    hotbarStroke:SetAttribute("Theme_Color", nil)
    edgeAccentGradient(hotbarStroke, "Accent", "HotbarBorder", 0.15)
    pad(hotbar, 5, 5, 10, 10)

    local hotbarInner = make("Frame", {
        Name = "HotbarInner",
        Size = UDim2.new(0, 0, 1, 0),
        AutomaticSize = Enum.AutomaticSize.X,
        BackgroundTransparency = 1, ZIndex = 4, Parent = hotbar,
    })
    make("UIListLayout", {
        FillDirection = Enum.FillDirection.Horizontal,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 4), Parent = hotbarInner,
    })

    local minimized = false
    local mainTopButtons = {}
    local burgerButton
    local windowRef
    local noDrag = {}
    table.insert(noDrag, hotbar)

    local function setMinimized(o)
        minimized = o == true
        for _, b in ipairs(mainTopButtons) do if b and b.Parent then b.Visible = not minimized end end
        if burgerButton and burgerButton.Parent then burgerButton.Visible = minimized end
        main.Visible = not minimized
        hotbar.Visible = not minimized
        if windowRef then windowRef._minimized = minimized end
    end

    local controls = make("Frame", {
        Name = "CornerControls", AnchorPoint = Vector2.new(1,0),
        Position = UDim2.new(1,-6,0,8), Size = UDim2.fromOffset(36,16),
        BackgroundTransparency = 1, ZIndex = 10, Parent = main,
    })
    local closeBtn = make("TextButton", {
        Text = "", Font = Enum.Font.GothamBold, TextSize = 1, TextColor3 = C.White,
        AnchorPoint = Vector2.new(1,0), Position = UDim2.new(1,0,0,0),
        Size = UDim2.fromOffset(14,14), BackgroundColor3 = Color3.fromRGB(190,60,60),
        ZIndex = 12, Parent = controls,
    })
    closeBtn.AutoButtonColor = false; circle(closeBtn); closeBtn.BorderSizePixel = 0
    local minimizeBtn = make("TextButton", {
        Text = "", Font = Enum.Font.GothamBold, TextSize = 1, TextColor3 = C.White,
        AnchorPoint = Vector2.new(1,0), Position = UDim2.new(0,12,0,0),
        Size = UDim2.fromOffset(14,14), BackgroundColor3 = Color3.fromRGB(255,195,0),
        ZIndex = 12, Parent = controls,
    })
    minimizeBtn.AutoButtonColor = false; circle(minimizeBtn); minimizeBtn.BorderSizePixel = 0
    table.insert(mainTopButtons, closeBtn); table.insert(mainTopButtons, minimizeBtn)
    table.insert(noDrag, closeBtn); table.insert(noDrag, minimizeBtn)

    burgerButton = make("TextButton", {
        Name = "MinimizedPill", Text = "", AutoButtonColor = false,
        AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 10),
        Size = UDim2.fromOffset(0, 32), AutomaticSize = Enum.AutomaticSize.X,
        BackgroundColor3 = Color3.fromRGB(15, 17, 23),
        Visible = false, ZIndex = 200, Parent = screenGui,
    })
    corner(burgerButton, 16)
    local pillStroke = stroke(burgerButton, Color3.fromRGB(36, 40, 52), 1)

    make("UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        Padding = UDim.new(0, 10),
        Parent = burgerButton,
    })
    pad(burgerButton, 0, 0, 14, 14)

    -- 1. Logo Icon (Left - LayoutOrder 1)
    local pillLogoHolder = make("Frame", {
        Name = "LogoHolder", Size = UDim2.fromOffset(26, 26),
        LayoutOrder = 1, BackgroundTransparency = 1,
        ClipsDescendants = true,
        Parent = burgerButton, ZIndex = 201
    })
    local pillLogo = make("ImageLabel", {
        Name = "PillLogo", Image = logoAsset,
        BackgroundTransparency = 1, ImageColor3 = C.Accent,
        AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromScale(math.min(logoZoom * 0.9, 1.8), math.min(logoZoom * 0.9, 1.8)), ScaleType = Enum.ScaleType.Fit,
        ZIndex = 202, Parent = pillLogoHolder
    })

    -- 2. Divider 1 (LayoutOrder 2)
    make("Frame", {
        Name = "Div1", Size = UDim2.fromOffset(1, 14),
        LayoutOrder = 2, BackgroundColor3 = Color3.fromRGB(44, 48, 62),
        BorderSizePixel = 0, Parent = burgerButton, ZIndex = 201
    })

    -- 3. Ping Indicator (Middle - LayoutOrder 3)
    local pingFrame = make("Frame", {
        Name = "PingFrame", Size = UDim2.fromOffset(0, 20),
        LayoutOrder = 3, AutomaticSize = Enum.AutomaticSize.X,
        BackgroundTransparency = 1, Parent = burgerButton, ZIndex = 201
    })
    make("UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
        FillDirection = Enum.FillDirection.Horizontal,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        Padding = UDim.new(0, 5), Parent = pingFrame
    })
    local wifiIcon = make("ImageLabel", {
        Name = "WifiIcon", Image = "rbxassetid://105253464688580",
        LayoutOrder = 1, ImageColor3 = Color3.fromRGB(75, 215, 125),
        BackgroundTransparency = 1, Size = UDim2.fromOffset(15, 15),
        ScaleType = Enum.ScaleType.Fit, ZIndex = 202, Parent = pingFrame
    })
    local pingLabel = make("TextLabel", {
        Name = "PingLabel", Text = "0ms", Font = Enum.Font.GothamBold,
        LayoutOrder = 2, TextSize = 11, TextColor3 = Color3.fromRGB(240, 242, 248),
        TextXAlignment = Enum.TextXAlignment.Left,
        AutomaticSize = Enum.AutomaticSize.X, Size = UDim2.fromOffset(0, 20),
        BackgroundTransparency = 1, ZIndex = 202, Parent = pingFrame
    })

    -- 4. Divider 2 (LayoutOrder 4)
    make("Frame", {
        Name = "Div2", Size = UDim2.fromOffset(1, 14),
        LayoutOrder = 4, BackgroundColor3 = Color3.fromRGB(44, 48, 62),
        BorderSizePixel = 0, Parent = burgerButton, ZIndex = 201
    })

    -- 5. FPS Indicator (Right - LayoutOrder 5)
    local fpsFrame = make("Frame", {
        Name = "FpsFrame", Size = UDim2.fromOffset(0, 20),
        LayoutOrder = 5, AutomaticSize = Enum.AutomaticSize.X,
        BackgroundTransparency = 1, Parent = burgerButton, ZIndex = 201
    })
    make("UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
        FillDirection = Enum.FillDirection.Horizontal,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        Padding = UDim.new(0, 5), Parent = fpsFrame
    })
    local fpsIcon = make("ImageLabel", {
        Name = "FpsIcon", Image = "rbxassetid://10709772833",
        LayoutOrder = 1, ImageColor3 = Color3.fromRGB(75, 215, 125),
        BackgroundTransparency = 1, Size = UDim2.fromOffset(14, 14),
        ScaleType = Enum.ScaleType.Fit, ZIndex = 202, Parent = fpsFrame
    })
    local fpsLabel = make("TextLabel", {
        Name = "FpsLabel", Text = "60 FPS", Font = Enum.Font.GothamBold,
        LayoutOrder = 2, TextSize = 11, TextColor3 = Color3.fromRGB(240, 242, 248),
        TextXAlignment = Enum.TextXAlignment.Left,
        AutomaticSize = Enum.AutomaticSize.X, Size = UDim2.fromOffset(0, 20),
        BackgroundTransparency = 1, ZIndex = 202, Parent = fpsFrame
    })

    -- Live metrics updater for minimized pill
    local PingStat = Stats:FindFirstChild("Network") and Stats.Network:FindFirstChild("ServerStatsItem") and Stats.Network.ServerStatsItem:FindFirstChild("Data Ping")
    local fpsFrames, fpsTime = 0, os.clock()
    local lastFpsVal = 60

    RunService.RenderStepped:Connect(function()
        fpsFrames = fpsFrames + 1
        local now = os.clock()
        if now - fpsTime >= 0.5 then
            lastFpsVal = math.round(fpsFrames / (now - fpsTime))
            fpsFrames = 0
            fpsTime = now
            if burgerButton.Visible then
                fpsLabel.Text = tostring(lastFpsVal) .. " FPS"
                if lastFpsVal >= 50 then
                    fpsIcon.ImageColor3 = Color3.fromRGB(75, 215, 125)
                elseif lastFpsVal >= 30 then
                    fpsIcon.ImageColor3 = Color3.fromRGB(240, 190, 50)
                else
                    fpsIcon.ImageColor3 = Color3.fromRGB(235, 75, 75)
                end
            end
        end
    end)

    task.spawn(function()
        while screenGui and screenGui.Parent do
            task.wait(0.5)
            if burgerButton.Visible then
                local ping = PingStat and math.round(PingStat:GetValue()) or 0
                pingLabel.Text = ping .. "ms"
                if ping <= 90 then
                    wifiIcon.ImageColor3 = Color3.fromRGB(75, 215, 125)
                elseif ping <= 160 then
                    wifiIcon.ImageColor3 = Color3.fromRGB(240, 190, 50)
                else
                    wifiIcon.ImageColor3 = Color3.fromRGB(235, 75, 75)
                end
            end
        end
    end)

    burgerButton.MouseEnter:Connect(function()
        tween(burgerButton, { BackgroundColor3 = Color3.fromRGB(24, 27, 36) })
        tween(pillStroke, { Color = C.Accent })
    end)
    burgerButton.MouseLeave:Connect(function()
        tween(burgerButton, { BackgroundColor3 = Color3.fromRGB(18, 20, 26) })
        tween(pillStroke, { Color = Color3.fromRGB(38, 42, 54) })
    end)

    burgerButton.MouseButton1Click:Connect(function() setMinimized(false) end)
    closeBtn.MouseButton1Click:Connect(function()
        if windowRef and windowRef.Destroy then windowRef:Destroy()
        else if screenGui then screenGui:Destroy() end end
    end)
    minimizeBtn.MouseButton1Click:Connect(function() setMinimized(true) end)
    local onDragStart, onDragEnd
    local dragConn = makeDraggable(container, noDrag,
        function() if onDragStart then onDragStart() end end,
        function() if onDragEnd then onDragEnd() end end)

    -- ── SIDEBAR ───────────────────────────────────────────────────────────
    local sidebar = make("Frame", { Size=UDim2.new(0,190,1,0), BackgroundTransparency=1, Parent=main })
    local brand = make("Frame", { Name="Brand", Position=UDim2.fromOffset(12,12), Size=UDim2.new(1,-24,0,64), BackgroundColor3=C.White, Parent=sidebar })
    corner(brand,10); stroke(brand,C.Border)
    -- Smooth light-blue to gray transition over the whole card, blue at the
    -- bottom. The blue is muted (Strength < 1 blends it back toward the gray)
    -- so it stays a subtle tint. The frame must be white because a UIGradient
    -- multiplies the object's own colour instead of replacing it; the actual
    -- colours live on the gradient, so it still follows theme changes.
    brand:SetAttribute("Theme_BackgroundColor3", nil)
    local brandGrad = make("UIGradient", { Rotation = 90, Parent = brand })
    brandGrad:SetAttribute("ThemeGradient_Top", "CardBg")
    brandGrad:SetAttribute("ThemeGradient_Bottom", "Accent")
    brandGrad:SetAttribute("ThemeGradient_Strength", 0.5)
    refreshVerticalFade(brandGrad)
    -- Blue-white shimmer: a soft whitish band sweeps across the card along the
    -- bottom-left to top-right diagonal, in phase with the window glow (same
    -- cycle, same offset). Sits at ZIndex 0 so the logo and text stay crisp.
    local brandShimmer = make("Frame", {
        Name = "Shimmer", Size = UDim2.fromScale(1, 1), ZIndex = 0,
        BackgroundColor3 = Color3.fromRGB(210, 225, 255), Parent = brand,
    })
    corner(brandShimmer, 10)
    brandShimmerGradient = make("UIGradient", {
        Rotation = 45,
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0.00, C.Accent),
            ColorSequenceKeypoint.new(0.42, C.Accent),
            ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(0.58, C.Accent),
            ColorSequenceKeypoint.new(1.00, C.Accent),
        }),
        Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0.00, 1.0),
            NumberSequenceKeypoint.new(0.38, 1.0),
            NumberSequenceKeypoint.new(0.50, 0.55),
            NumberSequenceKeypoint.new(0.62, 1.0),
            NumberSequenceKeypoint.new(1.00, 1.0),
        }),
        Parent = brandShimmer,
    })
    brandShimmerGradient:SetAttribute("ThemeGradient_Edge", "Accent")
    -- The logo holder clips, and the image inside is scaled up by `logoZoom`.
    -- This exists because the default logo asset has a lot of transparent
    -- padding — with ScaleType.Fit the visible mark would only fill ~35% of
    -- the box. Custom logos are usually tightly cropped, so they get no zoom
    -- unless the caller opts in via `LogoZoom`.
    local logoHolder = make("Frame", { Position=UDim2.fromOffset(9,9), Size=UDim2.fromOffset(46,46), BackgroundTransparency=1, ClipsDescendants=true, Parent=brand })
    local brandLogo = make("ImageLabel",{Name="Logo",Image=logoAsset,BackgroundTransparency=1,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromScale(logoZoom,logoZoom),ScaleType=Enum.ScaleType.Fit,Parent=logoHolder})
    make("TextLabel",{Text=opts.Name or "Oxide UI",Font=Enum.Font.GothamBold,TextSize=13,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,BackgroundTransparency=1,Position=UDim2.fromOffset(64,16),Size=UDim2.new(1,-72,0,17),Parent=brand})
    make("TextLabel",{Text=opts.BrandSubtitle or ("Oxide FREE..."..Library.Version),Font=Enum.Font.GothamMedium,TextSize=9,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,BackgroundTransparency=1,Position=UDim2.fromOffset(64,35),Size=UDim2.new(1,-72,0,13),Parent=brand})

    -- Player mini-card (fills the sidebar and gives identity at a glance)
    local lp = Players.LocalPlayer
    local pcard = make("Frame",{Name="PlayerCard",Position=UDim2.fromOffset(12,88),Size=UDim2.new(1,-24,0,52),BackgroundColor3=C.CardBg,Parent=sidebar})
    corner(pcard,10); stroke(pcard,C.Border)
    local avH = make("Frame",{Position=UDim2.fromOffset(8,8),Size=UDim2.fromOffset(36,36),BackgroundColor3=C.Element,Parent=pcard}); corner(avH,8)
    local avImg = make("ImageLabel",{Image="rbxthumb://type=AvatarHeadShot&id="..lp.UserId.."&w=150&h=150",BackgroundTransparency=1,Size=UDim2.fromScale(1,1),ScaleType=Enum.ScaleType.Crop,Parent=avH}); corner(avImg,8)
    local avRing = stroke(avH,C.Accent); avRing.Transparency=0.4
    make("TextLabel",{Text=lp.DisplayName,Font=Enum.Font.GothamBold,TextSize=12,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,BackgroundTransparency=1,Position=UDim2.fromOffset(52,10),Size=UDim2.new(1,-60,0,15),Parent=pcard})
    make("TextLabel",{Text="@"..lp.Name,Font=Enum.Font.Gotham,TextSize=10,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,BackgroundTransparency=1,Position=UDim2.fromOffset(52,28),Size=UDim2.new(1,-60,0,13),Parent=pcard})

    -- Faint centered logo watermark fills the otherwise empty sidebar space
    local watermarkHolder = make("Frame",{Name="Watermark",BackgroundTransparency=1,ClipsDescendants=true,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,24),Size=UDim2.fromOffset(156,156),ZIndex=0,Parent=sidebar})

    -- ── Travelling outline around the logo silhouette ─────────────────────
    -- UIStroke cannot trace an image's alpha (ApplyStrokeMode only covers text
    -- or the rectangular border), so the outline is the union of copies of the
    -- logo pushed outward in a ring. They sit inside a CanvasGroup, which
    -- flattens the overlaps into one solid silhouette — stacking them directly
    -- would compound their alpha into a muddy halo. An opaque
    -- background-coloured copy on top then cuts the interior away, leaving only
    -- the rim, and a travelling gradient band runs light along it in phase with
    -- the window outline.
    local logoGlowOn = opts.LogoGlow ~= false
    local outlineGroup
    if logoGlowOn then
        -- The CanvasGroup is what keeps this from looking like a halo, so if the
        -- class is unavailable the effect is dropped rather than degraded.
        local built, group = pcall(function()
            return make("CanvasGroup", {
                Name = "OutlineGroup", BackgroundTransparency = 1,
                Size = UDim2.fromScale(1, 1), ZIndex = 1, Parent = watermarkHolder,
            })
        end)
        if built and group then outlineGroup = group else logoGlowOn = false end
    end

    if logoGlowOn then
        local RING_STEPS = 16     -- at a 2.5px push this keeps the rim gap-free
        local RING_PUSH  = 2.5    -- outline thickness in pixels
        for i = 1, RING_STEPS do
            local ang = (i - 1) / RING_STEPS * math.pi * 2
            make("ImageLabel", {
                Name = "RingStep" .. i, Image = logoAsset,
                BackgroundTransparency = 1, ImageTransparency = 0,
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = UDim2.new(0.5, math.cos(ang) * RING_PUSH, 0.5, math.sin(ang) * RING_PUSH),
                Size = UDim2.fromScale(logoZoom, logoZoom),
                ScaleType = Enum.ScaleType.Fit, Parent = outlineGroup,
            })
        end
        -- Colour and fade both come from the gradient, so the rim is accent at
        -- rest and whitens at the crest of the band.
        logoGlowGradient = make("UIGradient", {
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0.00, C.Accent),
                ColorSequenceKeypoint.new(0.42, C.Accent),
                ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 255, 255)),
                ColorSequenceKeypoint.new(0.58, C.Accent),
                ColorSequenceKeypoint.new(1.00, C.Accent),
            }),
            Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0.00, 0.88),
                NumberSequenceKeypoint.new(0.40, 0.88),
                NumberSequenceKeypoint.new(0.50, 0.10),
                NumberSequenceKeypoint.new(0.60, 0.88),
                NumberSequenceKeypoint.new(1.00, 0.88),
            }),
            Parent = outlineGroup,
        })
        logoGlowGradient:SetAttribute("ThemeGradient_Edge", "Accent")

        -- Sits outside the CanvasGroup so the travelling gradient cannot tint it
        -- and make the logo interior show up against the background.
        local watermarkMask = make("ImageLabel", {
            Name = "WatermarkMask", Image = logoAsset, BackgroundTransparency = 1,
            ImageColor3 = C.WindowBg, ImageTransparency = 0,
            AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromScale(logoZoom, logoZoom),
            ScaleType = Enum.ScaleType.Fit, ZIndex = 2, Parent = watermarkHolder,
        })
        watermarkMask:SetAttribute("Theme_ImageColor3", "WindowBg")
    end

    local watermark = make("ImageLabel",{Name="WatermarkImage",Image=logoAsset,BackgroundTransparency=1,ImageTransparency=0.9,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromScale(logoZoom,logoZoom),ScaleType=Enum.ScaleType.Fit,ZIndex=3,Parent=watermarkHolder})

    local statusDot = make("Frame",{AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,16,1,-19),Size=UDim2.fromOffset(6,6),BackgroundColor3=NOTIFICATION_STYLES.success.Color,Parent=sidebar})
    circle(statusDot)
    make("TextLabel",{Text=opts.StatusText or "Oxide is ready",Font=Enum.Font.GothamMedium,TextSize=10,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.new(0,28,1,-27),Size=UDim2.new(1,-40,0,16),Parent=sidebar})
    local divLine=make("Frame",{Position=UDim2.fromOffset(190,0),Size=UDim2.new(0,1,1,0),BackgroundColor3=C.Accent,Parent=main})
    make("UIGradient",{Rotation=90,Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.5),NumberSequenceKeypoint.new(1,1)}),Parent=divLine})
    local content = make("Frame",{Position=UDim2.fromOffset(191,0),Size=UDim2.new(1,-191,1,0),BackgroundTransparency=1,Parent=main})

    -- ── DRAG FADE: smoothly hide inner content while dragging the window ──
    -- The window frame (background + border + traveling glow) stays visible;
    -- everything inside (sidebar, divider, content, corner controls) fades out.
    local DRAG_FADE_TWEEN = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local fadeRoots = { controls, sidebar, divLine, content }
    local fadeOrig  = {}        -- [inst] = { [prop] = originalValue }
    local innerHidden = false
    local FADE_PROPS = {
        { prop = "BackgroundTransparency",     test = function(d) return d:IsA("GuiObject") end },
        { prop = "TextTransparency",           test = function(d) return d:IsA("TextLabel") or d:IsA("TextButton") or d:IsA("TextBox") end },
        { prop = "ImageTransparency",          test = function(d) return d:IsA("ImageLabel") or d:IsA("ImageButton") end },
        { prop = "ScrollBarImageTransparency", test = function(d) return d:IsA("ScrollingFrame") end },
        { prop = "Transparency",               test = function(d) return d:IsA("UIStroke") end },
    }
    local function eachFadeInst(fn)
        for _, root in ipairs(fadeRoots) do
            if root and root.Parent then
                fn(root)
                for _, d in ipairs(root:GetDescendants()) do fn(d) end
            end
        end
    end
    local function setInnerHidden(hide)
        if hide == innerHidden then return end
        innerHidden = hide
        eachFadeInst(function(d)
            for _, entry in ipairs(FADE_PROPS) do
                if entry.test(d) then
                    local prop = entry.prop
                    if hide then
                        local cur = d[prop]
                        if cur < 1 then
                            fadeOrig[d] = fadeOrig[d] or {}
                            if fadeOrig[d][prop] == nil then fadeOrig[d][prop] = cur end
                            TweenService:Create(d, DRAG_FADE_TWEEN, { [prop] = 1 }):Play()
                        end
                    else
                        local o = fadeOrig[d]
                        if o and o[prop] ~= nil then
                            TweenService:Create(d, DRAG_FADE_TWEEN, { [prop] = o[prop] }):Play()
                        end
                    end
                end
            end
        end)
    end
    onDragStart = function() setInnerHidden(true) end
    onDragEnd   = function() setInnerHidden(false) end

    -- ── NOTIFICATIONS ─────────────────────────────────────────────────────
    local notificationHolder = make("Frame",{
        Name="Notifications",AnchorPoint=Vector2.new(1,0),
        Position=UDim2.new(1,-16,0,16),Size=UDim2.new(0,300,1,-32),
        BackgroundTransparency=1,ZIndex=200,Parent=screenGui,
    })
    make("UIListLayout",{FillDirection=Enum.FillDirection.Vertical,HorizontalAlignment=Enum.HorizontalAlignment.Right,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6),Parent=notificationHolder})

    -- ── PROFILE + PERFORMANCE ─────────────────────────────────────────────
    local localPlayer      = Players.LocalPlayer
    local profileKey       = typeof(opts.ProfileKey)=="EnumItem" and opts.ProfileKey or Enum.KeyCode.K
    local toggleKey        = (opts.ToggleKey==false) and nil or (typeof(opts.ToggleKey)=="EnumItem" and opts.ToggleKey or Enum.KeyCode.RightShift)
    local profileWidth     = math.max(280, tonumber(opts.ProfileWidth) or 312)
    local bottomMargin     = math.max(10,  tonumber(opts.ProfileBottomMargin) or 18)
    local profileOpenPos   = UDim2.new(1,-18,1,-bottomMargin)
    local profileClosedPos = UDim2.new(1,profileWidth+28,1,-bottomMargin)
    local profileOpen      = false

    -- Music player (built below) — forward declared so the header toggle
    -- button and setProfileVisible can reference it.
    local toggleMusic            -- assigned when the music panel is built
    local closeMusic             -- assigned when the music panel is built
    local musicConns    = {}     -- connections appended to windowRef._connections

    local profilePanel = make("CanvasGroup",{Name="UserProfile",AnchorPoint=Vector2.new(1,1),Position=profileClosedPos,Size=UDim2.fromOffset(profileWidth,382),BackgroundColor3=C.CardBg,GroupTransparency=1,ClipsDescendants=true,ZIndex=150,Parent=screenGui})
    corner(profilePanel,14)
    local profileHeader=make("Frame",{Position=UDim2.fromOffset(0,0),Size=UDim2.new(1,0,0,65),BackgroundTransparency=1,ZIndex=151,Parent=profilePanel})
    make("TextLabel",{Text=opts.ProfileTitle or "PLAYER PROFILE",Font=Enum.Font.GothamBold,TextSize=13,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(18,13),Size=UDim2.new(1,-36,0,18),ZIndex=152,Parent=profileHeader})
    make("TextLabel",{Text="Live session overview",Font=Enum.Font.Gotham,TextSize=10,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(18,34),Size=UDim2.new(1,-36,0,15),ZIndex=152,Parent=profileHeader})
    make("Frame",{Position=UDim2.new(0,18,1,-1),Size=UDim2.new(1,-36,0,1),BackgroundColor3=C.Border,ZIndex=151,Parent=profileHeader})
    -- Music player toggle (sits to the right of the PLAYER PROFILE title)
    local musicToggleBtn=make("TextButton",{Name="MusicToggle",Text="",AutoButtonColor=false,AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,-16,0,14),Size=UDim2.fromOffset(34,34),BackgroundColor3=C.Element,ZIndex=153,Parent=profileHeader})
    corner(musicToggleBtn,9);stroke(musicToggleBtn,C.Border)
    local musicToggleIcon=make("ImageLabel",{Image=ICONS.music,BackgroundTransparency=1,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(16,16),ImageColor3=C.TextGray,ZIndex=154,Parent=musicToggleBtn})
    musicToggleBtn.MouseButton1Click:Connect(function() if toggleMusic then toggleMusic() end end)
    local identityCard=make("Frame",{Position=UDim2.fromOffset(16,82),Size=UDim2.new(1,-32,0,116),BackgroundColor3=C.Element,ZIndex=151,Parent=profilePanel})
    corner(identityCard,11);stroke(identityCard,C.Border)
    local avatarHolder=make("Frame",{AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,14,0.5,0),Size=UDim2.fromOffset(76,76),BackgroundColor3=C.Badge,ZIndex=152,Parent=identityCard})
    circle(avatarHolder);stroke(avatarHolder,C.Border)
    local avatar=make("ImageLabel",{Name="Avatar",Image="",BackgroundTransparency=1,Position=UDim2.fromOffset(4,4),Size=UDim2.new(1,-8,1,-8),ScaleType=Enum.ScaleType.Crop,ZIndex=153,Parent=avatarHolder})
    circle(avatar)
    local onlineRing=make("Frame",{AnchorPoint=Vector2.new(1,1),Position=UDim2.new(1,0,1,0),Size=UDim2.fromOffset(18,18),BackgroundColor3=C.Element,ZIndex=154,Parent=avatarHolder})
    circle(onlineRing)
    local onlineDot=make("Frame",{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(10,10),BackgroundColor3=NOTIFICATION_STYLES.success.Color,ZIndex=155,Parent=onlineRing})
    circle(onlineDot)
    make("TextLabel",{Text=localPlayer and localPlayer.DisplayName or "Player",Font=Enum.Font.GothamBold,TextSize=17,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,BackgroundTransparency=1,Position=UDim2.fromOffset(105,22),Size=UDim2.new(1,-119,0,23),ZIndex=152,Parent=identityCard})
    make("TextLabel",{Text=localPlayer and ("@"..localPlayer.Name) or "@unknown",Font=Enum.Font.GothamMedium,TextSize=11,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,BackgroundTransparency=1,Position=UDim2.fromOffset(105,47),Size=UDim2.new(1,-119,0,16),ZIndex=152,Parent=identityCard})
    local connectedBadge=make("Frame",{Position=UDim2.fromOffset(105,74),Size=UDim2.fromOffset(92,24),BackgroundColor3=C.BadgeIdle,ZIndex=152,Parent=identityCard})
    corner(connectedBadge,7)
    local connectedDot=make("Frame",{AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,9,0.5,0),Size=UDim2.fromOffset(6,6),BackgroundColor3=NOTIFICATION_STYLES.success.Color,ZIndex=153,Parent=connectedBadge})
    circle(connectedDot)
    make("TextLabel",{Text="CONNECTED",Font=Enum.Font.GothamBold,TextSize=8,TextColor3=C.TextGray,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(22,0),Size=UDim2.new(1,-27,1,0),ZIndex=153,Parent=connectedBadge})
    make("TextLabel",{Text="ACCOUNT DETAILS",Font=Enum.Font.GothamBold,TextSize=10,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(18,216),Size=UDim2.new(1,-36,0,16),ZIndex=152,Parent=profilePanel})
    local details=make("Frame",{Position=UDim2.fromOffset(16,240),Size=UDim2.new(1,-32,0,126),BackgroundColor3=C.Element,ZIndex=151,Parent=profilePanel})
    corner(details,11);stroke(details,C.Border)
    local function addProfileDetail(index,labelText,valueText)
        local y=(index-1)*42
        local row=make("Frame",{Position=UDim2.fromOffset(0,y),Size=UDim2.new(1,0,0,42),BackgroundTransparency=1,ZIndex=152,Parent=details})
        make("TextLabel",{Text=labelText,Font=Enum.Font.GothamMedium,TextSize=10,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(16,0),Size=UDim2.new(0.46,-16,1,0),ZIndex=153,Parent=row})
        local vl=make("TextLabel",{Text=valueText,Font=Enum.Font.GothamMedium,TextSize=11,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Right,TextTruncate=Enum.TextTruncate.AtEnd,BackgroundTransparency=1,Position=UDim2.new(0.46,0,0,0),Size=UDim2.new(0.54,-16,1,0),ZIndex=153,Parent=row})
        if index<3 then make("Frame",{Position=UDim2.new(0,16,1,-1),Size=UDim2.new(1,-32,0,1),BackgroundColor3=C.Border,ZIndex=153,Parent=row}) end
        return vl
    end
    addProfileDetail(1,"USER ID",   localPlayer and tostring(localPlayer.UserId) or "N/A")
    addProfileDetail(2,"ACCOUNT AGE",localPlayer and (tostring(localPlayer.AccountAge).." days") or "N/A")
    local pingLabel=addProfileDetail(3,"PING","-- ms")

    local performanceWidth     = math.max(236,tonumber(opts.PerformanceWidth) or 266)
    local performanceHeight    = math.max(260,tonumber(opts.PerformanceHeight) or 294)
    local panelGap             = math.max(8,  tonumber(opts.ProfilePanelGap) or 12)
    local performanceOpenPos   = UDim2.new(1,-(18+profileWidth+panelGap),1,-bottomMargin)
    local performanceClosedPos = UDim2.new(1,performanceWidth+36,1,-bottomMargin)

    local performancePanel=make("CanvasGroup",{Name="LivePerformance",AnchorPoint=Vector2.new(1,1),Position=performanceClosedPos,Size=UDim2.fromOffset(performanceWidth,performanceHeight),BackgroundColor3=C.CardBg,GroupTransparency=1,ClipsDescendants=true,ZIndex=149,Parent=screenGui})
    corner(performancePanel,14)
    local performanceHeader=make("Frame",{Size=UDim2.new(1,0,0,56),BackgroundTransparency=1,ZIndex=150,Parent=performancePanel})
    make("TextLabel",{Text=opts.PerformanceTitle or "LIVE PERFORMANCE",Font=Enum.Font.GothamBold,TextSize=12,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(16,11),Size=UDim2.new(1,-94,0,17),ZIndex=151,Parent=performanceHeader})
    make("TextLabel",{Text="Real-time frame tracker",Font=Enum.Font.Gotham,TextSize=9,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(16,31),Size=UDim2.new(1,-94,0,13),ZIndex=151,Parent=performanceHeader})
    local liveBadge=make("Frame",{AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,-14,0,14),Size=UDim2.fromOffset(58,20),BackgroundColor3=C.BadgeIdle,ZIndex=151,Parent=performanceHeader})
    corner(liveBadge,6)
    local liveDot=make("Frame",{AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,8,0.5,0),Size=UDim2.fromOffset(5,5),BackgroundColor3=NOTIFICATION_STYLES.success.Color,ZIndex=152,Parent=liveBadge})
    circle(liveDot)
    make("TextLabel",{Text="LIVE",Font=Enum.Font.GothamBold,TextSize=8,TextColor3=C.TextGray,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(19,0),Size=UDim2.new(1,-23,1,0),ZIndex=152,Parent=liveBadge})
    local fpsSummary=make("Frame",{Position=UDim2.fromOffset(14,58),Size=UDim2.new(1,-28,0,56),BackgroundColor3=C.Element,ZIndex=150,Parent=performancePanel})
    corner(fpsSummary,10);stroke(fpsSummary,C.Border)
    make("TextLabel",{Text="FPS",Font=Enum.Font.GothamBold,TextSize=8,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(12,8),Size=UDim2.new(0.5,-12,0,11),ZIndex=151,Parent=fpsSummary})
    local currentFpsLabel=make("TextLabel",{Text="--",Font=Enum.Font.GothamBold,TextSize=23,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(12,21),Size=UDim2.new(0.5,-12,0,28),ZIndex=151,Parent=fpsSummary})
    make("TextLabel",{Text="FRAME TIME",Font=Enum.Font.GothamBold,TextSize=8,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Right,BackgroundTransparency=1,Position=UDim2.new(0.5,0,0,8),Size=UDim2.new(0.5,-12,0,11),ZIndex=151,Parent=fpsSummary})
    local frameTimeLabel=make("TextLabel",{Text="-- ms",Font=Enum.Font.GothamMedium,TextSize=12,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Right,BackgroundTransparency=1,Position=UDim2.new(0.5,0,0,26),Size=UDim2.new(0.5,-12,0,18),ZIndex=151,Parent=fpsSummary})
    make("TextLabel",{Text="FRAME HISTORY",Font=Enum.Font.GothamBold,TextSize=9,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(16,126),Size=UDim2.new(1,-32,0,13),ZIndex=150,Parent=performancePanel})
    local graphCard=make("Frame",{Position=UDim2.fromOffset(14,145),Size=UDim2.new(1,-28,0,82),BackgroundColor3=C.Element,ClipsDescendants=true,ZIndex=150,Parent=performancePanel})
    corner(graphCard,10);stroke(graphCard,C.Border)
    local graphPlot=make("Frame",{Position=UDim2.fromOffset(10,9),Size=UDim2.new(1,-20,1,-18),BackgroundTransparency=1,ClipsDescendants=true,ZIndex=151,Parent=graphCard})
    for i=1,2 do make("Frame",{Position=UDim2.new(0,0,i/3,0),Size=UDim2.new(1,0,0,1),BackgroundColor3=C.Border,BackgroundTransparency=0.35,ZIndex=151,Parent=graphPlot}) end
    local maxFpsSamples=48; local fpsSamples={}
    local graphPixelSize=Vector2.new(math.max(2,math.floor(performanceWidth-48)),64)
    local graphImage=make("ImageLabel",{Name="ContinuousFpsLine",BackgroundTransparency=1,Position=UDim2.fromOffset(0,0),Size=UDim2.fromScale(1,1),ScaleType=Enum.ScaleType.Stretch,ResampleMode=Enum.ResamplerMode.Default,ZIndex=153,Parent=graphPlot})
    local fpsEditableImage=nil; local graphSegments={}; local editableImageReady=false; local supportsAA=true
    local function ensureFallback()
        if #graphSegments>0 then return end; graphImage.Visible=false
        for i=1,maxFpsSamples-1 do
            local seg=make("Frame",{Name="FL"..i,AnchorPoint=Vector2.new(0,0.5),Position=UDim2.fromOffset(0,0),Size=UDim2.fromOffset(0,1),BackgroundColor3=C.White,BorderSizePixel=0,Visible=false,ZIndex=153,Parent=graphPlot})
            graphSegments[i]=seg
        end
    end
    do
        local ok,ed=pcall(function()
            local img=AssetService:CreateEditableImage({Size=graphPixelSize})
            graphImage.ImageContent=Content.fromObject(img); return img
        end)
        if ok and ed then fpsEditableImage=ed; editableImageReady=true else ensureFallback() end
    end
    local function clearEG()
        if not editableImageReady or not fpsEditableImage then return false end
        local ok=pcall(function() fpsEditableImage:DrawRectangle(Vector2.zero,graphPixelSize,Color3.new(0,0,0),1,Enum.ImageCombineType.Overwrite) end)
        if not ok then editableImageReady=false; ensureFallback() end; return ok
    end
    local function drawEGL(a,b)
        if not editableImageReady or not fpsEditableImage then return false end
        if supportsAA then
            local ok=pcall(function() fpsEditableImage:DrawLine(a,b,C.White,0,Enum.ImageCombineType.Overwrite,Enum.AntiAliasing.Enabled) end)
            if ok then return true end; supportsAA=false
        end
        local ok=pcall(function() fpsEditableImage:DrawLine(a,b,C.White,0,Enum.ImageCombineType.Overwrite) end)
        if not ok then editableImageReady=false; ensureFallback() end; return ok
    end
    local statsStrip=make("Frame",{Position=UDim2.fromOffset(14,237),Size=UDim2.new(1,-28,0,43),BackgroundColor3=C.Element,ZIndex=150,Parent=performancePanel})
    corner(statsStrip,10);stroke(statsStrip,C.Border)
    local statValueLabels={}
    for i,sn in ipairs({"AVG","LOW","HIGH"}) do
        local sc=make("Frame",{Position=UDim2.new((i-1)/3,0,0,0),Size=UDim2.new(1/3,0,1,0),BackgroundTransparency=1,ZIndex=151,Parent=statsStrip})
        make("TextLabel",{Text=sn,Font=Enum.Font.GothamBold,TextSize=8,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Center,BackgroundTransparency=1,Position=UDim2.fromOffset(0,5),Size=UDim2.new(1,0,0,10),ZIndex=152,Parent=sc})
        statValueLabels[i]=make("TextLabel",{Text="--",Font=Enum.Font.GothamMedium,TextSize=10,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Center,BackgroundTransparency=1,Position=UDim2.fromOffset(0,19),Size=UDim2.new(1,0,0,15),ZIndex=152,Parent=sc})
    end
    local function redrawFpsGraph()
        local sc=#fpsSamples; local ps=graphPlot.AbsoluteSize
        if sc<2 or ps.X<=1 or ps.Y<=1 then
            if editableImageReady then clearEG() end
            for _,s in ipairs(graphSegments) do s.Visible=false end; return
        end
        local gm=60; for _,v in ipairs(fpsSamples) do gm=math.max(gm,v) end
        gm=math.max(30,math.ceil(gm/30)*30); local den=math.max(sc-1,1)
        if editableImageReady and clearEG() then
            local W=graphPixelSize.X; local H=graphPixelSize.Y
            local uW=math.max(1,W-2); local uH=math.max(1,H-6)
            for i=1,sc-1 do
                local pA=Vector2.new(1+((i-1)/den)*uW, 3+(1-math.clamp(fpsSamples[i]/gm,0,1))*uH)
                local pB=Vector2.new(1+(i/den)*uW,     3+(1-math.clamp(fpsSamples[i+1]/gm,0,1))*uH)
                if not drawEGL(pA,pB) then break end
            end
            if editableImageReady then return end
        end
        local uH=math.max(1,ps.Y-8)
        for i,seg in ipairs(graphSegments) do
            if i<sc then
                local x1=((i-1)/den)*ps.X; local x2=(i/den)*ps.X
                local y1=4+(1-math.clamp(fpsSamples[i]/gm,0,1))*uH
                local y2=4+(1-math.clamp(fpsSamples[i+1]/gm,0,1))*uH
                local dx=x2-x1; local dy=y2-y1; local len=math.sqrt(dx*dx+dy*dy)
                seg.Position=UDim2.fromOffset(x1,y1); seg.Size=UDim2.fromOffset(len+2,1)
                seg.Rotation=math.deg(math.atan2(dy,dx)); seg.Visible=true
            else seg.Visible=false end
        end
    end
    local function pushFpsSample(fps)
        fps=math.max(0,fps); table.insert(fpsSamples,fps)
        if #fpsSamples>maxFpsSamples then table.remove(fpsSamples,1) end
        local tot=0; local lo=math.huge; local hi=0
        for _,v in ipairs(fpsSamples) do tot=tot+v; lo=math.min(lo,v); hi=math.max(hi,v) end
        local avg=#fpsSamples>0 and tot/#fpsSamples or 0
        local ft=fps>0 and (1000/fps) or 0
        currentFpsLabel.Text=tostring(math.floor(fps+0.5))
        frameTimeLabel.Text=string.format("%.1f ms",ft)
        statValueLabels[1].Text=tostring(math.floor(avg+0.5))
        statValueLabels[2].Text=tostring(math.floor(lo+0.5))
        statValueLabels[3].Text=tostring(math.floor(hi+0.5))
        redrawFpsGraph()
    end
    toggleMusic, closeMusic = buildMusicPlayer({
        screenGui = screenGui, profileWidth = profileWidth, bottomMargin = bottomMargin,
        panelGap = panelGap, toggleBtn = musicToggleBtn, toggleIcon = musicToggleIcon,
        conns = musicConns, opts = opts,
    })

    -- ── ADMIN PANEL (only built for users in ADMIN_USER_IDS) ──────────────
    -- Slides in from the bottom-left whenever the profile panel opens.
    -- Lists every active client reported by the presence server, with a
    -- Disconnect button that queues that user for a server-side kick.
    local adminPanel             -- nil for non-admin users
    local adminListener          -- TagSystem listener, cleaned up on destroy
    local setAdminVisible        -- forward declare; called by setProfileVisible
    local adminEnabled = isAdminUser(localPlayer)

    if adminEnabled then
        local adminWidth        = math.max(320, tonumber(opts.AdminPanelWidth) or 368)
        local adminHeight       = math.max(280, tonumber(opts.AdminPanelHeight) or 416)
        local adminOpenPos      = UDim2.new(0, 18, 1, -bottomMargin)
        local adminClosedPos    = UDim2.new(0, -(adminWidth + 28), 1, -bottomMargin)

        adminPanel = make("CanvasGroup", {
            Name = "AdminPanel", AnchorPoint = Vector2.new(0, 1),
            Position = adminClosedPos, Size = UDim2.fromOffset(adminWidth, adminHeight),
            BackgroundColor3 = C.CardBg, GroupTransparency = 1,
            ClipsDescendants = true, ZIndex = 150, Parent = screenGui,
        })
        corner(adminPanel, 14)

        -- Header
        local adminHeader = make("Frame", { Size = UDim2.new(1, 0, 0, 65), BackgroundTransparency = 1, ZIndex = 151, Parent = adminPanel })
        make("TextLabel", {
            Text = "ADMIN PANEL", Font = Enum.Font.GothamBold, TextSize = 13,
            TextColor3 = C.White, TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1, Position = UDim2.fromOffset(18, 13),
            Size = UDim2.new(1, -100, 0, 18), ZIndex = 152, Parent = adminHeader,
        })
        make("TextLabel", {
            Text = "Active client management", Font = Enum.Font.Gotham, TextSize = 10,
            TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1, Position = UDim2.fromOffset(18, 34),
            Size = UDim2.new(1, -100, 0, 15), ZIndex = 152, Parent = adminHeader,
        })
        make("Frame", {
            Position = UDim2.new(0, 18, 1, -1), Size = UDim2.new(1, -36, 0, 1),
            BackgroundColor3 = C.Border, ZIndex = 151, Parent = adminHeader,
        })

        -- LIVE badge (top-right, mirrors the performance panel style)
        local liveBadge = make("Frame", {
            AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -16, 0, 14),
            Size = UDim2.fromOffset(64, 20), BackgroundColor3 = C.BadgeIdle,
            ZIndex = 152, Parent = adminHeader,
        })
        corner(liveBadge, 6)
        local liveDot = make("Frame", {
            AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 9, 0.5, 0),
            Size = UDim2.fromOffset(5, 5), BackgroundColor3 = NOTIFICATION_STYLES.success.Color,
            ZIndex = 153, Parent = liveBadge,
        })
        circle(liveDot)
        make("TextLabel", {
            Text = "LIVE", Font = Enum.Font.GothamBold, TextSize = 8,
            TextColor3 = C.TextGray, TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1, Position = UDim2.fromOffset(20, 0),
            Size = UDim2.new(1, -24, 1, 0), ZIndex = 153, Parent = liveBadge,
        })

        -- Summary card: count on the left, admin UID on the right
        local summaryCard = make("Frame", {
            Position = UDim2.fromOffset(16, 75), Size = UDim2.new(1, -32, 0, 56),
            BackgroundColor3 = C.Element, ZIndex = 151, Parent = adminPanel,
        })
        corner(summaryCard, 11); stroke(summaryCard, C.Border)
        make("TextLabel", {
            Text = "ACTIVE CLIENTS", Font = Enum.Font.GothamBold, TextSize = 8,
            TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1, Position = UDim2.fromOffset(12, 8),
            Size = UDim2.new(0.5, -12, 0, 11), ZIndex = 152, Parent = summaryCard,
        })
        local activeCountLabel = make("TextLabel", {
            Text = "0", Font = Enum.Font.GothamBold, TextSize = 23,
            TextColor3 = C.White, TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1, Position = UDim2.fromOffset(12, 21),
            Size = UDim2.new(0.5, -12, 0, 28), ZIndex = 152, Parent = summaryCard,
        })
        make("TextLabel", {
            Text = "ADMIN UID", Font = Enum.Font.GothamBold, TextSize = 8,
            TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Right,
            BackgroundTransparency = 1, Position = UDim2.new(0.5, 0, 0, 8),
            Size = UDim2.new(0.5, -12, 0, 11), ZIndex = 152, Parent = summaryCard,
        })
        make("TextLabel", {
            Text = localPlayer and tostring(localPlayer.UserId) or "N/A",
            Font = Enum.Font.GothamMedium, TextSize = 12, TextColor3 = C.White,
            TextXAlignment = Enum.TextXAlignment.Right, BackgroundTransparency = 1,
            Position = UDim2.new(0.5, 0, 0, 26),
            Size = UDim2.new(0.5, -12, 0, 18), ZIndex = 152, Parent = summaryCard,
        })

        -- List header + refresh button
        make("TextLabel", {
            Text = "CLIENT LIST", Font = Enum.Font.GothamBold, TextSize = 10,
            TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1, Position = UDim2.fromOffset(18, 142),
            Size = UDim2.fromOffset(140, 14), ZIndex = 151, Parent = adminPanel,
        })
        local refreshAdminBtn = make("TextButton", {
            Text = "", AutoButtonColor = false, AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, -16, 0, 149), Size = UDim2.fromOffset(22, 22),
            BackgroundColor3 = C.Element, ZIndex = 151, Parent = adminPanel,
        })
        corner(refreshAdminBtn, 7); stroke(refreshAdminBtn, C.Border)
        local refreshAdminIcon = make("ImageLabel", {
            Image = ICONS.refresh, ImageColor3 = C.TextGray, BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromOffset(13, 13), ZIndex = 152, Parent = refreshAdminBtn,
        })
        refreshAdminBtn.MouseEnter:Connect(function()
            tween(refreshAdminBtn, { BackgroundColor3 = C.ElementHover })
            tween(refreshAdminIcon, { ImageColor3 = C.White })
        end)
        refreshAdminBtn.MouseLeave:Connect(function()
            tween(refreshAdminBtn, { BackgroundColor3 = C.Element })
            tween(refreshAdminIcon, { ImageColor3 = C.TextGray })
        end)
        table.insert(noDrag, refreshAdminBtn)

        -- Scrolling list container + empty-state label (sibling so the
        -- UIListLayout doesn't move it around when the list is empty).
        local listFrame = make("ScrollingFrame", {
            Position = UDim2.fromOffset(16, 168),
            Size = UDim2.new(1, -32, 1, -184),
            BackgroundColor3 = C.Element, BorderSizePixel = 0,
            ScrollBarThickness = 3, ScrollBarImageColor3 = C.Border,
            CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y,
            ScrollingDirection = Enum.ScrollingDirection.Y,
            ZIndex = 151, Parent = adminPanel,
        })
        corner(listFrame, 11); stroke(listFrame, C.Border); pad(listFrame, 6, 6, 6, 6)
        make("UIListLayout", { Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder, Parent = listFrame })
        table.insert(noDrag, listFrame)

        local emptyLabel = make("TextLabel", {
            Text = "No active clients", Font = Enum.Font.GothamMedium, TextSize = 11,
            TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Center,
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(0.5, 0, 0, 168 + ((adminHeight - 184) / 2)),
            Size = UDim2.fromOffset(adminWidth - 64, 22),
            ZIndex = 152, Parent = adminPanel,
        })

        local adminRows = {}  -- userId -> row Frame

        local function buildRow(info, order)
            local userId = info.userId
            local isSelf = (localPlayer and userId == localPlayer.UserId) or false
            local displayName = (info.displayName ~= nil and info.displayName ~= "")
                and info.displayName or ("User " .. tostring(userId))
            local handle = (info.name ~= nil and info.name ~= "") and ("@" .. info.name) or "@unknown"

            local row = make("Frame", {
                Size = UDim2.new(1, 0, 0, 50), BackgroundColor3 = C.WindowBg,
                LayoutOrder = order, ZIndex = 152, Parent = listFrame,
            })
            corner(row, 9); stroke(row, C.Border)

            -- Avatar
            local avH = make("Frame", {
                Position = UDim2.fromOffset(7, 7), Size = UDim2.fromOffset(36, 36),
                BackgroundColor3 = C.Element, ZIndex = 153, Parent = row,
            })
            corner(avH, 8)
            local avImg = make("ImageLabel", {
                Image = "rbxthumb://type=AvatarHeadShot&id=" .. tostring(userId) .. "&w=150&h=150",
                BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1),
                ScaleType = Enum.ScaleType.Crop, ZIndex = 154, Parent = avH,
            })
            corner(avImg, 8)
            if isSelf then
                local ring = stroke(avH, C.Accent); ring.Transparency = 0.3
            end

            -- Reserve space on the right for the actions (JOIN + DISCONNECT
            -- buttons, or a 60px badge for self)
            local actionW = isSelf and 60 or 128
            local textRight = actionW + 18

            make("TextLabel", {
                Text = isSelf and (displayName .. "  (you)") or displayName,
                Font = Enum.Font.GothamBold, TextSize = 12, TextColor3 = C.White,
                TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
                BackgroundTransparency = 1, Position = UDim2.fromOffset(51, 6),
                Size = UDim2.new(1, -(51 + textRight), 0, 14),
                ZIndex = 153, Parent = row,
            })
            make("TextLabel", {
                Text = handle, Font = Enum.Font.Gotham, TextSize = 10,
                TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd, BackgroundTransparency = 1,
                Position = UDim2.fromOffset(51, 21),
                Size = UDim2.new(1, -(51 + textRight), 0, 12),
                ZIndex = 153, Parent = row,
            })
            make("TextLabel", {
                Text = "ID " .. tostring(userId),
                Font = Enum.Font.GothamMedium, TextSize = 9,
                TextColor3 = C.TextDim, TextXAlignment = Enum.TextXAlignment.Left,
                BackgroundTransparency = 1, Position = UDim2.fromOffset(51, 34),
                Size = UDim2.new(1, -(51 + textRight), 0, 11),
                ZIndex = 153, Parent = row,
            })

            if isSelf then
                local selfBadge = make("Frame", {
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -8, 0.5, 0),
                    Size = UDim2.fromOffset(54, 22),
                    BackgroundColor3 = C.Badge, ZIndex = 153, Parent = row,
                })
                corner(selfBadge, 6)
                make("TextLabel", {
                    Text = "YOU", Font = Enum.Font.GothamBold, TextSize = 9,
                    TextColor3 = C.Accent, TextXAlignment = Enum.TextXAlignment.Center,
                    BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1),
                    ZIndex = 154, Parent = selfBadge,
                })
            else
                local CLOSE_RED    = Color3.fromRGB(190, 60, 60)
                local CLOSE_RED_HI = Color3.fromRGB(212, 80, 80)
                local JOIN_GREEN    = Color3.fromRGB(60, 158, 90)
                local JOIN_GREEN_HI = Color3.fromRGB(80, 178, 108)

                -- JOIN button (teleports the admin into the target's server)
                local joinBtn = make("TextButton", {
                    Text = "JOIN", Font = Enum.Font.GothamBold, TextSize = 10,
                    TextColor3 = Color3.fromRGB(255, 255, 255), AutoButtonColor = false,
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -94, 0.5, 0),
                    Size = UDim2.fromOffset(44, 24),
                    BackgroundColor3 = JOIN_GREEN, ZIndex = 153, Parent = row,
                })
                corner(joinBtn, 6)
                joinBtn.MouseEnter:Connect(function() tween(joinBtn, { BackgroundColor3 = JOIN_GREEN_HI }) end)
                joinBtn.MouseLeave:Connect(function() tween(joinBtn, { BackgroundColor3 = JOIN_GREEN }) end)
                joinBtn.MouseButton1Click:Connect(function()
                    if joinBtn:GetAttribute("Busy") then return end
                    joinBtn:SetAttribute("Busy", true)
                    joinBtn.Text = "..."
                    task.spawn(function()
                        local ok, err = Library:JoinPlayer(info.placeId, info.jobId)
                        if not ok then
                            joinBtn.Text = "JOIN"
                            joinBtn:SetAttribute("Busy", nil)
                            if windowRef and windowRef.Notify then
                                windowRef:Notify({
                                    Title = "Join",
                                    Content = "Can't join " .. displayName .. ": " .. tostring(err),
                                    Type = "error", Duration = 5,
                                })
                            end
                        end
                        -- On success TeleportToPlaceInstance navigates away,
                        -- so there is nothing to reset here.
                    end)
                end)
                table.insert(noDrag, joinBtn)

                local dcBtn = make("TextButton", {
                    Text = "DISCONNECT", Font = Enum.Font.GothamBold, TextSize = 10,
                    TextColor3 = Color3.fromRGB(255, 255, 255), AutoButtonColor = false,
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -8, 0.5, 0),
                    Size = UDim2.fromOffset(78, 24),
                    BackgroundColor3 = CLOSE_RED, ZIndex = 153, Parent = row,
                })
                corner(dcBtn, 6)
                dcBtn.MouseEnter:Connect(function() tween(dcBtn, { BackgroundColor3 = CLOSE_RED_HI }) end)
                dcBtn.MouseLeave:Connect(function() tween(dcBtn, { BackgroundColor3 = CLOSE_RED }) end)
                dcBtn.MouseButton1Click:Connect(function()
                    if dcBtn:GetAttribute("Busy") then return end
                    dcBtn:SetAttribute("Busy", true)
                    dcBtn.Text = "..."
                    task.spawn(function()
                        local ok, err = Library:AdminDisconnect(userId)
                        if ok then
                            if windowRef and windowRef.Notify then
                                windowRef:Notify({
                                    Title = "Admin",
                                    Content = "Disconnect queued: " .. displayName,
                                    Type = "warning", Duration = 4,
                                })
                            end
                            -- Optimistically drop the row; the next poll
                            -- will reconcile anyway.
                            if row and row.Parent then row:Destroy() end
                            adminRows[userId] = nil
                        else
                            dcBtn.Text = "DISCONNECT"
                            dcBtn:SetAttribute("Busy", nil)
                            if windowRef and windowRef.Notify then
                                windowRef:Notify({
                                    Title = "Admin",
                                    Content = "Disconnect failed: " .. tostring(err),
                                    Type = "error", Duration = 5,
                                })
                            end
                        end
                    end)
                end)
                table.insert(noDrag, dcBtn)
            end
            return row
        end

        local adminIsOpen = false

        local function refreshAdminList(userInfos)
            userInfos = userInfos or TagSystem._userInfo or {}
            local merged = {}
            for id, info in pairs(userInfos) do merged[id] = info end
            if localPlayer and not merged[localPlayer.UserId] then
                merged[localPlayer.UserId] = {
                    userId      = localPlayer.UserId,
                    displayName = localPlayer.DisplayName,
                    name        = localPlayer.Name,
                }
            end

            local sorted = {}
            for _, info in pairs(merged) do table.insert(sorted, info) end
            table.sort(sorted, function(a, b)
                local aSelf = localPlayer and a.userId == localPlayer.UserId
                local bSelf = localPlayer and b.userId == localPlayer.UserId
                if aSelf ~= bSelf then return aSelf end
                local an = string.lower(tostring(a.displayName or ""))
                local bn = string.lower(tostring(b.displayName or ""))
                if an ~= bn then return an < bn end
                return a.userId < b.userId
            end)

            activeCountLabel.Text = tostring(#sorted)
            emptyLabel.Visible = (#sorted == 0)

            -- If the admin panel is closed, do NOT build rows (prevents lag with 300+ clients)
            if not adminIsOpen then
                return
            end

            -- Clear existing rows
            for uid, r in pairs(adminRows) do
                if r and r.Parent then r:Destroy() end
            end
            table.clear(adminRows)

            -- Cap rendered rows at 30 to completely prevent client lag
            local MAX_ROWS = 30
            for i = 1, math.min(#sorted, MAX_ROWS) do
                local info = sorted[i]
                local row = buildRow(info, i)
                adminRows[info.userId] = row
            end
        end

        refreshAdminBtn.MouseButton1Click:Connect(function()
            tween(refreshAdminIcon, { Rotation = refreshAdminIcon.Rotation + 360 })
            task.spawn(function()
                tagFetchAndUpdate()
                pcall(refreshAdminList, TagSystem._userInfo)
            end)
        end)

        -- Subscribe to live updates from the tag system poll loop.
        adminListener = TagSystem:OnUsersUpdated(function(userInfos)
            if not adminPanel or not adminPanel.Parent then return end
            task.spawn(function() pcall(refreshAdminList, userInfos) end)
        end)

        -- Initial render with whatever data we already have.
        refreshAdminList(TagSystem._userInfo)

        -- Trigger an immediate fetch in the background so the list populates
        -- without waiting for the next poll tick.
        task.spawn(function() pcall(tagFetchAndUpdate) end)

        function setAdminVisible(open, instant)
            adminIsOpen = open == true
            local pos = open and adminOpenPos or adminClosedPos
            local tr  = open and 0 or 1
            if instant then
                adminPanel.Position = pos
                adminPanel.GroupTransparency = tr
            else
                TweenService:Create(adminPanel, PROFILE_TWEEN, { Position = pos, GroupTransparency = tr }):Play()
            end
            if adminIsOpen then
                pcall(refreshAdminList, TagSystem._userInfo)
            end
        end
    end

    local function setProfileVisible(visible,instant)
        profileOpen=visible==true
        if not profileOpen and closeMusic then closeMusic(instant) end
        local tp=profileOpen and profileOpenPos or profileClosedPos
        local ep=profileOpen and performanceOpenPos or performanceClosedPos
        local tr=profileOpen and 0 or 1
        if instant then
            profilePanel.Position=tp; profilePanel.GroupTransparency=tr
            performancePanel.Position=ep; performancePanel.GroupTransparency=tr
        else
            TweenService:Create(profilePanel,PROFILE_TWEEN,{Position=tp,GroupTransparency=tr}):Play()
            TweenService:Create(performancePanel,PROFILE_TWEEN,{Position=ep,GroupTransparency=tr}):Play()
        end
        if setAdminVisible then setAdminVisible(profileOpen, instant) end
        if windowRef then windowRef._profileOpen=profileOpen end; return profileOpen
    end
    if localPlayer then
        task.spawn(function()
            local ok,img=pcall(function() return Players:GetUserThumbnailAsync(localPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420) end)
            if ok and avatar and avatar.Parent then avatar.Image=img end
        end)
    end
    task.spawn(function()
        while screenGui and screenGui.Parent do
            local txt="N/A"
            local ok,val=pcall(function() return Stats.Network.ServerStatsItem["Data Ping"]:GetValue() end)
            if ok and type(val)=="number" then txt=tostring(math.floor(val+0.5)).." ms" end
            if pingLabel and pingLabel.Parent then pingLabel.Text=txt end; task.wait(1)
        end
    end)

    windowRef = setmetatable({
        ScreenGui=screenGui, Main=main, Container=container, Logo=brandLogo, Watermark=watermark,
        _logoAsset=logoAsset, _hotbar=hotbar, _hotbarInner=hotbarInner, _content=content,
        _notificationHolder=notificationHolder, _notificationOrder=0,
        _profilePanel=profilePanel, _performancePanel=performancePanel,
        _fpsEditableImage=fpsEditableImage, _profileKey=profileKey,
        _profileOpen=profileOpen, _setProfileVisible=setProfileVisible,
        _connections={}, _noDrag=noDrag, _tabs={}, _activeTab=nil,
        _containerScale=containerScale, _uiVisible=true, _toggleKey=toggleKey,
        _destroyed=false,
    }, Window)
    windowRef.Notify=function(s,m) return Window.Notify(windowRef,s==windowRef and m or s) end
    windowRef.Notification=windowRef.Notify
    if dragConn then table.insert(windowRef._connections, dragConn) end
    for _,c in ipairs(musicConns) do table.insert(windowRef._connections, c) end

    -- Clean up the admin panel's TagSystem listener on Window:Destroy()
    if adminListener then
        table.insert(windowRef._connections, {
            Disconnect = function() TagSystem:RemoveListener(adminListener) end,
        })
    end

    -- ── PERSISTENCE GUARD ─────────────────────────────────────────────────
    -- Some games / anti-cheats strip GUIs (from CoreGui or PlayerGui) when the
    -- character respawns, which made the whole window — and the minimized
    -- burger button in the top corner — vanish on death. Re-parent the window
    -- back to a safe host whenever it gets detached, so it never disappears.
    -- The burger button lives under screenGui too, so it returns with it.
    local function resolveHost()
        local host
        if typeof(opts.Parent) == "Instance" then
            host = opts.Parent
        else
            pcall(function() host = (gethui and gethui()) or game:GetService("CoreGui") end)
        end
        if not host then host = Players.LocalPlayer:WaitForChild("PlayerGui") end
        return host
    end
    local guardConn
    guardConn = screenGui.AncestryChanged:Connect(function(_, parent)
        -- parent == nil means it was detached from the DataModel (e.g. on death),
        -- not an intentional Destroy (which sets windowRef._destroyed).
        if parent ~= nil then return end
        if windowRef and windowRef._destroyed then return end
        task.defer(function()
            if windowRef and windowRef._destroyed then return end
            if screenGui.Parent ~= nil then return end
            pcall(function() screenGui.Parent = resolveHost() end)
        end)
    end)
    table.insert(windowRef._connections, guardConn)

    local ffc=0; local fe=0
    local fpsConn=RunService.RenderStepped:Connect(function(dt)
        if not screenGui or not screenGui.Parent then return end
        ffc=ffc+1; fe=fe+dt
        if fe>=0.25 then pushFpsSample(ffc/fe); ffc=0; fe=0 end
    end)
    table.insert(windowRef._connections,fpsConn)
    local pkConn=UserInputService.InputBegan:Connect(function(input,gp)
        if not loadingComplete or gp or UserInputService:GetFocusedTextBox() then return end
        if input.KeyCode==profileKey and Library._windowObjects[#Library._windowObjects]==windowRef then
            windowRef:ToggleProfile()
        end
    end)
    table.insert(windowRef._connections,pkConn)
    if toggleKey then
        local tkConn=UserInputService.InputBegan:Connect(function(input,gp)
            if not loadingComplete or gp or UserInputService:GetFocusedTextBox() then return end
            if input.KeyCode==toggleKey then windowRef:ToggleUI() end
        end)
        table.insert(windowRef._connections,tkConn)
    end

    -- ── MOBILE / RESPONSIVE SCALING ──────────────────────────────────────
    -- The side panels live directly under the ScreenGui (not the container),
    -- so each gets its own UIScale that we drive together with the container.
    local function ensureScale(inst)
        if not inst then return nil end
        local us = inst:FindFirstChildOfClass("UIScale")
        if not us then us = make("UIScale", { Scale = 1, Parent = inst }) end
        return us
    end
    local musicPanel = screenGui:FindFirstChild("MusicPlayer")
    local scaleList = {}
    for _, inst in ipairs({ profilePanel, performancePanel, musicPanel, burgerButton, adminPanel }) do
        local us = ensureScale(inst); if us then table.insert(scaleList, us) end
    end
    local userScale = tonumber(opts.Scale) or 1

    -- Safe-area inset (notch / status bar). The ScreenGui ignores the GUI
    -- inset, so we account for it manually to keep the hub fully on-screen.
    local safeInset = Vector2.new(0, 0)
    pcall(function()
        local ins = GuiService:GetGuiInset()
        if ins then safeInset = ins end
    end)

    local function getViewport()
        local cam = Workspace.CurrentCamera
        if cam and cam.ViewportSize and cam.ViewportSize.X > 0 then
            return cam.ViewportSize
        end
        local ok, res = pcall(function() return GuiService:GetScreenResolution() end)
        if ok and res and res.X and res.X > 0 then return res end
        return Vector2.new(1280, 720)
    end

    local function applyResponsiveScale()
        local vp = getViewport()
        local s = 1
        if isMobile then
            local availX = math.max(1, vp.X - safeInset.X)
            local availY = math.max(1, vp.Y - safeInset.Y)
            local sx = (availX * 0.96) / math.max(1, containerW)
            local sy = (availY * 0.90) / math.max(1, containerH)
            -- Never upscale past 1 so the raster icons stay crisp; the lower
            -- clamp keeps text readable instead of shrinking it to nothing.
            s = math.clamp(math.min(sx, sy, 1), 0.36, 1)
        end
        s = s * userScale
        containerScale.Scale = s
        for _, us in ipairs(scaleList) do us.Scale = s end
    end
    applyResponsiveScale()
    windowRef._setScale = function(scale)
        userScale = math.clamp(tonumber(scale) or 1, 0.5, 1.5)
        applyResponsiveScale()
        return userScale
    end
    windowRef._getScale = function() return userScale end
    do
        local cam = Workspace.CurrentCamera
        if cam then
            table.insert(windowRef._connections, cam:GetPropertyChangedSignal("ViewportSize"):Connect(applyResponsiveScale))
        end
    end

    -- ── UI VISIBILITY TOGGLE (keyboard-free; drives the floating button) ──
    local uiHidden = false
    local function setUIVisible(v)
        v = (v ~= false)
        uiHidden = not v
        container.Visible = v
        hotbar.Visible = v and not minimized
        if burgerButton then burgerButton.Visible = v and minimized end
        windowRef._uiVisible = v
        return v
    end
    windowRef._setUIVisible = setUIVisible

    -- On mobile there is no toggle key, so add a draggable floating button.
    if isMobile then
        local fab = make("TextButton", {
            Name = "OxideMobileToggle", Text = "", AutoButtonColor = false,
            AnchorPoint = Vector2.new(0, 0), Position = UDim2.fromOffset(14, safeInset.Y + 14),
            Size = UDim2.fromOffset(46, 46), BackgroundColor3 = C.CardBg,
            ZIndex = 60, Parent = screenGui,
        })
        corner(fab, 12); stroke(fab, C.Border)
        make("ImageLabel", { Image = logoAsset, BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(26, 26), ScaleType = Enum.ScaleType.Fit, ZIndex = 61, Parent = fab })
        local fabDrag = makeDraggable(fab, {})
        if fabDrag then table.insert(windowRef._connections, fabDrag) end
        -- distinguish a tap (toggle) from a drag (move) using a movement threshold
        local downPos
        fab.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                downPos = input.Position
            end
        end)
        fab.InputEnded:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1) and downPos then
                local moved = (input.Position - downPos).Magnitude
                downPos = nil
                if moved < 8 then setUIVisible(uiHidden) end
            end
        end)
    end

    table.insert(Library._windowObjects,windowRef)
    if opts.Visible==false then screenGui.Enabled=false end

    if loadingEnabled and loadingLayer then
        task.defer(function()
            while not loadingMotionComplete and screenGui.Parent do RunService.Heartbeat:Wait() end
            if not screenGui.Parent or not loadingLayer.Parent then return end
            main.Visible=true; hotbar.Visible=true
            TweenService:Create(mainRevealScale,TweenInfo.new(0.3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{Scale=1}):Play()
            local fo=TweenService:Create(loadingLayer,TweenInfo.new(0.32,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut),{GroupTransparency=1})
            local ce=loadingContent and TweenService:Create(loadingContent,TweenInfo.new(0.3,Enum.EasingStyle.Quart,Enum.EasingDirection.In),{Position=UDim2.new(0.5,0,0.5,-18),GroupTransparency=1})
            local le=loadingLogoScale and TweenService:Create(loadingLogoScale,TweenInfo.new(0.28,Enum.EasingStyle.Quart,Enum.EasingDirection.In),{Scale=0.84})
            local te=loadingTitleScale and TweenService:Create(loadingTitleScale,TweenInfo.new(0.28,Enum.EasingStyle.Quart,Enum.EasingDirection.In),{Scale=0.95})
            local pe
            if loadingProgressFill and loadingProgressFill.Parent then
                loadingProgressFill.AnchorPoint=Vector2.new(0.5,0.5); loadingProgressFill.Position=UDim2.fromScale(0.5,0.5)
                pe=TweenService:Create(loadingProgressFill,TweenInfo.new(0.2,Enum.EasingStyle.Quart,Enum.EasingDirection.In),{Size=UDim2.new(0,0,1,0)})
            end
            fo:Play(); if ce then ce:Play() end; if le then le:Play() end; if te then te:Play() end; if pe then pe:Play() end
            if loadingBlur then TweenService:Create(loadingBlur,TweenInfo.new(0.32,Enum.EasingStyle.Quart,Enum.EasingDirection.InOut),{Size=0}):Play() end
            if loadingSound then TweenService:Create(loadingSound,TweenInfo.new(0.3),{Volume=0}):Play() end
            fo.Completed:Wait()
            if loadingLayer and loadingLayer.Parent then loadingLayer:Destroy() end
            pcall(function() if loadingBlur then loadingBlur:Destroy() end end)
            pcall(function() if loadingSound then loadingSound:Stop(); loadingSound:Destroy() end end)
            if not screenGui.Parent then return end; loadingComplete=true
        end)
    end

    local cfgName = opts.ConfigName or (opts.Name and tostring(opts.Name):gsub("[^%w%-_]", ""):lower()) or tostring(game.PlaceId)
    Library._currentConfigName = cfgName

    if opts.AutoLoad ~= false then
        task.defer(function()
            task.wait(0.6)
            if hasFileApi() then
                pcall(function() Library:LoadConfig(cfgName) end)
            end
        end)
    end

    return windowRef
end

-- ════════════════════════════════════════════════════════════════════════════
-- WINDOW METHODS
-- ════════════════════════════════════════════════════════════════════════════
function Window:SetState(key, val) return Library:SetState(key, val) end
function Window:GetState(key, default) return Library:GetState(key, default) end
function Window:BindState(key, fn) return Library:BindState(key, fn) end
function Window:Get(flag, default) return Library:Get(flag, default) end
function Window:Set(flag, value) return Library:Set(flag, value) end

function Window:SetVisible(v) self.ScreenGui.Enabled = v==true end
function Window:Toggle() self.ScreenGui.Enabled = not self.ScreenGui.Enabled; return self.ScreenGui.Enabled end
function Window:SetUIVisible(v)
    if self._setUIVisible then return self._setUIVisible(v==true) end
    self.ScreenGui.Enabled = v==true; return v==true
end
function Window:ToggleUI() return self:SetUIVisible(not self._uiVisible) end
function Window:SetScale(value)
    local scale = math.clamp(tonumber(value) or 1, 0.5, 1.5)
    if self._setScale then return self._setScale(scale) end
    if self._containerScale then self._containerScale.Scale = scale end
    return scale
end
function Window:GetScale()
    if self._getScale then return self._getScale() end
    return self._containerScale and self._containerScale.Scale or 1
end
function Window:SetProfileVisible(v)
    if not self._setProfileVisible then return false end
    self._profileOpen=self._setProfileVisible(v==true); return self._profileOpen
end
function Window:ToggleProfile() return self:SetProfileVisible(not self._profileOpen) end
function Window:SetLogo(id)
    self._logoAsset=normalizeAssetId(id)
    if self.Logo then self.Logo.Image=self._logoAsset end
    if self.Watermark then self.Watermark.Image=self._logoAsset end
    return self._logoAsset
end

function Window:Notify(opts)
    if type(opts)=="string" then opts={Content=opts} end; opts=opts or {}
    local holder=self._notificationHolder; if not holder or not holder.Parent then return nil end
    local style=getNotificationStyle(opts.Type)
    local dur=tonumber(opts.Duration); if dur==nil then dur=4 end; dur=math.max(dur,0)
    self._notificationOrder=self._notificationOrder+1
    local title=tostring(opts.Title or style.Name)
    local body =tostring(opts.Content or opts.Description or opts.Message or "Notification")
    local slot=make("Frame",{Name="NotificationSlot",Size=UDim2.new(1,0,0,62),BackgroundTransparency=1,LayoutOrder=self._notificationOrder,ZIndex=200,Parent=holder})
    local card=make("CanvasGroup",{Name=style.Name.."Notification",AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,12,0,0),Size=UDim2.fromScale(1,1),BackgroundColor3=C.White,GroupTransparency=1,ClipsDescendants=true,ZIndex=201,Parent=slot})
    corner(card,6);stroke(card,C.Border)
    -- Same look as the brand card: muted blue-to-gray fade (blue at the
    -- bottom) plus the diagonal blue-white shimmer sweep. The frame must be
    -- white because a UIGradient multiplies instead of replacing.
    card:SetAttribute("Theme_BackgroundColor3", nil)
    local cardGrad=make("UIGradient",{Rotation=90,Parent=card})
    cardGrad:SetAttribute("ThemeGradient_Top","CardBg")
    cardGrad:SetAttribute("ThemeGradient_Bottom","Accent")
    cardGrad:SetAttribute("ThemeGradient_Strength",0.5)
    refreshVerticalFade(cardGrad)
    local shimmer=make("Frame",{Name="Shimmer",Size=UDim2.fromScale(1,1),ZIndex=0,BackgroundColor3=Color3.fromRGB(210,225,255),Parent=card})
    corner(shimmer,6)
    local shimmerGrad=make("UIGradient",{
        Rotation=45,
        Color=ColorSequence.new({
            ColorSequenceKeypoint.new(0.00, C.Accent),
            ColorSequenceKeypoint.new(0.42, C.Accent),
            ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(0.58, C.Accent),
            ColorSequenceKeypoint.new(1.00, C.Accent),
        }),
        Transparency=NumberSequence.new({
            NumberSequenceKeypoint.new(0.00, 1.0),
            NumberSequenceKeypoint.new(0.38, 1.0),
            NumberSequenceKeypoint.new(0.50, 0.55),
            NumberSequenceKeypoint.new(0.62, 1.0),
            NumberSequenceKeypoint.new(1.00, 1.0),
        }),
        Parent=shimmer,
    })
    shimmerGrad:SetAttribute("ThemeGradient_Edge","Accent")
    -- Each notification drives its own shimmer sweep (same cycle as the
    -- window glow), disconnecting when the card is dismissed.
    local nGlowT=0
    local shimmerConn=RunService.RenderStepped:Connect(function(dt)
        if not card or not card.Parent then if shimmerConn then shimmerConn:Disconnect() end return end
        nGlowT=(nGlowT+dt*0.35)%1
        shimmerGrad.Offset=Vector2.new(nGlowT*2-1,0)
    end)
    -- Style accent: short colored bar on the left edge
    local accentBar=make("Frame",{Position=UDim2.fromOffset(0,10),Size=UDim2.fromOffset(3,42),BackgroundColor3=style.Color,ZIndex=202,Parent=card})
    corner(accentBar,2)
    -- Style icon chip
    local iconHolder=make("Frame",{Position=UDim2.fromOffset(14,17),Size=UDim2.fromOffset(28,28),BackgroundColor3=style.Color,BackgroundTransparency=0.88,ZIndex=202,Parent=card})
    corner(iconHolder,8)
    make("ImageLabel",{Image=style.Icon or ICONS.alert,ImageColor3=style.Color,BackgroundTransparency=1,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(15,15),ScaleType=Enum.ScaleType.Fit,ZIndex=203,Parent=iconHolder})
    make("TextLabel",{Text=title,Font=Enum.Font.GothamBold,TextSize=12,TextColor3=style.Color,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,BackgroundTransparency=1,Position=UDim2.fromOffset(52,8),Size=UDim2.new(1,-84,0,16),ZIndex=202,Parent=card})
    make("TextLabel",{Text=body,Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.TextGray,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,TextWrapped=true,BackgroundTransparency=1,Position=UDim2.fromOffset(52,27),Size=UDim2.new(1,-64,0,26),ZIndex=202,Parent=card})
    local xb=make("TextButton",{Text="×",Font=Enum.Font.Gotham,TextSize=14,TextColor3=C.TextDim,AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,-7,0,5),Size=UDim2.fromOffset(20,20),BackgroundTransparency=1,ZIndex=204,Parent=card})
    local closed=false; local handle={}
    local function close(reason)
        if closed then return end; closed=true
        TweenService:Create(card,NOTIFICATION_TWEEN,{Position=UDim2.new(1,12,0,0),GroupTransparency=1}):Play()
        task.delay(0.2,function() if slot and slot.Parent then slot:Destroy() end end)
        fire(opts.Callback or opts.OnClose,reason or "closed")
    end
    function handle:Close() close("manual") end
    function handle:IsOpen() return not closed end
    xb.MouseEnter:Connect(function() tween(xb,{TextColor3=C.White}) end)
    xb.MouseLeave:Connect(function() tween(xb,{TextColor3=C.TextDim}) end)
    xb.MouseButton1Click:Connect(function() close("manual") end)
    TweenService:Create(card,NOTIFICATION_TWEEN,{Position=UDim2.new(1,0,0,0),GroupTransparency=0}):Play()
    if dur>0 then task.delay(dur,function() close("timeout") end) end; return handle
end

function Window:Destroy()
    self._destroyed = true
    for _,c in ipairs(self._connections or {}) do pcall(function() c:Disconnect() end) end
    table.clear(self._connections or {})
    if self._fpsEditableImage then pcall(function() self._fpsEditableImage:Destroy() end); self._fpsEditableImage=nil end
    local i=table.find(Library._windows,self.ScreenGui); if i then table.remove(Library._windows,i) end
    local j=table.find(Library._windowObjects,self);     if j then table.remove(Library._windowObjects,j) end
    if self.ScreenGui then self.ScreenGui:Destroy() end
    if #Library._windowObjects == 0 then stopTagSystem() end
end

-- ════════════════════════════════════════════════════════════════════════════
-- TAB SYSTEM
-- ════════════════════════════════════════════════════════════════════════════
function Window:_selectTab(tab)
    if self._activeTab==tab then return end
    local prev=self._activeTab; self._activeTab=tab
    if prev then
        prev._page.Visible=false
        tween(prev._hBtn,{BackgroundColor3=C.HotbarBg})
        tween(prev._hLabel,{TextColor3=C.TextGray})
        if prev._hDot then tween(prev._hDot,{BackgroundTransparency=1}) end
        if prev._hIconElement then
            if prev._hIconElement:IsA("ImageLabel") then tween(prev._hIconElement,{ImageColor3=C.TextGray})
            elseif prev._hIconElement:IsA("TextLabel") then tween(prev._hIconElement,{TextColor3=C.TextGray}) end
        end
    end
    tab._page.Visible=true
    tween(tab._hBtn,{BackgroundColor3=C.HotbarActive})
    tween(tab._hLabel,{TextColor3=C.White})
    if tab._hDot then tween(tab._hDot,{BackgroundTransparency=0}) end
    if tab._hIconElement then
        if tab._hIconElement:IsA("ImageLabel") then tween(tab._hIconElement,{ImageColor3=C.White})
        elseif tab._hIconElement:IsA("TextLabel") then tween(tab._hIconElement,{TextColor3=C.White}) end
    end
end

function Window:AddTab(opts)
    if type(opts)=="string" then opts={Name=opts} end
    opts=opts or {}
    local name=opts.Name or "Tab"
    local iconInput = opts.Icon
    local win=self

    local iconType, iconValue = resolveIcon(iconInput)
    if not iconType then
        local autoKey = string.lower(name)
        if ICONS[autoKey] then iconType="image"; iconValue=ICONS[autoKey]
        else iconType="text"; iconValue=string.upper(string.sub(name,1,1)) end
    end

    local hBtn=make("TextButton",{
        Text="", AutomaticSize=Enum.AutomaticSize.X,
        Size=UDim2.new(0,0,1,0),
        BackgroundColor3=C.HotbarBg,
        ZIndex=5, Parent=self._hotbarInner,
    })
    hBtn.LayoutOrder=#self._hotbarInner:GetChildren()
    corner(hBtn,7); pad(hBtn,0,0,12,12)
    table.insert(win._noDrag,hBtn)

    local hRow=make("Frame",{BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.new(0,0,1,0),ZIndex=5,Parent=hBtn})
    make("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,6),Parent=hRow})

    local iconBadge=make("Frame",{Size=UDim2.fromOffset(20,20),BackgroundTransparency=1,LayoutOrder=1,ZIndex=6,Parent=hRow})
    local hIconElement = createIconElement(iconBadge, iconType, iconValue, 18, 7)

    local hLabel=make("TextLabel",{
        Text=name,Font=Enum.Font.GothamMedium,TextSize=12,
        TextColor3=C.TextGray,BackgroundTransparency=1,
        AutomaticSize=Enum.AutomaticSize.X,
        Size=UDim2.new(0,0,1,0),LayoutOrder=2,ZIndex=6,Parent=hRow,
    })

    local hDot=make("Frame",{
        AnchorPoint=Vector2.new(0.5,0), Position=UDim2.new(0.5,0,1,4),
        Size=UDim2.fromOffset(4,4), BackgroundColor3=C.Accent,
        BackgroundTransparency=1, ZIndex=6, Parent=hBtn,
    })
    circle(hDot)

    local page=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Visible=false,Parent=self._content})
    local header=make("Frame",{Size=UDim2.new(1,0,0,88),BackgroundTransparency=1,Parent=page})

    local headerBadge=make("Frame",{Size=UDim2.fromOffset(32,32),Position=UDim2.fromOffset(14,14),BackgroundTransparency=1,Parent=header})
    local headerIconElement = createIconElement(headerBadge, iconType, iconValue, 26, 3)
    if headerIconElement:IsA("ImageLabel") then headerIconElement.ImageColor3=C.White
    elseif headerIconElement:IsA("TextLabel") then headerIconElement.TextColor3=C.White end

    make("TextLabel",{Text=name,Font=Enum.Font.GothamBold,TextSize=14,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(54,17),Size=UDim2.new(1,-70,0,14),Parent=header})
    make("TextLabel",{Text=opts.Subtitle or "",Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(54,33),Size=UDim2.new(1,-70,0,12),Parent=header})
    local pillBar=make("Frame",{Position=UDim2.fromOffset(16,54),Size=UDim2.new(1,-32,0,24),BackgroundTransparency=1,ClipsDescendants=true,Parent=header})
    local pillScrollLeft=make("TextButton",{Text="‹",Font=Enum.Font.GothamBold,TextSize=18,TextColor3=C.TextGray,Size=UDim2.fromOffset(20,24),BackgroundColor3=C.WindowBg,Visible=false,Parent=pillBar})
    corner(pillScrollLeft,6); table.insert(win._noDrag,pillScrollLeft)
    local pillScroll=make("ScrollingFrame",{Position=UDim2.fromOffset(24,0),Size=UDim2.new(1,-48,1,0),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=0,ScrollingDirection=Enum.ScrollingDirection.X,AutomaticCanvasSize=Enum.AutomaticSize.X,CanvasSize=UDim2.new(),ClipsDescendants=true,Parent=pillBar})
    table.insert(win._noDrag,pillScroll)
    local pillRow=make("Frame",{AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.new(0,0,1,0),BackgroundTransparency=1,Parent=pillScroll})
    make("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,8),Parent=pillRow})
    local pillScrollRight=make("TextButton",{Text="›",Font=Enum.Font.GothamBold,TextSize=18,TextColor3=C.TextGray,AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,0,0,0),Size=UDim2.fromOffset(20,24),BackgroundColor3=C.WindowBg,Visible=false,Parent=pillBar})
    corner(pillScrollRight,6); table.insert(win._noDrag,pillScrollRight)
    make("Frame",{Position=UDim2.new(0,0,1,-1),Size=UDim2.new(1,0,0,1),BackgroundColor3=C.Border,Parent=header})
    local pagesHolder=make("Frame",{Position=UDim2.fromOffset(0,88),Size=UDim2.new(1,0,1,-88),BackgroundTransparency=1,Parent=page})

    local tab=setmetatable({
        _window=win,
        _hBtn=hBtn,_hLabel=hLabel,_hDot=hDot,_hIconElement=hIconElement,
        _page=page,_pillBar=pillBar,_pillScroll=pillScroll,_pillRow=pillRow,
        _pillScrollLeft=pillScrollLeft,_pillScrollRight=pillScrollRight,
        _pagesHolder=pagesHolder,
        _subTabs={},_activeSub=nil,
    },Tab)
    tab:_setupPillScroll()

    hBtn.MouseButton1Click:Connect(function() win:_selectTab(tab) end)
    hBtn.MouseEnter:Connect(function()
        if win._activeTab~=tab then tween(hBtn,{BackgroundColor3=C.HotbarHover}) end
    end)
    hBtn.MouseLeave:Connect(function()
        tween(hBtn,{BackgroundColor3=win._activeTab==tab and C.HotbarActive or C.HotbarBg})
    end)

    table.insert(self._tabs,tab)
    if not self._activeTab then self:_selectTab(tab) end
    return tab
end

-- ════════════════════════════════════════════════════════════════════════════
-- SUBTAB + ELEMENTS
-- ════════════════════════════════════════════════════════════════════════════
local PILL_SCROLL_STEP = 72

function Tab:_updatePillScroll()
    local scroll = self._pillScroll
    if not scroll then return end
    task.defer(function()
        if not scroll.Parent then return end
        local maxX = math.max(0, scroll.AbsoluteCanvasSize.X - scroll.AbsoluteWindowSize.X)
        local canScroll = maxX > 2
        if self._pillScrollLeft then
            self._pillScrollLeft.Visible = canScroll
            paint(self._pillScrollLeft, "TextColor3", scroll.CanvasPosition.X > 2 and "White" or "TextDim", true)
        end
        if self._pillScrollRight then
            self._pillScrollRight.Visible = canScroll
            paint(self._pillScrollRight, "TextColor3", scroll.CanvasPosition.X < maxX - 2 and "White" or "TextDim", true)
        end
        if not canScroll then
            scroll.CanvasPosition = Vector2.new(0, 0)
        end
    end)
end

function Tab:_scrollPillBy(delta)
    local scroll = self._pillScroll
    if not scroll then return end
    local maxX = math.max(0, scroll.AbsoluteCanvasSize.X - scroll.AbsoluteWindowSize.X)
    scroll.CanvasPosition = Vector2.new(math.clamp(scroll.CanvasPosition.X + delta, 0, maxX), 0)
    self:_updatePillScroll()
end

function Tab:_scrollPillIntoView(pill)
    local scroll = self._pillScroll
    if not scroll or not pill or not pill.Parent then return end
    task.defer(function()
        if not pill.Parent or not scroll.Parent then return end
        local maxX = math.max(0, scroll.AbsoluteCanvasSize.X - scroll.AbsoluteWindowSize.X)
        local relLeft = pill.AbsolutePosition.X - scroll.AbsolutePosition.X + scroll.CanvasPosition.X
        local relRight = relLeft + pill.AbsoluteSize.X
        local viewLeft = scroll.CanvasPosition.X
        local viewRight = viewLeft + scroll.AbsoluteWindowSize.X
        local nextX = scroll.CanvasPosition.X
        if relLeft < viewLeft + 4 then
            nextX = relLeft - 8
        elseif relRight > viewRight - 4 then
            nextX = relRight - scroll.AbsoluteWindowSize.X + 8
        end
        scroll.CanvasPosition = Vector2.new(math.clamp(nextX, 0, maxX), 0)
        self:_updatePillScroll()
    end)
end

function Tab:_setupPillScroll()
    local scroll = self._pillScroll
    local left = self._pillScrollLeft
    local right = self._pillScrollRight
    if not scroll then return end

    if left then
        left.MouseButton1Click:Connect(function() self:_scrollPillBy(-PILL_SCROLL_STEP) end)
        left.MouseEnter:Connect(function() tween(left, {BackgroundColor3=C.NavHover}) end)
        left.MouseLeave:Connect(function() tween(left, {BackgroundColor3=C.WindowBg}) end)
    end
    if right then
        right.MouseButton1Click:Connect(function() self:_scrollPillBy(PILL_SCROLL_STEP) end)
        right.MouseEnter:Connect(function() tween(right, {BackgroundColor3=C.NavHover}) end)
        right.MouseLeave:Connect(function() tween(right, {BackgroundColor3=C.WindowBg}) end)
    end

    scroll:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function() self:_updatePillScroll() end)
    scroll:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function() self:_updatePillScroll() end)
    scroll:GetPropertyChangedSignal("CanvasPosition"):Connect(function() self:_updatePillScroll() end)

    trackConn(self._window, UserInputService.InputChanged:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseWheel then return end
        if not scroll.Visible or not self._page.Visible then return end
        local mouse = UserInputService:GetMouseLocation()
        local inset = GuiService:GetGuiInset()
        local pos = Vector2.new(mouse.X - inset.X, mouse.Y - inset.Y)
        local sPos, sSize = scroll.AbsolutePosition, scroll.AbsoluteSize
        if pos.X >= sPos.X and pos.X <= sPos.X + sSize.X and pos.Y >= sPos.Y and pos.Y <= sPos.Y + sSize.Y then
            self:_scrollPillBy(-input.Position.Z * PILL_SCROLL_STEP * 0.5)
        end
    end))
end

function Tab:_selectSub(sub)
    if self._activeSub==sub then return end
    local prev=self._activeSub; self._activeSub=sub
    if prev then prev._page.Visible=false; paint(prev._pill,"BackgroundColor3","WindowBg"); paint(prev._pill,"TextColor3","TextGray") end
    sub._page.Visible=true; paint(sub._pill,"BackgroundColor3","PillActive"); paint(sub._pill,"TextColor3","White")
    self:_scrollPillIntoView(sub._pill)
end

function Tab:AddSubTab(name)
    name=tostring(name or "General"); local tab=self
    local pill=make("TextButton",{Text=name,Font=Enum.Font.GothamMedium,TextSize=12,TextColor3=C.TextGray,BackgroundColor3=C.WindowBg,Size=UDim2.new(0,0,0,24),AutomaticSize=Enum.AutomaticSize.X,Parent=self._pillRow})
    autoOrder(pill);corner(pill,6);pad(pill,0,0,12,12)
    table.insert(tab._window._noDrag,pill)
    local page=make("ScrollingFrame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Visible=false,CanvasSize=UDim2.new(0,0,0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=2,ScrollBarImageColor3=C.Border,Parent=self._pagesHolder})
    pad(page,12,16,16,16)
    table.insert(tab._window._noDrag,page)
    local card=make("Frame",{Size=UDim2.new(1,-32,0,0),AutomaticSize=Enum.AutomaticSize.Y,BackgroundColor3=C.CardBg,Parent=page})
    corner(card,10);stroke(card);pad(card,14,14,16,16)
    make("UIListLayout",{FillDirection=Enum.FillDirection.Vertical,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,8),Parent=card})
    local sub=setmetatable({_tab=tab,_window=tab._window,_pill=pill,_page=page,_card=card},SubTab)
    pill.MouseButton1Click:Connect(function() tab:_selectSub(sub) end)
    pill.MouseEnter:Connect(function() if tab._activeSub~=sub then tween(pill,{BackgroundColor3=C.NavHover}) end end)
    pill.MouseLeave:Connect(function() tween(pill,{BackgroundColor3=tab._activeSub==sub and C.PillActive or C.WindowBg}) end)
    table.insert(self._subTabs,sub)
    if not self._activeSub then self:_selectSub(sub) end
    self:_updatePillScroll()
    return sub
end

local function newRow(card,h)
    local r=make("Frame",{Size=UDim2.new(1,0,0,h),BackgroundTransparency=1,Parent=card}); autoOrder(r); return r
end
local function rowLabels(row,name,desc,rr)
    rr=rr or 0
    make("TextLabel",{Text=name,Font=Enum.Font.GothamMedium,TextSize=13,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(0,0),Size=desc and UDim2.new(1,-rr,0,14) or UDim2.new(1,-rr,1,0),Parent=row})
    if desc then make("TextLabel",{Text=desc,Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(0,16),Size=UDim2.new(1,-rr,0,12),Parent=row}) end
end

function SubTab:AddToggle(opts)
    opts=opts or {}; local value=opts.Default==true
    local row=newRow(self._card,30); rowLabels(row,opts.Name or "Toggle",opts.Description,44)
    local pill=make("TextButton",{Text="",Size=UDim2.fromOffset(34,18),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,0,0.5,0),BackgroundColor3=C.Badge,Parent=row})
    circle(pill)
    -- Blue accent outline around the pill toggle: bright when on, dim when
    -- off, with a soft outer halo for depth (theme-aware via stroke)
    local pillOutline=stroke(pill,C.Accent); pillOutline.Thickness=1.2
    local pillHalo=stroke(pill,C.Accent); pillHalo.Thickness=3.5; pillHalo.Transparency=0.88
    local knob=make("Frame",{Size=UDim2.fromOffset(14,14),AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,2,0.5,0),BackgroundColor3=C.KnobOff,Parent=pill})
    circle(knob)
    local function render(a)
        local kp=value and UDim2.new(0,18,0.5,0) or UDim2.new(0,2,0.5,0)
        paint(pill,"BackgroundColor3",value and "Accent" or "Badge",not a)
        paint(knob,"BackgroundColor3",value and "KnobAccent" or "KnobOff",not a)
        if a then
            tween(pillOutline,{Transparency=value and 0.15 or 0.55})
            tween(pillHalo,{Transparency=value and 0.78 or 0.9})
        else
            pillOutline.Transparency=value and 0.15 or 0.55
            pillHalo.Transparency=value and 0.78 or 0.9
        end
        if a then tween(knob,{Position=kp}) else knob.Position=kp end
    end
    local function set(v) v=v==true; if v==value then return end; value=v; render(true); fire(opts.Callback,value); Library:QueueAutoSave() end
    pill.MouseButton1Click:Connect(function() set(not value) end); render(false)
    return registerFlag(opts.Flag, "toggle", {Set=function(_,v) set(v) end, Get=function() return value end})
end

function SubTab:AddButton(opts)
    opts=opts or {}
    local primary=opts.Primary==true or opts.Style=="primary"
    local btn=make("TextButton",{Text=opts.Name or "Button",Font=Enum.Font.GothamMedium,TextSize=12,TextColor3=primary and C.AccentText or C.TextGray,Size=UDim2.new(1,0,0,28),BackgroundColor3=primary and C.Accent or C.Element,Parent=self._card})
    autoOrder(btn);corner(btn,6)
    if primary then btn.Font=Enum.Font.GothamBold end
    btn.MouseEnter:Connect(function() if primary then tween(btn,{BackgroundTransparency=0.14}) else tween(btn,{BackgroundColor3=C.ElementHover}) end end)
    btn.MouseLeave:Connect(function() if primary then tween(btn,{BackgroundTransparency=0}) else tween(btn,{BackgroundColor3=C.Element}) end end)
    btn.MouseButton1Click:Connect(function() fire(opts.Callback) end)
    return btn
end

function SubTab:AddSection(opts)
    if type(opts)=="string" then opts={Name=opts} end; opts=opts or {}
    local row=make("Frame",{Size=UDim2.new(1,0,0,22),BackgroundTransparency=1,Parent=self._card}); autoOrder(row)
    local tick=make("Frame",{AnchorPoint=Vector2.new(0,1),Position=UDim2.new(0,0,1,-4),Size=UDim2.fromOffset(3,11),BackgroundColor3=C.Accent,Parent=row}); corner(tick,2)
    make("TextLabel",{Text=string.upper(tostring(opts.Name or "Section")),Font=Enum.Font.GothamBold,TextSize=10,TextColor3=C.TextGray,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Bottom,BackgroundTransparency=1,Position=UDim2.fromOffset(9,0),Size=UDim2.new(1,-9,1,-3),Parent=row})
    make("Frame",{Position=UDim2.new(0,0,1,-1),Size=UDim2.new(1,0,0,1),BackgroundColor3=C.Border,Parent=row})
    local accentUnderline=make("Frame",{Position=UDim2.new(0,0,1,-1),Size=UDim2.fromOffset(28,1),BackgroundColor3=C.Accent,Parent=row})
    return row
end

function SubTab:AddDivider()
    local row=make("Frame",{Size=UDim2.new(1,0,0,9),BackgroundTransparency=1,Parent=self._card}); autoOrder(row)
    make("Frame",{AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,0,0.5,0),Size=UDim2.new(1,0,0,1),BackgroundColor3=C.Border,Parent=row})
    return row
end

function SubTab:AddLabel(opts)
    if type(opts)=="string" then opts={Text=opts} end; opts=opts or {}
    local lbl=make("TextLabel",{Text=tostring(opts.Text or "Label"),Font=Enum.Font.GothamMedium,TextSize=13,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Size=UDim2.new(1,0,0,16),Parent=self._card})
    autoOrder(lbl)
    return {Set=function(_,t) lbl.Text=tostring(t) end, Get=function() return lbl.Text end, Instance=lbl}
end

function SubTab:AddParagraph(opts)
    opts=opts or {}
    local card=make("Frame",{Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,Parent=self._card}); autoOrder(card)
    make("UIListLayout",{FillDirection=Enum.FillDirection.Vertical,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,3),Parent=card})
    if opts.Title then
        make("TextLabel",{Text=tostring(opts.Title),Font=Enum.Font.GothamMedium,TextSize=13,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Size=UDim2.new(1,0,0,16),LayoutOrder=1,Parent=card})
    end
    local body=make("TextLabel",{Text=tostring(opts.Text or opts.Content or ""),Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,TextWrapped=true,AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),LayoutOrder=2,Parent=card})
    return {Set=function(_,t) body.Text=tostring(t) end, Get=function() return body.Text end, Instance=body}
end

function SubTab:AddKeybind(opts)
    opts=opts or {}
    local key=opts.Default
    if typeof(key)~="EnumItem" then key=nil end
    local row=newRow(self._card,30); rowLabels(row,opts.Name or "Keybind",opts.Description,80)
    local btn=make("TextButton",{Text=key and key.Name or "None",Font=Enum.Font.GothamMedium,TextSize=11,TextColor3=C.TextGray,Size=UDim2.fromOffset(70,22),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,0,0.5,0),BackgroundColor3=C.Element,Parent=row})
    corner(btn,6)
    local listening=false; local conn
    local function setKey(k)
        if k~=nil and typeof(k)~="EnumItem" then return end
        key=k; btn.Text=key and key.Name or "None"
        if opts.OnKeyChanged then fire(opts.OnKeyChanged,key) end
        Library:QueueAutoSave()
    end
    local function stopListening()
        listening=false
        if conn then conn:Disconnect(); conn=nil end
        btn.Text=key and key.Name or "None"
        tween(btn,{BackgroundColor3=C.Element,TextColor3=C.TextGray})
    end
    btn.MouseEnter:Connect(function() if not listening then tween(btn,{BackgroundColor3=C.ElementHover}) end end)
    btn.MouseLeave:Connect(function() if not listening then tween(btn,{BackgroundColor3=C.Element}) end end)
    btn.MouseButton1Click:Connect(function()
        if listening then stopListening(); return end
        listening=true; btn.Text="..."; tween(btn,{BackgroundColor3=C.PillActive,TextColor3=C.White})
        conn=UserInputService.InputBegan:Connect(function(input,gp)
            if gp then return end
            if input.UserInputType==Enum.UserInputType.Keyboard then
                if input.KeyCode==Enum.KeyCode.Escape then setKey(nil) else setKey(input.KeyCode) end
                stopListening()
            elseif input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.MouseButton2 then
                stopListening()
            end
        end)
    end)
    local pressConn=UserInputService.InputBegan:Connect(function(input,gp)
        if gp or listening or not key then return end
        if UserInputService:GetFocusedTextBox() then return end
        if input.KeyCode==key then fire(opts.OnPress or opts.Pressed or opts.Callback,key) end
    end)
    table.insert(self._window._noDrag,btn)
    trackConn(self._window, pressConn)
    return registerFlag(opts.Flag, "keybind", {Set=function(_,k) setKey(k) end, Get=function() return key end, _connections={pressConn}})
end

function SubTab:AddInput(opts)
    opts=opts or {}
    local row=newRow(self._card,30); rowLabels(row,opts.Name or "Input",opts.Description,120)
    local holder=make("Frame",{Size=UDim2.fromOffset(110,22),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,0,0.5,0),BackgroundColor3=C.Element,Parent=row})
    corner(holder,6)
    local box=make("TextBox",{Text=opts.Default or "",PlaceholderText=opts.Placeholder or "...",PlaceholderColor3=C.Placeholder,Font=Enum.Font.Gotham,TextSize=12,TextColor3=C.TextGray,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,ClearTextOnFocus=false,ClipsDescendants=true,Position=UDim2.fromOffset(8,0),Size=UDim2.new(1,-30,1,0),Parent=holder})
    inputIcon(holder)
    box.FocusLost:Connect(function(ep) fire(opts.Callback,box.Text,ep); Library:QueueAutoSave() end)
    return registerFlag(opts.Flag, "input", {Set=function(_,t) box.Text=tostring(t) end, Get=function() return box.Text end})
end

function SubTab:AddDropdown(opts)
    opts=opts or {}
    local options=opts.Options or {}; local value=opts.Default or options[1] or ""
    local maxVisible=math.max(1,math.floor(opts.MaxVisible or 5)); local searchable=opts.Searchable==true
    local IH=22; local IP=2; local SH=26; local LW=160
    local row=newRow(self._card,30); rowLabels(row,opts.Name or "Dropdown",opts.Description,130)
    local btn=make("TextButton",{Text="",Size=UDim2.fromOffset(120,22),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,0,0.5,0),BackgroundColor3=C.Element,Parent=row})
    corner(btn,6)
    local vl=make("TextLabel",{Text=tostring(value),Font=Enum.Font.Gotham,TextSize=12,TextColor3=C.TextGray,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,BackgroundTransparency=1,Position=UDim2.fromOffset(8,0),Size=UDim2.new(1,-26,1,0),Parent=btn})
    sortIcon(btn)
    local win=self._window; local sp=self._page; local tp=self._tab._page
    local list=make("Frame",{Visible=false,Active=true,Position=UDim2.fromOffset(0,0),Size=UDim2.new(0,LW,0,0),BackgroundColor3=C.Element,ClipsDescendants=true,ZIndex=100,Parent=win.ScreenGui})
    corner(list,6);stroke(list); table.insert(win._noDrag,list)
    local sb; local fq=""
    if searchable then
        local sh=make("Frame",{Position=UDim2.fromOffset(4,4),Size=UDim2.new(1,-8,0,SH-4),BackgroundColor3=C.WindowBg,ZIndex=101,Parent=list}); corner(sh,4)
        sb=make("TextBox",{Text="",PlaceholderText="Search...",PlaceholderColor3=C.Placeholder,Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,ClearTextOnFocus=false,Position=UDim2.fromOffset(8,0),Size=UDim2.new(1,-16,1,0),ZIndex=102,Parent=sh})
    end
    local sf=make("ScrollingFrame",{Position=UDim2.fromOffset(0,searchable and SH or 0),Size=UDim2.new(1,0,1,searchable and -SH or 0),BackgroundTransparency=1,BorderSizePixel=0,CanvasSize=UDim2.new(0,0,0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=3,ScrollBarImageColor3=C.Border,ZIndex=101,Parent=list})
    pad(sf,4,4,4,4)
    make("UIListLayout",{FillDirection=Enum.FillDirection.Vertical,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,IP),Parent=sf})
    local open=false; local cg=0; local oc={}; local co=options; local ob={}
    local function repo()
        local inset=GuiService:GetGuiInset(); local p,s=btn.AbsolutePosition,btn.AbsoluteSize
        list.Position=UDim2.fromOffset(p.X+inset.X+s.X-LW,p.Y+inset.Y+s.Y+4)
    end
    local function calcH()
        local fc=0; for _,o in ipairs(co) do if fq=="" or string.find(string.lower(tostring(o)),string.lower(fq),1,true) then fc=fc+1 end end
        local vc=math.min(math.max(fc,1),maxVisible)
        return vc*IH+math.max(vc-1,0)*IP+8+(searchable and SH or 0)
    end
    local function closeDD()
        if not open then return end; open=false; cg=cg+1
        for _,c in ipairs(oc) do c:Disconnect() end; table.clear(oc)
        tween(list,{Size=UDim2.new(0,LW,0,0)})
        local g=cg; task.delay(0.16,function() if g==cg and not open then list.Visible=false end end)
    end
    local function rebuild()
        for _,b in ipairs(ob) do if b and b.Parent then b:Destroy() end end; table.clear(ob)
        for _,o in ipairs(co) do
            local os=tostring(o)
            if fq=="" or string.find(string.lower(os),string.lower(fq),1,true) then
                local ob2=make("TextButton",{Text=os,Font=Enum.Font.Gotham,TextSize=12,TextColor3=C.TextGray,Size=UDim2.new(1,-8,0,IH),BackgroundColor3=C.Element,Parent=sf})
                autoOrder(ob2);corner(ob2,4);make("UIPadding",{PaddingLeft=UDim.new(0,8),Parent=ob2}); ob2.TextXAlignment=Enum.TextXAlignment.Left
                ob2.MouseEnter:Connect(function() tween(ob2,{BackgroundColor3=C.ElementHover,TextColor3=C.White}) end)
                ob2.MouseLeave:Connect(function() tween(ob2,{BackgroundColor3=C.Element,TextColor3=C.TextGray}) end)
                ob2.MouseButton1Click:Connect(function() value=o; vl.Text=os; closeDD(); fire(opts.Callback,o); Library:QueueAutoSave() end)
                table.insert(ob,ob2)
            end
        end
    end
    if sb then sb:GetPropertyChangedSignal("Text"):Connect(function() fq=sb.Text; rebuild(); if open then tween(list,{Size=UDim2.new(0,LW,0,calcH())}) end end) end
    rebuild()
    local function setOpen(o)
        if open==o then return end
        if o then
            open=true; cg=cg+1; repo(); list.Visible=true; tween(list,{Size=UDim2.new(0,LW,0,calcH())})
            table.insert(oc,btn:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
                local bp,bs=btn.AbsolutePosition,btn.AbsoluteSize; local pp,ps=sp.AbsolutePosition,sp.AbsoluteSize
                if bp.Y+bs.Y<pp.Y or bp.Y>pp.Y+ps.Y then closeDD() else repo() end
            end))
            table.insert(oc,sp:GetPropertyChangedSignal("Visible"):Connect(function() if not sp.Visible then closeDD() end end))
            table.insert(oc,tp:GetPropertyChangedSignal("Visible"):Connect(function() if not tp.Visible then closeDD() end end))
            table.insert(oc,UserInputService.InputBegan:Connect(function(input)
                if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
                    local pos=Vector2.new(input.Position.X,input.Position.Y)
                    if not isInside(btn,pos) and not isInside(list,pos) then closeDD() end
                end
            end))
        else closeDD() end
    end
    btn.MouseButton1Click:Connect(function() setOpen(not open) end)
    btn.MouseEnter:Connect(function() tween(btn,{BackgroundColor3=C.ElementHover}) end)
    btn.MouseLeave:Connect(function() tween(btn,{BackgroundColor3=C.Element}) end)
    return registerFlag(opts.Flag, "dropdown", {
        Set=function(_,o) value=o; vl.Text=tostring(o); fire(opts.Callback,o); Library:QueueAutoSave() end, Get=function() return value end,
        SetOptions=function(_,no)
            co=no or {}; local se=false
            for _,o in ipairs(co) do if o==value then se=true; break end end
            if not se and co[1] then value=co[1]; vl.Text=tostring(value) end
            rebuild(); if open then tween(list,{Size=UDim2.new(0,LW,0,calcH())}) end
        end,
        Refresh=function() rebuild() end,
    })
end

function SubTab:AddMultiDropdown(opts)
    opts=opts or {}
    local options=opts.Options or {}
    local maxVisible=math.max(1,math.floor(opts.MaxVisible or 5)); local searchable=opts.Searchable==true
    local IH=22; local IP=2; local SH=26; local LW=160
    local selected={}
    if type(opts.Default)=="table" then for _,o in ipairs(opts.Default) do selected[o]=true end end
    local row=newRow(self._card,30); rowLabels(row,opts.Name or "Dropdown",opts.Description,130)
    local btn=make("TextButton",{Text="",Size=UDim2.fromOffset(120,22),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,0,0.5,0),BackgroundColor3=C.Element,Parent=row})
    corner(btn,6)
    local vl=make("TextLabel",{Text="None",Font=Enum.Font.Gotham,TextSize=12,TextColor3=C.TextGray,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,BackgroundTransparency=1,Position=UDim2.fromOffset(8,0),Size=UDim2.new(1,-26,1,0),Parent=btn})
    sortIcon(btn)
    local win=self._window; local sp=self._page; local tp=self._tab._page
    local list=make("Frame",{Visible=false,Active=true,Position=UDim2.fromOffset(0,0),Size=UDim2.new(0,LW,0,0),BackgroundColor3=C.Element,ClipsDescendants=true,ZIndex=100,Parent=win.ScreenGui})
    corner(list,6);stroke(list); table.insert(win._noDrag,list)
    local sb; local fq=""
    if searchable then
        local sh=make("Frame",{Position=UDim2.fromOffset(4,4),Size=UDim2.new(1,-8,0,SH-4),BackgroundColor3=C.WindowBg,ZIndex=101,Parent=list}); corner(sh,4)
        sb=make("TextBox",{Text="",PlaceholderText="Search...",PlaceholderColor3=C.Placeholder,Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,ClearTextOnFocus=false,Position=UDim2.fromOffset(8,0),Size=UDim2.new(1,-16,1,0),ZIndex=102,Parent=sh})
    end
    local sf=make("ScrollingFrame",{Position=UDim2.fromOffset(0,searchable and SH or 0),Size=UDim2.new(1,0,1,searchable and -SH or 0),BackgroundTransparency=1,BorderSizePixel=0,CanvasSize=UDim2.new(0,0,0,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,ScrollingDirection=Enum.ScrollingDirection.Y,ScrollBarThickness=3,ScrollBarImageColor3=C.Border,ZIndex=101,Parent=list})
    pad(sf,4,4,4,4)
    make("UIListLayout",{FillDirection=Enum.FillDirection.Vertical,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,IP),Parent=sf})
    local open=false; local cg=0; local oc={}; local co=options; local ob={}
    local function selectedList()
        local out={}
        for _,o in ipairs(co) do if selected[o] then table.insert(out,o) end end
        return out
    end
    local function updateSummary()
        local sel=selectedList()
        if #sel==0 then vl.Text="None"
        elseif #sel==1 then vl.Text=tostring(sel[1])
        else vl.Text=#sel.." selected" end
    end
    local function repo()
        local inset=GuiService:GetGuiInset(); local p,s=btn.AbsolutePosition,btn.AbsoluteSize
        list.Position=UDim2.fromOffset(p.X+inset.X+s.X-LW,p.Y+inset.Y+s.Y+4)
    end
    local function calcH()
        local fc=0; for _,o in ipairs(co) do if fq=="" or string.find(string.lower(tostring(o)),string.lower(fq),1,true) then fc=fc+1 end end
        local vc=math.min(math.max(fc,1),maxVisible)
        return vc*IH+math.max(vc-1,0)*IP+8+(searchable and SH or 0)
    end
    local function closeDD()
        if not open then return end; open=false; cg=cg+1
        for _,c in ipairs(oc) do c:Disconnect() end; table.clear(oc)
        tween(list,{Size=UDim2.new(0,LW,0,0)})
        local g=cg; task.delay(0.16,function() if g==cg and not open then list.Visible=false end end)
    end
    local function rebuild()
        for _,b in ipairs(ob) do if b and b.Parent then b:Destroy() end end; table.clear(ob)
        for _,o in ipairs(co) do
            local os=tostring(o)
            if fq=="" or string.find(string.lower(os),string.lower(fq),1,true) then
                local ob2=make("TextButton",{Text="",Size=UDim2.new(1,-8,0,IH),BackgroundColor3=C.Element,Parent=sf})
                autoOrder(ob2);corner(ob2,4)
                local box=make("Frame",{AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,8,0.5,0),Size=UDim2.fromOffset(12,12),BackgroundColor3=selected[o] and C.White or C.Badge,Parent=ob2})
                corner(box,3)
                local check=make("TextLabel",{Text="✓",Font=Enum.Font.GothamBold,TextSize=10,TextColor3=C.KnobOn,BackgroundTransparency=1,Size=UDim2.fromScale(1,1),Visible=selected[o]==true,Parent=box})
                make("TextLabel",{Text=os,Font=Enum.Font.Gotham,TextSize=12,TextColor3=selected[o] and C.White or C.TextGray,TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,BackgroundTransparency=1,Position=UDim2.fromOffset(26,0),Size=UDim2.new(1,-32,1,0),Parent=ob2})
                ob2.MouseEnter:Connect(function() if not selected[o] then tween(ob2,{BackgroundColor3=C.ElementHover}) end end)
                ob2.MouseLeave:Connect(function() tween(ob2,{BackgroundColor3=C.Element}) end)
                ob2.MouseButton1Click:Connect(function()
                    selected[o]=not selected[o] or nil
                    box.BackgroundColor3=selected[o] and C.White or C.Badge
                    check.Visible=selected[o]==true
                    updateSummary(); fire(opts.Callback,selectedList()); Library:QueueAutoSave()
                end)
                table.insert(ob,ob2)
            end
        end
    end
    if sb then sb:GetPropertyChangedSignal("Text"):Connect(function() fq=sb.Text; rebuild(); if open then tween(list,{Size=UDim2.new(0,LW,0,calcH())}) end end) end
    rebuild(); updateSummary()
    local function setOpen(o)
        if open==o then return end
        if o then
            open=true; cg=cg+1; repo(); list.Visible=true; tween(list,{Size=UDim2.new(0,LW,0,calcH())})
            table.insert(oc,btn:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
                local bp,bs=btn.AbsolutePosition,btn.AbsoluteSize; local pp,ps=sp.AbsolutePosition,sp.AbsoluteSize
                if bp.Y+bs.Y<pp.Y or bp.Y>pp.Y+ps.Y then closeDD() else repo() end
            end))
            table.insert(oc,sp:GetPropertyChangedSignal("Visible"):Connect(function() if not sp.Visible then closeDD() end end))
            table.insert(oc,tp:GetPropertyChangedSignal("Visible"):Connect(function() if not tp.Visible then closeDD() end end))
            table.insert(oc,UserInputService.InputBegan:Connect(function(input)
                if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
                    local pos=Vector2.new(input.Position.X,input.Position.Y)
                    if not isInside(btn,pos) and not isInside(list,pos) then closeDD() end
                end
            end))
        else closeDD() end
    end
    btn.MouseButton1Click:Connect(function() setOpen(not open) end)
    btn.MouseEnter:Connect(function() tween(btn,{BackgroundColor3=C.ElementHover}) end)
    btn.MouseLeave:Connect(function() tween(btn,{BackgroundColor3=C.Element}) end)
    return registerFlag(opts.Flag, "multidropdown", {
        Set=function(_,sel)
            table.clear(selected)
            if type(sel)=="table" then for _,o in ipairs(sel) do selected[o]=true end end
            rebuild(); updateSummary(); fire(opts.Callback,selectedList()); Library:QueueAutoSave()
        end,
        Get=function() return selectedList() end,
        SetOptions=function(_,no)
            co=no or {}
            for o in pairs(selected) do
                local still=false
                for _,n in ipairs(co) do if n==o then still=true; break end end
                if not still then selected[o]=nil end
            end
            rebuild(); updateSummary(); if open then tween(list,{Size=UDim2.new(0,LW,0,calcH())}) end
        end,
        Refresh=function() rebuild(); updateSummary() end,
    })
end

-- ════════════════════════════════════════════════════════════════════════════
-- COLOR HELPERS
-- ════════════════════════════════════════════════════════════════════════════
local function colorToHex(c)
    return string.format("#%02X%02X%02X",
        math.floor(c.R*255+0.5), math.floor(c.G*255+0.5), math.floor(c.B*255+0.5))
end
local function hexToColor(hex)
    hex = string.gsub(tostring(hex or ""), "#", "")
    if #hex ~= 6 then return nil end
    local r = tonumber(hex:sub(1,2),16)
    local g = tonumber(hex:sub(3,4),16)
    local b = tonumber(hex:sub(5,6),16)
    if not (r and g and b) then return nil end
    return Color3.fromRGB(r,g,b)
end

function SubTab:AddSlider(opts)
    opts=opts or {}
    local mn=opts.Min or 0; local mx=opts.Max or 100; local sf=opts.Suffix or ""
    local value=math.clamp(opts.Default or mn,mn,mx)
    local row=newRow(self._card,32)
    make("TextLabel",{Text=opts.Name or "Slider",Font=Enum.Font.GothamMedium,TextSize=13,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Position=UDim2.fromOffset(0,0),Size=UDim2.new(0.6,0,0,14),Parent=row})
    local vl=make("TextLabel",{Text=tostring(value)..sf,Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.TextDim,TextXAlignment=Enum.TextXAlignment.Right,BackgroundTransparency=1,Position=UDim2.fromOffset(0,1),Size=UDim2.new(1,0,0,13),Parent=row})
    local track=make("Frame",{Position=UDim2.fromOffset(0,24),Size=UDim2.new(1,0,0,4),BackgroundColor3=C.TrackBg,Parent=row}); circle(track)
    local fill=make("Frame",{Size=UDim2.new(0,0,1,0),BackgroundColor3=C.Accent,Parent=track}); circle(fill)
    local knob=make("Frame",{Size=UDim2.fromOffset(12,12),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0,0,0.5,0),BackgroundColor3=C.White,ZIndex=2,Parent=track}); circle(knob); stroke(knob,C.Accent)
    local hit=make("TextButton",{Text="",BackgroundTransparency=1,Position=UDim2.new(0,-6,0,16),Size=UDim2.new(1,12,0,20),Parent=row})
    local function apply(v,a,fc)
        value=math.clamp(math.floor(v+0.5),mn,mx)
        local pct=mx>mn and (value-mn)/(mx-mn) or 0; vl.Text=tostring(value)..sf
        if a then tween(fill,{Size=UDim2.new(pct,0,1,0)}); tween(knob,{Position=UDim2.new(pct,0,0.5,0)})
        else fill.Size=UDim2.new(pct,0,1,0); knob.Position=UDim2.new(pct,0,0.5,0) end
        if fc then fire(opts.Callback,value); Library:QueueAutoSave() end
    end
    local function fromX(x) return mn+(mx-mn)*math.clamp((x-track.AbsolutePosition.X)/math.max(track.AbsoluteSize.X,1),0,1) end
    local dragging=false
    hit.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dragging=true; apply(fromX(i.Position.X),true,true) end end)
    trackConn(self._window, UserInputService.InputChanged:Connect(function(i) if dragging and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then apply(fromX(i.Position.X),true,true) end end))
    trackConn(self._window, UserInputService.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dragging=false end end))
    apply(value,false,false)
    return registerFlag(opts.Flag, "slider", {Set=function(_,v) apply(v,true,true) end, Get=function() return value end})
end

local function hsvToColor(h,s,v) return Color3.fromHSV(h,s,v) end
local function colorToHSV(c) return c:ToHSV() end

function SubTab:AddColorPicker(opts)
    opts=opts or {}
    local value = (typeof(opts.Default)=="Color3" and opts.Default) or hexToColor(opts.Default) or Color3.fromRGB(255,255,255)
    local h,s,v = colorToHSV(value)
    local row=newRow(self._card,30); rowLabels(row,opts.Name or "Color",opts.Description,44)

    local swatch=make("TextButton",{Text="",Size=UDim2.fromOffset(34,18),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,0,0.5,0),BackgroundColor3=value,Parent=row})
    corner(swatch,5);stroke(swatch,C.Border)

    local win=self._window; local sp=self._page; local tp=self._tab._page
    local PW=200
    local panel=make("Frame",{Visible=false,Active=true,Size=UDim2.fromOffset(PW,0),BackgroundColor3=C.Element,ClipsDescendants=true,ZIndex=100,Parent=win.ScreenGui})
    corner(panel,6);stroke(panel); table.insert(win._noDrag,panel)
    local inner=make("Frame",{Position=UDim2.fromOffset(0,0),Size=UDim2.fromOffset(PW,168),BackgroundTransparency=1,ZIndex=101,Parent=panel})
    pad(inner,10,10,10,10)

    local svBox=make("Frame",{Position=UDim2.fromOffset(0,0),Size=UDim2.new(1,0,0,110),BackgroundColor3=hsvToColor(h,1,1),ZIndex=101,Parent=inner})
    corner(svBox,4)
    make("UIGradient",{Color=ColorSequence.new(Color3.new(1,1,1),hsvToColor(h,1,1)),Parent=svBox})
    local svBlack=make("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.new(0,0,0),ZIndex=102,Parent=svBox}); corner(svBlack,4)
    make("UIGradient",{Rotation=90,Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)}),Parent=svBlack})
    local svCursor=make("Frame",{AnchorPoint=Vector2.new(0.5,0.5),Size=UDim2.fromOffset(8,8),BackgroundColor3=Color3.new(1,1,1),ZIndex=103,Parent=svBox}); circle(svCursor); stroke(svCursor,Color3.new(0,0,0))
    local svHit=make("TextButton",{Text="",BackgroundTransparency=1,Size=UDim2.fromScale(1,1),ZIndex=104,Parent=svBox})

    local hueBox=make("Frame",{Position=UDim2.fromOffset(0,118),Size=UDim2.new(1,0,0,12),BackgroundColor3=Color3.new(1,1,1),ZIndex=101,Parent=inner})
    corner(hueBox,4)
    make("UIGradient",{Color=ColorSequence.new({
        ColorSequenceKeypoint.new(0.00,Color3.fromRGB(255,0,0)),
        ColorSequenceKeypoint.new(0.17,Color3.fromRGB(255,255,0)),
        ColorSequenceKeypoint.new(0.33,Color3.fromRGB(0,255,0)),
        ColorSequenceKeypoint.new(0.50,Color3.fromRGB(0,255,255)),
        ColorSequenceKeypoint.new(0.67,Color3.fromRGB(0,0,255)),
        ColorSequenceKeypoint.new(0.83,Color3.fromRGB(255,0,255)),
        ColorSequenceKeypoint.new(1.00,Color3.fromRGB(255,0,0)),
    }),Parent=hueBox})
    local hueCursor=make("Frame",{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0,0,0.5,0),Size=UDim2.fromOffset(4,16),BackgroundColor3=Color3.new(1,1,1),ZIndex=103,Parent=hueBox}); corner(hueCursor,2); stroke(hueCursor,Color3.new(0,0,0))
    local hueHit=make("TextButton",{Text="",BackgroundTransparency=1,Position=UDim2.fromOffset(0,-4),Size=UDim2.new(1,0,0,20),ZIndex=104,Parent=hueBox})

    local hexHolder=make("Frame",{Position=UDim2.fromOffset(0,140),Size=UDim2.new(1,0,0,22),BackgroundColor3=C.WindowBg,ZIndex=101,Parent=inner}); corner(hexHolder,5)
    local hexBox=make("TextBox",{Text=colorToHex(value),PlaceholderText="#FFFFFF",PlaceholderColor3=C.Placeholder,Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.White,TextXAlignment=Enum.TextXAlignment.Center,BackgroundTransparency=1,ClearTextOnFocus=false,Size=UDim2.fromScale(1,1),ZIndex=102,Parent=hexHolder})

    local function applyVisuals(a)
        local hueColor=hsvToColor(h,1,1)
        if a then tween(swatch,{BackgroundColor3=value}) else swatch.BackgroundColor3=value end
        svBox.BackgroundColor3=hueColor
        for _,g in ipairs(svBox:GetChildren()) do if g:IsA("UIGradient") and g.Parent==svBox then g.Color=ColorSequence.new(Color3.new(1,1,1),hueColor) end end
        svCursor.Position=UDim2.new(s,0,1-v,0)
        svCursor.BackgroundColor3 = v>0.5 and Color3.new(0,0,0) or Color3.new(1,1,1)
        hueCursor.Position=UDim2.new(h,0,0.5,0)
        hexBox.Text=colorToHex(value)
    end
    local function recompute(fc,a)
        value=hsvToColor(h,s,v); applyVisuals(a)
        if fc then fire(opts.Callback,value); Library:QueueAutoSave() end
    end

    local svDragging=false; local hueDragging=false
    local function svFrom(px,py)
        local p,sz=svBox.AbsolutePosition,svBox.AbsoluteSize
        s=math.clamp((px-p.X)/math.max(sz.X,1),0,1)
        v=1-math.clamp((py-p.Y)/math.max(sz.Y,1),0,1)
    end
    local function hueFrom(px)
        local p,sz=hueBox.AbsolutePosition,hueBox.AbsoluteSize
        h=math.clamp((px-p.X)/math.max(sz.X,1),0,1)
    end
    svHit.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then svDragging=true; svFrom(i.Position.X,i.Position.Y); recompute(true,false) end end)
    hueHit.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then hueDragging=true; hueFrom(i.Position.X); recompute(true,false) end end)
    local moveConn=UserInputService.InputChanged:Connect(function(i)
        if i.UserInputType~=Enum.UserInputType.MouseMovement and i.UserInputType~=Enum.UserInputType.Touch then return end
        if svDragging then svFrom(i.Position.X,i.Position.Y); recompute(true,false)
        elseif hueDragging then hueFrom(i.Position.X); recompute(true,false) end
    end)
    local endConn=UserInputService.InputEnded:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then svDragging=false; hueDragging=false end
    end)
    hexBox.FocusLost:Connect(function()
        local c=hexToColor(hexBox.Text)
        if c then value=c; h,s,v=colorToHSV(c); recompute(true,true) else hexBox.Text=colorToHex(value) end
    end)

    local open=false; local cg=0; local oc={}
    local function repo()
        local inset=GuiService:GetGuiInset(); local p,sz=swatch.AbsolutePosition,swatch.AbsoluteSize
        panel.Position=UDim2.fromOffset(p.X+inset.X+sz.X-PW,p.Y+inset.Y+sz.Y+4)
    end
    local function closePanel()
        if not open then return end; open=false; cg=cg+1
        for _,c in ipairs(oc) do c:Disconnect() end; table.clear(oc)
        tween(panel,{Size=UDim2.fromOffset(PW,0)})
        local g=cg; task.delay(0.16,function() if g==cg and not open then panel.Visible=false end end)
    end
    local function setOpen(o)
        if open==o then return end
        if o then
            open=true; cg=cg+1; repo(); panel.Visible=true; tween(panel,{Size=UDim2.fromOffset(PW,168)})
            table.insert(oc,swatch:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
                local bp,bs=swatch.AbsolutePosition,swatch.AbsoluteSize; local pp,ps=sp.AbsolutePosition,sp.AbsoluteSize
                if bp.Y+bs.Y<pp.Y or bp.Y>pp.Y+ps.Y then closePanel() else repo() end
            end))
            table.insert(oc,sp:GetPropertyChangedSignal("Visible"):Connect(function() if not sp.Visible then closePanel() end end))
            table.insert(oc,tp:GetPropertyChangedSignal("Visible"):Connect(function() if not tp.Visible then closePanel() end end))
            table.insert(oc,UserInputService.InputBegan:Connect(function(input)
                if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
                    local pos=Vector2.new(input.Position.X,input.Position.Y)
                    if not isInside(swatch,pos) and not isInside(panel,pos) then closePanel() end
                end
            end))
        else closePanel() end
    end
    swatch.MouseButton1Click:Connect(function() setOpen(not open) end)
    swatch.MouseEnter:Connect(function() tween(swatch,{BackgroundColor3=value}) end)
    recompute(false,false)
    trackConn(self._window, moveConn)
    trackConn(self._window, endConn)
    return registerFlag(opts.Flag, "color", {
        Set=function(_,c)
            c=(typeof(c)=="Color3" and c) or hexToColor(c)
            if not c then return end
            value=c; h,s,v=colorToHSV(c); recompute(true,true)
        end,
        Get=function() return value end,
        GetHex=function() return colorToHex(value) end,
        _connections={moveConn,endConn},
    })
end

function SubTab:AddComponents(list)
    if type(list) ~= "table" then return {} end
    local handles = {}
    for _, item in ipairs(list) do
        if type(item) == "table" and item.Type then
            local t = string.lower(item.Type)
            if t == "toggle" then
                handles[#handles + 1] = self:AddToggle(item)
            elseif t == "slider" then
                handles[#handles + 1] = self:AddSlider(item)
            elseif t == "dropdown" then
                handles[#handles + 1] = self:AddDropdown(item)
            elseif t == "multidropdown" then
                handles[#handles + 1] = self:AddMultiDropdown(item)
            elseif t == "button" then
                handles[#handles + 1] = self:AddButton(item)
            elseif t == "input" then
                handles[#handles + 1] = self:AddInput(item)
            elseif t == "keybind" then
                handles[#handles + 1] = self:AddKeybind(item)
            elseif t == "color" or t == "colorpicker" then
                handles[#handles + 1] = self:AddColorPicker(item)
            elseif t == "paragraph" then
                handles[#handles + 1] = self:AddParagraph(item)
            elseif t == "divider" then
                handles[#handles + 1] = self:AddDivider()
            elseif t == "section" then
                handles[#handles + 1] = self:AddSection(item.Name or item.Title)
            end
        end
    end
    return handles
end

return Library
end)()

_G.OxideLib = Library
local Library = _G.OxideLib  -- StealAnEgg expects local Library in scope

-- ==============================================================================
-- STEAL AN EGG SCRIPT
-- ==============================================================================
-- === HUB STRIP POINT - when executed through the hub ScriptLoader, which injects
--     "local Library = _G.OxideLib" above this line instead. ===
-- ==============================================================================

-- ==============================================================================
-- RE-EXECUTION GUARD + RESOURCE TRACKING
-- ==============================================================================
do
    local prev = _G.OxideStealAnEgg
    if prev and type(prev.Unload) == "function" then pcall(prev.Unload) end
end
local HUB = { conns = {}, drawings = {}, highlights = {}, dead = false }
_G.OxideStealAnEgg = HUB
local function track(conn) table.insert(HUB.conns, conn); return conn end
local function trackDrawing(d) if d then table.insert(HUB.drawings, d) end; return d end

local Window = Library:CreateWindow({
    Name = "Oxide HUB | Ein Ei stehlen",
    LoadingAnimation = true,
    LoadingText = "Oxide",
    LoadingDuration = 2.0,
})

-- ==============================================================================
-- CONFIG / FLAG PERSISTENCE
-- ==============================================================================
local HAS_CONFIG = type(Library.SaveConfig) == "function"
    and type(Library.LoadConfig) == "function"
    and type(Library.ListConfigs) == "function"
local CONFIG_NAME = "stealanegg"

local dropdownResync = {}
local function registerResync(handle, applyFn)
    if handle and applyFn then
        table.insert(dropdownResync, function() applyFn(handle:Get()) end)
    end
end
local function ResyncAll()
    for _, fn in ipairs(dropdownResync) do pcall(fn) end
end

-- ==============================================================================
-- SERVICES & LOCALS
-- ==============================================================================
local Players             = game:GetService("Players")
local RS                  = game:GetService("ReplicatedStorage")
local ReplicatedStorage   = RS
local RunService          = game:GetService("RunService")
local UserInputService    = game:GetService("UserInputService")
local Workspace           = game:GetService("Workspace")
local Lighting            = game:GetService("Lighting")
local TeleportService     = game:GetService("TeleportService")
local VirtualUser         = game:GetService("VirtualUser")

local LP          = Players.LocalPlayer
local LocalPlayer = LP
local function GetCamera()
    return Workspace.CurrentCamera or Workspace:FindFirstChildOfClass("Camera")
end

-- Instant ProximityPrompt Hold Eliminator (Ensures 0s hold on egg pickup)
pcall(function()
    local pps = game:GetService("ProximityPromptService")
    track(pps.PromptButtonHoldBegan:Connect(function(prompt, player)
        if player == LP and tostring(prompt) == "CarryAreaEgg" then
            prompt.HoldDuration = 0
        end
    end))
end)

-- Anti-Robux Purchase Prompt Shield: immediately dismisses accidental Robux purchase prompts
pcall(function()
    local coreGui = game:GetService("CoreGui")
    track(coreGui.ChildAdded:Connect(function(child)
        if child.Name == "PurchasePrompt" then
            task.wait(0.04)
            pcall(function()
                local cancel = child:FindFirstChild("CancelButton", true)
                if cancel and typeof(cancel) == "Instance" and cancel:IsA("GuiButton") then
                    pcall(function() cancel.MouseButton1Click:Fire() end)
                end
            end)
        end
    end))
end)

local function Notify(title, content, kind, dur)
    pcall(function()
        Window:Notify({ Title = title, Content = content, Type = kind or "Info", Duration = dur or 2.5 })
    end)
end

local function safeCallback(fn)
    return function(...)
        local ok, err = pcall(fn, ...)
        if not ok then
            pcall(Notify, "Oxide HUB", "Error: " .. tostring(err), "Error", 4)
        end
    end
end

-- ==============================================================================
-- CLIENT AC NEUTRALIZER & UGI CONSTANT WIPER (Layer 1 + Layer 2)
-- ==============================================================================
local function bypassClientDetections()
    if typeof(filtergc) ~= "function" or typeof(debug) ~= "table" or typeof(debug.getupvalues) ~= "function" then
        return false, "no filtergc"
    end
    local ok, fn = pcall(function()
        return filtergc("function", {
            Constants = { "gmatch", "GetFullName" },
        }, true)
    end)
    if not ok or type(fn) ~= "function" then
        return false, "filter miss"
    end
    local setMeta = (typeof(setrawmetatable) == "function" and setrawmetatable)
        or (typeof(setmetatable) == "function" and setmetatable)
    if not setMeta then
        return false, "no setmeta"
    end
    local blocked = 0
    local okUv, ups = pcall(debug.getupvalues, fn)
    if not okUv or type(ups) ~= "table" then
        return false, "no upvalues"
    end
    for _, tbl in pairs(ups) do
        if typeof(tbl) == "table" then
            local okSet = pcall(setMeta, tbl, {
                __newindex = function() end,
            })
            if okSet then
                blocked = blocked + 1
            end
        end
    end
    return blocked > 0, blocked
end

pcall(bypassClientDetections)

-- Runtime AC Detection Table Freezer (Neutralizes violation storage)
pcall(function()
    local getgc = getgc or (debug and debug.getgc)
    local setmeta = setrawmetatable or setmetatable
    local getmeta = getrawmetatable or getmetatable

    if getgc and setmeta then
        for _, obj in ipairs(getgc(true)) do
            if typeof(obj) == "table" and not (getmeta and getmeta(obj)) then
                local mainrun = false
                for _, v in pairs(obj) do
                    if v == obj then
                        mainrun = true
                        break
                    end
                end
                if mainrun then
                    for _, v in pairs(obj) do
                        if typeof(v) == "number" and v >= 1 and v <= 3 and obj[v] == nil then
                            pcall(setmeta, obj, { __newindex = function() end })
                            break
                        end
                    end
                end
            end
        end
    end
end)

-- UGI Constant Wiper (neutralizes ReplicatedFirst.UGI watchdog)
pcall(function()
    local getconstants = getconstants or (debug and debug.getconstants)
    local setconstant = setconstant or (debug and debug.setconstant)
    local islclosure = islclosure or function(Function)
        return not pcall(setfenv, getfenv(Function))
    end

    if getgc and getconstants and setconstant then
        for _, Function in ipairs(getgc(true)) do
            if typeof(Function) == "function" and islclosure(Function) then
                local ok, Source = pcall(debug.info, Function, "s")
                if ok and type(Source) == "string" and Source:find("ReplicatedFirst", 1, true) and Source:find("UGI", 1, true) then
                    local okC, Constants = pcall(getconstants, Function)
                    if okC and type(Constants) == "table" then
                        for Index, Constant in next, Constants do
                            if type(Constant) == "string" and Constant == "Humanoid" then
                                pcall(setconstant, Function, Index, "")
                            end
                        end
                    end
                end
            end
        end
    end
end)

-- Secondary Layer: X-14 Stack Scrubber & Token Neutralizer
pcall(function()
    local getconstants = getconstants or (debug and debug.getconstants)
    local islclosure = islclosure or function(fn) return not pcall(setfenv, getfenv(fn)) end
    local HookFn = hookfunction or replaceclosure or hookfunc
    if getgc and getconstants and HookFn and debug and debug.getstack and debug.setstack then
        for _, fn in ipairs(getgc(true)) do
            if typeof(fn) == "function" and islclosure(fn) then
                local ok, consts = pcall(getconstants, fn)
                if ok and type(consts) == "table" and table.find(consts, "X-14") then
                    local cb = nil
                    cb = HookFn(fn, function(...)
                        local stack = debug.getstack(1)
                        if type(stack) == "table" then
                            for idx, val in pairs(stack) do
                                if val == "X-14" then
                                    pcall(debug.setstack, 1, idx, nil)
                                end
                            end
                        end
                        if cb then return cb(...) end
                    end)
                end
            end
        end
    end
end)

-- Layer 3: Anti-Tamper State Table Sanitizer (19-upvalue detection neutralization)
pcall(function()
    local getgc = getgc or (debug and debug.getgc)
    local islclosure = islclosure or function(v) return not pcall(setfenv, getfenv(v)) end
    local getupvalues = getupvalues or (debug and debug.getupvalues)
    local getupvalue = getupvalue or (debug and debug.getupvalue)
    local setupvalue = setupvalue or (debug and debug.setupvalue)
    local clonefunction = clonefunction or function(f) return function(...) return f(...) end end

    if getgc and getupvalues and getupvalue and setupvalue then
        for _, v in ipairs(getgc(true)) do
            if typeof(v) == "function" and islclosure(v) then
                local ok, upvs = pcall(getupvalues, v)
                if ok and upvs and #upvs == 19 then
                    local ok2, u2 = pcall(getupvalue, v, 2)
                    if ok2 and typeof(u2) == "function" then
                        local old = clonefunction(u2)
                        pcall(setupvalue, v, 2, function(a, b)
                            if b and typeof(b) == "table" then
                                pcall(setmetatable, b, {})
                            end
                            return old(a, b)
                        end)
                    end
                end
            end
        end
    end
end)

-- ==============================================================================
-- CHARACTER & MOVEMENT HELPERS
-- ==============================================================================
local function findChar() return LP.Character end
local function findHum()
    local ch = LP.Character
    return ch and ch:FindFirstChildOfClass("Humanoid")
end
local function findHRP()
    local ch = LP.Character
    return ch and (ch:FindFirstChild("HumanoidRootPart") or ch.PrimaryPart or ch:FindFirstChildWhichIsA("BasePart"))
end

local GetCharacter = findChar
local GetHumanoid  = findHum
local GetHRP       = findHRP

local function GetRootCFrame()
    local hrp = findHRP()
    return hrp and hrp.CFrame
end

-- ==============================================================================
-- BAC TELEMETRY PACKET SPOOFER
-- ==============================================================================
local bxor = bit32.bxor
local unpack = table.unpack

local function isGuid(n)
    return #n==36 and n:sub(9,9)=="-" and n:sub(14,14)=="-" and n:sub(19,19)=="-" and n:sub(24,24)=="-" and n:gsub("-",""):match("^%x+$")~=nil
end

local remoteSet, anyRemote = {}, nil

local function scanRemotes()
    for _, s in ipairs(game:GetChildren()) do
        local ok, list = pcall(s.GetDescendants, s)
        if ok and list then
            for _, o in ipairs(list) do
                if o:IsA("RemoteEvent") and isGuid(o.Name) then
                    remoteSet[o] = true
                    anyRemote = anyRemote or o
                end
            end
        end
    end
end

scanRemotes()

local function parseCounter(v)
    if type(v) ~= "string" then return end
    local n = v:match("^X%-(%d+)$")
    return n and tonumber(n)
end

local function looksLikeState(t, r)
    if type(t) ~= "table" then return false end
    local hR, hM = false, false
    local ok = pcall(function()
        for _, v in pairs(t) do
            if v == r then hR = true
            elseif type(v) == "string" and v:match("^X%-%d+$") then hM = true end
        end
    end)
    return ok and hR and hM
end

local function findState(r)
    for l=2,24 do
        local _, fn = pcall(debug.info, l, "f")
        if type(fn) == "function" then
            local _, ups = pcall(debug.getupvalues, fn)
            if type(ups) == "table" then
                for _, v in pairs(ups) do
                    if looksLikeState(v, r) then return v end
                    if type(v) == "table" then
                        local nested
                        pcall(function()
                            for _, x in pairs(v) do
                                if looksLikeState(x, r) then nested = x; return end
                            end
                        end)
                        if nested then return nested end
                    end
                end
            end
        end
    end
end

local function mapState(st, a1, a2)
    local m = {}
    for k, v in pairs(st) do
        if type(v) == "string" then
            if v:match("^X%-%d+$") then m.marker = m.marker or k
            elseif a1 and v == a1 then m.arg1 = m.arg1 or k
            elseif a2 and v == a2 then m.arg2 = m.arg2 or k end
        end
    end
    return m
end

local model = nil

local function digits(n)
    n = n % 1000
    return math.floor(n/100), math.floor(n/10)%10, n%10
end

local function encode(m, c)
    local d1, d2, d3 = digits(c)
    return m.prefix .. string.char(bxor(d1, m.k1), bxor(d2, m.k2), bxor(d3, m.k3))
end

local function learn(r, a1, a2)
    local st = findState(r)
    if not st then return end
    local map = mapState(st, a1, a2)
    if not map.marker then return end
    local c = parseCounter(rawget(st, map.marker))
    if not c then return end
    local d1, d2, d3 = digits(c)
    local m = {
        state = st, map = map, remote = r,
        prefix = a1:sub(1, 9),
        k1 = bxor(a1:byte(10), d1),
        k2 = bxor(a1:byte(11), d2),
        k3 = bxor(a1:byte(12), d3),
        offset = c - os.time(),
        arg2 = a2
    }
    if encode(m, c) == a1 then return m end
end

local function liveCounter(m)
    if m.state and m.map.marker then
        local _, raw = pcall(rawget, m.state, m.map.marker)
        local c = parseCounter(raw)
        if c and math.abs((c - os.time()) - m.offset) <= 5 then
            return c
        end
    end
    return os.time() + m.offset
end

local function refreshArg2(m)
    if m.state and m.map.arg2 then
        local _, v = pcall(rawget, m.state, m.map.arg2)
        if type(v) == "string" then m.arg2 = v end
    end
    return m.arg2
end

local HookFn = hookfunction or replaceclosure or hookfunc or detour_function

if anyRemote and HookFn then
    local oldFire
    oldFire = HookFn(anyRemote.FireServer, function(self, ...)
        local args = table.pack(...)
        if not remoteSet[self] then
            return oldFire(self, unpack(args, 1, args.n))
        end

        local a1 = args[1]

        if type(a1) == "string" and #a1 == 12 then
            if not model then
                model = learn(self, a1, args[2])
            else
                local c = parseCounter(rawget(model.state, model.map.marker))
                if c and encode(model, c) ~= a1 then
                    local m = learn(self, a1, args[2])
                    if m then m.spoofed = model.spoofed; model = m end
                end
            end
            return oldFire(self, unpack(args, 1, args.n))
        end

        if model and type(a1) == "string" and #a1 == 4 then
            local c = liveCounter(model)
            args[1] = encode(model, c)
            args[2] = refreshArg2(model)
            model.spoofed = (model.spoofed or 0) + 1
            return oldFire(self, unpack(args, 1, math.max(args.n, 2)))
        end

        return oldFire(self, unpack(args, 1, args.n))
    end)
end

task.spawn(function()
    while not HUB.dead do
        task.wait(10)
        local alive = false
        for r in pairs(remoteSet) do
            if r:IsDescendantOf(game) then alive = true; break end
        end
        if not alive then
            table.clear(remoteSet)
            anyRemote = nil
            model = nil
            scanRemotes()
        end
    end
end)

-- Real-time Memory Evidence Scrubber for Character Integrity
task.spawn(function()
    if not getgc then return end
    local st = nil

    local function findIntegrityTable()
        local ok, objs = pcall(getgc, true)
        if ok and objs then
            for _, o in pairs(objs) do
                if type(o) == "table" then
                    local hit = false
                    pcall(function()
                        hit = (rawget(o, "ValidationLocked") ~= nil and rawget(o, "Evidence") ~= nil)
                            or (rawget(o, "ThreatLevel") ~= nil and rawget(o, "LastObservedSample") ~= nil)
                    end)
                    if hit then return o end
                end
            end
        end
        return nil
    end

    track(LP.CharacterAdded:Connect(function()
        task.wait(1)
        st = findIntegrityTable()
    end))

    while not HUB.dead do
        if not st then
            st = findIntegrityTable()
        end

        if st then
            pcall(function()
                local ev = rawget(st, "Evidence")
                if type(ev) == "table" then
                    if (tonumber(ev.Speed)    or 0) > 0 then rawset(ev, "Speed", 0) end
                    if (tonumber(ev.Teleport) or 0) > 0 then rawset(ev, "Teleport", 0) end
                    if (tonumber(ev.Flight)   or 0) > 0 then rawset(ev, "Flight", 0) end
                end
                if rawget(st, "ThreatLevel") ~= "Trusted" then rawset(st, "ThreatLevel", "Trusted") end
                if rawget(st, "ValidationLocked") == true then rawset(st, "ValidationLocked", false) end
                if rawget(st, "FirstSuspiciousAt") ~= nil then rawset(st, "FirstSuspiciousAt", nil) end
                if rawget(st, "KickQueued") == true then rawset(st, "KickQueued", false) end
                if rawget(st, "TamperScore") ~= nil then rawset(st, "TamperScore", 0) end
                if rawget(st, "InvalidHeartbeatCount") ~= nil then rawset(st, "InvalidHeartbeatCount", 0) end

                local los = rawget(st, "LastObservedSample")
                if los ~= nil then
                    if rawget(st, "LastGameplayTrustedSample") == nil then rawset(st, "LastGameplayTrustedSample", los) end
                    if rawget(st, "LastValidatedSample") == nil then rawset(st, "LastValidatedSample", los) end
                    if rawget(st, "LastValidatedGroundedSample") == nil then rawset(st, "LastValidatedGroundedSample", los) end
                    if rawget(st, "LastConfirmedGroundSample") == nil then rawset(st, "LastConfirmedGroundSample", los) end
                    if rawget(st, "LastGoodSample") == nil then rawset(st, "LastGoodSample", los) end
                end
            end)
        end
        task.wait(0.2)
    end
end)

-- ==============================================================================
-- GAME NETWORKING & MODULE INTEGRATION
-- ==============================================================================
local EggState, PlotState, AreasData, RarityData, AssetsData, EggToolDisplay, AreaEggSlotIdentity
pcall(function() EggState = require(RS.Client.EggState) end)
pcall(function() PlotState = require(RS.Client.PlotState) end)
pcall(function() AreasData = require(RS.Data.Areas) end)
pcall(function() RarityData = require(RS.Data.Rarity) end)
pcall(function() AssetsData = require(RS.Data.Assets) end)
local SaveModule
pcall(function() SaveModule = require(RS.Shared.Save) end)
pcall(function() EggToolDisplay = require(RS.Shared.Eggs.EggToolDisplay) end)
pcall(function()
    AreaEggSlotIdentity = (RS:FindFirstChild("Shared") and RS.Shared:FindFirstChild("Util") and require(RS.Shared.Util.AreaEggSlotIdentity))
        or (RS:FindFirstChild("Util") and require(RS.Util.AreaEggSlotIdentity))
        or (RS:FindFirstChild("Shared") and RS.Shared:FindFirstChild("Utils") and require(RS.Shared.Utils.AreaEggSlotIdentity))
end)

local function GetNetRemote(name)
    local net = RS:FindFirstChild("Packages") and RS.Packages:FindFirstChild("Networking")
    return net and net:FindFirstChild(name)
end

local function GetLocalSlot()
    if PlotState and PlotState.ResolveLocalSlot then
        local ok, slot = pcall(PlotState.ResolveLocalSlot)
        if ok and slot then return slot end
    end
    return 1
end

local function GetLocalPlotCenter()
    local plotObj = PlotState and PlotState.ResolvePlot and PlotState.ResolvePlot()
    local pt = plotObj and plotObj.CenterPoint and (typeof(plotObj.CenterPoint) == "Vector3" and plotObj.CenterPoint or (plotObj.CenterPoint:IsA("BasePart") and plotObj.CenterPoint.Position))
    if pt then
        return Vector3.new(pt.X, math.max(pt.Y, 70.4), pt.Z), CFrame.new(pt.X, math.max(pt.Y, 70.4), pt.Z)
    end
    return Vector3.new(464.7, 70.4, -364.0), CFrame.new(464.7, 70.4, -364.0)
end

-- ==============================================================================
-- CLEAN ROAD & FLIGHT PATH NAVIGATION (Anti-Trap & Zero Kick Engine)
-- ==============================================================================
local MAIN_ROAD_Z = -364.5

local stealMovementMethod    = "Tween Glide" -- "Tween Glide", "Fly Glide", "Safe Walk", "Anti Guard"
local avoidTrapsEnabled       = true
local autoClaimMonsterChests  = false
local autoFeedMonster         = false

local function instantTP(cframe)
    local root = findHRP()
    if not root then return end
    root.CFrame = cframe
    root.AssemblyLinearVelocity = Vector3.zero
    root.AssemblyAngularVelocity = Vector3.zero
    task.spawn(function()
        local char = LP.Character
        if char then
            for _, part in ipairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    pcall(function() part.CanCollide = false end)
                end
            end
        end
    end)
end

local function heartbeatTP(cframeTarget, holdTime)
    local root = findHRP()
    if not root then return end
    local char = LP.Character
    if char then
        for _, part in ipairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                pcall(function() part.CanCollide = false end)
            end
        end
    end
    local conn
    conn = RunService.Heartbeat:Connect(function()
        local r = findHRP()
        if r and r.Parent then
            r.CFrame = cframeTarget
            r.AssemblyLinearVelocity = Vector3.zero
            r.AssemblyAngularVelocity = Vector3.zero
        end
    end)
    task.wait(holdTime or 0.25)
    if conn then conn:Disconnect() end
    local r2 = findHRP()
    if r2 then
        r2.CFrame = cframeTarget
        r2.AssemblyLinearVelocity = Vector3.zero
        r2.AssemblyAngularVelocity = Vector3.zero
    end
end

local BYPASS_FLOAT_HEIGHT = 6.7
local BYPASS_LEG_OFFSET = Vector3.new(0, -6.7, 0)
local BYPASS_TP_OFFSET = Vector3.new(0, 6.7, 0)

local function bypassReturnTP(safeCFrame, holdTime)
    local hrp = findHRP()
    if not hrp then return false end
    local targetPart = Workspace:FindFirstChild("SpawnLocation", true)
    if not targetPart or not targetPart:IsA("BasePart") then
        heartbeatTP(safeCFrame, holdTime or 0.3)
        return true
    end
    pcall(function() targetPart.CanCollide = false end)
    local char = LP.Character
    if char then
        for _, part in ipairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                pcall(function() part.CanCollide = false end)
            end
        end
    end
    local conn
    conn = RunService.Heartbeat:Connect(function()
        local r = findHRP()
        if not r or not r.Parent then return end
        pcall(function() targetPart.CFrame = r.CFrame * CFrame.new(BYPASS_LEG_OFFSET) end)
        r.CFrame = safeCFrame + BYPASS_TP_OFFSET
        r.AssemblyLinearVelocity = Vector3.zero
        r.AssemblyAngularVelocity = Vector3.zero
        pcall(function() targetPart.CFrame = safeCFrame end)
    end)
    task.wait(holdTime or 0.35)
    if conn then conn:Disconnect() end
    local r2 = findHRP()
    if r2 then
        r2.CFrame = safeCFrame
        r2.AssemblyLinearVelocity = Vector3.zero
        r2.AssemblyAngularVelocity = Vector3.zero
    end
    return true
end

local function restoreCollisions()
    local char = LP.Character
    if not char or not char.Parent then return end
    for _, part in ipairs(char:GetDescendants()) do
        if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
            part.CanCollide = true
        end
    end
end

local function SafeTeleport(targetPos)
    local root = findHRP()
    if not root or not targetPos then return false end
    root.CFrame = CFrame.new(targetPos.X, math.max(targetPos.Y, 70.0), targetPos.Z)
    root.AssemblyLinearVelocity = Vector3.zero
    root.AssemblyAngularVelocity = Vector3.zero
    return true
end

local function NeutralizeTraps()
    local debris = Workspace:FindFirstChild("__DEBRIS")
    if not debris then return end
    for _, d in ipairs(debris:GetChildren()) do
        if d.Name == "PlayerTrap" and d:GetAttribute("Owner") ~= LP.Name then
            if d:IsA("BasePart") then
                d.CanTouch = false
                d.CanQuery = false
            end
            for _, c in ipairs(d:GetChildren()) do
                if c:IsA("BasePart") then
                    c.CanTouch = false
                    c.CanQuery = false
                    if c.Name == "Hitbox" then
                        c.CFrame = CFrame.new(0, -999, 0)
                    end
                end
            end
            local tt = d:FindFirstChildWhichIsA("TouchTransmitter", true)
            if tt then pcall(function() tt:Destroy() end) end
        end
    end
end

local function MoveToPoint(target, speed, easeOut)
    local hrp = findHRP()
    if not hrp or not target then return false end

    local start = hrp.Position
    local dist = (target - start).Magnitude
    if dist < 1.0 then
        hrp.CFrame = CFrame.new(target.X, math.max(target.Y, 70.0), target.Z)
        hrp.AssemblyLinearVelocity = Vector3.zero
        hrp.AssemblyAngularVelocity = Vector3.zero
        return true
    end

    speed = math.clamp(tonumber(speed) or tonumber(glideSpeed) or 750, 50, 750)

    local t0 = os.clock()
    local totalDist = dist
    while not HUB.dead do
        local dt = RunService.Heartbeat:Wait()
        local curPos = hrp.Position
        local toTarget = target - curPos
        local remain = toTarget.Magnitude
        if remain < 1.0 then break end
        local stepSpeed = speed
        if easeOut then
            local progress = 1 - math.clamp(remain / totalDist, 0, 1)
            stepSpeed = math.max(speed * (1 - progress * 0.8), 35)
        end
        local step = math.min(stepSpeed * dt, remain)
        local dir = toTarget.Unit
        local nextPos = curPos + dir * step
        hrp.CFrame = CFrame.lookAt(nextPos, nextPos + dir)
        hrp.AssemblyLinearVelocity = Vector3.zero
        hrp.AssemblyAngularVelocity = Vector3.zero
        if os.clock() - t0 > (totalDist / 50 + 5) then break end
    end

    hrp.CFrame = CFrame.new(target.X, math.max(target.Y, 70.0), target.Z)
    hrp.AssemblyLinearVelocity = Vector3.zero
    hrp.AssemblyAngularVelocity = Vector3.zero
    return true
end

local function FlyToPoint(target, speed, easeOut)
    local hrp = findHRP()
    if not hrp or not target then return false end
    local start = hrp.Position
    local dist = (target - start).Magnitude
    if dist < 1.0 then
        hrp.CFrame = CFrame.new(target.X, math.max(target.Y, 70.0), target.Z)
        hrp.AssemblyLinearVelocity = Vector3.zero
        hrp.AssemblyAngularVelocity = Vector3.zero
        return true
    end

    speed = math.clamp(tonumber(speed) or tonumber(glideSpeed) or 750, 50, 750)
    local moveTime = math.max(dist / speed, 0.02)
    if easeOut then
        moveTime = moveTime * 1.25
    end

    local t0 = os.clock()
    local delta = target - start
    local dir = delta.Magnitude > 0.001 and delta.Unit or Vector3.new(1, 0, 0)

    while os.clock() - t0 < moveTime and not HUB.dead do
        local dt = RunService.Heartbeat:Wait()
        local linearAlpha = math.clamp((os.clock() - t0) / moveTime, 0, 1)

        local a = linearAlpha
        if easeOut then
            a = math.sin(linearAlpha * (math.pi / 2))
        end

        local cur = start:Lerp(target, a)
        hrp.CFrame = CFrame.lookAt(cur, cur + dir)

        local curSpeed = speed
        if easeOut then
            curSpeed = math.max(speed * (1 - linearAlpha * 0.8), 35)
        end
        hrp.AssemblyLinearVelocity = Vector3.new(dir.X * curSpeed, math.clamp(dir.Y * curSpeed, -15, 150), dir.Z * curSpeed)
        hrp.AssemblyAngularVelocity = Vector3.zero
    end

    hrp.CFrame = CFrame.new(target.X, math.max(target.Y, 70.0), target.Z)
    hrp.AssemblyLinearVelocity = Vector3.zero
    hrp.AssemblyAngularVelocity = Vector3.zero
    return true
end

local SAFE_BOUNDARY_X = 580 -- right before entering the safe zone
local SAFE_ZONE_SPEED = 245 -- 245 studs/s safe entry speed

local function TravelRoadPath(targetPos, speed, isApproach)
    local hrp = findHRP()
    if not hrp or not targetPos then return false end
    if avoidTrapsEnabled then pcall(NeutralizeTraps) end

    local startPos = hrp.Position
    local safeY = math.max(startPos.Y, targetPos.Y, 70.4)
    local isReturningToBase = (targetPos.X < 560)

    if isReturningToBase and startPos.X > SAFE_BOUNDARY_X then
        -- 1. Sprint to main road at full speed (750 studs/s)
        local p1 = Vector3.new(startPos.X, safeY, MAIN_ROAD_Z)
        MoveToPoint(p1, speed, false)

        -- 2. Sprint along main road at full speed until 20 studs BEFORE safe zone
        local pSafeApproach = Vector3.new(SAFE_BOUNDARY_X, safeY, MAIN_ROAD_Z)
        MoveToPoint(pSafeApproach, speed, false)

        -- 3. Slow down to 245 studs/s before entering the safe zone
        local pBaseRoad = Vector3.new(targetPos.X, safeY, MAIN_ROAD_Z)
        MoveToPoint(pBaseRoad, SAFE_ZONE_SPEED, false)

        -- 4. Enter base pen at 245 studs/s
        local pPen = targetPos + Vector3.new(0, 1.2, 0)
        MoveToPoint(pPen, SAFE_ZONE_SPEED, isApproach == true)
        return true
    else
        local p1 = Vector3.new(startPos.X, safeY, MAIN_ROAD_Z)
        local p2 = Vector3.new(targetPos.X, safeY, MAIN_ROAD_Z)
        local p3 = targetPos + Vector3.new(0, 1.2, 0)

        MoveToPoint(p1, speed, false)
        MoveToPoint(p2, speed, false)
        MoveToPoint(p3, speed, isApproach == true)
        return true
    end
end

local function TravelFlyDirect(targetPos, speed, isApproach)
    local hrp = findHRP()
    if not hrp or not targetPos then return false end
    if avoidTrapsEnabled then pcall(NeutralizeTraps) end

    local startPos = hrp.Position
    local isReturningToBase = (targetPos.X < 560)
    local flyAltitude = math.max(startPos.Y, targetPos.Y, 70.4) + 28

    if isReturningToBase and startPos.X > SAFE_BOUNDARY_X then
        -- Fly at full speed (750 studs/s) until right before safe zone
        local pSky1 = Vector3.new(startPos.X, flyAltitude, startPos.Z)
        local pSkySafe = Vector3.new(SAFE_BOUNDARY_X, flyAltitude, MAIN_ROAD_Z)
        FlyToPoint(pSky1, speed, false)
        FlyToPoint(pSkySafe, speed, false)

        -- Descend and slow down to 245 studs/s before entering safe zone
        local pGroundSafe = Vector3.new(SAFE_BOUNDARY_X, 70.4, MAIN_ROAD_Z)
        FlyToPoint(pGroundSafe, SAFE_ZONE_SPEED, false)

        local pBaseRoad = Vector3.new(targetPos.X, 70.4, MAIN_ROAD_Z)
        MoveToPoint(pBaseRoad, SAFE_ZONE_SPEED, false)

        local pPen = targetPos + Vector3.new(0, 1.2, 0)
        MoveToPoint(pPen, SAFE_ZONE_SPEED, isApproach == true)
        return true
    else
        local totalDist = (targetPos - startPos).Magnitude
        if totalDist < 25 then
            FlyToPoint(Vector3.new(targetPos.X, math.max(targetPos.Y, 70.0) + 1.2, targetPos.Z), speed, isApproach == true)
            return true
        end

        local pSky1 = Vector3.new(startPos.X, flyAltitude, startPos.Z)
        local pSky2 = Vector3.new(targetPos.X, flyAltitude, targetPos.Z)
        local pGround = Vector3.new(targetPos.X, math.max(targetPos.Y, 70.0) + 1.2, targetPos.Z)

        FlyToPoint(pSky1, speed, false)
        FlyToPoint(pSky2, speed, false)
        FlyToPoint(pGround, speed, isApproach == true)
        return true
    end
end

local function TravelSafeWalk(targetPos)
    local hum = findHum()
    local hrp = findHRP()
    if not hum or not hrp or not targetPos then return false end
    if avoidTrapsEnabled then pcall(NeutralizeTraps) end

    local startPos = hrp.Position
    local p1 = Vector3.new(startPos.X, startPos.Y, MAIN_ROAD_Z)
    local p2 = Vector3.new(targetPos.X, targetPos.Y, MAIN_ROAD_Z)
    local p3 = targetPos + Vector3.new(0, 1.2, 0)

    for _, pt in ipairs({ p1, p2, p3 }) do
        if HUB.dead then break end
        hum:MoveTo(pt)
        local t0 = os.clock()
        while (hrp.Position - pt).Magnitude > 4.5 and os.clock() - t0 < 5 and not HUB.dead do
            task.wait(0.05)
        end
    end
    return true
end

local function TravelToDestination(targetPos, speed, isApproach)
    if stealMovementMethod == "Fly Glide" then
        return TravelFlyDirect(targetPos, speed, isApproach)
    elseif stealMovementMethod == "Safe Walk" then
        return TravelSafeWalk(targetPos)
    else
        -- Both "Tween Glide" and "Anti Guard" smoothly glide to the egg via road
        return TravelRoadPath(targetPos, speed, isApproach)
    end
end

-- ==============================================================================
-- RARITY & AREA DICTIONARIES (Dynamic scoring for Rare Egg Hunter)
-- ==============================================================================
local RARITY_SCORE_MAP = {
    ["Titan"]           = 1100,
    ["Divine"]          = 1000,
    ["Transcendent"]    = 1000,
    ["Superior"]        = 1000,
    ["Eternal"]         = 900,
    ["Limited"]         = 900,
    ["Secret"]          = 800,
    ["Exotic"]          = 800,
    ["Cosmic"]          = 700,
    ["Exclusive"]       = 700,
    ["Admin"]           = 700,
    ["Mythic"]          = 600,
    ["Mythical"]        = 600,
    ["Prismatic"]       = 600,
    ["Rainbow"]         = 600,
    ["Squishy God"]     = 600,
    ["BrainrotGod"]     = 600,
    ["Legendary"]       = 500,
    ["Epic"]            = 400,
    ["Rare"]            = 300,
    ["SuperRare"]       = 200,
    ["Celestial"]       = 200,
    ["Uncommon"]        = 200,
    ["Basic"]           = 100,
    ["Common"]          = 100,
}

local AREA_COORDINATES = {
    ["Base / Plot"]      = Vector3.new(491.7, 70.4, -364.4),
    ["Stands & Shops"]   = Vector3.new(539.5, 68.0, -364.5),
    ["Forest"]           = Vector3.new(596.0, 68.0, -328.0),
    ["Lake"]             = Vector3.new(744.0, 68.5, -408.0),
    ["Desert"]           = Vector3.new(948.0, 69.5, -323.0),
    ["Jungle"]           = Vector3.new(1188.0, 68.5, -408.0),
    ["Snow"]             = Vector3.new(1492.0, 69.0, -315.0),
    ["Volcano"]          = Vector3.new(1882.0, 68.0, -398.0),
    ["Abyss Ocean"]      = Vector3.new(2280.0, 68.0, -326.0),
    ["Prehistoric"]      = Vector3.new(2812.0, 69.0, -398.0),
    ["Cosmic"]           = Vector3.new(3390.0, 68.0, -324.0),
    ["Cherry Blossom"]   = Vector3.new(4028.0, 68.5, -396.0),
    ["Titan Temple"]     = Vector3.new(4796.0, 69.5, -328.0),
    ["Monster Event"]    = Vector3.new(539.5, 68.0, -411.3),
    ["Dragon Event"]     = Vector3.new(539.5, 68.0, -318.0),
}

local AREA_NAMES = {
    "Forest", "Lake", "Desert", "Jungle", "Snow", "Volcano",
    "Abyss Ocean", "Prehistoric", "Cosmic", "Cherry Blossom", "Titan Temple",
    "Monster Event", "Dragon Event"
}

local RARITY_NAMES = {
    "Titan", "Divine", "Superior", "Eternal", "Limited",
    "Secret", "Exotic", "Cosmic", "Exclusive", "Mythic", "Rainbow",
    "Squishy God", "Legendary", "Epic", "Rare", "Uncommon", "Common"
}

local MUTATION_FILTERS = {
    "Normal Only", "Mutated Only", "Parasite / Infested", "Rainbow Only", "Gold Only", "Silver Only", "Monstrous"
}

-- ==============================================================================
-- AUTOMATION STATE & PERSISTENT RETURN POSITION
-- ==============================================================================
local autoStealEnabled          = false
local rareEggHunter             = true
local stealParasiteOnly         = false
local stealBigEggsOnly          = false
local selectedStealRarities     = {}
local selectedStealAreas        = {}
local selectedMutationTypes     = {}
local stealDelay                = 1.5
local glideSpeed                = 750
local ignoredEggs               = {} -- [uid] = timestamp (prevents loops on failed eggs)

-- Saved Return Position (automatically captured on first steal activation)
local savedReturnCFrame         = nil

local autoHatchEnabled          = false
local autoPlantEnabled          = false
local hatchCheckDelay           = 2.0

local autoUpgradeBase           = false
local autoUpgradeTreadmill      = false
local autoTrainSpeed            = false
local autoBuyTrails             = false
local autoEquipBestPets         = false
local autoClaimRewards          = false

local autoSellPets              = false
local autoSellEggs              = false
local selectedSellPetRarities   = {}
local selectedSellEggRarities   = {}

-- When no rarity filter is picked, only sell low-tier items (the default list
-- from the working satchel seller) instead of everything in the inventory.
local DEFAULT_LOW_TIER_SELL = {
    ["Common"] = true, ["Uncommon"] = true, ["Rare"] = true,
    ["Epic"] = true, ["Legendary"] = true, ["Mythic"] = true,
}
local SELL_REQUEST_DELAY = 0.1
local function getSellRarityFilter(selected)
    if not selected or next(selected) == nil then return DEFAULT_LOW_TIER_SELL end
    return selected
end

local instantPickupEnabled      = true
local noKnockbackEnabled        = true
local batAuraEnabled            = false
local batAuraRadius             = 20
local batAuraDelay              = 0.2
local antiRagdollEnabled        = true

-- ==============================================================================
-- EGG STEALING, PLANTING & HATCHING CORE LOGIC (Strict Rarity Matching)
-- ==============================================================================
local function GetEggRarityInfo(egg)
    if not egg then return "Common", 100 end

    -- 1. Direct rarity property on egg
    if egg.Rarity then
        local r = egg.Rarity
        local name = type(r) == "table" and (r.DisplayName or r._id or r.Name) or tostring(r)
        local score = RARITY_SCORE_MAP[name] or (type(r) == "table" and tonumber(r.RarityNumber) and r.RarityNumber * 100) or 100
        return name, score
    end

    -- 2. Individual Animal / Egg Rarity from Assets Catalog (AssetCategory)
    local cat = egg.AssetCategory or egg.Category or egg.Name
    if cat and AssetsData then
        local assetsDir = AssetsData.Directory or AssetsData
        local aInfo = assetsDir[cat]
        if aInfo and aInfo.Rarity then
            local r = aInfo.Rarity
            local name = type(r) == "table" and (r.DisplayName or r._id or r.Name) or tostring(r)
            local score = RARITY_SCORE_MAP[name] or (type(r) == "table" and tonumber(r.RarityNumber) and r.RarityNumber * 100) or 100
            return name, score
        end
    end

    -- 3. Fallback to Area mapping if asset category wasn't found in catalog
    local areaData = AreasData and (AreasData.Directory or AreasData) and (AreasData.Directory or AreasData)[egg.AreaId]
    local rarity = areaData and areaData.Rarity
    local rarityId = (type(rarity) == "table" and (rarity._id or rarity.DisplayName or rarity.Name)) or (type(rarity) == "string" and rarity) or "Common"
    local raritiesTable = RarityData and (RarityData.Rarities or RarityData) or {}
    local rInfo = raritiesTable[rarityId] or {}
    local rarityDisplayName = (type(rInfo) == "table" and (rInfo.DisplayName or rInfo._id)) or (type(rarity) == "table" and rarity.DisplayName) or rarityId or "Common"
    local baseScore = RARITY_SCORE_MAP[rarityDisplayName] or RARITY_SCORE_MAP[rarityId] or (type(rarity) == "table" and tonumber(rarity.RarityNumber) and rarity.RarityNumber * 100) or 100
    return rarityDisplayName, baseScore
end

local function isRarityAllowed(rarityName, filter)
    if not filter or type(filter) ~= "table" then return true end
    local count = 0
    for _ in pairs(filter) do count = count + 1 end
    if count == 0 then return true end

    if filter[rarityName] == true then return true end
    local rLower = string.lower(tostring(rarityName))
    for k, v in pairs(filter) do
        if type(v) == "string" and string.lower(v) == rLower then
            return true
        elseif type(k) == "string" and string.lower(k) == rLower and v == true then
            return true
        end
    end
    return false
end

local function isAreaAllowed(areaId, filter)
    if not filter or type(filter) ~= "table" then return true end
    local count = 0
    for _ in pairs(filter) do count = count + 1 end
    if count == 0 then return true end

    if filter[areaId] == true then return true end
    local aLower = string.lower(tostring(areaId))
    for k, v in pairs(filter) do
        if type(v) == "string" and string.lower(v) == aLower then
            return true
        elseif type(k) == "string" and string.lower(k) == aLower and v == true then
            return true
        end
    end
    return false
end

local function isMutationAllowed(muts, record, filter)
    local isParasite = (record and record.HasParasite == true)
        or (type(muts) == "table" and (table.find(muts, "Parasite") or table.find(muts, "Monstrous")))
        or (record and (record.BaseMutation == "Parasite" or record.BaseMutation == "Monstrous"))

    if stealParasiteOnly and not isParasite then
        return false
    end

    if not filter or type(filter) ~= "table" then return true end
    local count = 0
    for _ in pairs(filter) do count = count + 1 end
    if count == 0 then return true end

    local hasMut = type(muts) == "table" and #muts > 0
    local allowed = false
    for _, opt in pairs(filter) do
        if type(opt) == "string" then
            if opt == "Normal Only" and not hasMut and not isParasite then
                allowed = true
            elseif opt == "Mutated Only" and (hasMut or isParasite) then
                allowed = true
            elseif (opt == "Parasite / Infested" or opt == "Monstrous") and isParasite then
                allowed = true
            elseif opt == "Silver Only" and type(muts) == "table" and table.find(muts, "Silver") then
                allowed = true
            elseif opt == "Gold Only" and type(muts) == "table" and (table.find(muts, "Gold") or table.find(muts, "Golden")) then
                allowed = true
            elseif opt == "Rainbow Only" and type(muts) == "table" and table.find(muts, "Rainbow") then
                allowed = true
            end
        end
    end
    return allowed
end

local function isBigEgg(record)
    if not record then return false end
    local scale = tonumber(record.AssetScale) or 1
    local nestScale = tonumber(record.NestScale) or 1
    return scale >= 1.35 or nestScale >= 1.0
end

local function GetMatchingFieldEggs(areasFilter, raritiesFilter, mutationsFilter)
    if not EggState or not EggState.ReadFieldEggs then return {} end
    local ok, snapshot = pcall(EggState.ReadFieldEggs)
    if not ok or not snapshot or not snapshot.Records then return {} end

    local matched = {}
    for _, record in ipairs(snapshot.Records) do
        if record.State == "Slot" and record.BoundsCFrame then
            local isIgnored = ignoredEggs[record.Uid] and (os.clock() - ignoredEggs[record.Uid] < 2.5)
            if not isIgnored and (not stealBigEggsOnly or isBigEgg(record)) then
                local areaOk = isAreaAllowed(record.AreaId, areasFilter)
                local rarityName, baseScore = GetEggRarityInfo(record)
                local rarityOk = isRarityAllowed(rarityName, raritiesFilter)
                local muts = record.Mutations or {}
                local mutOk = isMutationAllowed(muts, record, mutationsFilter)

                -- Strict filter check: only insert if all selected filters match!
                if areaOk and rarityOk and mutOk then
                    local mutBonus = 0
                    for _, m in ipairs(muts) do
                        if m == "Rainbow" then mutBonus = mutBonus + 35
                        elseif m == "Gold" or m == "Golden" then mutBonus = mutBonus + 20
                        elseif m == "Silver" then mutBonus = mutBonus + 10 end
                    end

                    if record.HasParasite == true or (type(muts) == "table" and (table.find(muts, "Parasite") or table.find(muts, "Monstrous"))) then
                        mutBonus = mutBonus + 800
                    end

                    if isBigEgg(record) then
                        mutBonus = mutBonus + 600
                    end

                    table.insert(matched, {
                        record = record,
                        rarity = rarityName,
                        score = baseScore + mutBonus
                    })
                end
            end
        end
    end

    -- Rare Egg Hunter: sort matched eggs by total score descending (Highest Rarity First)
    if #matched > 1 then
        table.sort(matched, function(a, b)
            return a.score > b.score
        end)
    end

    return matched
end

local function EnsureSavedReturnPosition()
    if not savedReturnCFrame then
        local hrp = findHRP()
        if hrp then
            savedReturnCFrame = hrp.CFrame
        end
    end
end

local function isPlayerCarryingEgg()
    local pg = LP:FindFirstChildOfClass("PlayerGui")
    local dropGui = pg and pg:FindFirstChild("DropHeldEgg")
    if dropGui and dropGui.Enabled == true then
        return true
    end

    local char = LP.Character
    if char then
        for _, t in ipairs(char:GetChildren()) do
            if t:IsA("Model") and (t.Name:lower():find("egg") or t:GetAttribute("Uid") or t:GetAttribute("AssetCategory")) then
                return true
            end
            if t:IsA("Tool") then
                if EggToolDisplay and EggToolDisplay.IsEggTool and EggToolDisplay.IsEggTool(t) then
                    return true
                end
                if t:GetAttribute("IsEgg") == true or t:GetAttribute("Uid") ~= nil or t:GetAttribute("AssetCategory") ~= nil then
                    return true
                end
                local tName = t.Name:lower()
                if tName:find("egg") or (tName ~= "bat" and tName ~= "defaulttool" and not tName:find("bat") and not tName:find("slap") and not tName:find("coil") and not tName:find("potion") and not tName:find("lantern")) then
                    return true
                end
            end
        end
    end
    local bp = LP:FindFirstChild("Backpack")
    if bp then
        for _, t in ipairs(bp:GetChildren()) do
            if t:IsA("Tool") and EggToolDisplay and EggToolDisplay.IsEggTool and EggToolDisplay.IsEggTool(t) then
                return true
            end
        end
    end
    return false
end

local function PlantAllCarriedEggsInPen()
    local plotObj = PlotState and PlotState.ResolvePlot and PlotState.ResolvePlot()
    local plotCenter = plotObj and plotObj.CenterPoint and plotObj.CenterPoint.Position or Vector3.new(464.7, 68.2, -364.0)

    local toolsToPlant = {}
    for _, t in ipairs(LP.Character:GetChildren()) do
        if t:IsA("Tool") and EggToolDisplay and EggToolDisplay.IsEggTool and EggToolDisplay.IsEggTool(t) then
            local uid = EggToolDisplay.GetToolUid(t)
            if uid then table.insert(toolsToPlant, uid) end
        end
    end
    for _, t in ipairs(LP.Backpack:GetChildren()) do
        if t:IsA("Tool") and EggToolDisplay and EggToolDisplay.IsEggTool and EggToolDisplay.IsEggTool(t) then
            local uid = EggToolDisplay.GetToolUid(t)
            if uid then table.insert(toolsToPlant, uid) end
        end
    end

    local plantedCount = 0
    for _, eggUid in ipairs(toolsToPlant) do
        for attempt = 1, 3 do
            local offset = CFrame.new(math.random(-6, 6), 0, math.random(-6, 6))
            local ok, res = pcall(function()
                if EggState and EggState.PlantEgg then
                    return EggState.PlantEgg(eggUid, offset)
                end
                return false
            end)
            if ok and res then
                plantedCount = plantedCount + 1
                break
            end
            task.wait(0.1)
        end
    end
    return plantedCount
end

local function StealSpecificEggRobust(targetItem)
    local record = targetItem.record or targetItem
    if not record or not record.Uid or not record.BoundsCFrame then return false end

    -- Verify the egg is still present in the latest snapshot before traveling
    if EggState and EggState.ReadFieldEggs then
        local ok, snap = pcall(EggState.ReadFieldEggs)
        if ok and snap and snap.Records then
            local stillThere = false
            for _, r in ipairs(snap.Records) do
                if r.Uid == record.Uid and r.State == "Slot" then
                    stillThere = true
                    record = r
                    break
                end
            end
            if not stillThere then
                return false
            end
        end
    end

    local hrp = findHRP()
    local hum = findHum()
    if not hrp then return false end

    EnsureSavedReturnPosition()

    local targetPos = record.BoundsCFrame.Position
    local speed = math.clamp(tonumber(glideSpeed) or 750, 50, 750)
    local isInstantTP = (stealMovementMethod == "Anti Guard")

    -- 1. Travel to egg nest: normal glide for all methods (including Anti Guard)
    TravelToDestination(targetPos + Vector3.new(0, 1.2, 0), speed, true)
    if hrp then
        hrp.CFrame = CFrame.new(targetPos + Vector3.new(0, 1.2, 0))
        hrp.AssemblyLinearVelocity = Vector3.zero
        hrp.AssemblyAngularVelocity = Vector3.zero
    end
    task.wait(isInstantTP and 0.25 or 0.5)

    -- 2. Claim egg with instant stop & verification handshake
    local slotKey = nil
    if AreaEggSlotIdentity and AreaEggSlotIdentity.LooksLikeFirstAreaUid and AreaEggSlotIdentity.LooksLikeFirstAreaUid(record.Uid) then
        slotKey = AreaEggSlotIdentity.SlotKey(record.AreaId, record.NestId)
    end

    local net = RS:FindFirstChild("Packages") and RS.Packages:FindFirstChild("Networking")
    local carryRemote = net and net:FindFirstChild("RF/EggWorld/AskFieldEggCarry")
    if carryRemote then
        pcall(function() carryRemote:InvokeServer({ Uid = record.Uid, FirstAreaSlotKey = slotKey }) end)
    end
    pcall(function()
        if EggState and EggState.CarryFieldEgg then
            EggState.CarryFieldEgg(record.Uid, slotKey)
        end
    end)

    local prompt = nil
    for _, d in ipairs(Workspace:GetDescendants()) do
        if d:IsA("ProximityPrompt") and d.Name == "CarryAreaEgg" and d.Enabled then
            local act = (d.ActionText or ""):lower()
            local obj = (d.ObjectText or ""):lower()
            if not act:find("skip") and not act:find("robux") and not obj:find("skip") and not obj:find("robux") then
                local p = d.Parent
                if p:IsA("Attachment") then p = p.Parent end
                if p and (p.Position - hrp.Position).Magnitude < 14 then
                    prompt = d
                    break
                end
            end
        end
    end

    if prompt then
        prompt.HoldDuration = 0
        pcall(function() fireproximityprompt(prompt) end)
        pcall(function() fireproximityprompt(prompt, 0) end)
    end

    local safePlotCenter, _ = GetLocalPlotCenter()
    local safeCFrame = CFrame.new(safePlotCenter + Vector3.new(0, 1.2, 0))
    local tPickup = os.clock()
    local carried = false
    local instantFired = false
    local conns = {}
    local function fireInstantNow()
        if instantFired then return end
        instantFired = true
        carried = true
        task.spawn(function()
            bypassReturnTP(safeCFrame, 0.35)
            pcall(restoreCollisions)
            pcall(PlantAllCarriedEggsInPen)
        end)
    end
    if isInstantTP then
        local char = LP.Character
        local bp = LP:FindFirstChild("Backpack")
        local pg = LP:FindFirstChildOfClass("PlayerGui")
        pcall(function()
            if char then
                table.insert(conns, char.ChildAdded:Connect(function()
                    if isPlayerCarryingEgg() then fireInstantNow() end
                end))
            end
            if bp then
                table.insert(conns, bp.ChildAdded:Connect(function()
                    if isPlayerCarryingEgg() then fireInstantNow() end
                end))
            end
            if pg then
                table.insert(conns, pg.ChildAdded:Connect(function(c)
                    if c.Name == "DropHeldEgg" then fireInstantNow() end
                end))
                local dg = pg:FindFirstChild("DropHeldEgg")
                if dg then
                    table.insert(conns, dg:GetPropertyChangedSignal("Enabled"):Connect(function()
                        if dg.Enabled then fireInstantNow() end
                    end))
                end
            end
        end)
    end
    local maxWait = isInstantTP and 1.2 or 1.5
    while os.clock() - tPickup < maxWait and not HUB.dead do
        if carried or instantFired then
            carried = true
            break
        end
        if isPlayerCarryingEgg() then
            carried = true
            break
        end
        pcall(function()
            if EggState and EggState.CarryFieldEgg then
                EggState.CarryFieldEgg(record.Uid, slotKey)
            end
        end)
        if prompt then
            prompt.HoldDuration = 0
            pcall(function() fireproximityprompt(prompt) end)
        end
        if isInstantTP then
            task.wait()
        else
            task.wait(0.08)
        end
    end
    for _, c in ipairs(conns) do pcall(function() c:Disconnect() end) end

    if not carried then
        ignoredEggs[record.Uid] = os.clock()
        if isInstantTP then
            bypassReturnTP(safeCFrame, 0.2)
            restoreCollisions()
        end
        return false
    end

    -- 2.5 Guard-hit double pickup trick (user method: pickup -> get hit by guard -> pickup again -> glide back to avoid deliver error)
    do
        local guardHitEnabled = true -- pickup, let guard hit you, pick up again, then glide back (prevents deliver error)
        if guardHitEnabled and carried then
            local tGuardStart = os.clock()
            local startHealth = 100
            local hum0 = findHum()
            if hum0 then startHealth = hum0.Health end
            local wasHit = false
            -- Linger near egg to let guard hit us (up to 4s). Detect via health drop / ragdoll / egg drop.
            while os.clock() - tGuardStart < 4.0 and not HUB.dead do
                if not isPlayerCarryingEgg() then
                    wasHit = true
                    break
                end
                local h = findHum()
                if h then
                    local hs = h:GetState()
                    if h.Health < startHealth - 1.5 or hs == Enum.HumanoidStateType.Physics or hs == Enum.HumanoidStateType.Ragdoll or hs == Enum.HumanoidStateType.FallingDown then
                        wasHit = true
                        local tPost = os.clock()
                        while os.clock() - tPost < 0.85 and not HUB.dead do
                            if not isPlayerCarryingEgg() then break end
                            task.wait(0.05)
                        end
                        break
                    end
                end
                task.wait(0.05)
            end

            if wasHit or not isPlayerCarryingEgg() then
                task.wait(0.65)
                -- Wait until not ragdolled anymore before re-pickup (user: guard hit -> stand up -> then pick up & glide)
                do
                    local tRag = os.clock()
                    while os.clock() - tRag < 3.2 and not HUB.dead do
                        local h = findHum()
                        if not h then break end
                        local hs = h:GetState()
                        if hs ~= Enum.HumanoidStateType.Physics and hs ~= Enum.HumanoidStateType.Ragdoll and hs ~= Enum.HumanoidStateType.FallingDown then
                            break
                        end
                        pcall(function() h:ChangeState(Enum.HumanoidStateType.GettingUp) end)
                        task.wait(0.12)
                    end
                    task.wait(0.35)
                end
                local hrpNow = findHRP()
                if hrpNow and (hrpNow.Position - targetPos).Magnitude > 14 then
                    pcall(function()
                        hrpNow.CFrame = CFrame.new(targetPos + Vector3.new(0, 1.8, 0))
                        hrpNow.AssemblyLinearVelocity = Vector3.zero
                        hrpNow.AssemblyAngularVelocity = Vector3.zero
                    end)
                    task.wait(0.35)
                end
                -- Ensure fully standing before pickup attempt
                do
                    local tStand = os.clock()
                    while os.clock() - tStand < 1.5 and not HUB.dead do
                        local h = findHum()
                        if h and h:GetState() ~= Enum.HumanoidStateType.Physics and h:GetState() ~= Enum.HumanoidStateType.Ragdoll then break end
                        task.wait(0.08)
                    end
                end
                -- Wait for guard to be back to sleep/idle before re-pickup (prevents instant re-alert & deliver error)
                do
                    local tGuardSleep = os.clock()
                    while os.clock() - tGuardSleep < 4.5 and not HUB.dead do
                        local guardAsleep = false
                        pcall(function()
                            local areasRoot = Workspace:FindFirstChild("__OBJECTS") and Workspace.__OBJECTS:FindFirstChild("Areas") and Workspace.__OBJECTS.Areas:FindFirstChild("GuardAreas")
                            local guardModel = nil
                            if areasRoot and record.AreaId then
                                local areaFolder = areasRoot:FindFirstChild(record.AreaId)
                                if areaFolder then
                                    guardModel = areaFolder:FindFirstChild("Guard") or areaFolder:FindFirstChild("ForestGuardAuthored") or areaFolder:FindFirstChildWhichIsA("Model", true)
                                end
                            end
                            if not guardModel then
                                local nearest, nd = nil, 1e9
                                for _, m in ipairs(Workspace:GetDescendants()) do
                                    if m:IsA("Model") and m.Name:lower():find("guard") and m.PrimaryPart then
                                        local d = (m.PrimaryPart.Position - targetPos).Magnitude
                                        if d < nd and d < 90 then nd = d; nearest = m end
                                    end
                                end
                                guardModel = nearest
                            end
                            if guardModel then
                                local alert = guardModel:GetAttribute("Alert") or guardModel:GetAttribute("Alerted") or guardModel:GetAttribute("IsAlerted") or guardModel:GetAttribute("Chasing")
                                local sleeping = guardModel:GetAttribute("Sleeping") or guardModel:GetAttribute("IsSleeping") or guardModel:GetAttribute("Asleep") or guardModel:GetAttribute("Sleep")
                                local state = guardModel:GetAttribute("State")
                                if sleeping == true then guardAsleep = true
                                elseif alert == false or alert == nil then
                                    local hum = guardModel:FindFirstChildOfClass("Humanoid")
                                    local hrp = guardModel.PrimaryPart or guardModel:FindFirstChild("HumanoidRootPart") or guardModel:FindFirstChildWhichIsA("BasePart", true)
                                    local eggPoint = guardModel:FindFirstChild("EggPoint", true)
                                    if hrp and eggPoint then
                                        local distToHome = (hrp.Position - eggPoint.Position).Magnitude
                                        if distToHome < 7 and (not hum or hum.MoveDirection.Magnitude < 0.12) then
                                            guardAsleep = true
                                        elseif distToHome < 12 and os.clock() - tGuardSleep > 1.2 and (not hum or hum.MoveDirection.Magnitude < 0.15) then
                                            guardAsleep = true
                                        end
                                    elseif state and tostring(state):lower():find("sleep") then guardAsleep = true
                                    elseif alert == nil and sleeping == nil and state == nil then
                                        if os.clock() - tGuardSleep > 1.6 then guardAsleep = true end
                                    elseif alert == false then guardAsleep = true
                                    end
                                end
                                if not guardAsleep then
                                    local alertGui = guardModel:FindFirstChild("Alert", true)
                                    if alertGui and alertGui:IsA("BillboardGui") and alertGui.Enabled == false then guardAsleep = true end
                                end
                            else
                                if os.clock() - tGuardSleep > 1.4 then guardAsleep = true end
                            end
                        end)
                        if guardAsleep then break end
                        task.wait(0.14)
                    end
                    task.wait(0.08)
                end
                task.wait(0.08)
                pcall(function()
                    if carryRemote then carryRemote:InvokeServer({ Uid = record.Uid, FirstAreaSlotKey = slotKey }) end
                end)
                pcall(function()
                    if EggState and EggState.CarryFieldEgg then EggState.CarryFieldEgg(record.Uid, slotKey) end
                end)
                task.wait(0.08)
                local prompt2 = nil
                for _, d in ipairs(Workspace:GetDescendants()) do
                    if d:IsA("ProximityPrompt") and d.Name == "CarryAreaEgg" and d.Enabled then
                        local p = d.Parent
                        if p and p:IsA("Attachment") then p = p.Parent end
                        if p then
                            local dist = (p.Position - (findHRP() and findHRP().Position or targetPos)).Magnitude
                            if dist < 16 then
                                local act = (d.ActionText or ""):lower()
                                if not act:find("skip") and not act:find("robux") then
                                    prompt2 = d
                                    break
                                end
                            end
                        end
                    end
                end
                if prompt2 then
                    prompt2.HoldDuration = 0
                    pcall(function() fireproximityprompt(prompt2) end)
                    pcall(function() fireproximityprompt(prompt2, 0) end)
                else
                    for _, d in ipairs(Workspace:GetDescendants()) do
                        if d:IsA("ProximityPrompt") and d.Name == "CarryAreaEgg" and d.Enabled then
                            local p = d.Parent
                            if p and p:IsA("Attachment") then p = p.Parent end
                            if p and (p.Position - (findHRP() and findHRP().Position or targetPos)).Magnitude < 18 then
                                d.HoldDuration = 0
                                pcall(function() fireproximityprompt(d) end)
                                task.wait(0.08)
                                if isPlayerCarryingEgg() then break end
                            end
                        end
                    end
                end
                local tPickup2 = os.clock()
                while os.clock() - tPickup2 < 2.2 and not HUB.dead do
                    if isPlayerCarryingEgg() then carried = true break end
                    pcall(function()
                        if EggState and EggState.CarryFieldEgg then EggState.CarryFieldEgg(record.Uid, slotKey) end
                    end)
                    if prompt2 then pcall(function() fireproximityprompt(prompt2) end) end
                    task.wait(0.06)
                end
                if isPlayerCarryingEgg() then carried = true end
                -- Fast trigger back to safe area once egg re-attached
                if isPlayerCarryingEgg() then
                    task.wait(0.12)
                    isInstantTP = false
                else
                    -- Extra fallback: one more prompt scan if still not carrying
                    task.wait(0.12)
                    for _, d in ipairs(Workspace:GetDescendants()) do
                        if d:IsA("ProximityPrompt") and d.Name == "CarryAreaEgg" and d.Enabled then
                            local p = d.Parent
                            if p and p:IsA("Attachment") then p = p.Parent end
                            if p and (p.Position - (findHRP() and findHRP().Position or targetPos)).Magnitude < 18 then
                                d.HoldDuration = 0
                                pcall(function() fireproximityprompt(d) end)
                            end
                        end
                    end
                    task.wait(0.12)
                    if isPlayerCarryingEgg() then carried = true isInstantTP = false end
                end
            end
        end
    end

    -- 3. Return to base: exact bypass TP back for "Anti Guard", fast-then-slow for others! (after guard-hit we glide)
    if isInstantTP then
        if not instantFired then
            bypassReturnTP(safeCFrame, 0.35)
            task.spawn(function()
                pcall(restoreCollisions)
                pcall(PlantAllCarriedEggsInPen)
            end)
        end
    else
        if speed > 250 then
            local hrpNow = findHRP()
            local curPos = hrpNow and hrpNow.Position or targetPos
            local toBase = safePlotCenter - curPos
            local distBase = toBase.Magnitude
            if distBase > 45 then
                local stagePos = safePlotCenter - toBase.Unit * 35
                stagePos = Vector3.new(stagePos.X, math.max(stagePos.Y, 70.4), stagePos.Z)
                TravelToDestination(stagePos, speed, false)
                local hrp2 = findHRP()
                if hrp2 then
                    hrp2.AssemblyLinearVelocity = Vector3.zero
                    hrp2.AssemblyAngularVelocity = Vector3.zero
                end
                task.wait(0.35)
            end
            TravelToDestination(safePlotCenter, 240, true)
        else
            TravelToDestination(safePlotCenter, speed, true)
        end
    end

    -- Settle in the base pen and wait for delivery to confirm
    local tDeliver = os.clock()
    while os.clock() - tDeliver < 1.5 and isPlayerCarryingEgg() and not HUB.dead do
        task.wait(0.08)
    end

    -- 4. Plant all carried egg tools in the base pen
    PlantAllCarriedEggsInPen()

    -- 5. Land safely on base pen ground (Never go under map)
    local char = LP.Character
    local h = char and char:FindFirstChild("HumanoidRootPart")
    local hu = char and char:FindFirstChildOfClass("Humanoid")
    if h then
        h.CFrame = CFrame.new(safePlotCenter.X, math.max(safePlotCenter.Y, 70.4), safePlotCenter.Z)
        h.AssemblyLinearVelocity = Vector3.zero
        h.AssemblyAngularVelocity = Vector3.zero
    end
    if hu then
        hu.PlatformStand = false
        hu.AutoRotate = true
        pcall(function() hu:ChangeState(Enum.HumanoidStateType.Running) end)
    end

    return carried or isPlayerCarryingEgg()
end

local function StealBestEggOnce()
    pcall(HatchAllReadyEggs)
    local eggs = GetMatchingFieldEggs(selectedStealAreas, selectedStealRarities, selectedMutationTypes)
    if #eggs == 0 then
        return false -- Strictly respect user filter, no fallback to unwanted eggs!
    end

    local target = eggs[1] -- First item is highest rarity / score among matching eggs
    return StealSpecificEggRobust(target)
end

local function HatchAllReadyEggs()
    if not EggState or not EggState.ReadOwnedEggs then return 0 end
    local ok, snapshot = pcall(EggState.ReadOwnedEggs, LP.UserId)
    if not ok or not snapshot then return 0 end

    local count = 0
    local records = snapshot.Records or snapshot
    if typeof(records) == "table" then
        for uid, eggData in pairs(records) do
            if typeof(eggData) == "table" then
                local isReady = false
                if EggState.IsReadyToHatch then
                    isReady = EggState.IsReadyToHatch(eggData)
                else
                    isReady = eggData.Placement ~= nil
                end

                if isReady then
                    pcall(function()
                        if EggState.BeginHatch then EggState.BeginHatch(uid) end
                        task.wait(0.05)
                        if EggState.FinishHatch then EggState.FinishHatch(uid) end
                        count = count + 1
                    end)
                end
            end
        end
    end
    return count
end

-- ==============================================================================
-- BASE, HOMESTEAD & REWARDS AUTOMATION LOGIC
-- ==============================================================================
local function UpgradeHomesteadBase()
    local re1 = GetNetRemote("RE/Homestead/AskNearbyPurchase")
    if re1 then pcall(function() re1:FireServer() end) end
    local re2 = GetNetRemote("RE/Homestead/AskBaseTierRaise")
    if re2 then pcall(function() re2:FireServer() end) end
end

local function UpgradeTreadmillTier()
    local rf = GetNetRemote("RF/Treadmill/AskTierRaise")
    if rf then pcall(function() rf:InvokeServer() end) end
end

local function EquipBestPets()
    local rf = GetNetRemote("RF/Haul/WearBest") or GetNetRemote("RF/PenRoster/ConfirmEquipBestBadge")
    if rf then pcall(function() rf:InvokeServer() end) end
end

local function GetMyMonsterPosition()
    local myMonster = Workspace:FindFirstChild("MonsterParasiteMonsters") and Workspace.MonsterParasiteMonsters:FindFirstChild("Monster_" .. LP.UserId)
    if myMonster then
        local pos = (myMonster.PrimaryPart and myMonster.PrimaryPart.Position) or myMonster:GetPivot().Position
        return pos
    end
    local standPad = Workspace:FindFirstChild("Stands") and Workspace.Stands:FindFirstChild("Pads") and Workspace.Stands.Pads:FindFirstChild("Monster")
    if standPad then return standPad.Position end
    return Vector3.new(545.1, 68.0, -413.4)
end

local function ClaimMonsterChests()
    pcall(function()
        local rf1 = GetNetRemote("RF/MonsterParasite/AskChestClaim")
        if rf1 then rf1:InvokeServer() end
        local rf2 = GetNetRemote("RF/MonsterParasite/AskChestTake")
        if rf2 then rf2:InvokeServer() end
    end)
end

local function FeedMonsterParasite()
    local rf = GetNetRemote("RF/MonsterParasite/AskFeed")
    if not rf then return false end

    local hrp = findHRP()
    if not hrp then return false end

    local mPos = GetMyMonsterPosition()
    local dist = (hrp.Position - mPos).Magnitude
    local savedSpot = nil

    if dist > 12 then
        savedSpot = hrp.CFrame
        TravelToDestination(mPos + Vector3.new(0, 1.2, 0), glideSpeed or 200, true)
        task.wait(0.08)
    end

    local ok, res = pcall(function() return rf:InvokeServer() end)

    if savedSpot then
        task.wait(0.1)
        TravelToDestination(savedSpot.Position, glideSpeed or 200, true)
        local h = findHRP()
        if h then h.CFrame = savedSpot end
    end

    return ok and res
end

local function DropHeldEgg()
    local rf = GetNetRemote("RF/EggWorld/AskFieldEggDrop")
    if rf then pcall(function() rf:InvokeServer() end) end
    if EggState and EggState.DropFieldEgg then pcall(EggState.DropFieldEgg) end
end

local function BuyAffordableTrails()
    local rf = GetNetRemote("RF/Trailwear/AskPurchase")
    local TrailsData = RS:FindFirstChild("Data") and RS.Data:FindFirstChild("Trails") and require(RS.Data.Trails)
    local save = nil
    pcall(function() save = SaveModule and SaveModule.Get and SaveModule.Get() end)
    if not rf or not TrailsData or not save then return end

    local myMoney = tonumber(save.Money) or 0
    local inv = save.TrailInventory or {}

    for _, t in pairs(TrailsData.Directory or TrailsData) do
        if type(t) == "table" and t._id and not inv[t._id] then
            local price = tonumber(t.Price) or math.huge
            if myMoney >= price then
                pcall(function() rf:InvokeServer(t._id) end)
                task.wait(0.25)
            end
        end
    end
end

local instantPickupConn = nil
local function SetupInstantPickup(enabled)
    instantPickupEnabled = enabled
    local ProximityPromptService = game:GetService("ProximityPromptService")
    if enabled and not instantPickupConn then
        instantPickupConn = track(ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt, player)
            if player == LP and prompt.Name == "CarryAreaEgg" then
                prompt.HoldDuration = 0
            end
        end))
    elseif not enabled and instantPickupConn then
        pcall(function() instantPickupConn:Disconnect() end)
        instantPickupConn = nil
    end
end

local function SetNoKnockback(enabled)
    noKnockbackEnabled = enabled
    if enabled then
        pcall(function()
            local rigSync = GetNetRemote("RE/RigSync/Refresh")
            if rigSync and getconnections then
                for _, conn in ipairs(getconnections(rigSync.OnClientEvent)) do
                    pcall(function() conn:Disconnect() end)
                end
            end
        end)
    end
end

-- Auto-enable defensive features by default (user request)
pcall(function() if avoidTrapsEnabled then NeutralizeTraps() end end)
pcall(function() if instantPickupEnabled then SetupInstantPickup(true) end end)
pcall(function() if noKnockbackEnabled then SetNoKnockback(true) end end)

local function SellSelectedPets()
    local re = GetNetRemote("RE/PetSatchel/SellPet")
    if not re or not SaveModule then return end
    local save = nil
    pcall(function() save = SaveModule.Get and SaveModule.Get() end)
    local inv = save and save.Inventory
    if type(inv) ~= "table" then return end

    for uid, petData in pairs(inv) do
        if type(petData) == "table" and not petData.Locked then
            local rName = petData.Rarity or "Common"
            if isRarityAllowed(rName, getSellRarityFilter(selectedSellPetRarities)) then
                pcall(function() re:FireServer(uid) end)
                task.wait(0.08)
            end
        end
    end
end

local function SellSelectedEggs()
    if not SaveModule then return end
    local save = nil
    pcall(function() save = SaveModule.Get and SaveModule.Get() end)
    if not save then return end
    local inv = save.EggInventory
    if type(inv) ~= "table" then return end

    local wear = GetNetRemote("RF/EggWorld/AskWearTool")
    local sell = GetNetRemote("RE/PetSatchel/SellPet")
    if not wear or not sell then return end

    for uid, eggData in pairs(inv) do
        if type(eggData) == "table" and not eggData.Placement and not eggData.Locked then
            local rName = GetEggRarityInfo(eggData)
            if isRarityAllowed(rName, getSellRarityFilter(selectedSellEggRarities)) then
                pcall(function() wear:InvokeServer(uid) end)
                pcall(function() sell:FireServer({ uid }) end)
                task.wait(SELL_REQUEST_DELAY)
            end
        end
    end
end

local function DeleteOwnPetRenders()
    local count = 0
    local function sweep(container)
        if not container then return end
        for _, child in ipairs(container:GetChildren()) do
            if child:IsA("Model") or child:IsA("BasePart") then
                pcall(function()
                    child:Destroy()
                    count = count + 1
                end)
            end
        end
    end
    sweep(Workspace:FindFirstChild("Pets"))
    sweep(Workspace:FindFirstChild("RenderedPets"))
    return count
end

local function ClaimAllAvailableRewards()
    pcall(function()
        local rf1 = GetNetRemote("RF/AwayEarnings/AskCollect")
        if rf1 then rf1:InvokeServer() end
    end)
    pcall(function()
        local rf2 = GetNetRemote("RF/Codex/AskRedeemAll")
        if rf2 then rf2:InvokeServer() end
    end)
    pcall(function()
        local rf3 = GetNetRemote("RF/GroupPerk/RedeemPerk")
        if rf3 then rf3:InvokeServer() end
    end)
    pcall(ClaimMonsterChests)
end

-- ==============================================================================
-- WORKER LOOPS
-- ==============================================================================
-- 1. Auto Steal Eggs Loop
task.spawn(function()
    while not HUB.dead do
        if autoStealEnabled then
            pcall(StealBestEggOnce)
        end
        task.wait(stealDelay)
    end
end)

-- 2. Auto Hatch & Auto Plant Loop
task.spawn(function()
    while not HUB.dead do
        if autoHatchEnabled then
            pcall(HatchAllReadyEggs)
        end
        if autoPlantEnabled then
            pcall(PlantAllCarriedEggsInPen)
        end
        task.wait(hatchCheckDelay)
    end
end)

-- 3. Base, Homestead, Sales & Event Upgrades Loop
task.spawn(function()
    while not HUB.dead do
        if autoUpgradeBase then pcall(UpgradeHomesteadBase) end
        if autoUpgradeTreadmill then pcall(UpgradeTreadmillTier) end
        if autoEquipBestPets then pcall(EquipBestPets) end
        if autoClaimRewards then pcall(ClaimAllAvailableRewards) end
        if autoClaimMonsterChests then pcall(ClaimMonsterChests) end
        if autoFeedMonster then pcall(FeedMonsterParasite) end
        if autoSellPets then pcall(SellSelectedPets) end
        if autoSellEggs then pcall(SellSelectedEggs) end
        task.wait(2.5)
    end
end)

-- 4. Bat / Slap Aura Loop
task.spawn(function()
    local batRe = GetNetRemote("RE/BatSwing/Trigger")
    while not HUB.dead do
        if batAuraEnabled and batRe then
            local hrp = findHRP()
            if hrp then
                local foundNearby = false
                for _, p in ipairs(Players:GetPlayers()) do
                    if p ~= LP and p.Character then
                        local oHrp = p.Character:FindFirstChild("HumanoidRootPart")
                        if oHrp and (oHrp.Position - hrp.Position).Magnitude <= batAuraRadius then
                            foundNearby = true
                            break
                        end
                    end
                end
                if foundNearby then
                    pcall(function() batRe:FireServer() end)
                end
            end
        end
        task.wait(batAuraDelay)
    end
end)

-- 5. Trap Neutralizer Loop
task.spawn(function()
    local debris = Workspace:FindFirstChild("__DEBRIS")
    if debris then
        track(debris.ChildAdded:Connect(function(child)
            if avoidTrapsEnabled and child.Name == "PlayerTrap" then
                task.wait(0.05)
                if child:GetAttribute("Owner") ~= LP.Name then
                    if child:IsA("BasePart") then child.CanTouch = false end
                    for _, c in ipairs(child:GetChildren()) do
                        if c:IsA("BasePart") then c.CanTouch = false end
                    end
                end
            end
        end))
    end

    while not HUB.dead do
        if avoidTrapsEnabled or autoStealEnabled then
            pcall(NeutralizeTraps)
        end
        task.wait(1.5)
    end
end)

-- ==============================================================================
-- VISUALS & ESP
-- ==============================================================================
local esp = {
    enabled         = false,
    eggs            = true,
    traps           = false,
    players         = false,
    guards          = false,
    rareEggsOnly    = false,
    showPetIcons    = true,
    maxDistance     = 800,

    eggColor        = Color3.fromRGB(255, 200, 50),
    rareEggColor    = Color3.fromRGB(255, 60, 220),
    trapColor       = Color3.fromRGB(255, 60, 60),
    playerColor     = Color3.fromRGB(100, 220, 100),
    guardColor      = Color3.fromRGB(255, 60, 60),
}

local hasDrawing = type(Drawing) == "table" and type(Drawing.new) == "function"
local trackedEspObjects = {}
local espBillboards = {}
local espContainer = nil

local function getEspContainer()
    if espContainer and espContainer.Parent then return espContainer end
    local p = nil
    pcall(function() p = (gethui and gethui()) end)
    if not p then pcall(function() p = game:GetService("CoreGui") end) end
    if not p then p = LP:FindFirstChild("PlayerGui") or Workspace end

    pcall(function()
        for _, c in ipairs(p:GetChildren()) do
            if c:IsA("Folder") and c.Name == "SAE_Esp_Holder" then c:Destroy() end
        end
    end)
    espContainer = Instance.new("Folder")
    espContainer.Name = "SAE_Esp_Holder"
    pcall(function() espContainer.Parent = p end)
    return espContainer
end

local function updateEggBillboard(key, pos, icon)
    local bb = espBillboards[key]
    if not bb or not bb.gui or not bb.gui.Parent then
        local holder = getEspContainer()
        local part = Instance.new("Part")
        part.Name = "EspAnchor"
        part.Size = Vector3.new(1, 1, 1)
        part.Transparency = 1
        part.Anchored = true
        part.CanCollide = false
        part.CanQuery = false
        part.CanTouch = false
        part.CFrame = CFrame.new(pos)
        part.Parent = holder

        local gui = Instance.new("BillboardGui")
        gui.Name = "EggIconBillboard"
        gui.Adornee = part
        gui.Size = UDim2.fromOffset(28, 28)
        gui.StudsOffset = Vector3.new(-2.2, 1.2, 0)
        gui.AlwaysOnTop = true
        gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        gui.Parent = part

        local img = Instance.new("ImageLabel")
        img.Name = "PetImage"
        img.Size = UDim2.fromScale(1, 1)
        img.BackgroundTransparency = 1
        img.ScaleType = Enum.ScaleType.Fit
        img.Image = icon or ""
        img.Parent = gui

        bb = {
            part = part,
            gui = gui,
            img = img
        }
        espBillboards[key] = bb
    else
        bb.part.CFrame = CFrame.new(pos)
        bb.img.Image = icon or ""
        bb.gui.Enabled = (icon ~= nil and icon ~= "")
    end
    return bb
end

local function createDrawingObject()
    if not hasDrawing then return {} end
    local o = {}
    o.name = trackDrawing(Drawing.new("Text"))
    o.name.Size = 13; o.name.Center = true; o.name.Outline = true; o.name.Visible = false

    o.dist = trackDrawing(Drawing.new("Text"))
    o.dist.Size = 11; o.dist.Center = true; o.dist.Outline = true; o.dist.Visible = false

    o.box = trackDrawing(Drawing.new("Square"))
    o.box.Thickness = 1.5; o.box.Filled = false; o.box.Visible = false

    return o
end

track(RunService.RenderStepped:Connect(function()
    if HUB.dead or not esp.enabled then
        for _, obj in pairs(trackedEspObjects) do
            if obj.name then obj.name.Visible = false end
            if obj.dist then obj.dist.Visible = false end
            if obj.box then obj.box.Visible = false end
        end
        for _, bb in pairs(espBillboards) do
            if bb.gui then bb.gui.Enabled = false end
        end
        return
    end

    local hrp = findHRP()
    local myPos = hrp and hrp.Position or Vector3.zero
    local renderItems = {}
    local activeBbKeys = {}

    -- Eggs ESP
    if esp.eggs and EggState and EggState.ReadFieldEggs then
        local ok, snap = pcall(EggState.ReadFieldEggs)
        if ok and snap and snap.Records then
            for _, egg in ipairs(snap.Records) do
                if egg.State == "Slot" and egg.BoundsCFrame then
                    local pos = egg.BoundsCFrame.Position
                    local dist = (pos - myPos).Magnitude
                    if esp.maxDistance <= 0 or dist <= esp.maxDistance then
                        local muts = egg.Mutations or {}
                        local isRare = #muts > 0
                        if not esp.rareEggsOnly or isRare then
                            local mutText = isRare and (" [" .. table.concat(muts, ",") .. "]") or ""
                            local rName = GetEggRarityInfo(egg)
                            local label = (egg.AssetCategory or "Egg") .. " (" .. rName .. ")" .. mutText
                            local cat = egg.AssetCategory
                            local aInfo = AssetsData and (AssetsData.Directory or AssetsData) and (AssetsData.Directory or AssetsData)[cat]
                            local petIcon = aInfo and (aInfo.Icon or (aInfo.Egg and aInfo.Egg.Icon)) or ""

                            local itemColor = isRare and esp.rareEggColor or esp.eggColor

                            table.insert(renderItems, {
                                Key = egg.Uid,
                                Pos = pos,
                                Name = label,
                                Color = itemColor,
                                Dist = dist,
                            })

                            if esp.showPetIcons and petIcon ~= "" then
                                activeBbKeys[egg.Uid] = true
                                updateEggBillboard(egg.Uid, pos, petIcon)
                            end
                        end
                    end
                end
            end
        end
    end

    -- Traps ESP
    if esp.traps then
        local debris = Workspace:FindFirstChild("__DEBRIS")
        if debris then
            for _, trap in ipairs(debris:GetChildren()) do
                if trap.Name == "PlayerTrap" and trap:IsA("BasePart") then
                    local pos = trap.Position
                    local dist = (pos - myPos).Magnitude
                    if esp.maxDistance <= 0 or dist <= esp.maxDistance then
                        local owner = trap:GetAttribute("Owner") or "Enemy"
                        table.insert(renderItems, {
                            Key = trap,
                            Pos = pos + Vector3.new(0, 1.5, 0),
                            Name = "[TRAP] @" .. owner,
                            Color = esp.trapColor,
                            Dist = dist,
                        })
                    end
                end
            end
        end
    end

    -- Players ESP
    if esp.players then
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LP and p.Character then
                local oHrp = p.Character:FindFirstChild("HumanoidRootPart")
                if oHrp then
                    local dist = (oHrp.Position - myPos).Magnitude
                    if esp.maxDistance <= 0 or dist <= esp.maxDistance then
                        table.insert(renderItems, {
                            Key = p,
                            Pos = oHrp.Position,
                            Name = p.DisplayName .. " (@" .. p.Name .. ")",
                            Color = esp.playerColor,
                            Dist = dist,
                        })
                    end
                end
            end
        end
    end

    -- Hide unreferenced billboards
    for k, bb in pairs(espBillboards) do
        if not activeBbKeys[k] and bb.gui then
            bb.gui.Enabled = false
        end
    end

    local cam = GetCamera()
    local activeKeys = {}
    for _, item in ipairs(renderItems) do
        activeKeys[item.Key] = true
        local obj = trackedEspObjects[item.Key]
        if not obj then
            obj = createDrawingObject()
            trackedEspObjects[item.Key] = obj
        end

        local screenPos, onScreen = nil, false
        if cam then
            screenPos, onScreen = cam:WorldToViewportPoint(item.Pos)
        end
        if onScreen and hasDrawing and screenPos then
            if obj.name then
                obj.name.Text = item.Name
                obj.name.Position = Vector2.new(screenPos.X, screenPos.Y - 14)
                obj.name.Color = item.Color
                obj.name.Visible = true
            end
            if obj.dist then
                obj.dist.Text = math.floor(item.Dist) .. " studs"
                obj.dist.Position = Vector2.new(screenPos.X, screenPos.Y + 2)
                obj.dist.Color = Color3.fromRGB(220, 220, 220)
                obj.dist.Visible = true
            end
        else
            if obj.name then obj.name.Visible = false end
            if obj.dist then obj.dist.Visible = false end
            if obj.box then obj.box.Visible = false end
        end
    end

    for k, obj in pairs(trackedEspObjects) do
        if not activeKeys[k] then
            if obj.name then obj.name.Visible = false end
            if obj.dist then obj.dist.Visible = false end
            if obj.box then obj.box.Visible = false end
        end
    end
end))

-- Fullbright
local fullbrightEnabled = false
local defaultAmbient = Lighting.Ambient
local defaultOutdoor = Lighting.OutdoorAmbient
local defaultBrightness = Lighting.Brightness
local defaultClockTime = Lighting.ClockTime

local function SetFullbright(v)
    fullbrightEnabled = v
    if v then
        Lighting.Ambient = Color3.fromRGB(255, 255, 255)
        Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
        Lighting.Brightness = 2
        Lighting.ClockTime = 14
    else
        Lighting.Ambient = defaultAmbient
        Lighting.OutdoorAmbient = defaultOutdoor
        Lighting.Brightness = defaultBrightness
        Lighting.ClockTime = defaultClockTime
    end
end

-- ==============================================================================
-- MOVEMENT & PLAYER MODIFIERS
-- ==============================================================================
local walkSpeedEnabled = false
local walkSpeedVal     = 24
local jumpPowerEnabled = false
local jumpPowerVal     = 60
local infiniteJump     = false
local flying           = false
local flySpeed         = 60
local antiAFK          = false

local function ApplyWalkSpeed(v)
    walkSpeedVal = v
    local hum = findHum()
    if hum and walkSpeedEnabled then hum.WalkSpeed = v end
end

local function ApplyJumpPower(v)
    jumpPowerVal = v
    local hum = findHum()
    if hum and jumpPowerEnabled then
        hum.UseJumpPower = true
        hum.JumpPower = v
    end
end

track(RunService.Stepped:Connect(function()
    if HUB.dead then return end
    local hum = findHum()
    if hum then
        if walkSpeedEnabled then hum.WalkSpeed = walkSpeedVal end
        if jumpPowerEnabled then hum.UseJumpPower = true; hum.JumpPower = jumpPowerVal end
    end
end))

track(UserInputService.JumpRequest:Connect(function()
    if HUB.dead then return end
    local hum = findHum()
    if hum then
        hum.Jump = true
        hum:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end))

local function startFly()
    if flying then return end
    local hrp = findHRP()
    local hum = findHum()
    if not (hrp and hum) then return end
    flying = true
    hrp.Anchored = true

    local bodyGyro = Instance.new("BodyGyro")
    bodyGyro.MaxTorque = Vector3.new(1, 1, 1) * 1e5
    bodyGyro.P = 1e5
    bodyGyro.CFrame = hrp.CFrame
    bodyGyro.Parent = hrp

    HUB._fly = {
        hrp = hrp,
        gyro = bodyGyro,
        conn = track(RunService.RenderStepped:Connect(function(dt)
            if not flying or HUB.dead then return end
            local cam = GetCamera()
            if not cam then return end
            local look = cam.CFrame.LookVector
            local right = cam.CFrame.RightVector
            local flatLook = Vector3.new(look.X, 0, look.Z)
            flatLook = flatLook.Magnitude > 0.001 and flatLook.Unit or Vector3.new(0, 0, -1)
            local flatRight = Vector3.new(right.X, 0, right.Z)
            flatRight = flatRight.Magnitude > 0.001 and flatRight.Unit or Vector3.new(1, 0, 0)

            local dir = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then dir = dir + flatLook end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then dir = dir - flatLook end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then dir = dir - flatRight end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then dir = dir + flatRight end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then dir = dir + Vector3.new(0, 1, 0) end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then dir = dir - Vector3.new(0, 1, 0) end

            if dir.Magnitude > 0 then
                hrp.CFrame = hrp.CFrame + dir.Unit * flySpeed * math.min(dt, 0.1)
            end
            bodyGyro.CFrame = CFrame.lookAt(hrp.Position, hrp.Position + look)
        end))
    }
end

local function stopFly()
    flying = false
    local f = HUB._fly
    if f then
        pcall(function() f.conn:Disconnect() end)
        pcall(function() f.hrp.Anchored = false end)
        pcall(function() f.gyro:Destroy() end)
        HUB._fly = nil
    end
end

local antiAfkConn = nil
local function SetAntiAFK(v)
    antiAFK = v
    if v and not antiAfkConn then
        antiAfkConn = track(LocalPlayer.Idled:Connect(function()
            if antiAFK then
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end
        end))
    elseif not v and antiAfkConn then
        pcall(function() antiAfkConn:Disconnect() end)
        antiAfkConn = nil
    end
end

-- ==============================================================================
-- UI CREATION - MAIN TABS
-- ==============================================================================
local EggsTab     = Window:AddTab({ Name = "Eggs", Subtitle = "Steal, hatch & plant", Icon = "crown" })
local BaseTab     = Window:AddTab({ Name = "Base", Subtitle = "Homestead & training", Icon = "bolt" })
local CombatTab   = Window:AddTab({ Name = "Combat", Subtitle = "Bat, slaps & defense", Icon = "combat" })
local PlayerTab   = Window:AddTab({ Name = "Player", Subtitle = "Movement & teleports", Icon = "player" })
local SettingsTab = Window:AddTab({ Name = "Settings", Subtitle = "Configs & unloader", Icon = "gear" })

-- -----------------------------------------------------------------------------
-- TAB 1: EGGS
-- -----------------------------------------------------------------------------
local StealSub = EggsTab:AddSubTab("Auto Steal")
local HatchSub = EggsTab:AddSubTab("Auto Hatch & Plant")
local EggEspSub = EggsTab:AddSubTab("Egg Tracker ESP")

-- SubTab: Auto Steal
StealSub:AddToggle({
    Name = "Auto Steal Eggs", Default = false, Flag = "steal_auto",
    Callback = safeCallback(function(v)
        autoStealEnabled = v
        if v then EnsureSavedReturnPosition() end
        Notify("Auto Steal", v and "Enabled" or "Disabled", v and "Success" or "Error")
    end)
})
StealSub:AddDropdown({
    Name = "Steal Movement Method", Options = { "Tween Glide", "Fly Glide", "Safe Walk", "Anti Guard" }, Default = "Tween Glide", Flag = "steal_method",
    Callback = function(v) stealMovementMethod = v end
})
StealSub:AddToggle({
    Name = "Steal Infested / Parasite Eggs Only", Default = false, Flag = "steal_parasite_only",
    Callback = function(v)
        stealParasiteOnly = v
        Notify("Parasite Eggs", v and "Targeting Infested Eggs Only" or "All Filtered Eggs", v and "Success" or "Info")
    end
})
StealSub:AddToggle({
    Name = "Instant Prompt Pickup", Default = true, Flag = "instant_pickup",
    Callback = function(v) SetupInstantPickup(v) end
})
StealSub:AddToggle({
    Name = "Rare Egg Hunter (Highest Rarity First)", Default = true, Flag = "rare_hunter",
    Callback = function(v) rareEggHunter = v end
})
StealSub:AddMultiDropdown({
    Name = "Filter by Rarity (Multi-Select)", Options = RARITY_NAMES, Default = {}, Flag = "steal_rarities",
    Callback = function(selectedList) selectedStealRarities = selectedList end
})
StealSub:AddMultiDropdown({
    Name = "Filter by Area (Multi-Select)", Options = AREA_NAMES, Default = {}, Flag = "steal_areas",
    Callback = function(selectedList) selectedStealAreas = selectedList end
})
StealSub:AddMultiDropdown({
    Name = "Filter by Mutation (Multi-Select)", Options = MUTATION_FILTERS, Default = {}, Flag = "steal_muts",
    Callback = function(selectedList) selectedMutationTypes = selectedList end
})
StealSub:AddSlider({
    Name = "Glide / Travel Speed", Min = 50, Max = 750, Default = 750, Suffix = " studs/s", Flag = "glide_speed",
    Callback = function(v) glideSpeed = tonumber(v) or 750 end
})
StealSub:AddSlider({
    Name = "Steal Delay Gap", Min = 0.5, Max = 10, Default = 1.5, Suffix = "s", Flag = "steal_gap",
    Callback = function(v) stealDelay = v end
})
StealSub:AddButton({
    Name = "Steal Best Available Egg Once", Primary = true,
    Callback = safeCallback(function()
        local ok = StealBestEggOnce()
        Notify("Steal Egg", ok and "Stealing target egg" or "No matching egg found for selected filters", ok and "Success" or "Info")
    end)
})

-- SubTab: Auto Hatch & Plant
HatchSub:AddToggle({
    Name = "Auto Hatch Ready Eggs", Default = false, Flag = "hatch_auto",
    Callback = safeCallback(function(v)
        autoHatchEnabled = v
        Notify("Auto Hatch", v and "Enabled" or "Disabled", v and "Success" or "Error")
    end)
})
HatchSub:AddToggle({
    Name = "Auto Place Egg (Base Pen)", Default = false, Flag = "plant_auto",
    Callback = function(v)
        autoPlantEnabled = v
        Notify("Auto Place Egg", v and "Enabled" or "Disabled", v and "Success" or "Error")
    end
})
HatchSub:AddSlider({
    Name = "Hatch Check Delay", Min = 0.5, Max = 10, Default = 2.0, Suffix = "s", Flag = "hatch_gap",
    Callback = function(v) hatchCheckDelay = v end
})
HatchSub:AddButton({
    Name = "Hatch All Ready Eggs Now", Primary = true,
    Callback = safeCallback(function()
        local count = HatchAllReadyEggs()
        Notify("Hatch", "Hatched " .. count .. " egg(s)", "Success")
    end)
})
HatchSub:AddButton({
    Name = "Place Carried Eggs in Pen Now",
    Callback = safeCallback(function()
        local count = PlantAllCarriedEggsInPen()
        Notify("Plant Eggs", "Planted " .. count .. " egg(s) in pen", "Success")
    end)
})

-- SubTab: Egg Tracker ESP
EggEspSub:AddToggle({
    Name = "Egg ESP Enabled", Default = false, Flag = "esp_eggs_enabled",
    Callback = safeCallback(function(v)
        esp.enabled = v
        Notify("Egg ESP", v and "Enabled" or "Disabled", v and "Success" or "Error")
    end)
})
EggEspSub:AddToggle({
    Name = "Show 3D Pet Image Badges", Default = true, Flag = "esp_pet_icons",
    Callback = function(v) esp.showPetIcons = v end
})
EggEspSub:AddToggle({
    Name = "Trap ESP (Highlights Enemy Traps)", Default = false, Flag = "esp_traps",
    Callback = function(v) esp.traps = v end
})
EggEspSub:AddToggle({
    Name = "Show Mutated / Rare Eggs Only", Default = false, Flag = "esp_eggs_rare_only",
    Callback = function(v) esp.rareEggsOnly = v end
})
EggEspSub:AddSlider({
    Name = "Max ESP Distance", Min = 100, Max = 2500, Default = 800, Suffix = " studs", Flag = "esp_max_dist",
    Callback = function(v) esp.maxDistance = v end
})

-- -----------------------------------------------------------------------------
-- TAB 2: BASE & UPGRADES
-- -----------------------------------------------------------------------------
do
local UpgradesSub = BaseTab:AddSubTab("Homestead & Treadmill")
local PetsSub     = BaseTab:AddSubTab("Pets & Satchel")
local SalesSub    = BaseTab:AddSubTab("Auto Sell")
local EventsSub   = BaseTab:AddSubTab("Events & Bosses")
local RewardsSub  = BaseTab:AddSubTab("Claim Rewards")

-- SubTab: Homestead & Treadmill
UpgradesSub:AddToggle({
    Name = "Auto Upgrade Base / Plot", Default = false, Flag = "up_base_auto",
    Callback = function(v) autoUpgradeBase = v end
})
UpgradesSub:AddToggle({
    Name = "Auto Upgrade Treadmill Tier", Default = false, Flag = "up_tread_auto",
    Callback = function(v) autoUpgradeTreadmill = v end
})
UpgradesSub:AddToggle({
    Name = "Auto Buy Speed Trails", Default = false, Flag = "auto_buy_trails",
    Callback = function(v) autoBuyTrails = v end
})
UpgradesSub:AddButton({
    Name = "Upgrade Base Now", Primary = true,
    Callback = safeCallback(function()
        UpgradeHomesteadBase()
        Notify("Base Upgrade", "Requested base upgrade", "Success")
    end)
})
UpgradesSub:AddButton({
    Name = "Upgrade Treadmill Now",
    Callback = safeCallback(function()
        UpgradeTreadmillTier()
        Notify("Treadmill Upgrade", "Requested treadmill upgrade", "Success")
    end)
})

-- SubTab: Pets & Satchel
PetsSub:AddToggle({
    Name = "Auto Equip Best Pets", Default = false, Flag = "equip_best_pets",
    Callback = function(v) autoEquipBestPets = v end
})
PetsSub:AddButton({
    Name = "Equip Best Pets Now", Primary = true,
    Callback = safeCallback(function()
        EquipBestPets()
        Notify("Pets", "Equipped best pets", "Success")
    end)
})

-- SubTab: Auto Sell
SalesSub:AddToggle({
    Name = "Auto Sell Low-Tier Pets", Default = false, Flag = "auto_sell_pets",
    Callback = function(v) autoSellPets = v end
})
SalesSub:AddMultiDropdown({
    Name = "Filter Pet Sell Rarities", Options = RARITY_NAMES, Default = {}, Flag = "sell_pet_rarities",
    Callback = function(selectedList) selectedSellPetRarities = selectedList end
})
SalesSub:AddToggle({
    Name = "Auto Sell Low-Tier Eggs", Default = false, Flag = "auto_sell_eggs",
    Callback = function(v) autoSellEggs = v end
})
SalesSub:AddMultiDropdown({
    Name = "Filter Egg Sell Rarities", Options = RARITY_NAMES, Default = {}, Flag = "sell_egg_rarities",
    Callback = function(selectedList) selectedSellEggRarities = selectedList end
})
SalesSub:AddButton({
    Name = "Sell Selected Pets Now", Primary = true,
    Callback = safeCallback(function()
        SellSelectedPets()
        Notify("Sales", "Sold matching pets", "Success")
    end)
})
SalesSub:AddButton({
    Name = "Sell Selected Eggs Now",
    Callback = safeCallback(function()
        SellSelectedEggs()
        Notify("Sales", "Sold matching eggs", "Success")
    end)
})

-- SubTab: Events & Bosses
EventsSub:AddToggle({
    Name = "Auto Claim Monster Chests", Default = false, Flag = "auto_monster_chests",
    Callback = function(v) autoClaimMonsterChests = v end
})
EventsSub:AddToggle({
    Name = "Auto Feed Monster Parasite", Default = false, Flag = "auto_feed_monster",
    Callback = function(v) autoFeedMonster = v end
})
EventsSub:AddButton({
    Name = "Claim Monster Chest Now", Primary = true,
    Callback = safeCallback(function()
        ClaimMonsterChests()
        Notify("Monster Event", "Claimed monster chest", "Success")
    end)
})
EventsSub:AddButton({
    Name = "Feed Monster Parasite Now",
    Callback = safeCallback(function()
        FeedMonsterParasite()
        Notify("Monster Event", "Fed monster parasite", "Success")
    end)
})

-- SubTab: Claim Rewards
RewardsSub:AddToggle({
    Name = "Auto Claim Away Earnings & Codex", Default = false, Flag = "claim_auto_rewards",
    Callback = function(v) autoClaimRewards = v end
})
RewardsSub:AddButton({
    Name = "Claim Away Earnings & Codex Now", Primary = true,
    Callback = safeCallback(function()
        ClaimAllAvailableRewards()
        Notify("Rewards", "Claimed all ready rewards and earnings", "Success")
    end)
})
end

-- -----------------------------------------------------------------------------
-- TAB 3: COMBAT & DEFENSE
-- -----------------------------------------------------------------------------
do
local BatSub   = CombatTab:AddSubTab("Bat & Slap Aura")
local GuardSub = CombatTab:AddSubTab("Defense & Guards")

-- SubTab: Bat & Slap Aura
BatSub:AddToggle({
    Name = "Bat / Slap Aura", Default = false, Flag = "bat_aura_enabled",
    Callback = safeCallback(function(v)
        batAuraEnabled = v
        Notify("Bat Aura", v and "Enabled" or "Disabled", v and "Success" or "Error")
    end)
})
BatSub:AddSlider({
    Name = "Aura Radius", Min = 5, Max = 50, Default = 20, Suffix = " studs", Flag = "bat_radius",
    Callback = function(v) batAuraRadius = v end
})
BatSub:AddSlider({
    Name = "Swing Delay", Min = 0.05, Max = 1.0, Default = 0.2, Suffix = "s", Flag = "bat_delay",
    Callback = function(v) batAuraDelay = v end
})
BatSub:AddButton({
    Name = "Swing Bat Once (Manual)", Primary = true,
    Callback = safeCallback(function()
        local re = GetNetRemote("RE/BatSwing/Trigger")
        if re then re:FireServer() end
        Notify("Bat", "Triggered bat swing", "Info")
    end)
})

-- SubTab: Defense & Guards
GuardSub:AddToggle({
    Name = "Anti-Trap (Full Immunity / Destroy Hitboxes)", Default = true, Flag = "avoid_traps",
    Callback = safeCallback(function(v)
        avoidTrapsEnabled = v
        if v then pcall(NeutralizeTraps) end
        Notify("Anti-Trap", v and "Immunity Active (Enemy Hitboxes Destroyed)" or "Anti-Trap Disabled", v and "Success" or "Error")
    end)
})

GuardSub:AddToggle({
    Name = "No Knockback / Ragdoll Immunity", Default = true, Flag = "no_knockback",
    Callback = safeCallback(function(v)
        SetNoKnockback(v)
        Notify("Knockback", v and "Ragdoll Immunity Active" or "Knockback Enabled", v and "Success" or "Error")
    end)
})

GuardSub:AddToggle({
    Name = "Anti-Ragdoll (Quick Standup)", Default = true, Flag = "anti_ragdoll",
    Callback = function(v) antiRagdollEnabled = v end
})

track(RunService.Heartbeat:Connect(function()
    if HUB.dead or not antiRagdollEnabled then return end
    local hum = findHum()
    if hum and hum:GetState() == Enum.HumanoidStateType.Physics then
        hum:ChangeState(Enum.HumanoidStateType.GettingUp)
    end
end))
end

-- -----------------------------------------------------------------------------
-- TAB 4: PLAYER & MOVEMENT
-- -----------------------------------------------------------------------------
do
local MoveSub     = PlayerTab:AddSubTab("Movement")
local AreaTpSub   = PlayerTab:AddSubTab("Area Travel")
local PlotTpSub   = PlayerTab:AddSubTab("Plot Travel")
local PlayerTpSub = PlayerTab:AddSubTab("Player Travel")
local PerfSub     = PlayerTab:AddSubTab("Visuals & Performance")

-- SubTab: Movement
MoveSub:AddToggle({
    Name = "Enable WalkSpeed", Default = false, Flag = "speed_enabled",
    Callback = safeCallback(function(v)
        walkSpeedEnabled = v
        if not v then
            local hum = findHum()
            if hum then hum.WalkSpeed = 16 end
        end
        Notify("WalkSpeed", v and "Enabled" or "Disabled", v and "Success" or "Error")
    end)
})
MoveSub:AddSlider({
    Name = "WalkSpeed Value", Min = 16, Max = 10000, Default = 24, Suffix = " studs/s", Flag = "speed_val",
    Callback = function(v) ApplyWalkSpeed(v) end
})
MoveSub:AddToggle({
    Name = "Enable JumpPower", Default = false, Flag = "jump_enabled",
    Callback = safeCallback(function(v)
        jumpPowerEnabled = v
        if not v then
            local hum = findHum()
            if hum then hum.JumpPower = 50 end
        end
        Notify("JumpPower", v and "Enabled" or "Disabled", v and "Success" or "Error")
    end)
})
MoveSub:AddSlider({
    Name = "JumpPower Value", Min = 50, Max = 300, Default = 60, Suffix = "", Flag = "jump_val",
    Callback = function(v) ApplyJumpPower(v) end
})
MoveSub:AddToggle({
    Name = "Infinite Jump", Default = false, Flag = "inf_jump",
    Callback = function(v) infiniteJump = v end
})
MoveSub:AddToggle({
    Name = "Smooth Fly (WASD + Space/Shift)", Default = false, Flag = "fly_enabled",
    Callback = safeCallback(function(v)
        if v then startFly() else stopFly() end
        Notify("Fly", v and "Enabled" or "Disabled", v and "Success" or "Error")
    end)
})
MoveSub:AddSlider({
    Name = "Fly Speed", Min = 20, Max = 250, Default = 60, Suffix = " studs/s", Flag = "fly_speed",
    Callback = function(v) flySpeed = v end
})
MoveSub:AddToggle({
    Name = "Anti-AFK (Bypass 20min Kick)", Default = false, Flag = "anti_afk",
    Callback = function(v) SetAntiAFK(v) end
})

-- SubTab: Area Travel
local selectedAreaTp = "Base / Plot"
local areaKeys = {}
for k in pairs(AREA_COORDINATES) do table.insert(areaKeys, k) end
table.sort(areaKeys)

AreaTpSub:AddDropdown({
    Name = "Select Area", Options = areaKeys, Items = areaKeys, Default = "Base / Plot", Flag = "tele_area",
    Callback = function(v) selectedAreaTp = v end
})
AreaTpSub:AddButton({
    Name = "Travel to Selected Area", Primary = true,
    Callback = safeCallback(function()
        local pos = AREA_COORDINATES[selectedAreaTp]
        if selectedAreaTp == "Base / Plot" then
            pos = GetLocalPlotCenter()
        end
        if pos then
            Notify("Travel", "Traveling to " .. selectedAreaTp, "Info")
            TravelRoadPath(pos, glideSpeed or 200)
            Notify("Travel", "Arrived at " .. selectedAreaTp, "Success")
        else
            Notify("Travel", "Area position not found", "Error")
        end
    end)
})

-- SubTab: Plot Travel
local selectedPlotNum = "Plot 1"
local plotOptions = { "Plot 1", "Plot 2", "Plot 3", "Plot 4", "Plot 5", "Plot 6", "Plot 7", "My Plot" }

PlotTpSub:AddDropdown({
    Name = "Select Plot", Options = plotOptions, Items = plotOptions, Default = "My Plot", Flag = "tele_plot",
    Callback = function(v) selectedPlotNum = v end
})
PlotTpSub:AddButton({
    Name = "Travel to Plot", Primary = true,
    Callback = safeCallback(function()
        local slotNum = selectedPlotNum == "My Plot" and GetLocalSlot() or tonumber(selectedPlotNum:match("%d+")) or 1
        local plot = Workspace.Plots:FindFirstChild(tostring(slotNum))
        local targetPos = plot and (plot:FindFirstChild("CenterPoint") and plot.CenterPoint.Position or plot:GetPivot().Position)
        if targetPos then
            TravelRoadPath(targetPos + Vector3.new(0, 2, 0), glideSpeed or 200)
            Notify("Plot", "Arrived at Plot " .. tostring(slotNum), "Success")
        else
            Notify("Plot", "Plot not found", "Error")
        end
    end)
})

-- SubTab: Player Travel
local selectedPlayerName = nil
local function GetPlayerList()
    local names = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LP then table.insert(names, p.Name) end
    end
    table.sort(names)
    if #names == 0 then names = { "(no other players)" } end
    return names
end

local playerDropdown = PlayerTpSub:AddDropdown({
    Name = "Select Player", Options = GetPlayerList(), Items = GetPlayerList(), Default = nil, Flag = "tele_plr",
    Callback = function(v) selectedPlayerName = v end
})

PlayerTpSub:AddButton({
    Name = "Refresh Player List",
    Callback = function()
        playerDropdown:SetOptions(GetPlayerList())
        Notify("Players", "Refreshed player list", "Info")
    end
})
PlayerTpSub:AddButton({
    Name = "Travel to Player", Primary = true,
    Callback = safeCallback(function()
        if not selectedPlayerName then return end
        local targetPlr = Players:FindFirstChild(selectedPlayerName)
        local tHrp = targetPlr and targetPlr.Character and targetPlr.Character:FindFirstChild("HumanoidRootPart")
        if tHrp then
            TravelRoadPath(tHrp.Position + Vector3.new(0, 2, 0), glideSpeed or 200)
            Notify("Player", "Arrived at " .. selectedPlayerName, "Success")
        else
            Notify("Player", "Player unavailable", "Error")
        end
    end)
})

-- SubTab: Visuals & Performance
PerfSub:AddToggle({
    Name = "Fullbright (Daylight Visuals)", Default = false, Flag = "fullbright",
    Callback = function(v) SetFullbright(v) end
})
PerfSub:AddButton({
    Name = "Delete Own Pet Renders (FPS Boost)", Primary = true,
    Callback = safeCallback(function()
        local count = DeleteOwnPetRenders()
        Notify("Performance", "Removed " .. count .. " rendered pet model(s)", "Success")
    end)
})
end

-- -----------------------------------------------------------------------------
-- TAB 5: SETTINGS & CONFIG
-- -----------------------------------------------------------------------------
do
local ConfigSub = SettingsTab:AddSubTab("Configuration")

if HAS_CONFIG then
    ConfigSub:AddInput({
        Name = "Config Name", Default = CONFIG_NAME, Flag = "cfg_name",
        Callback = function(v) if v and #v > 0 then CONFIG_NAME = v end end
    })
    ConfigSub:AddButton({
        Name = "Save Config", Primary = true,
        Callback = safeCallback(function()
            local ok, err = Library:SaveConfig(CONFIG_NAME)
            Notify("Config", ok and ("Saved config '" .. CONFIG_NAME .. "'") or ("Save failed: " .. tostring(err)), ok and "Success" or "Error")
        end)
    })
    ConfigSub:AddButton({
        Name = "Load Config",
        Callback = safeCallback(function()
            local ok, err = Library:LoadConfig(CONFIG_NAME)
            if ok then
                ResyncAll()
                Notify("Config", "Loaded config '" .. CONFIG_NAME .. "'", "Success")
            else
                Notify("Config", "Load failed: " .. tostring(err), "Error")
            end
        end)
    })
end

ConfigSub:AddKeybind({
    Name = "Toggle UI Keybind", Default = Enum.KeyCode.RightControl, Flag = "ui_toggle_key",
    OnPress = function()
        Window:Toggle()
    end
})

ConfigSub:AddDivider()

ConfigSub:AddButton({
    Name = "Unload Oxide HUB",
    Callback = safeCallback(function()
        pcall(function() HUB.Unload() end)
    end)
})

    ConfigSub:AddParagraph({
        Title = "Oxide HUB | Ein Ei stehlen",
        Content = "Version 4.2.0 (Production)\nEquipped with UGI / Client AC Neutralizer, BAC Telemetry Spoofer, Evidence Scrubber, Strict Rarity Filtering, clean open walkway travel without wall clipping, automatic return to trigger position, and auto egg placement in pen.\nAutomated egg stealing, hatching, homestead base upgrades, treadmill speed training, rewards collector, bat aura, ESP tracker."
    })
end

-- ==============================================================================
-- HUB CLEANUP & UNLOAD HANDLER
-- ==============================================================================
HUB.Unload = function()
    HUB.dead = true

    for _, c in ipairs(HUB.conns) do pcall(function() c:Disconnect() end) end
    HUB.conns = {}

    for _, d in ipairs(HUB.drawings) do pcall(function() d:Remove() end) end
    HUB.drawings = {}

    for _, h in ipairs(HUB.highlights) do pcall(function() h:Destroy() end) end
    HUB.highlights = {}

    stopFly()
    SetFullbright(false)

    local hum = findHum()
    if hum then
        hum.PlatformStand = false
        hum.WalkSpeed = 16
        hum.JumpPower = 50
    end

    pcall(function() Window:Destroy() end)
    _G.OxideStealAnEgg = nil
end

Notify("Oxide HUB", "Ein Ei stehlen script loaded successfully!", "Success", 3.5)
