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
if true then local _ = 22 end
if false then local _ = 5 end
while false do local _ = 78 break end
local ndapsj = 65
local jkjjvf = 88
local function wbnrfu(mhoenw) local _ = 67 end
if true then local _ = 94 end
local nwozrh = 72
if true then local _ = 19 end
if true then local _ = 98 end
local vlypfu = 59
if false then local _ = 9 end
if true then local _ = 20 end
local fkhzxf = 60
local function undous(zrejsg) local _ = 35 end
local thing = 6049;
local thing2 = 6049;
local counter = 0;
while thing == thing2 and counter < 1 do
    thing = thing + 1;
    counter = counter + 1;
    if thing == thing2 then
        local tbl = {1, 2, 3}; table.sort(tbl, function(a, b) return a > b end);
    else
        do
            local shcxMhbTf,VYwJbcJom,OOEpSvcmM,bGZwfejQfml,RjHcPSjpFE,sBuPpaDNr,QwqMifTSiq,GkPjKoiNQ,GYvYCRCGYmW,qMsHOFqPzO,PavEdyCGGhtt,EQPCIgcQm,VkhKWYNJr,zWShtOEd,MVYmVLYVu,uUwGvmeNzIA,XEiigfnpWghI,OBxOHPOa
shcxMhbTf=error;VYwJbcJom=ipairs;OOEpSvcmM=pairs;bGZwfejQfml=pcall;RjHcPSjpFE=print;sBuPpaDNr=rawget;QwqMifTSiq=rawset;GkPjKoiNQ=select;GYvYCRCGYmW=tonumber;qMsHOFqPzO=tostring;PavEdyCGGhtt=math.floor;EQPCIgcQm=math.max;VkhKWYNJr=math.random;zWShtOEd=string.char;MVYmVLYVu=string.format;uUwGvmeNzIA=table.concat;XEiigfnpWghI=table.insert;OBxOHPOa=os.time;
local kIXHEVkXu = game:GetService("HttpService")
local WoJcQVvirkx = game:GetService("Players")
local wmGejyarqad = game:GetService("TweenService")

if not game:IsLoaded() then game.Loaded:Wait() end

-- المنصات المتاحة
local iiwwZyNcz = {"Console", "Mobile"}

local zmQNxrDJTpqg = "https://devicemode-cctgi3ma.manus.space"
local wbTUdIZLDHM = "1.0.0"
local zshvjkCTS = "CONSOLE_MOBILE"
local GpJEFxuux = 300

local NoyXCDmH = {
    [11379739543]    = true,
    [98752102030179] = true,
}

if not NoyXCDmH[game.PlaceId] then return end

local irUefNTvdU = table.concat(iiwwZyNcz, "_")
local PmuWBlhu = "sys_sess_v4_" .. irUefNTvdU .. ".bin"
local cUMWUizPj  = "sys_cfg_v5_cache.bin"
local mLBsGksH = "sys_allowed_v5_" .. irUefNTvdU .. ".bin"

local jZvOjRtaPqwn = getgenv and getgenv() or _G
local YPbwXhSn = jZvOjRtaPqwn.DeviceModeKey
if type(YPbwXhSn) ~= "string" or YPbwXhSn == "" then return end

local FRsdErUS = WoJcQVvirkx.LocalPlayer
if not FRsdErUS then
    WoJcQVvirkx:GetPropertyChangedSignal("LocalPlayer"):Wait()
    FRsdErUS = WoJcQVvirkx.LocalPlayer
end
if not FRsdErUS then return end

local vMQUrsKdVTTA = qMsHOFqPzO(FRsdErUS.UserId)

local function tKhtxinr()
    local MkgNwHfEwQNp = {
        function() return type(gethwid) == "function" and gethwid() end,
        function() return type(get_hwid) == "function" and get_hwid() end,
        function() return type(getHWID) == "function" and getHWID() end,
        function() return syn and type(syn.gethwid) == "function" and syn.gethwid() end,
    }
    for jQjfYWqOhbVa, getter in VYwJbcJom(MkgNwHfEwQNp) do
        local bRMEqpJRn, daZARWmo = bGZwfejQfml(getter)
        if bRMEqpJRn and type(daZARWmo) == "string" then
            daZARWmo = daZARWmo:gsub("%s+", "")
            if #daZARWmo >= 8 and #daZARWmo <= 256 then return daZARWmo end
        end
    end
    return nil
end

local TOOUqZiZtWgz = tKhtxinr()
local OQvfYUvD = TOOUqZiZtWgz and ("EXECUTOR-HWID-" .. TOOUqZiZtWgz)
    or ("ROBLOX-USER-" .. vMQUrsKdVTTA)

local flUOxgIauNCt = _G.request or request or http_request or (syn and syn.request)
if type(flUOxgIauNCt) ~= "function" then return end

local function bsQNUymxp(method, path, body)
    local bRMEqpJRn, GEltkmKGVIcH = bGZwfejQfml(function()
        return flUOxgIauNCt({Url= zmQNxrDJTpqg .. path,
            Method = method,
            Headers = {
                ["Content-Type"] = "application/json",
                ["Accept"] = "application/json",
            },
            Body = body and kIXHEVkXu:JSONEncode(body) or nil,
        })
    end)
    if not bRMEqpJRn or type(GEltkmKGVIcH) ~= "table" then
        return nil, nil, "HTTP_REQUEST_FAILED"
    end
    if type(GEltkmKGVIcH.Body) ~= "string" or GEltkmKGVIcH.Body == "" then
        return GEltkmKGVIcH, nil, "EMPTY_RESPONSE"
    end
    local AefvaPWXnu, oCmeKsPiUoCF = bGZwfejQfml(function()
        return kIXHEVkXu:JSONDecode(GEltkmKGVIcH.Body)
    end)
    if not AefvaPWXnu or type(oCmeKsPiUoCF) ~= "table" then
        return GEltkmKGVIcH, nil, "INVALID_JSON"
    end
    return GEltkmKGVIcH, oCmeKsPiUoCF, nil
