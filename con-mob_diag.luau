-- Lua 5.3+ / Luau compatibility polyfills
if not math.ldexp then math.ldexp = function(x, n) return x * 2 ^ n end end
if not math.frexp then math.frexp = function(x)
    if x == 0 then return 0, 0 end
    local exp = math.floor(math.log(math.abs(x)) / math.log(2)) + 1
    local mantissa = x / 2 ^ exp
    return mantissa, exp
end end
if not loadstring and load then loadstring = load end
if not loadstring then loadstring = function(s) return load(s) end end

--[Obfuscated by Hercules v2.0.0 | hercules-obfuscator.xyz/discord | hercules-obfuscator.xyz/source]
local function rugddo(xtbssk) local _ = 98 end
if false then local _ = 33 end
local jcujbw = 47
local function arswud(kbosej) local _ = 69 end
local blwiis = 82
local ttitrh = 24
local function rbcyih(jcgtzt) local _ = 18 end
if false then local _ = 90 end
if false then local _ = 9 end
local nnluja = 46
if false then local _ = 21 end
local function rpxwrb(iayvln) local _ = 85 end
if true then local _ = 81 end
local function esgxne(oqmncv) local _ = 77 end
local thing = 3612;
local thing2 = 3612;
local counter = 0;
while thing == thing2 and counter < 1 do
    thing = thing + 1;
    counter = counter + 1;
    if thing == thing2 then
        local temp = 47; temp = temp * 2;
    else
        do
            local DgmugJMXFKOo,tTXAbXBEDE,iGkkQwSeo,XlgjHPYU,srLXxUCPHIO,ZMYTPcZYzR,VLWNSictZVaL,EtLXMowefNl,sAzzYvfasI,axenLBBQ,CyjvbEvWEKq,KTwOdScpHdjm,aoBYoPjiGFa,bBdUSAyXYkLy,wisTjEdYy,eqxZwENRzW,MhRXumfU,XEJVzPqY
DgmugJMXFKOo=error;tTXAbXBEDE=ipairs;iGkkQwSeo=pairs;XlgjHPYU=pcall;srLXxUCPHIO=print;ZMYTPcZYzR=rawget;VLWNSictZVaL=rawset;EtLXMowefNl=select;sAzzYvfasI=tonumber;axenLBBQ=tostring;CyjvbEvWEKq=math.floor;KTwOdScpHdjm=math.max;aoBYoPjiGFa=math.random;bBdUSAyXYkLy=string.char;wisTjEdYy=string.format;eqxZwENRzW=table.concat;MhRXumfU=table.insert;XEJVzPqY=os.time;
srLXxUCPHIO("[DM] boot")
local zqTBdvWQMo = game:GetService("HttpService")
local YWoRvVQp = game:GetService("Players")
local SaAbwgGvIsVI = game:GetService("TweenService")

if not game:IsLoaded() then game.Loaded:Wait() end

-- المنصات المتاحة
local kneGzZwYRiX = {"Console", "Mobile"}

local ZLBGoMbaR = "https://devicemode-cctgi3ma.manus.space"
local klmkswYPWcc = "1.0.0"
local vUevUvHN = "CONSOLE_MOBILE"
local YBbhiazaRhWN = 300

local EpcUkskQks = {
    [11379739543]    = true,
    [98752102030179] = true,
}

if not EpcUkskQks[game.PlaceId] then return end
srLXxUCPHIO("[DM] place ok")

local ciEhXHQD = table.concat(kneGzZwYRiX, "_")
local DukOaImVwr = "sys_sess_v4_" .. ciEhXHQD .. ".bin"
local QCZMyWwLy  = "sys_cfg_v5_cache.bin"
local JuHTRZra = "sys_allowed_v5_" .. ciEhXHQD .. ".bin"

local KkgOsGQcSZZ = getgenv and getgenv() or _G
local SlgBOtqj = KkgOsGQcSZZ.DeviceModeKey
if type(SlgBOtqj) ~= "string" or SlgBOtqj == "" then return end
srLXxUCPHIO("[DM] key ok")

local zKPTqKEIWld = YWoRvVQp.LocalPlayer
if not zKPTqKEIWld then
    YWoRvVQp:GetPropertyChangedSignal("LocalPlayer"):Wait()
    zKPTqKEIWld = YWoRvVQp.LocalPlayer
end
if not zKPTqKEIWld then return end

local kHLQaHqPw = axenLBBQ(zKPTqKEIWld.UserId)

local function FaPqRAAyAK()
    local CyleXzEcNVZw = {
        function() return type(gethwid) == "function" and gethwid() end,
        function() return type(get_hwid) == "function" and get_hwid() end,
        function() return type(getHWID) == "function" and getHWID() end,
        function() return syn and type(syn.gethwid) == "function" and syn.gethwid() end,
    }
    for kWPlAKVIDj, getter in tTXAbXBEDE(CyleXzEcNVZw) do
        local yndvSxRvB, EiSOloKo = XlgjHPYU(getter)
        if yndvSxRvB and type(EiSOloKo) == "string" then
            EiSOloKo = EiSOloKo:gsub("%s+", "")
            if #EiSOloKo >= 8 and #EiSOloKo <= 256 then return EiSOloKo end
        end
    end
    return nil
end

local PlQHTMKqqZU = FaPqRAAyAK()
local sTCNwXjrDJ = PlQHTMKqqZU and ("EXECUTOR-HWID-" .. PlQHTMKqqZU)
    or ("ROBLOX-USER-" .. kHLQaHqPw)

local KcRPXdbI = _G.request or request or http_request or (syn and syn.request)
if type(KcRPXdbI) ~= "function" then return end

