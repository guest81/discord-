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
local function anwjme(ygismj) local _ = 72 end
local function haedeg(wydior) local _ = 64 end
local function nikbox(aaiucd) local _ = 83 end
if true then local _ = 20 end
local aqerxt = 34
local chssyd = 68
if true then local _ = 93 end
local fktifz = 23
while false do local _ = 32 break end
while false do local _ = 44 break end
local function clwxwe(wsbilv) local _ = 77 end
while false do local _ = 96 break end
while false do local _ = 86 break end
local sknpaj = 87
local thing = 1694;
local thing2 = 1694;
local counter = 0;
while thing == thing2 and counter < 1 do
    thing = thing + 1;
    counter = counter + 1;
    if thing == thing2 then
        local temp = 44; temp = temp * 2;
    else
        do
            local PKJczLjiIK,GpednOqVWyU,oSYfEazxL,VWWnQQEQnsY,nZqCFhHuCA,HVgBETgU,zbocotfgJj,jjaBToRGQbH,opZJKZkgt,EirFAdoA,GWpmyiEqHj,qdUcTfPgZmzS,HGfqfOoSC,ZUOxImnP,luWRWSGkF,lKPWWSgK,OZmxfewMOWn,lgwoJRJkJ
PKJczLjiIK=error;GpednOqVWyU=ipairs;oSYfEazxL=pairs;VWWnQQEQnsY=pcall;nZqCFhHuCA=print;HVgBETgU=rawget;zbocotfgJj=rawset;jjaBToRGQbH=select;opZJKZkgt=tonumber;EirFAdoA=tostring;GWpmyiEqHj=math.floor;qdUcTfPgZmzS=math.max;HGfqfOoSC=math.random;ZUOxImnP=string.char;luWRWSGkF=string.format;lKPWWSgK=table.concat;OZmxfewMOWn=table.insert;lgwoJRJkJ=os.time;
local tEPlrbDZPBS = game:GetService("HttpService")
local cuHFhqbMKjtj = game:GetService("Players")
local dcxVyAvapxP = game:GetService("TweenService")

if not game:IsLoaded() then game.Loaded:Wait() end

-- المنصات المتاحة
local JSYuZczF = {"Console", "Mobile"}

local BUBwHJMhY = "https://devicemode-cctgi3ma.manus.space"
local VMSkAFKal = "1.0.0"
local EVULeHyrD = "CONSOLE_MOBILE"
local kIQgLpBnOUiO = 300

local MkAvWTPpj = {
    [11379739543]    = true,
    [98752102030179] = true,
}

if not MkAvWTPpj[game.PlaceId] then return end

local cjHXUTUe = table.concat(JSYuZczF, "_")
local SAouAtfYOm = "sys_sess_v4_" .. cjHXUTUe .. ".bin"
local igYlzkUu  = "sys_cfg_v5_cache.bin"
local feWdQxDAloe = "sys_allowed_v5_" .. cjHXUTUe .. ".bin"

local RhlWQefH = getgenv and getgenv() or _G
local bzDirNSCnAvd = RhlWQefH.DeviceModeKey
if type(bzDirNSCnAvd) ~= "string" or bzDirNSCnAvd == "" then return end

local PCSQZLiw = cuHFhqbMKjtj.LocalPlayer
if not PCSQZLiw then
    cuHFhqbMKjtj:GetPropertyChangedSignal("LocalPlayer"):Wait()
    PCSQZLiw = cuHFhqbMKjtj.LocalPlayer
end
if not PCSQZLiw then return end

local VYrnwagjF = EirFAdoA(PCSQZLiw.UserId)

local function RxyQMFuqdpz()
    local AaVTHNpf = {
        function() return type(gethwid) == "function" and gethwid() end,
        function() return type(get_hwid) == "function" and get_hwid() end,
        function() return type(getHWID) == "function" and getHWID() end,
        function() return syn and type(syn.gethwid) == "function" and syn.gethwid() end,
    }
    for imGKCVeeINXF, getter in GpednOqVWyU(AaVTHNpf) do
        local UNUgXUiHeEsz, bkfDttayD = VWWnQQEQnsY(getter)
        if UNUgXUiHeEsz and type(bkfDttayD) == "string" then
            bkfDttayD = bkfDttayD:gsub("%s+", "")
            if #bkfDttayD >= 8 and #bkfDttayD <= 256 then return bkfDttayD end
        end
    end
    return nil
end

local hqymzZfvALaO = RxyQMFuqdpz()
local NIWXuBvXrxA = hqymzZfvALaO and ("EXECUTOR-HWID-" .. hqymzZfvALaO)
    or ("ROBLOX-USER-" .. VYrnwagjF)

local rMhJsJxFmR = _G.request or request or http_request or (syn and syn.request)
if type(rMhJsJxFmR) ~= "function" then return end

local function fdDeHTtIbG(method, path, body)
    local UNUgXUiHeEsz, GcXDOgsJbrp = VWWnQQEQnsY(function()
        return rMhJsJxFmR({Url= BUBwHJMhY .. path,
            Method = method,
            Headers = {
                ["Content-Type"] = "application/json",
                ["Accept"] = "application/json",
            },
            Body = body and tEPlrbDZPBS:JSONEncode(body) or nil,
        })
    end)
    if not UNUgXUiHeEsz or type(GcXDOgsJbrp) ~= "table" then
        return nil, nil, "HTTP_REQUEST_FAILED"
    end
    if type(GcXDOgsJbrp.Body) ~= "string" or GcXDOgsJbrp.Body == "" then
        return GcXDOgsJbrp, nil, "EMPTY_RESPONSE"
    end
    local msUWUgsqRlA, BVAGiZfMRcK = VWWnQQEQnsY(function()
        return tEPlrbDZPBS:JSONDecode(GcXDOgsJbrp.Body)
    end)
    if not msUWUgsqRlA or type(BVAGiZfMRcK) ~= "table" then
        return GcXDOgsJbrp, nil, "INVALID_JSON"
    end
    return GcXDOgsJbrp, BVAGiZfMRcK, nil