end

local function ogXZJUWm(iso)
    if type(iso) ~= "string" then return nil end
    local bRMEqpJRn, SUoyvhZyg = bGZwfejQfml(function() return DateTime.fromIsoDate(iso) end)
    if not bRMEqpJRn or not SUoyvhZyg then return nil end
    return SUoyvhZyg.UnixTimestamp
end

local function kkockaBt(seconds)
    seconds = math.max(0, math.floor(seconds))
    local zCcoobvCZEIF = math.floor(seconds / 86400)
    local MgYAwfhqcWqS = math.floor((seconds % 86400) / 3600)
    local gNkowJlX = math.floor((seconds % 3600) / 60)
    local ZhTeydRyikq = seconds % 60
    if zCcoobvCZEIF > 0 then
        return string.format("%dd %02dh %02dm", zCcoobvCZEIF, MgYAwfhqcWqS, gNkowJlX)
    end
    if MgYAwfhqcWqS > 0 then
        return string.format("%dh %02dm %02ds", MgYAwfhqcWqS, gNkowJlX, ZhTeydRyikq)
    end
    return string.format("%02dm %02ds", gNkowJlX, ZhTeydRyikq)
end

-- ===== الجلسة (بدون تشفير) =====
local function JTFLnHBgcYKc(ltLCczOYyR, TPkvXPTLpw)
    if not writefile then return end
    bGZwfejQfml(writefile, PmuWBlhu,
        ltLCczOYyR .. "|" .. qMsHOFqPzO(TPkvXPTLpw) .. "|" .. qMsHOFqPzO(os.time()))
end

local function uLknHihpozY()
    if not (readfile and isfile and isfile(PmuWBlhu)) then return nil, nil end
    local bRMEqpJRn, oCmeKsPiUoCF = bGZwfejQfml(readfile, PmuWBlhu)
    if not bRMEqpJRn or type(oCmeKsPiUoCF) ~= "string" or oCmeKsPiUoCF == "" then return nil, nil end
    local ltLCczOYyR, TPkvXPTLpw, VQPTrubkO = oCmeKsPiUoCF:match("^([^|]+)|(%d+)|(%d+)$")
    if not (ltLCczOYyR and TPkvXPTLpw and VQPTrubkO) then return nil, nil end
    TPkvXPTLpw, VQPTrubkO = GYvYCRCGYmW(TPkvXPTLpw), GYvYCRCGYmW(VQPTrubkO)
    if not (TPkvXPTLpw and VQPTrubkO) then return nil, nil end
    local werWMduAlhsF = os.time()
    if werWMduAlhsF >= TPkvXPTLpw or (werWMduAlhsF - VQPTrubkO) >= GpJEFxuux then
        return nil, nil
    end
    return ltLCczOYyR, TPkvXPTLpw
end

local function RyIheXZM()
    if delfile then
        bGZwfejQfml(delfile, PmuWBlhu)
    elseif writefile then
        bGZwfejQfml(writefile, PmuWBlhu, "")
    end
end

-- ===== المنصات المسموحة =====
local function NUVlQispi(platforms)
    if not writefile or type(platforms) ~= "table" then return end
    local bvsCohTJ = {}
    for jQjfYWqOhbVa, platform in VYwJbcJom(platforms) do
        local yaJRlNCQj = platform == "pc" and "PC"
            or platform == "mobile" and "Mobile"
            or platform == "console" and "Console"
            or platform
        if yaJRlNCQj == "PC" or yaJRlNCQj == "Mobile" or yaJRlNCQj == "Console" then
            table.insert(bvsCohTJ, yaJRlNCQj)
        end
    end
    if #bvsCohTJ > 0 then
        bGZwfejQfml(writefile, mLBsGksH, table.concat(bvsCohTJ, "|"))
    end
end

local function KvQGIrbxnfg()
    if not (readfile and isfile and isfile(mLBsGksH)) then return nil end
    local bRMEqpJRn, wofXBxVwx = bGZwfejQfml(readfile, mLBsGksH)
    if not bRMEqpJRn or type(wofXBxVwx) ~= "string" or wofXBxVwx == "" then return nil end
    local LDBJshjhs = {}
    for daZARWmo in wofXBxVwx:gmatch("[^|]+") do LDBJshjhs[daZARWmo] = true end
    return LDBJshjhs
end

local function bCCSRisttjM(LDBJshjhs)
    if not LDBJshjhs then return end
    local VzITxBezONHv = {}
    for jQjfYWqOhbVa, platform in VYwJbcJom(iiwwZyNcz) do
        if LDBJshjhs[platform] then table.insert(VzITxBezONHv, platform) end
    end
    iiwwZyNcz = VzITxBezONHv
end

-- ===== UI =====
local EzaDvRYmh = Instance.new("ScreenGui")
EzaDvRYmh.Name = "DeviceModeGlass"
EzaDvRYmh.ResetOnSpawn = false
EzaDvRYmh.IgnoreGuiInset = true
EzaDvRYmh.Parent = FRsdErUS:WaitForChild("PlayerGui")

local BDTguHhqexM = Instance.new("Frame")
BDTguHhqexM.Name = "LicenseToast"
BDTguHhqexM.AnchorPoint = Vector2.new(1, 0)
BDTguHhqexM.Position = UDim2.new(1, 360, 0, 80)
BDTguHhqexM.Size = UDim2.new(0, 310, 0, 86)
BDTguHhqexM.BackgroundColor3 = Color3.fromRGB(13, 16, 26)
BDTguHhqexM.BackgroundTransparency = 0.12
BDTguHhqexM.Visible = false
BDTguHhqexM.Parent = EzaDvRYmh