local function BTueVKSeIOGJ(method, path, body)
    local yndvSxRvB, tHuqgJuSmt = XlgjHPYU(function()
        return KcRPXdbI({Url= ZLBGoMbaR .. path,
            Method = method,
            Headers = {
                ["Content-Type"] = "application/json",
                ["Accept"] = "application/json",
            },
            Body = body and zqTBdvWQMo:JSONEncode(body) or nil,
        })
    end)
    if not yndvSxRvB or type(tHuqgJuSmt) ~= "table" then
        return nil, nil, "HTTP_REQUEST_FAILED"
    end
    if type(tHuqgJuSmt.Body) ~= "string" or tHuqgJuSmt.Body == "" then
        return tHuqgJuSmt, nil, "EMPTY_RESPONSE"
    end
    local NIAWwrHDkDcr, TgQPeUCR = XlgjHPYU(function()
        return zqTBdvWQMo:JSONDecode(tHuqgJuSmt.Body)
    end)
    if not NIAWwrHDkDcr or type(TgQPeUCR) ~= "table" then
        return tHuqgJuSmt, nil, "INVALID_JSON"
    end
    return tHuqgJuSmt, TgQPeUCR, nil
end

local function weMuAXIiqYbQ(iso)
    if type(iso) ~= "string" then return nil end
    local yndvSxRvB, myOjeKnzm = XlgjHPYU(function() return DateTime.fromIsoDate(iso) end)
    if not yndvSxRvB or not myOjeKnzm then return nil end
    return myOjeKnzm.UnixTimestamp
end

local function ggFgTMyNxSp(seconds)
    seconds = math.max(0, math.floor(seconds))
    local ISTWyLOXx = math.floor(seconds / 86400)
    local PcbwnpSmdE = math.floor((seconds % 86400) / 3600)
    local zRalKgLO = math.floor((seconds % 3600) / 60)
    local YLRZObniBkaP = seconds % 60
    if ISTWyLOXx > 0 then
        return string.format("%dd %02dh %02dm", ISTWyLOXx, PcbwnpSmdE, zRalKgLO)
    end
    if PcbwnpSmdE > 0 then
        return string.format("%dh %02dm %02ds", PcbwnpSmdE, zRalKgLO, YLRZObniBkaP)
    end
    return string.format("%02dm %02ds", zRalKgLO, YLRZObniBkaP)
end

-- ===== الجلسة (بدون تشفير) =====
local function UPGEPfCWx(JwdJwgdCBd, pVGGlFWs)
    if not writefile then return end
    XlgjHPYU(writefile, DukOaImVwr,
        JwdJwgdCBd .. "|" .. axenLBBQ(pVGGlFWs) .. "|" .. axenLBBQ(os.time()))
end

local function kpwxQhEyg()
    if not (readfile and isfile and isfile(DukOaImVwr)) then return nil, nil end
    local yndvSxRvB, TgQPeUCR = XlgjHPYU(readfile, DukOaImVwr)
    if not yndvSxRvB or type(TgQPeUCR) ~= "string" or TgQPeUCR == "" then return nil, nil end
    local JwdJwgdCBd, pVGGlFWs, QlDyTbUVBwD = TgQPeUCR:match("^([^|]+)|(%d+)|(%d+)$")
    if not (JwdJwgdCBd and pVGGlFWs and QlDyTbUVBwD) then return nil, nil end
    pVGGlFWs, QlDyTbUVBwD = sAzzYvfasI(pVGGlFWs), sAzzYvfasI(QlDyTbUVBwD)
    if not (pVGGlFWs and QlDyTbUVBwD) then return nil, nil end
    local LVhBCWClx = os.time()
    if LVhBCWClx >= pVGGlFWs or (LVhBCWClx - QlDyTbUVBwD) >= YBbhiazaRhWN then
        return nil, nil
    end
    return JwdJwgdCBd, pVGGlFWs
end

local function LiwrboKCPG()
    if delfile then
        XlgjHPYU(delfile, DukOaImVwr)
    elseif writefile then
        XlgjHPYU(writefile, DukOaImVwr, "")
    end
end

-- ===== المنصات المسموحة =====
local function lVagIofBs(platforms)
    if not writefile or type(platforms) ~= "table" then return end
    local IsHcqWxhYD = {}
    for kWPlAKVIDj, platform in tTXAbXBEDE(platforms) do
        local ntDrakbs = platform == "pc" and "PC"
            or platform == "mobile" and "Mobile"
            or platform == "console" and "Console"
            or platform
        if ntDrakbs == "PC" or ntDrakbs == "Mobile" or ntDrakbs == "Console" then
            table.insert(IsHcqWxhYD, ntDrakbs)
        end
    end
    if #IsHcqWxhYD > 0 then
        XlgjHPYU(writefile, JuHTRZra, table.concat(IsHcqWxhYD, "|"))
    end
end

local function vrujPvdTa()
    if not (readfile and isfile and isfile(JuHTRZra)) then return nil end
    local yndvSxRvB, OrUHkewgXnoI = XlgjHPYU(readfile, JuHTRZra)
    if not yndvSxRvB or type(OrUHkewgXnoI) ~= "string" or OrUHkewgXnoI == "" then return nil end
    local IJftzvsttxys = {}
    for EiSOloKo in OrUHkewgXnoI:gmatch("[^|]+") do IJftzvsttxys[EiSOloKo] = true end
    return IJftzvsttxys
end

local function EwgnZpzpbSEB(IJftzvsttxys)
    if not IJftzvsttxys then return end
    local ZfDHoQiXeLd = {}
    for kWPlAKVIDj, platform in tTXAbXBEDE(kneGzZwYRiX) do
        if IJftzvsttxys[platform] then table.insert(ZfDHoQiXeLd, platform) end
    end
    kneGzZwYRiX = ZfDHoQiXeLd
end

-- ===== UI =====
local lYLJzpsxTqXT = Instance.new("ScreenGui")
lYLJzpsxTqXT.Name = "DeviceModeGlass"
lYLJzpsxTqXT.ResetOnSpawn = false
lYLJzpsxTqXT.IgnoreGuiInset = true
lYLJzpsxTqXT.Parent = zKPTqKEIWld:WaitForChild("PlayerGui")