end

local function goiZVsWOHrdH(iso)
    if type(iso) ~= "string" then return nil end
    local UNUgXUiHeEsz, vCQwTumKpEk = VWWnQQEQnsY(function() return DateTime.fromIsoDate(iso) end)
    if not UNUgXUiHeEsz or not vCQwTumKpEk then return nil end
    return vCQwTumKpEk.UnixTimestamp
end

local function wfqtIozM(seconds)
    seconds = math.max(0, math.floor(seconds))
    local kQbRggkGL = math.floor(seconds / 86400)
    local IKDTkSKCwq = math.floor((seconds % 86400) / 3600)
    local cZcNshJK = math.floor((seconds % 3600) / 60)
    local ssrcrAkIdq = seconds % 60
    if kQbRggkGL > 0 then
        return string.format("%dd %02dh %02dm", kQbRggkGL, IKDTkSKCwq, cZcNshJK)
    end
    if IKDTkSKCwq > 0 then
        return string.format("%dh %02dm %02ds", IKDTkSKCwq, cZcNshJK, ssrcrAkIdq)
    end
    return string.format("%02dm %02ds", cZcNshJK, ssrcrAkIdq)
end

-- ===== الجلسة (بدون تشفير) =====
local function XdVdssCsmtzS(hdvEmndtQrg, WWeyaRyy)
    if not writefile then return end
    VWWnQQEQnsY(writefile, SAouAtfYOm,
        hdvEmndtQrg .. "|" .. EirFAdoA(WWeyaRyy) .. "|" .. EirFAdoA(os.time()))
end

local function kdhDNDbO()
    if not (readfile and isfile and isfile(SAouAtfYOm)) then return nil, nil end
    local UNUgXUiHeEsz, BVAGiZfMRcK = VWWnQQEQnsY(readfile, SAouAtfYOm)
    if not UNUgXUiHeEsz or type(BVAGiZfMRcK) ~= "string" or BVAGiZfMRcK == "" then return nil, nil end
    local hdvEmndtQrg, WWeyaRyy, ofYzLXFews = BVAGiZfMRcK:match("^([^|]+)|(%d+)|(%d+)$")
    if not (hdvEmndtQrg and WWeyaRyy and ofYzLXFews) then return nil, nil end
    WWeyaRyy, ofYzLXFews = opZJKZkgt(WWeyaRyy), opZJKZkgt(ofYzLXFews)
    if not (WWeyaRyy and ofYzLXFews) then return nil, nil end
    local dpmQtRgLY = os.time()
    if dpmQtRgLY >= WWeyaRyy or (dpmQtRgLY - ofYzLXFews) >= kIQgLpBnOUiO then
        return nil, nil
    end
    return hdvEmndtQrg, WWeyaRyy
end

local function GDMWKewnck()
    if delfile then
        VWWnQQEQnsY(delfile, SAouAtfYOm)
    elseif writefile then
        VWWnQQEQnsY(writefile, SAouAtfYOm, "")
    end
end

-- ===== المنصات المسموحة =====
local function XbVxivKyYOry(platforms)
    if not writefile or type(platforms) ~= "table" then return end
    local LdfpmUMqgciJ = {}
    for imGKCVeeINXF, platform in GpednOqVWyU(platforms) do
        local yPmNMvoNrN = platform == "pc" and "PC"
            or platform == "mobile" and "Mobile"
            or platform == "console" and "Console"
            or platform
        if yPmNMvoNrN == "PC" or yPmNMvoNrN == "Mobile" or yPmNMvoNrN == "Console" then
            table.insert(LdfpmUMqgciJ, yPmNMvoNrN)
        end
    end
    if #LdfpmUMqgciJ > 0 then
        VWWnQQEQnsY(writefile, feWdQxDAloe, table.concat(LdfpmUMqgciJ, "|"))
    end
end

local function MhTEpmoNb()
    if not (readfile and isfile and isfile(feWdQxDAloe)) then return nil end
    local UNUgXUiHeEsz, UJXLxiGnn = VWWnQQEQnsY(readfile, feWdQxDAloe)
    if not UNUgXUiHeEsz or type(UJXLxiGnn) ~= "string" or UJXLxiGnn == "" then return nil end
    local BrUzvTJQaFAv = {}
    for bkfDttayD in UJXLxiGnn:gmatch("[^|]+") do BrUzvTJQaFAv[bkfDttayD] = true end
    return BrUzvTJQaFAv
end

local function upcwTZTxUo(BrUzvTJQaFAv)
    if not BrUzvTJQaFAv then return end
    local WiKYHJlX = {}
    for imGKCVeeINXF, platform in GpednOqVWyU(JSYuZczF) do
        if BrUzvTJQaFAv[platform] then table.insert(WiKYHJlX, platform) end
    end
    JSYuZczF = WiKYHJlX
end

-- ===== UI =====
local csoMukcp = Instance.new("ScreenGui")
csoMukcp.Name = "DeviceModeGlass"
csoMukcp.ResetOnSpawn = false
csoMukcp.IgnoreGuiInset = true
csoMukcp.Parent = PCSQZLiw:WaitForChild("PlayerGui")