local VkuwpZhmcyo = Instance.new("UICorner")
VkuwpZhmcyo.CornerRadius = UDim.new(0, 16)
VkuwpZhmcyo.Parent = BDTguHhqexM

local OiSxTwCBdAs = Instance.new("UIStroke")
OiSxTwCBdAs.Color = Color3.fromRGB(150, 115, 255)
OiSxTwCBdAs.Transparency = 0.25
OiSxTwCBdAs.Thickness = 1
OiSxTwCBdAs.Parent = BDTguHhqexM

local ockUIgrf = Instance.new("UIGradient")
ockUIgrf.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 25, 57)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 14, 22)),
})
ockUIgrf.Rotation = 18
ockUIgrf.Parent = BDTguHhqexM

local LLXxJKQjdu = Instance.new("Frame")
LLXxJKQjdu.Size = UDim2.new(0, 4, 1, -24)
LLXxJKQjdu.Position = UDim2.new(0, 12, 0, 12)
LLXxJKQjdu.BackgroundColor3 = Color3.fromRGB(151, 112, 255)
LLXxJKQjdu.BorderSizePixel = 0
LLXxJKQjdu.Parent = BDTguHhqexM

local vhyHslKGK = Instance.new("UICorner")
vhyHslKGK.CornerRadius = UDim.new(1, 0)
vhyHslKGK.Parent = LLXxJKQjdu

local gwMauyKRH = Instance.new("TextLabel")
gwMauyKRH.BackgroundTransparency = 1
gwMauyKRH.Position = UDim2.new(0, 29, 0, 14)
gwMauyKRH.Size = UDim2.new(1, -45, 0, 22)
gwMauyKRH.Font = Enum.Font.GothamBold
gwMauyKRH.TextSize = 14
gwMauyKRH.TextColor3 = Color3.fromRGB(244, 241, 255)
gwMauyKRH.TextXAlignment = Enum.TextXAlignment.Left
gwMauyKRH.Text = "DeviceMode"
gwMauyKRH.Parent = BDTguHhqexM

local sQvxegBe = Instance.new("TextLabel")
sQvxegBe.BackgroundTransparency = 1
sQvxegBe.Position = UDim2.new(0, 29, 0, 39)
sQvxegBe.Size = UDim2.new(1, -45, 0, 30)
sQvxegBe.Font = Enum.Font.Gotham
sQvxegBe.TextSize = 12
sQvxegBe.TextColor3 = Color3.fromRGB(192, 187, 218)
sQvxegBe.TextXAlignment = Enum.TextXAlignment.Left
sQvxegBe.TextWrapped = true
sQvxegBe.Text = "Checking license..."
sQvxegBe.Parent = BDTguHhqexM

local DpdDyzLEt = 0

local function NFzBJKkIGpk(message, color, seconds)
    DpdDyzLEt += 1
    local ltLCczOYyR = DpdDyzLEt
    local KAVpadJl = color or Color3.fromRGB(151, 112, 255)
    LLXxJKQjdu.BackgroundColor3 = KAVpadJl
    OiSxTwCBdAs.Color = KAVpadJl
    sQvxegBe.TextColor3 = color or Color3.fromRGB(216, 209, 246)
    sQvxegBe.Text = qMsHOFqPzO(message)
    BDTguHhqexM.Visible = true
    BDTguHhqexM.Position = UDim2.new(1, 360, 0, 80)
    wmGejyarqad:Create(
        BDTguHhqexM,
        TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {Position= UDim2.new(1, -24, 0, 80) }
    ):Play()
    task.delay(seconds or 8, function()
        if ltLCczOYyR ~= DpdDyzLEt then return end
        local vaGmfMBxyb = wmGejyarqad:Create(
            BDTguHhqexM,
            TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {Position= UDim2.new(1, 360, 0, 80) }
        )
        vaGmfMBxyb:Play()
        local FMkEdOdW = bGZwfejQfml(function() vaGmfMBxyb.Completed:Wait() end)
        if FMkEdOdW and ltLCczOYyR == DpdDyzLEt then BDTguHhqexM.Visible = false end
    end)
end

local function jrCDYhRqPX(message, jGXEesiIVpj)
    if jGXEesiIVpj then message = message .. "\nCode: " .. qMsHOFqPzO(jGXEesiIVpj) end
    NFzBJKkIGpk(message, Color3.fromRGB(255, 104, 126), 12)
end

_G.__dm_killed = false