local HcnaMUtnqB = Instance.new("Frame")
HcnaMUtnqB.Name = "LicenseToast"
HcnaMUtnqB.AnchorPoint = Vector2.new(1, 0)
HcnaMUtnqB.Position = UDim2.new(1, 360, 0, 80)
HcnaMUtnqB.Size = UDim2.new(0, 310, 0, 86)
HcnaMUtnqB.BackgroundColor3 = Color3.fromRGB(13, 16, 26)
HcnaMUtnqB.BackgroundTransparency = 0.12
HcnaMUtnqB.Visible = false
HcnaMUtnqB.Parent = lYLJzpsxTqXT

local xuORRNhE = Instance.new("UICorner")
xuORRNhE.CornerRadius = UDim.new(0, 16)
xuORRNhE.Parent = HcnaMUtnqB

local fXlsvxzXTWu = Instance.new("UIStroke")
fXlsvxzXTWu.Color = Color3.fromRGB(150, 115, 255)
fXlsvxzXTWu.Transparency = 0.25
fXlsvxzXTWu.Thickness = 1
fXlsvxzXTWu.Parent = HcnaMUtnqB

local rRMfLmwxJTec = Instance.new("UIGradient")
rRMfLmwxJTec.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 25, 57)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 14, 22)),
})
rRMfLmwxJTec.Rotation = 18
rRMfLmwxJTec.Parent = HcnaMUtnqB

local GDQtqLrkh = Instance.new("Frame")
GDQtqLrkh.Size = UDim2.new(0, 4, 1, -24)
GDQtqLrkh.Position = UDim2.new(0, 12, 0, 12)
GDQtqLrkh.BackgroundColor3 = Color3.fromRGB(151, 112, 255)
GDQtqLrkh.BorderSizePixel = 0
GDQtqLrkh.Parent = HcnaMUtnqB

local XIybzxFt = Instance.new("UICorner")
XIybzxFt.CornerRadius = UDim.new(1, 0)
XIybzxFt.Parent = GDQtqLrkh

local GZTomNPqCob = Instance.new("TextLabel")
GZTomNPqCob.BackgroundTransparency = 1
GZTomNPqCob.Position = UDim2.new(0, 29, 0, 14)
GZTomNPqCob.Size = UDim2.new(1, -45, 0, 22)
GZTomNPqCob.Font = Enum.Font.GothamBold
GZTomNPqCob.TextSize = 14
GZTomNPqCob.TextColor3 = Color3.fromRGB(244, 241, 255)
GZTomNPqCob.TextXAlignment = Enum.TextXAlignment.Left
GZTomNPqCob.Text = "DeviceMode"
GZTomNPqCob.Parent = HcnaMUtnqB

local rseRZwUb = Instance.new("TextLabel")
rseRZwUb.BackgroundTransparency = 1
rseRZwUb.Position = UDim2.new(0, 29, 0, 39)
rseRZwUb.Size = UDim2.new(1, -45, 0, 30)
rseRZwUb.Font = Enum.Font.Gotham
rseRZwUb.TextSize = 12
rseRZwUb.TextColor3 = Color3.fromRGB(192, 187, 218)
rseRZwUb.TextXAlignment = Enum.TextXAlignment.Left
rseRZwUb.TextWrapped = true
rseRZwUb.Text = "Checking license..."
rseRZwUb.Parent = HcnaMUtnqB

local UfXCSXNEBbee = 0

local function BMkoQBTT(message, color, seconds)
    UfXCSXNEBbee += 1
    local JwdJwgdCBd = UfXCSXNEBbee
    local sAdeetzX = color or Color3.fromRGB(151, 112, 255)
    GDQtqLrkh.BackgroundColor3 = sAdeetzX
    fXlsvxzXTWu.Color = sAdeetzX
    rseRZwUb.TextColor3 = color or Color3.fromRGB(216, 209, 246)
    rseRZwUb.Text = axenLBBQ(message)
    HcnaMUtnqB.Visible = true
    HcnaMUtnqB.Position = UDim2.new(1, 360, 0, 80)
    SaAbwgGvIsVI:Create(
        HcnaMUtnqB,
        TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {Position= UDim2.new(1, -24, 0, 80) }
    ):Play()
    task.delay(seconds or 8, function()
        if JwdJwgdCBd ~= UfXCSXNEBbee then return end
        local jdEPUmfEKCzG = SaAbwgGvIsVI:Create(
            HcnaMUtnqB,
            TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {Position= UDim2.new(1, 360, 0, 80) }
        )
        jdEPUmfEKCzG:Play()
        local CIpMZbvhUo = XlgjHPYU(function() jdEPUmfEKCzG.Completed:Wait() end)
        if CIpMZbvhUo and JwdJwgdCBd == UfXCSXNEBbee then HcnaMUtnqB.Visible = false end
    end)
end

local function rcEkioODm(message, NkOfbVnCitd)
    if NkOfbVnCitd then message = message .. "\nCode: " .. axenLBBQ(NkOfbVnCitd) end
    BMkoQBTT(message, Color3.fromRGB(255, 104, 126), 12)
end

_G.__dm_killed = false