local ZHxDeOludatU = Instance.new("Frame")
ZHxDeOludatU.Name = "LicenseToast"
ZHxDeOludatU.AnchorPoint = Vector2.new(1, 0)
ZHxDeOludatU.Position = UDim2.new(1, 360, 0, 80)
ZHxDeOludatU.Size = UDim2.new(0, 310, 0, 86)
ZHxDeOludatU.BackgroundColor3 = Color3.fromRGB(13, 16, 26)
ZHxDeOludatU.BackgroundTransparency = 0.12
ZHxDeOludatU.Visible = false
ZHxDeOludatU.Parent = csoMukcp

local JQGHpCZA = Instance.new("UICorner")
JQGHpCZA.CornerRadius = UDim.new(0, 16)
JQGHpCZA.Parent = ZHxDeOludatU

local lIGHpbIvlpwc = Instance.new("UIStroke")
lIGHpbIvlpwc.Color = Color3.fromRGB(150, 115, 255)
lIGHpbIvlpwc.Transparency = 0.25
lIGHpbIvlpwc.Thickness = 1
lIGHpbIvlpwc.Parent = ZHxDeOludatU

local eKjeiIhIWRDG = Instance.new("UIGradient")
eKjeiIhIWRDG.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 25, 57)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 14, 22)),
})
eKjeiIhIWRDG.Rotation = 18
eKjeiIhIWRDG.Parent = ZHxDeOludatU

local PpURUrMUb = Instance.new("Frame")
PpURUrMUb.Size = UDim2.new(0, 4, 1, -24)
PpURUrMUb.Position = UDim2.new(0, 12, 0, 12)
PpURUrMUb.BackgroundColor3 = Color3.fromRGB(151, 112, 255)
PpURUrMUb.BorderSizePixel = 0
PpURUrMUb.Parent = ZHxDeOludatU

local COqJWFeNl = Instance.new("UICorner")
COqJWFeNl.CornerRadius = UDim.new(1, 0)
COqJWFeNl.Parent = PpURUrMUb

local KRMkBxUirrBI = Instance.new("TextLabel")
KRMkBxUirrBI.BackgroundTransparency = 1
KRMkBxUirrBI.Position = UDim2.new(0, 29, 0, 14)
KRMkBxUirrBI.Size = UDim2.new(1, -45, 0, 22)
KRMkBxUirrBI.Font = Enum.Font.GothamBold
KRMkBxUirrBI.TextSize = 14
KRMkBxUirrBI.TextColor3 = Color3.fromRGB(244, 241, 255)
KRMkBxUirrBI.TextXAlignment = Enum.TextXAlignment.Left
KRMkBxUirrBI.Text = "DeviceMode"
KRMkBxUirrBI.Parent = ZHxDeOludatU

local wRVIzoNotRW = Instance.new("TextLabel")
wRVIzoNotRW.BackgroundTransparency = 1
wRVIzoNotRW.Position = UDim2.new(0, 29, 0, 39)
wRVIzoNotRW.Size = UDim2.new(1, -45, 0, 30)
wRVIzoNotRW.Font = Enum.Font.Gotham
wRVIzoNotRW.TextSize = 12
wRVIzoNotRW.TextColor3 = Color3.fromRGB(192, 187, 218)
wRVIzoNotRW.TextXAlignment = Enum.TextXAlignment.Left
wRVIzoNotRW.TextWrapped = true
wRVIzoNotRW.Text = "Checking license..."
wRVIzoNotRW.Parent = ZHxDeOludatU

local FQQdDQzsg = 0

local function eylSjhgxW(message, color, seconds)
    FQQdDQzsg += 1
    local hdvEmndtQrg = FQQdDQzsg
    local fAcjLPQp = color or Color3.fromRGB(151, 112, 255)
    PpURUrMUb.BackgroundColor3 = fAcjLPQp
    lIGHpbIvlpwc.Color = fAcjLPQp
    wRVIzoNotRW.TextColor3 = color or Color3.fromRGB(216, 209, 246)
    wRVIzoNotRW.Text = EirFAdoA(message)
    ZHxDeOludatU.Visible = true
    ZHxDeOludatU.Position = UDim2.new(1, 360, 0, 80)
    dcxVyAvapxP:Create(
        ZHxDeOludatU,
        TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {Position= UDim2.new(1, -24, 0, 80) }
    ):Play()
    task.delay(seconds or 8, function()
        if hdvEmndtQrg ~= FQQdDQzsg then return end
        local PVkgwVJsFep = dcxVyAvapxP:Create(
            ZHxDeOludatU,
            TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {Position= UDim2.new(1, 360, 0, 80) }
        )
        PVkgwVJsFep:Play()
        local gvvbECoYGq = VWWnQQEQnsY(function() PVkgwVJsFep.Completed:Wait() end)
        if gvvbECoYGq and hdvEmndtQrg == FQQdDQzsg then ZHxDeOludatU.Visible = false end
    end)
end

local function KyltqbquE(message, GZesvTkFlC)
    if GZesvTkFlC then message = message .. "\nCode: " .. EirFAdoA(GZesvTkFlC) end
    eylSjhgxW(message, Color3.fromRGB(255, 104, 126), 12)
end

_G.__dm_killed = false