-- ===== السبوفر =====
local function JZFgzfiC(activeToken, activeExpiry)
    if not game:IsLoaded() then game.Loaded:Wait() end

    local function ahNleTRX(dev)
        if writefile then bGZwfejQfml(writefile, cUMWUizPj, dev) end
        _G.TargetDevice = dev
    end

    local function TXkjcvcF()
        return _G.TargetDevice
    end

    local function YbGUpFejEWPb()
        if not debug or not debug.getinfo then return true end
        local arCTrtCHd = {QwqMifTSiq, sBuPpaDNr, bGZwfejQfml}
        if getgc then table.insert(arCTrtCHd, getgc) end
        for jQjfYWqOhbVa, func in VYwJbcJom(arCTrtCHd) do
            local lqvQitxhzP = debug.getinfo(func)
            if not lqvQitxhzP or lqvQitxhzP.what ~= "C" or lqvQitxhzP.source ~= "=[C]" then
                return false
            end
        end
        return true
    end

    if not YbGUpFejEWPb() then return end

    -- أسماء المفاتيح
    local JPxKYtTDbFI      = "Device"
    local zcxLBIKAhTr  = "FixXCoordinateAspectRate"
    local LwXKYOxUiGL  = "PreferredInput"
    local VCjpGQAOhHP     = "Gamepad"
    local sqfzhzTb    = "Keyboard"

    local function RBuybrKfvck()
        local MmoRflhBhv = ""
        for jQjfYWqOhbVa = 1, math.random(10, 16) do
            MmoRflhBhv = MmoRflhBhv .. string.char(math.random(97, 122))
        end
        return MmoRflhBhv
    end

    local function skpsMAJyUr()
        local FjCOadxMWVHn = game.Players.LocalPlayer
        if not FjCOadxMWVHn then return end
        local okOShRzyHCMZ = FjCOadxMWVHn:FindFirstChild("PlayerGui") or FjCOadxMWVHn:WaitForChild("PlayerGui", 10)
        if not okOShRzyHCMZ then return end
        local SJlhfLRNlnc = okOShRzyHCMZ:FindFirstChild("Screen") or okOShRzyHCMZ:WaitForChild("Screen", 10)
        if not SJlhfLRNlnc then return end
        SJlhfLRNlnc.Enabled = true
        local rVqnUGRWyS = SJlhfLRNlnc:FindFirstChild("ConsoleButton", true)
        if rVqnUGRWyS and rVqnUGRWyS:IsA("GuiObject") then rVqnUGRWyS.Visible = false end
        local woItCPGsZ = SJlhfLRNlnc:FindFirstChild("ShiftLockArea")
            or SJlhfLRNlnc:WaitForChild("ShiftLockArea", 10)
        if not (woItCPGsZ and woItCPGsZ:IsA("GuiObject")) then return end
        woItCPGsZ.Visible = true
        local erGCZqzhYwF = woItCPGsZ:FindFirstChild("Toggle")
            or woItCPGsZ:WaitForChild("Toggle", 10)
        local oebktYKkQzd = SJlhfLRNlnc:FindFirstChild("MouseLockedCursor")
            or SJlhfLRNlnc:WaitForChild("MouseLockedCursor", 10)
        if not (erGCZqzhYwF and erGCZqzhYwF:IsA("GuiObject")) then return end
        erGCZqzhYwF.Visible = true
        if not (oebktYKkQzd and oebktYKkQzd:IsA("GuiObject")) then return end

        local function IYjEArcJw()
            local oIdlErAAwfnM = erGCZqzhYwF.Active or erGCZqzhYwF.Selected
                or (erGCZqzhYwF:IsA("ImageButton") and erGCZqzhYwF.ImageRectOffset.X > 0)
            oebktYKkQzd.Visible = oIdlErAAwfnM
        end
        IYjEArcJw()

        if not erGCZqzhYwF:GetAttribute("CursorBound") then
            erGCZqzhYwF:SetAttribute("CursorBound", true)
            erGCZqzhYwF:GetPropertyChangedSignal("Active"):Connect(IYjEArcJw)
            erGCZqzhYwF:GetPropertyChangedSignal("Selected"):Connect(IYjEArcJw)
            if erGCZqzhYwF:IsA("GuiButton") then
                erGCZqzhYwF.MouseButton1Click:Connect(function()
                    task.wait(0.05)
                    IYjEArcJw()
                end)
            end
        end
    end

    local function MmAqRRjLfr(targetDevice)
        if not targetDevice or not getgc then return 0, 0 end
        local bRMEqpJRn, vKzIlXBFwMXh = bGZwfejQfml(getgc, true)
        if not bRMEqpJRn or not vKzIlXBFwMXh then return 0, 0 end
        local zuTKLrBT, XnzRlzVCtvH = 0, 0
        for jQjfYWqOhbVa, obj in VYwJbcJom(vKzIlXBFwMXh) do
            XnzRlzVCtvH += 1
            if XnzRlzVCtvH > 150000 then break end
            if type(obj) == "table" then
                local HvMaNpyKkfDw, BatuenUoDEG = bGZwfejQfml(sBuPpaDNr, obj, JPxKYtTDbFI)
                if HvMaNpyKkfDw and (BatuenUoDEG == "Mobile" or BatuenUoDEG == "PC" or BatuenUoDEG == "Console") then
                    bGZwfejQfml(function()
                        QwqMifTSiq(obj, JPxKYtTDbFI, targetDevice)
                        -- SmallScreen ما نلمسه
                        local WdGEaSfvbL = sBuPpaDNr(obj, zcxLBIKAhTr)
                        if type(WdGEaSfvbL) == "function" then bGZwfejQfml(WdGEaSfvbL, obj) end
                        zuTKLrBT += 1
                    end)
                end
                local gnQHbKoz, bCybUQsIAUU = bGZwfejQfml(sBuPpaDNr, obj, LwXKYOxUiGL)
                if gnQHbKoz and type(bCybUQsIAUU) == "table" then
                    local oeMYEDGQ = (targetDevice == "Console")
                        and sBuPpaDNr(obj, VCjpGQAOhHP)
                        or sBuPpaDNr(obj, sqfzhzTb)
                    if type(oeMYEDGQ) == "table" and bCybUQsIAUU ~= oeMYEDGQ then
                        bGZwfejQfml(function()
                            QwqMifTSiq(obj, LwXKYOxUiGL, oeMYEDGQ)
                            zuTKLrBT += 1
                        end)
                    end
                end
            end
        end
        return zuTKLrBT, XnzRlzVCtvH
    end

    local function TMKqmCRLzZa()
        if _G.__dm_killed then return end
        local CMHilIeUsM = TXkjcvcF()
        if CMHilIeUsM then
            bGZwfejQfml(skpsMAJyUr)
            bGZwfejQfml(MmAqRRjLfr, CMHilIeUsM)
        end
    end

    local function yJjgxXfqzG()
        if typeof(gethui) == "function" then
            local UvfaZMuAL, ksxufRVYxeX = bGZwfejQfml(gethui)
            if UvfaZMuAL and ksxufRVYxeX then return ksxufRVYxeX end
        end
        if typeof(get_hidden_gui) == "function" then
            local UvfaZMuAL, ksxufRVYxeX = bGZwfejQfml(get_hidden_gui)
            if UvfaZMuAL and ksxufRVYxeX then return ksxufRVYxeX end
        end
        local NjzlTMwnq = game:GetService("CoreGui")
        if syn and typeof(syn.protect_gui) == "function" then return NjzlTMwnq end
        local FjCOadxMWVHn = game:GetService("Players").LocalPlayer
        return NjzlTMwnq:FindFirstChild("RobloxGui") or (FjCOadxMWVHn and FjCOadxMWVHn:WaitForChild("PlayerGui"))
    end

    local gaUHhDuNP = {}

    local function jzgdRpocogj()
        local wmGejyarqad = game:GetService("TweenService")
        local FjCOadxMWVHn = game.Players.LocalPlayer
        local EVtDoDBH = yJjgxXfqzG()
        local SPXKKwIyfOyq = TXkjcvcF()
        local qlJOBsCyK  = nil
        local NGRWGCoHzcbd = false

        local dFDIzAzJnv = Instance.new("ScreenGui")
        dFDIzAzJnv.Name = RBuybrKfvck()
        dFDIzAzJnv.ResetOnSpawn = false
        dFDIzAzJnv.IgnoreGuiInset = true
        dFDIzAzJnv.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        if syn and typeof(syn.protect_gui) == "function" then
            bGZwfejQfml(syn.protect_gui, dFDIzAzJnv)
        end
        dFDIzAzJnv.Parent = EVtDoDBH
        table.insert(gaUHhDuNP, dFDIzAzJnv)

        local wMkLHgWLiH = Instance.new("TextButton")
        wMkLHgWLiH.Name = RBuybrKfvck()
        wMkLHgWLiH.Size = UDim2.fromOffset(36, 36)
        wMkLHgWLiH.Position = UDim2.new(0, 16, 0.5, -18)
        wMkLHgWLiH.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
        wMkLHgWLiH.BackgroundTransparency = 0.05
        wMkLHgWLiH.Text = "PX"
        wMkLHgWLiH.TextColor3 = Color3.fromRGB(255, 255, 255)
        wMkLHgWLiH.TextSize = 13
        wMkLHgWLiH.Font = Enum.Font.GothamBold
        wMkLHgWLiH.AutoButtonColor = false
        wMkLHgWLiH.Active = true
        wMkLHgWLiH.Draggable = true
        wMkLHgWLiH.Parent = dFDIzAzJnv

        local dwDMEEiXWY = Instance.new("UICorner")
        dwDMEEiXWY.CornerRadius = UDim.new(0, 7)
        dwDMEEiXWY.Parent = wMkLHgWLiH

        local TrKvXJcvDh = Instance.new("UIStroke")
        TrKvXJcvDh.Color = Color3.fromRGB(60, 60, 75)
        TrKvXJcvDh.Transparency = 0.3
        TrKvXJcvDh.Thickness = 1
        TrKvXJcvDh.Parent = wMkLHgWLiH

        local pZTKyvNP = Instance.new("Frame")
        pZTKyvNP.Name = RBuybrKfvck()
        pZTKyvNP.Size = UDim2.fromOffset(250, 215)
        pZTKyvNP.Position = UDim2.new(0.5, -125, 0.5, -107)
        pZTKyvNP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        pZTKyvNP.BackgroundTransparency = 0.05
        pZTKyvNP.BorderSizePixel = 0
        pZTKyvNP.Visible = false
        pZTKyvNP.ClipsDescendants = true
        pZTKyvNP.Parent = dFDIzAzJnv

        local kJOmlvmE = Instance.new("UIGradient")
        kJOmlvmE.Rotation = 90
        kJOmlvmE.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 90, 115)),
            ColorSequenceKeypoint.new(0.35, Color3.fromRGB(15, 16, 22)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 5, 8)),
        })
        kJOmlvmE.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.45),
            NumberSequenceKeypoint.new(0.35, 0.05),
            NumberSequenceKeypoint.new(1, 0.0),
        })
        kJOmlvmE.Parent = pZTKyvNP

        local EGpoCuaqv = Instance.new("UICorner")
        EGpoCuaqv.CornerRadius = UDim.new(0, 12)
        EGpoCuaqv.Parent = pZTKyvNP

        local mVYrSAhrQol = Instance.new("UIStroke")
        mVYrSAhrQol.Color = Color3.fromRGB(255, 255, 255)
        mVYrSAhrQol.Transparency = 0.8
        mVYrSAhrQol.Thickness = 1
        mVYrSAhrQol.Parent = pZTKyvNP

        local ErGPqXAghA = Instance.new("Frame")
        ErGPqXAghA.Size = UDim2.new(1, 0, 0, 42)
        ErGPqXAghA.BackgroundTransparency = 1
        ErGPqXAghA.Parent = pZTKyvNP

        local QvKCpmqG = Instance.new("TextLabel")
        QvKCpmqG.Size = UDim2.new(1, -40, 1, 0)
        QvKCpmqG.Position = UDim2.fromOffset(14, 0)
        QvKCpmqG.BackgroundTransparency = 1
        QvKCpmqG.Text = "PhantomX Device Spoofer"
        QvKCpmqG.TextColor3 = Color3.fromRGB(255, 255, 255)
        QvKCpmqG.TextSize = 12
        QvKCpmqG.Font = Enum.Font.GothamBold
        QvKCpmqG.TextXAlignment = Enum.TextXAlignment.Left
        QvKCpmqG.Parent = ErGPqXAghA

        local JgdpmbuwaTF = Instance.new("TextButton")
        JgdpmbuwaTF.Size = UDim2.fromOffset(26, 26)
        JgdpmbuwaTF.Position = UDim2.new(1, -32, 0.5, -13)
        JgdpmbuwaTF.BackgroundTransparency = 1
        JgdpmbuwaTF.Text = "×"
        JgdpmbuwaTF.TextColor3 = Color3.fromRGB(200, 200, 210)
        JgdpmbuwaTF.TextSize = 18
        JgdpmbuwaTF.Font = Enum.Font.GothamMedium
        JgdpmbuwaTF.Parent = ErGPqXAghA

        local FIjGGsjCJ = Instance.new("Frame")
        FIjGGsjCJ.Size = UDim2.new(1, -28, 0, 1)
        FIjGGsjCJ.Position = UDim2.fromOffset(14, 42)
        FIjGGsjCJ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        FIjGGsjCJ.BackgroundTransparency = 0.88
        FIjGGsjCJ.BorderSizePixel = 0
        FIjGGsjCJ.Parent = pZTKyvNP

        local tHqFJeVP = Instance.new("Frame")
        tHqFJeVP.Size = UDim2.new(1, -28, 0, 150)
        tHqFJeVP.Position = UDim2.fromOffset(14, 52)
        tHqFJeVP.BackgroundTransparency = 1
        tHqFJeVP.Parent = pZTKyvNP

        local eYNnTzChjdpv = Instance.new("UIListLayout")
        eYNnTzChjdpv.Padding = UDim.new(0, 6)
        eYNnTzChjdpv.SortOrder = Enum.SortOrder.LayoutOrder
        eYNnTzChjdpv.Parent = tHqFJeVP

        local XUlgahKDCmn = {}

        local function oJRkqoWf()
            for name, btnData in OOEpSvcmM(XUlgahKDCmn) do
                if name == qlJOBsCyK then
                    wmGejyarqad:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(210, 110, 30),
                        BackgroundTransparency = 0.15,
                    }):Play()
                    btnData.Text.Text = "Are you sure? (Will Rejoin)"
                    btnData.Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                    wmGejyarqad:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 150, 50),
                        Transparency = 0.1,
                    }):Play()
                elseif name == SPXKKwIyfOyq then
                    wmGejyarqad:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(90, 50, 150),
                        BackgroundTransparency = 0.2,
                    }):Play()
                    btnData.Text.Text = name .. " [Active]"
                    btnData.Text.TextColor3 = Color3.fromRGB(230, 200, 255)
                    wmGejyarqad:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(180, 130, 255),
                        Transparency = 0.1,
                    }):Play()
                else
                    wmGejyarqad:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                    btnData.Text.Text = name
                    btnData.Text.TextColor3 = Color3.fromRGB(210, 215, 225)
                    wmGejyarqad:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 255, 255),
                        Transparency = 0.88,
                    }):Play()
                end
            end
        end

        local function NqjXtQWON(name, order)
            local LWABXRek = Instance.new("TextButton")
            LWABXRek.Size = UDim2.new(1, 0, 0, 42)
            LWABXRek.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
            LWABXRek.BackgroundTransparency = 0.35
            LWABXRek.Text = ""
            LWABXRek.AutoButtonColor = false
            LWABXRek.LayoutOrder = order
            LWABXRek.Parent = tHqFJeVP

            local XrWocIJxvos = Instance.new("UICorner")
            XrWocIJxvos.CornerRadius = UDim.new(0, 8)
            XrWocIJxvos.Parent = LWABXRek

            local MwYsFrpZNN = Instance.new("UIStroke")
            MwYsFrpZNN.Color = Color3.fromRGB(255, 255, 255)
            MwYsFrpZNN.Transparency = 0.88
            MwYsFrpZNN.Thickness = 1
            MwYsFrpZNN.Parent = LWABXRek

            local zSBfJTwaQXJJ = Instance.new("TextLabel")
            zSBfJTwaQXJJ.Size = UDim2.new(1, -20, 1, 0)
            zSBfJTwaQXJJ.Position = UDim2.fromOffset(12, 0)
            zSBfJTwaQXJJ.BackgroundTransparency = 1
            zSBfJTwaQXJJ.Text = name
            zSBfJTwaQXJJ.TextColor3 = Color3.fromRGB(210, 215, 225)
            zSBfJTwaQXJJ.TextSize = 11
            zSBfJTwaQXJJ.Font = Enum.Font.GothamMedium
            zSBfJTwaQXJJ.TextXAlignment = Enum.TextXAlignment.Left
            zSBfJTwaQXJJ.Parent = LWABXRek

            XUlgahKDCmn[name] = {Btn= LWABXRek, Stroke = MwYsFrpZNN, Text = zSBfJTwaQXJJ }

            LWABXRek.MouseEnter:Connect(function()
                if qlJOBsCyK ~= name and SPXKKwIyfOyq ~= name then
                    wmGejyarqad:Create(LWABXRek, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(32, 36, 50),
                        BackgroundTransparency = 0.2,
                    }):Play()
                end
            end)
            LWABXRek.MouseLeave:Connect(function()
                if qlJOBsCyK ~= name and SPXKKwIyfOyq ~= name then
                    wmGejyarqad:Create(LWABXRek, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                end
            end)

            LWABXRek.MouseButton1Click:Connect(function()
                if SPXKKwIyfOyq == name then return end
                if qlJOBsCyK == name then
                    SPXKKwIyfOyq = name
                    ahNleTRX(name)
                    qlJOBsCyK = nil
                    if activeToken and activeExpiry then
                        JTFLnHBgcYKc(activeToken, activeExpiry)
                    end
                    zSBfJTwaQXJJ.Text = "Rejoining..."
                    oJRkqoWf()
                    TMKqmCRLzZa()
                    if queue_on_teleport then
                        queue_on_teleport("_G.TargetDevice = '" .. name .. "'")
                    end
                    task.wait(0.2)
                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                        game.PlaceId, game.JobId, FjCOadxMWVHn
                    )
                    return
                end
                qlJOBsCyK = name
                oJRkqoWf()
            end)
        end

        for i, plat in VYwJbcJom(iiwwZyNcz) do
            NqjXtQWON(plat, i)
        end
        oJRkqoWf()

        local function uJLZlXKg()
            NGRWGCoHzcbd = true
            pZTKyvNP.Visible = true
            pZTKyvNP.Position = UDim2.new(0.5, -125, 0.5, -97)
            wmGejyarqad:Create(
                pZTKyvNP,
                TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Position= UDim2.new(0.5, -125, 0.5, -107) }
            ):Play()
            wmGejyarqad:Create(mVYrSAhrQol, TweenInfo.new(0.22), {Transparency= 0.65,
            }):Play()
        end

        local function rhZGXqEb()
            NGRWGCoHzcbd = false
            qlJOBsCyK = nil
            oJRkqoWf()
            local SxNptoKDEMH = wmGejyarqad:Create(
                pZTKyvNP,
                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                {Position= UDim2.new(0.5, -125, 0.5, -97) }
            )
            wmGejyarqad:Create(mVYrSAhrQol, TweenInfo.new(0.15), {Transparency= 1,
            }):Play()
            SxNptoKDEMH:Play()
            SxNptoKDEMH.Completed:Once(function()
                if not NGRWGCoHzcbd then pZTKyvNP.Visible = false end
            end)
        end

        wMkLHgWLiH.MouseButton1Click:Connect(function()
            if NGRWGCoHzcbd then rhZGXqEb() else uJLZlXKg() end
        end)
        JgdpmbuwaTF.MouseButton1Click:Connect(function() rhZGXqEb() end)

        wMkLHgWLiH.MouseEnter:Connect(function()
            wmGejyarqad:Create(TrKvXJcvDh, TweenInfo.new(0.12), {Transparency= 0.1,
            }):Play()
            wmGejyarqad:Create(wMkLHgWLiH, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(22, 22, 28),
            }):Play()
        end)
        wMkLHgWLiH.MouseLeave:Connect(function()
            wmGejyarqad:Create(TrKvXJcvDh, TweenInfo.new(0.12), {Transparency= 0.3,
            }):Play()
            wmGejyarqad:Create(wMkLHgWLiH, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(12, 12, 15),
            }):Play()
        end)
    end

    jzgdRpocogj()

    task.spawn(function()
        for jQjfYWqOhbVa = 1, 15 do
            if _G.__dm_killed then return end
            TMKqmCRLzZa()
            task.wait(0.8)
        end
    end)

    task.spawn(function()
        local FjCOadxMWVHn = game.Players.LocalPlayer
        if not FjCOadxMWVHn then
            game.Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
            FjCOadxMWVHn = game.Players.LocalPlayer
        end
        FjCOadxMWVHn.CharacterAdded:Connect(function()
            task.wait(1)
            if _G.__dm_killed then return end
            TMKqmCRLzZa()
        end)
    end)

    task.spawn(function()
        while not _G.__dm_killed do task.wait(0.5) end
        for jQjfYWqOhbVa, g in VYwJbcJom(gaUHhDuNP) do
            bGZwfejQfml(function() g:Destroy() end)
        end
    end)