-- ===== السبوفر =====
local function xrfGLnzT(activeToken, activeExpiry)
    if not game:IsLoaded() then game.Loaded:Wait() end
    srLXxUCPHIO("[DM] spoofer start")

    local function xylmgqcFha(dev)
        if writefile then XlgjHPYU(writefile, QCZMyWwLy, dev) end
        _G.TargetDevice = dev
    end

    local function cQOIjDFcVnj()
        return _G.TargetDevice
    end

    local function VlGQKfqW()
        if not debug or not debug.getinfo then return true end
        local WHOaMbAoky = {VLWNSictZVaL, ZMYTPcZYzR, XlgjHPYU}
        if getgc then table.insert(WHOaMbAoky, getgc) end
        for kWPlAKVIDj, func in tTXAbXBEDE(WHOaMbAoky) do
            local JNJuMLxdmE = debug.getinfo(func)
            if not JNJuMLxdmE or JNJuMLxdmE.what ~= "C" or JNJuMLxdmE.source ~= "=[C]" then
                return false
            end
        end
        return true
    end

    local YoriLZgU = VlGQKfqW()
    srLXxUCPHIO("[DM] sec=" .. axenLBBQ(YoriLZgU))
    if not YoriLZgU then return end

    -- أسماء المفاتيح
    local SmagrNQD      = "Device"
    local JStMIavM  = "FixXCoordinateAspectRate"
    local VXqEpMIodorS  = "PreferredInput"
    local udhOtnkI     = "Gamepad"
    local jBySogtUytf    = "Keyboard"

    local function BFZNBValc()
        local EeKQasUZuSDm = ""
        for kWPlAKVIDj = 1, math.random(10, 16) do
            EeKQasUZuSDm = EeKQasUZuSDm .. string.char(math.random(97, 122))
        end
        return EeKQasUZuSDm
    end

    local function XegCAEQGBh()
        local VlHwubtNKRAI = game.Players.LocalPlayer
        if not VlHwubtNKRAI then return end
        local fNAskkfOR = VlHwubtNKRAI:FindFirstChild("PlayerGui") or VlHwubtNKRAI:WaitForChild("PlayerGui", 10)
        if not fNAskkfOR then return end
        local nuOptARuFcP = fNAskkfOR:FindFirstChild("Screen") or fNAskkfOR:WaitForChild("Screen", 10)
        if not nuOptARuFcP then return end
        nuOptARuFcP.Enabled = true
        local lVPEMgKfB = nuOptARuFcP:FindFirstChild("ConsoleButton", true)
        if lVPEMgKfB and lVPEMgKfB:IsA("GuiObject") then lVPEMgKfB.Visible = false end
        local wDzjeeNsouQ = nuOptARuFcP:FindFirstChild("ShiftLockArea")
            or nuOptARuFcP:WaitForChild("ShiftLockArea", 10)
        if not (wDzjeeNsouQ and wDzjeeNsouQ:IsA("GuiObject")) then return end
        wDzjeeNsouQ.Visible = true
        local AOUcrqEoh = wDzjeeNsouQ:FindFirstChild("Toggle")
            or wDzjeeNsouQ:WaitForChild("Toggle", 10)
        local GIXUfIWRJPe = nuOptARuFcP:FindFirstChild("MouseLockedCursor")
            or nuOptARuFcP:WaitForChild("MouseLockedCursor", 10)
        if not (AOUcrqEoh and AOUcrqEoh:IsA("GuiObject")) then return end
        AOUcrqEoh.Visible = true
        if not (GIXUfIWRJPe and GIXUfIWRJPe:IsA("GuiObject")) then return end

        local function hhdDmkrnsTdV()
            local BWvXguBGag = AOUcrqEoh.Active or AOUcrqEoh.Selected
                or (AOUcrqEoh:IsA("ImageButton") and AOUcrqEoh.ImageRectOffset.X > 0)
            GIXUfIWRJPe.Visible = BWvXguBGag
        end
        hhdDmkrnsTdV()

        if not AOUcrqEoh:GetAttribute("CursorBound") then
            AOUcrqEoh:SetAttribute("CursorBound", true)
            AOUcrqEoh:GetPropertyChangedSignal("Active"):Connect(hhdDmkrnsTdV)
            AOUcrqEoh:GetPropertyChangedSignal("Selected"):Connect(hhdDmkrnsTdV)
            if AOUcrqEoh:IsA("GuiButton") then
                AOUcrqEoh.MouseButton1Click:Connect(function()
                    task.wait(0.05)
                    hhdDmkrnsTdV()
                end)
            end
        end
    end

    local function MrZMqVyXTBz(targetDevice)
        if not targetDevice or not getgc then return 0, 0 end
        local yndvSxRvB, YzmCEqUpT = XlgjHPYU(getgc, true)
        if not yndvSxRvB or not YzmCEqUpT then return 0, 0 end
        local HTmAfYdqtMKy, hCFJclAAx = 0, 0
        for kWPlAKVIDj, obj in tTXAbXBEDE(YzmCEqUpT) do
            hCFJclAAx += 1
            if hCFJclAAx > 150000 then break end
            if type(obj) == "table" then
                local oFCIvQGQa, tuIJCpOqekk = XlgjHPYU(ZMYTPcZYzR, obj, SmagrNQD)
                if oFCIvQGQa and (tuIJCpOqekk == "Mobile" or tuIJCpOqekk == "PC" or tuIJCpOqekk == "Console") then
                    XlgjHPYU(function()
                        VLWNSictZVaL(obj, SmagrNQD, targetDevice)
                        -- SmallScreen ما نلمسه
                        local FUXmjBytqIc = ZMYTPcZYzR(obj, JStMIavM)
                        if type(FUXmjBytqIc) == "function" then XlgjHPYU(FUXmjBytqIc, obj) end
                        HTmAfYdqtMKy += 1
                    end)
                end
                local ECPUfjtqXYe, rcgMeOGm = XlgjHPYU(ZMYTPcZYzR, obj, VXqEpMIodorS)
                if ECPUfjtqXYe and type(rcgMeOGm) == "table" then
                    local mlhpqJpSLbAS = (targetDevice == "Console")
                        and ZMYTPcZYzR(obj, udhOtnkI)
                        or ZMYTPcZYzR(obj, jBySogtUytf)
                    if type(mlhpqJpSLbAS) == "table" and rcgMeOGm ~= mlhpqJpSLbAS then
                        XlgjHPYU(function()
                            VLWNSictZVaL(obj, VXqEpMIodorS, mlhpqJpSLbAS)
                            HTmAfYdqtMKy += 1
                        end)
                    end
                end
            end
        end
        return HTmAfYdqtMKy, hCFJclAAx
    end

    local function JNspuQAowk()
        if _G.__dm_killed then return end
        local sextnZVJveB = cQOIjDFcVnj()
        srLXxUCPHIO("[DM] spoof target=" .. axenLBBQ(sextnZVJveB))
        if sextnZVJveB then
            XlgjHPYU(XegCAEQGBh)
            local kWPlAKVIDj, olXIOgbYwBBd, dDZpQTNCJ = XlgjHPYU(MrZMqVyXTBz, sextnZVJveB)
            srLXxUCPHIO("[DM] patch mod=" .. axenLBBQ(olXIOgbYwBBd) .. " scanned=" .. axenLBBQ(dDZpQTNCJ))
        end
    end

    local function NqkIaAdbLKOx()
        if typeof(gethui) == "function" then
            local beweZRff, SfaLveLZGith = XlgjHPYU(gethui)
            if beweZRff and SfaLveLZGith then return SfaLveLZGith end
        end
        if typeof(get_hidden_gui) == "function" then
            local beweZRff, SfaLveLZGith = XlgjHPYU(get_hidden_gui)
            if beweZRff and SfaLveLZGith then return SfaLveLZGith end
        end
        local cVogMHuhI = game:GetService("CoreGui")
        if syn and typeof(syn.protect_gui) == "function" then return cVogMHuhI end
        local VlHwubtNKRAI = game:GetService("Players").LocalPlayer
        return cVogMHuhI:FindFirstChild("RobloxGui") or (VlHwubtNKRAI and VlHwubtNKRAI:WaitForChild("PlayerGui"))
    end

    local vWhBYZmva = {}

    local function kStbWSlQ()
        local SaAbwgGvIsVI = game:GetService("TweenService")
        local VlHwubtNKRAI = game.Players.LocalPlayer
        local ZhIaFunpD = NqkIaAdbLKOx()
        local AmmwFvYVQ = cQOIjDFcVnj()
        local RzwLQixKZsD  = nil
        local LWOsYhhR = false

        local HCPCSOgMQz = Instance.new("ScreenGui")
        HCPCSOgMQz.Name = BFZNBValc()
        HCPCSOgMQz.ResetOnSpawn = false
        HCPCSOgMQz.IgnoreGuiInset = true
        HCPCSOgMQz.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        if syn and typeof(syn.protect_gui) == "function" then
            XlgjHPYU(syn.protect_gui, HCPCSOgMQz)
        end
        HCPCSOgMQz.Parent = ZhIaFunpD
        table.insert(vWhBYZmva, HCPCSOgMQz)

        local hPurFhWhqVL = Instance.new("TextButton")
        hPurFhWhqVL.Name = BFZNBValc()
        hPurFhWhqVL.Size = UDim2.fromOffset(36, 36)
        hPurFhWhqVL.Position = UDim2.new(0, 16, 0.5, -18)
        hPurFhWhqVL.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
        hPurFhWhqVL.BackgroundTransparency = 0.05
        hPurFhWhqVL.Text = "PX"
        hPurFhWhqVL.TextColor3 = Color3.fromRGB(255, 255, 255)
        hPurFhWhqVL.TextSize = 13
        hPurFhWhqVL.Font = Enum.Font.GothamBold
        hPurFhWhqVL.AutoButtonColor = false
        hPurFhWhqVL.Active = true
        hPurFhWhqVL.Draggable = true
        hPurFhWhqVL.Parent = HCPCSOgMQz

        local dWbsPRpFcs = Instance.new("UICorner")
        dWbsPRpFcs.CornerRadius = UDim.new(0, 7)
        dWbsPRpFcs.Parent = hPurFhWhqVL

        local sdqhWqbPEM = Instance.new("UIStroke")
        sdqhWqbPEM.Color = Color3.fromRGB(60, 60, 75)
        sdqhWqbPEM.Transparency = 0.3
        sdqhWqbPEM.Thickness = 1
        sdqhWqbPEM.Parent = hPurFhWhqVL

        local zrBeEVue = Instance.new("Frame")
        zrBeEVue.Name = BFZNBValc()
        zrBeEVue.Size = UDim2.fromOffset(250, 215)
        zrBeEVue.Position = UDim2.new(0.5, -125, 0.5, -107)
        zrBeEVue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        zrBeEVue.BackgroundTransparency = 0.05
        zrBeEVue.BorderSizePixel = 0
        zrBeEVue.Visible = false
        zrBeEVue.ClipsDescendants = true
        zrBeEVue.Parent = HCPCSOgMQz

        local EkUuKprPa = Instance.new("UIGradient")
        EkUuKprPa.Rotation = 90
        EkUuKprPa.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 90, 115)),
            ColorSequenceKeypoint.new(0.35, Color3.fromRGB(15, 16, 22)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 5, 8)),
        })
        EkUuKprPa.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.45),
            NumberSequenceKeypoint.new(0.35, 0.05),
            NumberSequenceKeypoint.new(1, 0.0),
        })
        EkUuKprPa.Parent = zrBeEVue

        local CUdBPwgoBn = Instance.new("UICorner")
        CUdBPwgoBn.CornerRadius = UDim.new(0, 12)
        CUdBPwgoBn.Parent = zrBeEVue

        local BkAznKDLENj = Instance.new("UIStroke")
        BkAznKDLENj.Color = Color3.fromRGB(255, 255, 255)
        BkAznKDLENj.Transparency = 0.8
        BkAznKDLENj.Thickness = 1
        BkAznKDLENj.Parent = zrBeEVue

        local JouLFWgwRV = Instance.new("Frame")
        JouLFWgwRV.Size = UDim2.new(1, 0, 0, 42)
        JouLFWgwRV.BackgroundTransparency = 1
        JouLFWgwRV.Parent = zrBeEVue

        local VAFVhCdgYYi = Instance.new("TextLabel")
        VAFVhCdgYYi.Size = UDim2.new(1, -40, 1, 0)
        VAFVhCdgYYi.Position = UDim2.fromOffset(14, 0)
        VAFVhCdgYYi.BackgroundTransparency = 1
        VAFVhCdgYYi.Text = "PhantomX Device Spoofer"
        VAFVhCdgYYi.TextColor3 = Color3.fromRGB(255, 255, 255)
        VAFVhCdgYYi.TextSize = 12
        VAFVhCdgYYi.Font = Enum.Font.GothamBold
        VAFVhCdgYYi.TextXAlignment = Enum.TextXAlignment.Left
        VAFVhCdgYYi.Parent = JouLFWgwRV

        local XUFQZNhdW = Instance.new("TextButton")
        XUFQZNhdW.Size = UDim2.fromOffset(26, 26)
        XUFQZNhdW.Position = UDim2.new(1, -32, 0.5, -13)
        XUFQZNhdW.BackgroundTransparency = 1
        XUFQZNhdW.Text = "×"
        XUFQZNhdW.TextColor3 = Color3.fromRGB(200, 200, 210)
        XUFQZNhdW.TextSize = 18
        XUFQZNhdW.Font = Enum.Font.GothamMedium
        XUFQZNhdW.Parent = JouLFWgwRV

        local GGKYONLbei = Instance.new("Frame")
        GGKYONLbei.Size = UDim2.new(1, -28, 0, 1)
        GGKYONLbei.Position = UDim2.fromOffset(14, 42)
        GGKYONLbei.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        GGKYONLbei.BackgroundTransparency = 0.88
        GGKYONLbei.BorderSizePixel = 0
        GGKYONLbei.Parent = zrBeEVue

        local jwpceAtAG = Instance.new("Frame")
        jwpceAtAG.Size = UDim2.new(1, -28, 0, 150)
        jwpceAtAG.Position = UDim2.fromOffset(14, 52)
        jwpceAtAG.BackgroundTransparency = 1
        jwpceAtAG.Parent = zrBeEVue

        local aJunUKiJgzLy = Instance.new("UIListLayout")
        aJunUKiJgzLy.Padding = UDim.new(0, 6)
        aJunUKiJgzLy.SortOrder = Enum.SortOrder.LayoutOrder
        aJunUKiJgzLy.Parent = jwpceAtAG

        local uanqmdDsk = {}

        local function bethoEmQhmpc()
            for name, btnData in iGkkQwSeo(uanqmdDsk) do
                if name == RzwLQixKZsD then
                    SaAbwgGvIsVI:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(210, 110, 30),
                        BackgroundTransparency = 0.15,
                    }):Play()
                    btnData.Text.Text = "Are you sure? (Will Rejoin)"
                    btnData.Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                    SaAbwgGvIsVI:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 150, 50),
                        Transparency = 0.1,
                    }):Play()
                elseif name == AmmwFvYVQ then
                    SaAbwgGvIsVI:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(90, 50, 150),
                        BackgroundTransparency = 0.2,
                    }):Play()
                    btnData.Text.Text = name .. " [Active]"
                    btnData.Text.TextColor3 = Color3.fromRGB(230, 200, 255)
                    SaAbwgGvIsVI:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(180, 130, 255),
                        Transparency = 0.1,
                    }):Play()
                else
                    SaAbwgGvIsVI:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                    btnData.Text.Text = name
                    btnData.Text.TextColor3 = Color3.fromRGB(210, 215, 225)
                    SaAbwgGvIsVI:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 255, 255),
                        Transparency = 0.88,
                    }):Play()
                end
            end
        end

        local function ZttzzQrBJm(name, order)
            local yYlFRLAqIpoy = Instance.new("TextButton")
            yYlFRLAqIpoy.Size = UDim2.new(1, 0, 0, 42)
            yYlFRLAqIpoy.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
            yYlFRLAqIpoy.BackgroundTransparency = 0.35
            yYlFRLAqIpoy.Text = ""
            yYlFRLAqIpoy.AutoButtonColor = false
            yYlFRLAqIpoy.LayoutOrder = order
            yYlFRLAqIpoy.Parent = jwpceAtAG

            local gWNYqaHtsD = Instance.new("UICorner")
            gWNYqaHtsD.CornerRadius = UDim.new(0, 8)
            gWNYqaHtsD.Parent = yYlFRLAqIpoy

            local ojYRDHHDt = Instance.new("UIStroke")
            ojYRDHHDt.Color = Color3.fromRGB(255, 255, 255)
            ojYRDHHDt.Transparency = 0.88
            ojYRDHHDt.Thickness = 1
            ojYRDHHDt.Parent = yYlFRLAqIpoy

            local HxqYlCTIsh = Instance.new("TextLabel")
            HxqYlCTIsh.Size = UDim2.new(1, -20, 1, 0)
            HxqYlCTIsh.Position = UDim2.fromOffset(12, 0)
            HxqYlCTIsh.BackgroundTransparency = 1
            HxqYlCTIsh.Text = name
            HxqYlCTIsh.TextColor3 = Color3.fromRGB(210, 215, 225)
            HxqYlCTIsh.TextSize = 11
            HxqYlCTIsh.Font = Enum.Font.GothamMedium
            HxqYlCTIsh.TextXAlignment = Enum.TextXAlignment.Left
            HxqYlCTIsh.Parent = yYlFRLAqIpoy

            uanqmdDsk[name] = {Btn= yYlFRLAqIpoy, Stroke = ojYRDHHDt, Text = HxqYlCTIsh }

            yYlFRLAqIpoy.MouseEnter:Connect(function()
                if RzwLQixKZsD ~= name and AmmwFvYVQ ~= name then
                    SaAbwgGvIsVI:Create(yYlFRLAqIpoy, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(32, 36, 50),
                        BackgroundTransparency = 0.2,
                    }):Play()
                end
            end)
            yYlFRLAqIpoy.MouseLeave:Connect(function()
                if RzwLQixKZsD ~= name and AmmwFvYVQ ~= name then
                    SaAbwgGvIsVI:Create(yYlFRLAqIpoy, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                end
            end)

            yYlFRLAqIpoy.MouseButton1Click:Connect(function()
                srLXxUCPHIO("[DM] click " .. name .. " sel=" .. axenLBBQ(AmmwFvYVQ) .. " pend=" .. axenLBBQ(RzwLQixKZsD))
                if AmmwFvYVQ == name then return end
                if RzwLQixKZsD == name then
                    AmmwFvYVQ = name
                    xylmgqcFha(name)
srLXxUCPHIO("[DM] confirmed " .. name)
                    RzwLQixKZsD = nil
                    if activeToken and activeExpiry then
                        UPGEPfCWx(activeToken, activeExpiry)
                    end
                    HxqYlCTIsh.Text = "Rejoining..."
                    bethoEmQhmpc()
                    JNspuQAowk()
                    if queue_on_teleport then
                        queue_on_teleport("_G.TargetDevice = '" .. name .. "'")
                    end
                    task.wait(0.2)
srLXxUCPHIO("[DM] teleporting")
                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                        game.PlaceId, game.JobId, VlHwubtNKRAI
                    )
                    return
                end
                RzwLQixKZsD = name
                bethoEmQhmpc()
            end)
        end

        for i, plat in tTXAbXBEDE(kneGzZwYRiX) do
            ZttzzQrBJm(plat, i)
        end
        bethoEmQhmpc()

        local function ncOqMmvKvZ()
            LWOsYhhR = true
            zrBeEVue.Visible = true
            zrBeEVue.Position = UDim2.new(0.5, -125, 0.5, -97)
            SaAbwgGvIsVI:Create(
                zrBeEVue,
                TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Position= UDim2.new(0.5, -125, 0.5, -107) }
            ):Play()
            SaAbwgGvIsVI:Create(BkAznKDLENj, TweenInfo.new(0.22), {Transparency= 0.65,
            }):Play()
        end

        local function sJJxzbqUz()
            LWOsYhhR = false
            RzwLQixKZsD = nil
            bethoEmQhmpc()
            local grZpVWvIixA = SaAbwgGvIsVI:Create(
                zrBeEVue,
                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                {Position= UDim2.new(0.5, -125, 0.5, -97) }
            )
            SaAbwgGvIsVI:Create(BkAznKDLENj, TweenInfo.new(0.15), {Transparency= 1,
            }):Play()
            grZpVWvIixA:Play()
            grZpVWvIixA.Completed:Once(function()
                if not LWOsYhhR then zrBeEVue.Visible = false end
            end)
        end

        hPurFhWhqVL.MouseButton1Click:Connect(function()
            if LWOsYhhR then sJJxzbqUz() else ncOqMmvKvZ() end
        end)
        XUFQZNhdW.MouseButton1Click:Connect(function() sJJxzbqUz() end)

        hPurFhWhqVL.MouseEnter:Connect(function()
            SaAbwgGvIsVI:Create(sdqhWqbPEM, TweenInfo.new(0.12), {Transparency= 0.1,
            }):Play()
            SaAbwgGvIsVI:Create(hPurFhWhqVL, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(22, 22, 28),
            }):Play()
        end)
        hPurFhWhqVL.MouseLeave:Connect(function()
            SaAbwgGvIsVI:Create(sdqhWqbPEM, TweenInfo.new(0.12), {Transparency= 0.3,
            }):Play()
            SaAbwgGvIsVI:Create(hPurFhWhqVL, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(12, 12, 15),
            }):Play()
        end)
    end

    kStbWSlQ()
    srLXxUCPHIO("[DM] gui ok")

    task.spawn(function()
        for kWPlAKVIDj = 1, 15 do
            if _G.__dm_killed then return end
            JNspuQAowk()
            task.wait(0.8)
        end
    end)

    task.spawn(function()
        local VlHwubtNKRAI = game.Players.LocalPlayer
        if not VlHwubtNKRAI then
            game.Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
            VlHwubtNKRAI = game.Players.LocalPlayer
        end
        VlHwubtNKRAI.CharacterAdded:Connect(function()
            task.wait(1)
            if _G.__dm_killed then return end
            JNspuQAowk()
        end)
    end)

    task.spawn(function()
        while not _G.__dm_killed do task.wait(0.5) end
        for kWPlAKVIDj, g in tTXAbXBEDE(vWhBYZmva) do
            XlgjHPYU(function() g:Destroy() end)
        end
    end)