-- ===== السبوفر =====
local function HVZpKyoH(activeToken, activeExpiry)
    if not game:IsLoaded() then game.Loaded:Wait() end

    local function JZBDeMDv(dev)
        if writefile then VWWnQQEQnsY(writefile, igYlzkUu, dev) end
        _G.TargetDevice = dev
    end

    local function vCTtCfGe()
        return _G.TargetDevice
    end

    local function AbbhqwZzeq()
        if not debug or not debug.getinfo then return true end
        local ICrkGKduq = {zbocotfgJj, HVgBETgU, VWWnQQEQnsY}
        if getgc then table.insert(ICrkGKduq, getgc) end
        for imGKCVeeINXF, func in GpednOqVWyU(ICrkGKduq) do
            local JTZuUteD = debug.getinfo(func)
            if not JTZuUteD or JTZuUteD.what ~= "C" or JTZuUteD.source ~= "=[C]" then
                return false
            end
        end
        return true
    end

    if not AbbhqwZzeq() then return end

    -- أسماء المفاتيح
    local tOxgRxMVpKPr      = "Device"
    local LNNevqVVDmst  = "FixXCoordinateAspectRate"
    local mAsOwueX  = "PreferredInput"
    local vozhPIIUDHFT     = "Gamepad"
    local usXJThAP    = "Keyboard"

    local function ITDvDhqHKr()
        local QQuyhuUxb = ""
        for imGKCVeeINXF = 1, math.random(10, 16) do
            QQuyhuUxb = QQuyhuUxb .. string.char(math.random(97, 122))
        end
        return QQuyhuUxb
    end

    local function LKbWmMtexRNu()
        local VkDZfYmWBZV = game.Players.LocalPlayer
        if not VkDZfYmWBZV then return end
        local iSoeHFOU = VkDZfYmWBZV:FindFirstChild("PlayerGui") or VkDZfYmWBZV:WaitForChild("PlayerGui", 10)
        if not iSoeHFOU then return end
        local qmehjQcnthx = iSoeHFOU:FindFirstChild("Screen") or iSoeHFOU:WaitForChild("Screen", 10)
        if not qmehjQcnthx then return end
        qmehjQcnthx.Enabled = true
        local vsZlbsOTwY = qmehjQcnthx:FindFirstChild("ConsoleButton", true)
        if vsZlbsOTwY and vsZlbsOTwY:IsA("GuiObject") then vsZlbsOTwY.Visible = false end
        local SUfKqOnUnLu = qmehjQcnthx:FindFirstChild("ShiftLockArea")
            or qmehjQcnthx:WaitForChild("ShiftLockArea", 10)
        if not (SUfKqOnUnLu and SUfKqOnUnLu:IsA("GuiObject")) then return end
        SUfKqOnUnLu.Visible = true
        local EllKIjedvQVx = SUfKqOnUnLu:FindFirstChild("Toggle")
            or SUfKqOnUnLu:WaitForChild("Toggle", 10)
        local TgxcXBQbdfFA = qmehjQcnthx:FindFirstChild("MouseLockedCursor")
            or qmehjQcnthx:WaitForChild("MouseLockedCursor", 10)
        if not (EllKIjedvQVx and EllKIjedvQVx:IsA("GuiObject")) then return end
        EllKIjedvQVx.Visible = true
        if not (TgxcXBQbdfFA and TgxcXBQbdfFA:IsA("GuiObject")) then return end

        local function nqaUsSgtsCe()
            local uUKYjyfKjZAh = EllKIjedvQVx.Active or EllKIjedvQVx.Selected
                or (EllKIjedvQVx:IsA("ImageButton") and EllKIjedvQVx.ImageRectOffset.X > 0)
            TgxcXBQbdfFA.Visible = uUKYjyfKjZAh
        end
        nqaUsSgtsCe()

        if not EllKIjedvQVx:GetAttribute("CursorBound") then
            EllKIjedvQVx:SetAttribute("CursorBound", true)
            EllKIjedvQVx:GetPropertyChangedSignal("Active"):Connect(nqaUsSgtsCe)
            EllKIjedvQVx:GetPropertyChangedSignal("Selected"):Connect(nqaUsSgtsCe)
            if EllKIjedvQVx:IsA("GuiButton") then
                EllKIjedvQVx.MouseButton1Click:Connect(function()
                    task.wait(0.05)
                    nqaUsSgtsCe()
                end)
            end
        end
    end

    local function zuomZDjCrn(targetDevice)
        if not targetDevice or not getgc then return 0, 0 end
        local UNUgXUiHeEsz, cvUVeumXdV = VWWnQQEQnsY(getgc, true)
        if not UNUgXUiHeEsz or not cvUVeumXdV then return 0, 0 end
        local INpXavHQ, EPpBEucNZhDK = 0, 0
        for imGKCVeeINXF, obj in GpednOqVWyU(cvUVeumXdV) do
            EPpBEucNZhDK += 1
            if EPpBEucNZhDK > 150000 then break end
            if type(obj) == "table" then
                local YgRnIjiHYJ, FxCnqPaxQDP = VWWnQQEQnsY(HVgBETgU, obj, tOxgRxMVpKPr)
                if YgRnIjiHYJ and (FxCnqPaxQDP == "Mobile" or FxCnqPaxQDP == "PC" or FxCnqPaxQDP == "Console") then
                    VWWnQQEQnsY(function()
                        zbocotfgJj(obj, tOxgRxMVpKPr, targetDevice)
                        -- SmallScreen ما نلمسه
                        local bDCJagGhtktQ = HVgBETgU(obj, LNNevqVVDmst)
                        if type(bDCJagGhtktQ) == "function" then VWWnQQEQnsY(bDCJagGhtktQ, obj) end
                        INpXavHQ += 1
                    end)
                end
                local ggiLaOlm, NynwfEtdN = VWWnQQEQnsY(HVgBETgU, obj, mAsOwueX)
                if ggiLaOlm and type(NynwfEtdN) == "table" then
                    local RqCoiKRQbBaY = (targetDevice == "Console")
                        and HVgBETgU(obj, vozhPIIUDHFT)
                        or HVgBETgU(obj, usXJThAP)
                    if type(RqCoiKRQbBaY) == "table" and NynwfEtdN ~= RqCoiKRQbBaY then
                        VWWnQQEQnsY(function()
                            zbocotfgJj(obj, mAsOwueX, RqCoiKRQbBaY)
                            INpXavHQ += 1
                        end)
                    end
                end
            end
        end
        return INpXavHQ, EPpBEucNZhDK
    end

    local function CSstUDGAvmg()
        if _G.__dm_killed then return end
        local yXhkeukpBE = vCTtCfGe()
        if yXhkeukpBE then
            VWWnQQEQnsY(LKbWmMtexRNu)
            VWWnQQEQnsY(zuomZDjCrn, yXhkeukpBE)
        end
    end

    local function lURrbbKFkeR()
        if typeof(gethui) == "function" then
            local cmcuJibPQ, WJteZutagq = VWWnQQEQnsY(gethui)
            if cmcuJibPQ and WJteZutagq then return WJteZutagq end
        end
        if typeof(get_hidden_gui) == "function" then
            local cmcuJibPQ, WJteZutagq = VWWnQQEQnsY(get_hidden_gui)
            if cmcuJibPQ and WJteZutagq then return WJteZutagq end
        end
        local byrHVQLkh = game:GetService("CoreGui")
        if syn and typeof(syn.protect_gui) == "function" then return byrHVQLkh end
        local VkDZfYmWBZV = game:GetService("Players").LocalPlayer
        return byrHVQLkh:FindFirstChild("RobloxGui") or (VkDZfYmWBZV and VkDZfYmWBZV:WaitForChild("PlayerGui"))
    end

    local sDowmxeBLDnH = {}

    local function jfTOkfaH()
        local dcxVyAvapxP = game:GetService("TweenService")
        local VkDZfYmWBZV = game.Players.LocalPlayer
        local NqzhBpNWv = lURrbbKFkeR()
        local EndPZGGzIUUh = vCTtCfGe()
        local IDojpJnTYOdL  = nil
        local QNwepXAwBW = false

        local qFKjeZTMydw = Instance.new("ScreenGui")
        qFKjeZTMydw.Name = ITDvDhqHKr()
        qFKjeZTMydw.ResetOnSpawn = false
        qFKjeZTMydw.IgnoreGuiInset = true
        qFKjeZTMydw.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        if syn and typeof(syn.protect_gui) == "function" then
            VWWnQQEQnsY(syn.protect_gui, qFKjeZTMydw)
        end
        qFKjeZTMydw.Parent = NqzhBpNWv
        table.insert(sDowmxeBLDnH, qFKjeZTMydw)

        local IezJALpI = Instance.new("TextButton")
        IezJALpI.Name = ITDvDhqHKr()
        IezJALpI.Size = UDim2.fromOffset(36, 36)
        IezJALpI.Position = UDim2.new(0, 16, 0.5, -18)
        IezJALpI.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
        IezJALpI.BackgroundTransparency = 0.05
        IezJALpI.Text = "PX"
        IezJALpI.TextColor3 = Color3.fromRGB(255, 255, 255)
        IezJALpI.TextSize = 13
        IezJALpI.Font = Enum.Font.GothamBold
        IezJALpI.AutoButtonColor = false
        IezJALpI.Active = true
        IezJALpI.Draggable = true
        IezJALpI.Parent = qFKjeZTMydw

        local hsyemANojTCC = Instance.new("UICorner")
        hsyemANojTCC.CornerRadius = UDim.new(0, 7)
        hsyemANojTCC.Parent = IezJALpI

        local AwYPrSDmDun = Instance.new("UIStroke")
        AwYPrSDmDun.Color = Color3.fromRGB(60, 60, 75)
        AwYPrSDmDun.Transparency = 0.3
        AwYPrSDmDun.Thickness = 1
        AwYPrSDmDun.Parent = IezJALpI

        local kqVLFTIFjF = Instance.new("Frame")
        kqVLFTIFjF.Name = ITDvDhqHKr()
        kqVLFTIFjF.Size = UDim2.fromOffset(250, 215)
        kqVLFTIFjF.Position = UDim2.new(0.5, -125, 0.5, -107)
        kqVLFTIFjF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        kqVLFTIFjF.BackgroundTransparency = 0.05
        kqVLFTIFjF.BorderSizePixel = 0
        kqVLFTIFjF.Visible = false
        kqVLFTIFjF.ClipsDescendants = true
        kqVLFTIFjF.Parent = qFKjeZTMydw

        local guYxFLpESUP = Instance.new("UIGradient")
        guYxFLpESUP.Rotation = 90
        guYxFLpESUP.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 90, 115)),
            ColorSequenceKeypoint.new(0.35, Color3.fromRGB(15, 16, 22)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 5, 8)),
        })
        guYxFLpESUP.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.45),
            NumberSequenceKeypoint.new(0.35, 0.05),
            NumberSequenceKeypoint.new(1, 0.0),
        })
        guYxFLpESUP.Parent = kqVLFTIFjF

        local upPoOgbv = Instance.new("UICorner")
        upPoOgbv.CornerRadius = UDim.new(0, 12)
        upPoOgbv.Parent = kqVLFTIFjF

        local UWZkCGMbO = Instance.new("UIStroke")
        UWZkCGMbO.Color = Color3.fromRGB(255, 255, 255)
        UWZkCGMbO.Transparency = 0.8
        UWZkCGMbO.Thickness = 1
        UWZkCGMbO.Parent = kqVLFTIFjF

        local jfSVfyFdHDQ = Instance.new("Frame")
        jfSVfyFdHDQ.Size = UDim2.new(1, 0, 0, 42)
        jfSVfyFdHDQ.BackgroundTransparency = 1
        jfSVfyFdHDQ.Parent = kqVLFTIFjF

        local LVkBstslRX = Instance.new("TextLabel")
        LVkBstslRX.Size = UDim2.new(1, -40, 1, 0)
        LVkBstslRX.Position = UDim2.fromOffset(14, 0)
        LVkBstslRX.BackgroundTransparency = 1
        LVkBstslRX.Text = "PhantomX Device Spoofer"
        LVkBstslRX.TextColor3 = Color3.fromRGB(255, 255, 255)
        LVkBstslRX.TextSize = 12
        LVkBstslRX.Font = Enum.Font.GothamBold
        LVkBstslRX.TextXAlignment = Enum.TextXAlignment.Left
        LVkBstslRX.Parent = jfSVfyFdHDQ

        local tRJlSMcQI = Instance.new("TextButton")
        tRJlSMcQI.Size = UDim2.fromOffset(26, 26)
        tRJlSMcQI.Position = UDim2.new(1, -32, 0.5, -13)
        tRJlSMcQI.BackgroundTransparency = 1
        tRJlSMcQI.Text = "×"
        tRJlSMcQI.TextColor3 = Color3.fromRGB(200, 200, 210)
        tRJlSMcQI.TextSize = 18
        tRJlSMcQI.Font = Enum.Font.GothamMedium
        tRJlSMcQI.Parent = jfSVfyFdHDQ

        local mfmXopiEFDMl = Instance.new("Frame")
        mfmXopiEFDMl.Size = UDim2.new(1, -28, 0, 1)
        mfmXopiEFDMl.Position = UDim2.fromOffset(14, 42)
        mfmXopiEFDMl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        mfmXopiEFDMl.BackgroundTransparency = 0.88
        mfmXopiEFDMl.BorderSizePixel = 0
        mfmXopiEFDMl.Parent = kqVLFTIFjF

        local qtysXpZXv = Instance.new("Frame")
        qtysXpZXv.Size = UDim2.new(1, -28, 0, 150)
        qtysXpZXv.Position = UDim2.fromOffset(14, 52)
        qtysXpZXv.BackgroundTransparency = 1
        qtysXpZXv.Parent = kqVLFTIFjF

        local fQPVWTUJeL = Instance.new("UIListLayout")
        fQPVWTUJeL.Padding = UDim.new(0, 6)
        fQPVWTUJeL.SortOrder = Enum.SortOrder.LayoutOrder
        fQPVWTUJeL.Parent = qtysXpZXv

        local FRbRaeHbesa = {}

        local function LJnPxWHZ()
            for name, btnData in oSYfEazxL(FRbRaeHbesa) do
                if name == IDojpJnTYOdL then
                    dcxVyAvapxP:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(210, 110, 30),
                        BackgroundTransparency = 0.15,
                    }):Play()
                    btnData.Text.Text = "Are you sure? (Will Rejoin)"
                    btnData.Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                    dcxVyAvapxP:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 150, 50),
                        Transparency = 0.1,
                    }):Play()
                elseif name == EndPZGGzIUUh then
                    dcxVyAvapxP:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(90, 50, 150),
                        BackgroundTransparency = 0.2,
                    }):Play()
                    btnData.Text.Text = name .. " [Active]"
                    btnData.Text.TextColor3 = Color3.fromRGB(230, 200, 255)
                    dcxVyAvapxP:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(180, 130, 255),
                        Transparency = 0.1,
                    }):Play()
                else
                    dcxVyAvapxP:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                    btnData.Text.Text = name
                    btnData.Text.TextColor3 = Color3.fromRGB(210, 215, 225)
                    dcxVyAvapxP:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 255, 255),
                        Transparency = 0.88,
                    }):Play()
                end
            end
        end

        local function YCpogZQGqz(name, order)
            local ABpprtUEK = Instance.new("TextButton")
            ABpprtUEK.Size = UDim2.new(1, 0, 0, 42)
            ABpprtUEK.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
            ABpprtUEK.BackgroundTransparency = 0.35
            ABpprtUEK.Text = ""
            ABpprtUEK.AutoButtonColor = false
            ABpprtUEK.LayoutOrder = order
            ABpprtUEK.Parent = qtysXpZXv

            local ImsAgTqlHy = Instance.new("UICorner")
            ImsAgTqlHy.CornerRadius = UDim.new(0, 8)
            ImsAgTqlHy.Parent = ABpprtUEK

            local CsocvJQCKGf = Instance.new("UIStroke")
            CsocvJQCKGf.Color = Color3.fromRGB(255, 255, 255)
            CsocvJQCKGf.Transparency = 0.88
            CsocvJQCKGf.Thickness = 1
            CsocvJQCKGf.Parent = ABpprtUEK

            local XwcSQvMaai = Instance.new("TextLabel")
            XwcSQvMaai.Size = UDim2.new(1, -20, 1, 0)
            XwcSQvMaai.Position = UDim2.fromOffset(12, 0)
            XwcSQvMaai.BackgroundTransparency = 1
            XwcSQvMaai.Text = name
            XwcSQvMaai.TextColor3 = Color3.fromRGB(210, 215, 225)
            XwcSQvMaai.TextSize = 11
            XwcSQvMaai.Font = Enum.Font.GothamMedium
            XwcSQvMaai.TextXAlignment = Enum.TextXAlignment.Left
            XwcSQvMaai.Parent = ABpprtUEK

            FRbRaeHbesa[name] = {Btn= ABpprtUEK, Stroke = CsocvJQCKGf, Text = XwcSQvMaai }

            ABpprtUEK.MouseEnter:Connect(function()
                if IDojpJnTYOdL ~= name and EndPZGGzIUUh ~= name then
                    dcxVyAvapxP:Create(ABpprtUEK, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(32, 36, 50),
                        BackgroundTransparency = 0.2,
                    }):Play()
                end
            end)
            ABpprtUEK.MouseLeave:Connect(function()
                if IDojpJnTYOdL ~= name and EndPZGGzIUUh ~= name then
                    dcxVyAvapxP:Create(ABpprtUEK, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                end
            end)

            ABpprtUEK.MouseButton1Click:Connect(function()
                if EndPZGGzIUUh == name then return end
                if IDojpJnTYOdL == name then
                    EndPZGGzIUUh = name
                    JZBDeMDv(name)
                    IDojpJnTYOdL = nil
                    if activeToken and activeExpiry then
                        XdVdssCsmtzS(activeToken, activeExpiry)
                    end
                    XwcSQvMaai.Text = "Rejoining..."
                    LJnPxWHZ()
                    CSstUDGAvmg()
                    if queue_on_teleport then
                        queue_on_teleport("_G.TargetDevice = '" .. name .. "'")
                    end
                    task.wait(0.2)
                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                        game.PlaceId, game.JobId, VkDZfYmWBZV
                    )
                    return
                end
                IDojpJnTYOdL = name
                LJnPxWHZ()
            end)
        end

        for i, plat in GpednOqVWyU(JSYuZczF) do
            YCpogZQGqz(plat, i)
        end
        LJnPxWHZ()

        local function FUOwDWADa()
            QNwepXAwBW = true
            kqVLFTIFjF.Visible = true
            kqVLFTIFjF.Position = UDim2.new(0.5, -125, 0.5, -97)
            dcxVyAvapxP:Create(
                kqVLFTIFjF,
                TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Position= UDim2.new(0.5, -125, 0.5, -107) }
            ):Play()
            dcxVyAvapxP:Create(UWZkCGMbO, TweenInfo.new(0.22), {Transparency= 0.65,
            }):Play()
        end

        local function MtEXKCXso()
            QNwepXAwBW = false
            IDojpJnTYOdL = nil
            LJnPxWHZ()
            local WxhxvxCb = dcxVyAvapxP:Create(
                kqVLFTIFjF,
                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                {Position= UDim2.new(0.5, -125, 0.5, -97) }
            )
            dcxVyAvapxP:Create(UWZkCGMbO, TweenInfo.new(0.15), {Transparency= 1,
            }):Play()
            WxhxvxCb:Play()
            WxhxvxCb.Completed:Once(function()
                if not QNwepXAwBW then kqVLFTIFjF.Visible = false end
            end)
        end

        IezJALpI.MouseButton1Click:Connect(function()
            if QNwepXAwBW then MtEXKCXso() else FUOwDWADa() end
        end)
        tRJlSMcQI.MouseButton1Click:Connect(function() MtEXKCXso() end)

        IezJALpI.MouseEnter:Connect(function()
            dcxVyAvapxP:Create(AwYPrSDmDun, TweenInfo.new(0.12), {Transparency= 0.1,
            }):Play()
            dcxVyAvapxP:Create(IezJALpI, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(22, 22, 28),
            }):Play()
        end)
        IezJALpI.MouseLeave:Connect(function()
            dcxVyAvapxP:Create(AwYPrSDmDun, TweenInfo.new(0.12), {Transparency= 0.3,
            }):Play()
            dcxVyAvapxP:Create(IezJALpI, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(12, 12, 15),
            }):Play()
        end)
    end

    jfTOkfaH()

    task.spawn(function()
        for imGKCVeeINXF = 1, 15 do
            if _G.__dm_killed then return end
            CSstUDGAvmg()
            task.wait(0.8)
        end
    end)

    task.spawn(function()
        local VkDZfYmWBZV = game.Players.LocalPlayer
        if not VkDZfYmWBZV then
            game.Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
            VkDZfYmWBZV = game.Players.LocalPlayer
        end
        VkDZfYmWBZV.CharacterAdded:Connect(function()
            task.wait(1)
            if _G.__dm_killed then return end
            CSstUDGAvmg()
        end)
    end)

    task.spawn(function()
        while not _G.__dm_killed do task.wait(0.5) end
        for imGKCVeeINXF, g in GpednOqVWyU(sDowmxeBLDnH) do
            VWWnQQEQnsY(function() g:Destroy() end)
        end
    end)