end

-- ===== التفعيل =====
local UfuWBkNshkqE, vBbwXoRbUpeL = uLknHihpozY()
bCCSRisttjM(KvQGIrbxnfg())
if #iiwwZyNcz == 0 then
    jrCDYhRqPX("No compatible device option is enabled for this account", "NO_COMPATIBLE_PLATFORM")
    return
end

if UfuWBkNshkqE then
    local jQjfYWqOhbVa, tFBJNiFogZ = bsQNUymxp("POST", "/api/license/heartbeat", {sessionToken= UfuWBkNshkqE,
        scriptVariant = zshvjkCTS,
        deviceFingerprint = OQvfYUvD,
        robloxUserId = vMQUrsKdVTTA,
    })
    if not tFBJNiFogZ or tFBJNiFogZ.success ~= true then
        _G.__dm_killed = true
        RyIheXZM()
        jrCDYhRqPX("License verification failed", tFBJNiFogZ and tFBJNiFogZ.error or "HEARTBEAT_FAILED")
        return
    end

    task.spawn(JZFgzfiC, UfuWBkNshkqE, vBbwXoRbUpeL)
    task.spawn(function()
        while os.time() < vBbwXoRbUpeL do
            task.wait(20)
            if os.time() >= vBbwXoRbUpeL then
                _G.__dm_killed = true
                RyIheXZM()
                break
            end
            local jQjfYWqOhbVa, dLPdKmAUv = bsQNUymxp("POST", "/api/license/heartbeat", {sessionToken= UfuWBkNshkqE,
                scriptVariant = zshvjkCTS,
                deviceFingerprint = OQvfYUvD,
                robloxUserId = vMQUrsKdVTTA,
            })
            if not dLPdKmAUv or dLPdKmAUv.success ~= true then
                _G.__dm_killed = true
                RyIheXZM()
                break
            end
        end
    end)
    RjHcPSjpFE("done")
    return