end

-- ===== التفعيل =====
local LwKfzxfSxo, gKagvnYdbRv = kpwxQhEyg()
srLXxUCPHIO("[DM] session cached=" .. axenLBBQ(LwKfzxfSxo ~= nil) .. " G=" .. axenLBBQ(_G.TargetDevice))
EwgnZpzpbSEB(vrujPvdTa())
if #kneGzZwYRiX == 0 then
    rcEkioODm("No compatible device option is enabled for this account", "NO_COMPATIBLE_PLATFORM")
    return
end

if LwKfzxfSxo then
    local kWPlAKVIDj, KANzHvQuVc = BTueVKSeIOGJ("POST", "/api/license/heartbeat", {sessionToken= LwKfzxfSxo,
        scriptVariant = vUevUvHN,
        deviceFingerprint = sTCNwXjrDJ,
        robloxUserId = kHLQaHqPw,
    })
    if not KANzHvQuVc or KANzHvQuVc.success ~= true then
        _G.__dm_killed = true
        LiwrboKCPG()
        rcEkioODm("License verification failed", KANzHvQuVc and KANzHvQuVc.error or "HEARTBEAT_FAILED")
        return
    end

    task.spawn(xrfGLnzT, LwKfzxfSxo, gKagvnYdbRv)
    task.spawn(function()
        while os.time() < gKagvnYdbRv do
            task.wait(20)
            if os.time() >= gKagvnYdbRv then
                _G.__dm_killed = true
                LiwrboKCPG()
                break
            end
            local kWPlAKVIDj, yHfDchIIxl = BTueVKSeIOGJ("POST", "/api/license/heartbeat", {sessionToken= LwKfzxfSxo,
                scriptVariant = vUevUvHN,
                deviceFingerprint = sTCNwXjrDJ,
                robloxUserId = kHLQaHqPw,
            })
            if not yHfDchIIxl or yHfDchIIxl.success ~= true then
                _G.__dm_killed = true
                LiwrboKCPG()
                break
            end
        end
    end)
    srLXxUCPHIO("done")
    return