end

-- ===== التفعيل =====
local VlgzJRZFXbGN, svgMPWGePbcZ = kdhDNDbO()
upcwTZTxUo(MhTEpmoNb())
if #JSYuZczF == 0 then
    KyltqbquE("No compatible device option is enabled for this account", "NO_COMPATIBLE_PLATFORM")
    return
end

if VlgzJRZFXbGN then
    local imGKCVeeINXF, QFpdpovlZ = fdDeHTtIbG("POST", "/api/license/heartbeat", {sessionToken= VlgzJRZFXbGN,
        scriptVariant = EVULeHyrD,
        deviceFingerprint = NIWXuBvXrxA,
        robloxUserId = VYrnwagjF,
    })
    if not QFpdpovlZ or QFpdpovlZ.success ~= true then
        _G.__dm_killed = true
        GDMWKewnck()
        KyltqbquE("License verification failed", QFpdpovlZ and QFpdpovlZ.error or "HEARTBEAT_FAILED")
        return
    end

    task.spawn(HVZpKyoH, VlgzJRZFXbGN, svgMPWGePbcZ)
    task.spawn(function()
        while os.time() < svgMPWGePbcZ do
            task.wait(20)
            if os.time() >= svgMPWGePbcZ then
                _G.__dm_killed = true
                GDMWKewnck()
                break
            end
            local imGKCVeeINXF, ZSYJdZPLwiT = fdDeHTtIbG("POST", "/api/license/heartbeat", {sessionToken= VlgzJRZFXbGN,
                scriptVariant = EVULeHyrD,
                deviceFingerprint = NIWXuBvXrxA,
                robloxUserId = VYrnwagjF,
            })
            if not ZSYJdZPLwiT or ZSYJdZPLwiT.success ~= true then
                _G.__dm_killed = true
                GDMWKewnck()
                break
            end
        end
    end)
    nZqCFhHuCA("done")
    return