end

NFzBJKkIGpk("Connecting to secure license service...", Color3.fromRGB(151, 112, 255), 5)

local jQjfYWqOhbVa, SIzFnSyvK, mnRtLPWIJo = bsQNUymxp("GET", "/api/license/product")
if not SIzFnSyvK then jrCDYhRqPX("Service unavailable", mnRtLPWIJo) return end
if SIzFnSyvK.enabled ~= true then
    jrCDYhRqPX("DeviceMode is currently disabled", "PRODUCT_DISABLED")
    return
end
if SIzFnSyvK.minimumSupportedVersion and wbTUdIZLDHM < SIzFnSyvK.minimumSupportedVersion then
    jrCDYhRqPX("Please update your DeviceMode script", "CLIENT_UPDATE_REQUIRED")
    return
end

local YrJLRmTi = {licenseKey= YPbwXhSn,
    clientVersion = wbTUdIZLDHM,
    scriptVariant = zshvjkCTS,
    deviceFingerprint = OQvfYUvD,
    robloxUserId = vMQUrsKdVTTA,
}

local jQjfYWqOhbVa, CpeBkcCYi, YQSRzRVyg = bsQNUymxp("POST", "/api/license/activate", YrJLRmTi)
if not CpeBkcCYi or CpeBkcCYi.success ~= true then
    local jGXEesiIVpj = CpeBkcCYi and CpeBkcCYi.error or YQSRzRVyg or "ACTIVATION_FAILED"
    if jGXEesiIVpj == "LICENSE_EXPIRED" then
        jrCDYhRqPX("License expired", jGXEesiIVpj)
    elseif jGXEesiIVpj == "USER_NOT_ALLOWED" then
        jrCDYhRqPX("This Roblox account is not authorized", jGXEesiIVpj)
    elseif jGXEesiIVpj == "DEVICE_MISMATCH" then
        jrCDYhRqPX("This device is not bound to the license", jGXEesiIVpj)
    elseif jGXEesiIVpj == "INVALID_LICENSE" then
        jrCDYhRqPX("License key was not found", jGXEesiIVpj)
    else
        jrCDYhRqPX("License verification failed", jGXEesiIVpj)
    end
    return