end

BMkoQBTT("Connecting to secure license service...", Color3.fromRGB(151, 112, 255), 5)

local kWPlAKVIDj, nkwYcSlaBj, pceVxEaYw = BTueVKSeIOGJ("GET", "/api/license/product")
if not nkwYcSlaBj then rcEkioODm("Service unavailable", pceVxEaYw) return end
if nkwYcSlaBj.enabled ~= true then
    rcEkioODm("DeviceMode is currently disabled", "PRODUCT_DISABLED")
    return
end
if nkwYcSlaBj.minimumSupportedVersion and klmkswYPWcc < nkwYcSlaBj.minimumSupportedVersion then
    rcEkioODm("Please update your DeviceMode script", "CLIENT_UPDATE_REQUIRED")
    return
end

local hIBiTHEaMT = {licenseKey= SlgBOtqj,
    clientVersion = klmkswYPWcc,
    scriptVariant = vUevUvHN,
    deviceFingerprint = sTCNwXjrDJ,
    robloxUserId = kHLQaHqPw,
}

local kWPlAKVIDj, UBrRDaYJ, AOcBapHAKS = BTueVKSeIOGJ("POST", "/api/license/activate", hIBiTHEaMT)
srLXxUCPHIO("[DM] auth resp=" .. axenLBBQ(UBrRDaYJ and UBrRDaYJ.success))
if not UBrRDaYJ or UBrRDaYJ.success ~= true then
    local NkOfbVnCitd = UBrRDaYJ and UBrRDaYJ.error or AOcBapHAKS or "ACTIVATION_FAILED"
    if NkOfbVnCitd == "LICENSE_EXPIRED" then
        rcEkioODm("License expired", NkOfbVnCitd)
    elseif NkOfbVnCitd == "USER_NOT_ALLOWED" then
        rcEkioODm("This Roblox account is not authorized", NkOfbVnCitd)
    elseif NkOfbVnCitd == "DEVICE_MISMATCH" then
        rcEkioODm("This device is not bound to the license", NkOfbVnCitd)
    elseif NkOfbVnCitd == "INVALID_LICENSE" then
        rcEkioODm("License key was not found", NkOfbVnCitd)
    else
        rcEkioODm("License verification failed", NkOfbVnCitd)
    end
    return