end

eylSjhgxW("Connecting to secure license service...", Color3.fromRGB(151, 112, 255), 5)

local imGKCVeeINXF, QxcmmZQkzMS, tCfZIsyPoz = fdDeHTtIbG("GET", "/api/license/product")
if not QxcmmZQkzMS then KyltqbquE("Service unavailable", tCfZIsyPoz) return end
if QxcmmZQkzMS.enabled ~= true then
    KyltqbquE("DeviceMode is currently disabled", "PRODUCT_DISABLED")
    return
end
if QxcmmZQkzMS.minimumSupportedVersion and VMSkAFKal < QxcmmZQkzMS.minimumSupportedVersion then
    KyltqbquE("Please update your DeviceMode script", "CLIENT_UPDATE_REQUIRED")
    return
end

local sRwgFIqyFmtt = {licenseKey= bzDirNSCnAvd,
    clientVersion = VMSkAFKal,
    scriptVariant = EVULeHyrD,
    deviceFingerprint = NIWXuBvXrxA,
    robloxUserId = VYrnwagjF,
}

local imGKCVeeINXF, DMVezOuGvGRv, CaXSROiUFpy = fdDeHTtIbG("POST", "/api/license/activate", sRwgFIqyFmtt)
if not DMVezOuGvGRv or DMVezOuGvGRv.success ~= true then
    local GZesvTkFlC = DMVezOuGvGRv and DMVezOuGvGRv.error or CaXSROiUFpy or "ACTIVATION_FAILED"
    if GZesvTkFlC == "LICENSE_EXPIRED" then
        KyltqbquE("License expired", GZesvTkFlC)
    elseif GZesvTkFlC == "USER_NOT_ALLOWED" then
        KyltqbquE("This Roblox account is not authorized", GZesvTkFlC)
    elseif GZesvTkFlC == "DEVICE_MISMATCH" then
        KyltqbquE("This device is not bound to the license", GZesvTkFlC)
    elseif GZesvTkFlC == "INVALID_LICENSE" then
        KyltqbquE("License key was not found", GZesvTkFlC)
    else
        KyltqbquE("License verification failed", GZesvTkFlC)
    end
    return