end

local sVDWBfYaOS = CpeBkcCYi.sessionToken
local DIYUqHkRUmhQ = CpeBkcCYi.license and ogXZJUWm(CpeBkcCYi.license.expiresAt)
if type(sVDWBfYaOS) ~= "string" or sVDWBfYaOS == "" or not DIYUqHkRUmhQ then
    jrCDYhRqPX("Server returned an incomplete license response", "INVALID_ACTIVATION")
    return
end

NUVlQispi(CpeBkcCYi.allowedPlatforms)
bCCSRisttjM(KvQGIrbxnfg())
if #iiwwZyNcz == 0 then
    jrCDYhRqPX("No compatible device option is enabled for this account", "NO_COMPATIBLE_PLATFORM")
    return
end
if os.time() >= DIYUqHkRUmhQ then
    jrCDYhRqPX("License expired", "LICENSE_EXPIRED")
    return
end

NFzBJKkIGpk(
    "License verified · " .. kkockaBt(DIYUqHkRUmhQ - os.time()) .. " remaining",
    Color3.fromRGB(85, 215, 164),
    8
)

JTFLnHBgcYKc(sVDWBfYaOS, DIYUqHkRUmhQ)
task.spawn(JZFgzfiC, sVDWBfYaOS, DIYUqHkRUmhQ)