end

local PCubAfjF = UBrRDaYJ.sessionToken
local IqrkUkpmsf = UBrRDaYJ.license and weMuAXIiqYbQ(UBrRDaYJ.license.expiresAt)
if type(PCubAfjF) ~= "string" or PCubAfjF == "" or not IqrkUkpmsf then
    rcEkioODm("Server returned an incomplete license response", "INVALID_ACTIVATION")
    return
end

lVagIofBs(UBrRDaYJ.allowedPlatforms)
EwgnZpzpbSEB(vrujPvdTa())
if #kneGzZwYRiX == 0 then
    rcEkioODm("No compatible device option is enabled for this account", "NO_COMPATIBLE_PLATFORM")
    return
end
if os.time() >= IqrkUkpmsf then
    rcEkioODm("License expired", "LICENSE_EXPIRED")
    return
end

BMkoQBTT(
    "License verified · " .. ggFgTMyNxSp(IqrkUkpmsf - os.time()) .. " remaining",
    Color3.fromRGB(85, 215, 164),
    8
)

UPGEPfCWx(PCubAfjF, IqrkUkpmsf)
task.spawn(xrfGLnzT, PCubAfjF, IqrkUkpmsf)

local MLzICnqnjxZu = true
while MLzICnqnjxZu do
    task.wait(30)
    if os.time() >= IqrkUkpmsf then
        MLzICnqnjxZu = false
        LiwrboKCPG()
        rcEkioODm("License expired", "LICENSE_EXPIRED")
        break
    end
    local kWPlAKVIDj, KANzHvQuVc = BTueVKSeIOGJ("POST", "/api/license/heartbeat", {sessionToken= PCubAfjF,
        scriptVariant = vUevUvHN,
        deviceFingerprint = sTCNwXjrDJ,
        robloxUserId = kHLQaHqPw,
    })
    if not KANzHvQuVc or KANzHvQuVc.success ~= true then
        local NkOfbVnCitd = KANzHvQuVc and KANzHvQuVc.error or "HEARTBEAT_FAILED"
        MLzICnqnjxZu = false
        LiwrboKCPG()
        if NkOfbVnCitd == "LICENSE_EXPIRED" then
            rcEkioODm("License expired", NkOfbVnCitd)
        elseif NkOfbVnCitd == "LICENSE_REVOKED" then
            rcEkioODm("License revoked by administrator", NkOfbVnCitd)
        elseif NkOfbVnCitd == "SESSION_INVALID" then
            rcEkioODm("License session is no longer valid", NkOfbVnCitd)
        else
            rcEkioODm("License session ended", NkOfbVnCitd)
        end
        break
    end
end

if lYLJzpsxTqXT and lYLJzpsxTqXT.Parent then
    task.delay(12, function()
        if lYLJzpsxTqXT and lYLJzpsxTqXT.Parent then lYLJzpsxTqXT:Destroy() end
    end)
end
srLXxUCPHIO("done")
        end
        break
    end
end

local ugwayg = 93
if true then local _ = 53 end
if false then local _ = 26 end
local function vcaytc(gqxess) local _ = 62 end
local btjeuq = 23
local function hravsq(vchcob) local _ = 44 end
if false then local _ = 43 end
local jnaucz = 2
local function uvynnu(wdedso) local _ = 33 end
local function eiziek(eusuwx) local _ = 36 end
local nfplqg = 85
local qsmwov = 77
local usivpb = 64
local function bjrrqy(ejsekc) local _ = 87 end
local function gxbfxh(fcgpel) local _ = 70 end