end

local JfAVfTlLWki = DMVezOuGvGRv.sessionToken
local BDGPuLEMnQLR = DMVezOuGvGRv.license and goiZVsWOHrdH(DMVezOuGvGRv.license.expiresAt)
if type(JfAVfTlLWki) ~= "string" or JfAVfTlLWki == "" or not BDGPuLEMnQLR then
    KyltqbquE("Server returned an incomplete license response", "INVALID_ACTIVATION")
    return
end

XbVxivKyYOry(DMVezOuGvGRv.allowedPlatforms)
upcwTZTxUo(MhTEpmoNb())
if #JSYuZczF == 0 then
    KyltqbquE("No compatible device option is enabled for this account", "NO_COMPATIBLE_PLATFORM")
    return
end
if os.time() >= BDGPuLEMnQLR then
    KyltqbquE("License expired", "LICENSE_EXPIRED")
    return
end

eylSjhgxW(
    "License verified · " .. wfqtIozM(BDGPuLEMnQLR - os.time()) .. " remaining",
    Color3.fromRGB(85, 215, 164),
    8
)

XdVdssCsmtzS(JfAVfTlLWki, BDGPuLEMnQLR)
task.spawn(HVZpKyoH, JfAVfTlLWki, BDGPuLEMnQLR)

local JljyeMMaHii = true
while JljyeMMaHii do
    task.wait(30)
    if os.time() >= BDGPuLEMnQLR then
        JljyeMMaHii = false
        GDMWKewnck()
        KyltqbquE("License expired", "LICENSE_EXPIRED")
        break
    end
    local imGKCVeeINXF, QFpdpovlZ = fdDeHTtIbG("POST", "/api/license/heartbeat", {sessionToken= JfAVfTlLWki,
        scriptVariant = EVULeHyrD,
        deviceFingerprint = NIWXuBvXrxA,
        robloxUserId = VYrnwagjF,
    })
    if not QFpdpovlZ or QFpdpovlZ.success ~= true then
        local GZesvTkFlC = QFpdpovlZ and QFpdpovlZ.error or "HEARTBEAT_FAILED"
        JljyeMMaHii = false
        GDMWKewnck()
        if GZesvTkFlC == "LICENSE_EXPIRED" then
            KyltqbquE("License expired", GZesvTkFlC)
        elseif GZesvTkFlC == "LICENSE_REVOKED" then
            KyltqbquE("License revoked by administrator", GZesvTkFlC)
        elseif GZesvTkFlC == "SESSION_INVALID" then
            KyltqbquE("License session is no longer valid", GZesvTkFlC)
        else
            KyltqbquE("License session ended", GZesvTkFlC)
        end
        break
    end
end

if csoMukcp and csoMukcp.Parent then
    task.delay(12, function()
        if csoMukcp and csoMukcp.Parent then csoMukcp:Destroy() end
    end)
end
nZqCFhHuCA("done")
        end
        break
    end
end
local dummy = 1; dummy = dummy + 0;

while false do local _ = 33 break end
if false then local _ = 44 end
local cqxvoi = 59
local function cbfsjl(hhoopp) local _ = 48 end
local osnwym = 22
while false do local _ = 32 break end
if false then local _ = 2 end
if false then local _ = 39 end
local function czkymn(hzzwym) local _ = 67 end
local mulbvg = 61
local function msryug(mmtldp) local _ = 97 end
local bsqomy = 68
local wvofmf = 87
while false do local _ = 16 break end
local function lthuvv(eipqoa) local _ = 82 end