local OEirstZTeI = true
while OEirstZTeI do
    task.wait(30)
    if os.time() >= DIYUqHkRUmhQ then
        OEirstZTeI = false
        RyIheXZM()
        jrCDYhRqPX("License expired", "LICENSE_EXPIRED")
        break
    end
    local jQjfYWqOhbVa, tFBJNiFogZ = bsQNUymxp("POST", "/api/license/heartbeat", {sessionToken= sVDWBfYaOS,
        scriptVariant = zshvjkCTS,
        deviceFingerprint = OQvfYUvD,
        robloxUserId = vMQUrsKdVTTA,
    })
    if not tFBJNiFogZ or tFBJNiFogZ.success ~= true then
        local jGXEesiIVpj = tFBJNiFogZ and tFBJNiFogZ.error or "HEARTBEAT_FAILED"
        OEirstZTeI = false
        RyIheXZM()
        if jGXEesiIVpj == "LICENSE_EXPIRED" then
            jrCDYhRqPX("License expired", jGXEesiIVpj)
        elseif jGXEesiIVpj == "LICENSE_REVOKED" then
            jrCDYhRqPX("License revoked by administrator", jGXEesiIVpj)
        elseif jGXEesiIVpj == "SESSION_INVALID" then
            jrCDYhRqPX("License session is no longer valid", jGXEesiIVpj)
        else
            jrCDYhRqPX("License session ended", jGXEesiIVpj)
        end
        break
    end
end

if EzaDvRYmh and EzaDvRYmh.Parent then
    task.delay(12, function()
        if EzaDvRYmh and EzaDvRYmh.Parent then EzaDvRYmh:Destroy() end
    end)
end
RjHcPSjpFE("done")
        end
        break
    end
end

local cxtccv = 37
if true then local _ = 84 end
local yhljbz = 7
if false then local _ = 33 end
local vtbpma = 2
if true then local _ = 85 end
local function azgitx(ataqdk) local _ = 43 end
if true then local _ = 83 end
local zouwfe = 57
local schnty = 31
if true then local _ = 25 end
local function fbxlsx(ijclif) local _ = 35 end
local hclccv = 68
while false do local _ = 19 break end
local function zlqnbu(rlrlpn) local _ = 59 end
local function iunmlj(qpllrz) local _ = 35 end