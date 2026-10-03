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
if true then local _ = 7 end
while false do local _ = 36 break end
if true then local _ = 80 end
local function aupcwy(dgchid) local _ = 68 end
local ltnehn = 88
local dokvto = 87
if false then local _ = 34 end
local function nbrglt(vejpqe) local _ = 44 end
local ymutcc = 47
local dkvzhu = 21
while false do local _ = 31 break end
local pzrifg = 38
local thing = 1600;
local thing2 = 1600;
local counter = 0;
while thing == thing2 and counter < 1 do
    thing = thing + 1;
    counter = counter + 1;
    if thing == thing2 then
        local temp = 98; temp = temp * 2;
    else
        do
            local mkTAEvHAj,pGeZzgRfIj,QyCmNkCfQ,FpmUOlkiL,xrAmOWuea,GiepjcWpw,bIxtrqudiK,epaCqNIXAAo,wUyHINxNHo,hQsHHMocY,skQMwwRT,PvQLaFNgG,FncJUVnbIKn,OSgTDStqR,ZHglibQK,JffJfhVseml,IcsmbSth,RBfTlgobrsRv
mkTAEvHAj=error;pGeZzgRfIj=ipairs;QyCmNkCfQ=pairs;FpmUOlkiL=pcall;xrAmOWuea=print;GiepjcWpw=rawget;bIxtrqudiK=rawset;epaCqNIXAAo=select;wUyHINxNHo=tonumber;hQsHHMocY=tostring;skQMwwRT=math.floor;PvQLaFNgG=math.max;FncJUVnbIKn=math.random;OSgTDStqR=string.char;ZHglibQK=string.format;JffJfhVseml=table.concat;IcsmbSth=table.insert;RBfTlgobrsRv=os.time;
local bAMiQSKZC = game:GetService("HttpService")
local wWoMUxNcOH = game:GetService("Players")
local croPVBAjy = game:GetService("TweenService")

if not game:IsLoaded() then game.Loaded:Wait() end

-- المنصات المتاحة
local bMyqYOIE = {"Console", "Mobile"}

local yXKxcMTfc = "https://devicemode-cctgi3ma.manus.space"
local iNZlznCkZZX = "1.0.0"
local enVkrlIqPJI = "CONSOLE_MOBILE"
local gsfsOhNwc = 300

local wHhKcHjLKgWz = {
    [11379739543]    = true,
    [98752102030179] = true,
}

if not wHhKcHjLKgWz[game.PlaceId] then return end

local FqXgHQBufm = table.concat(bMyqYOIE, "_")
local GehHlaHyAPo = "sys_sess_v4_" .. FqXgHQBufm .. ".bin"
local GAXlOumnXr  = "sys_cfg_v5_cache.bin"
local rJxBJkPKdHOP = "sys_allowed_v5_" .. FqXgHQBufm .. ".bin"

local vLnOnbofoD = getgenv and getgenv() or _G
local gcptLSWXtIB = vLnOnbofoD.DeviceModeKey
if type(gcptLSWXtIB) ~= "string" or gcptLSWXtIB == "" then return end

local CznsCDXp = wWoMUxNcOH.LocalPlayer
if not CznsCDXp then
    wWoMUxNcOH:GetPropertyChangedSignal("LocalPlayer"):Wait()
    CznsCDXp = wWoMUxNcOH.LocalPlayer
end
if not CznsCDXp then return end

local tWyNBDTZgW = hQsHHMocY(CznsCDXp.UserId)

local function NtqopCScqn()
    local ofsYXcuH = {
        function() return type(gethwid) == "function" and gethwid() end,
        function() return type(get_hwid) == "function" and get_hwid() end,
        function() return type(getHWID) == "function" and getHWID() end,
        function() return syn and type(syn.gethwid) == "function" and syn.gethwid() end,
    }
    for cJaLYsJew, getter in pGeZzgRfIj(ofsYXcuH) do
        local eIuUaEQWf, OsLqXWnkLv = FpmUOlkiL(getter)
        if eIuUaEQWf and type(OsLqXWnkLv) == "string" then
            OsLqXWnkLv = OsLqXWnkLv:gsub("%s+", "")
            if #OsLqXWnkLv >= 8 and #OsLqXWnkLv <= 256 then return OsLqXWnkLv end
        end
    end
    return nil
end

local bwbcwrZmdmdl = NtqopCScqn()
local dCAArTWHdYq = bwbcwrZmdmdl and ("EXECUTOR-HWID-" .. bwbcwrZmdmdl)
    or ("ROBLOX-USER-" .. tWyNBDTZgW)

local fdDXdazbfgd = _G.request or request or http_request or (syn and syn.request)
if type(fdDXdazbfgd) ~= "function" then return end

local function sGgeZgzj(method, path, body)
    local eIuUaEQWf, jioJZNobhJL = FpmUOlkiL(function()
        return fdDXdazbfgd({Url= yXKxcMTfc .. path,
            Method = method,
            Headers = {
                ["Content-Type"] = "application/json",
                ["Accept"] = "application/json",
            },
            Body = body and bAMiQSKZC:JSONEncode(body) or nil,
        })
    end)
    if not eIuUaEQWf or type(jioJZNobhJL) ~= "table" then
        return nil, nil, "HTTP_REQUEST_FAILED"
    end
    if type(jioJZNobhJL.Body) ~= "string" or jioJZNobhJL.Body == "" then
        return jioJZNobhJL, nil, "EMPTY_RESPONSE"
    end
    local RdBUPbAkOZM, TiwAnritrd = FpmUOlkiL(function()
        return bAMiQSKZC:JSONDecode(jioJZNobhJL.Body)
    end)
    if not RdBUPbAkOZM or type(TiwAnritrd) ~= "table" then
        return jioJZNobhJL, nil, "INVALID_JSON"
    end
    return jioJZNobhJL, TiwAnritrd, nil
end

local function iiGCpVuFjd(iso)
    if type(iso) ~= "string" then return nil end
    local eIuUaEQWf, EOQGINJkHmk = FpmUOlkiL(function() return DateTime.fromIsoDate(iso) end)
    if not eIuUaEQWf or not EOQGINJkHmk then return nil end
    return EOQGINJkHmk.UnixTimestamp
end

local function GkyKooff(seconds)
    seconds = math.max(0, math.floor(seconds))
    local dRLjJEvWKmFf = math.floor(seconds / 86400)
    local fNoSgLfLwmaj = math.floor((seconds % 86400) / 3600)
    local waknKmToIws = math.floor((seconds % 3600) / 60)
    local UElJsBxLAhJ = seconds % 60
    if dRLjJEvWKmFf > 0 then
        return string.format("%dd %02dh %02dm", dRLjJEvWKmFf, fNoSgLfLwmaj, waknKmToIws)
    end
    if fNoSgLfLwmaj > 0 then
        return string.format("%dh %02dm %02ds", fNoSgLfLwmaj, waknKmToIws, UElJsBxLAhJ)
    end
    return string.format("%02dm %02ds", waknKmToIws, UElJsBxLAhJ)
end

-- ===== الجلسة (بدون تشفير) =====
local function VHKpUsHbthR(nSsCDlwETiWZ, MlZMqZYJ)
    if not writefile then return end
    FpmUOlkiL(writefile, GehHlaHyAPo,
        nSsCDlwETiWZ .. "|" .. hQsHHMocY(MlZMqZYJ) .. "|" .. hQsHHMocY(os.time()))
end

local function CPzhmQzPlYZ()
    if not (readfile and isfile and isfile(GehHlaHyAPo)) then return nil, nil end
    local eIuUaEQWf, TiwAnritrd = FpmUOlkiL(readfile, GehHlaHyAPo)
    if not eIuUaEQWf or type(TiwAnritrd) ~= "string" or TiwAnritrd == "" then return nil, nil end
    local nSsCDlwETiWZ, MlZMqZYJ, LCHxMaQRAf = TiwAnritrd:match("^([^|]+)|(%d+)|(%d+)$")
    if not (nSsCDlwETiWZ and MlZMqZYJ and LCHxMaQRAf) then return nil, nil end
    MlZMqZYJ, LCHxMaQRAf = wUyHINxNHo(MlZMqZYJ), wUyHINxNHo(LCHxMaQRAf)
    if not (MlZMqZYJ and LCHxMaQRAf) then return nil, nil end
    local fZVzCNOA = os.time()
    if fZVzCNOA >= MlZMqZYJ or (fZVzCNOA - LCHxMaQRAf) >= gsfsOhNwc then
        return nil, nil
    end
    return nSsCDlwETiWZ, MlZMqZYJ
end

local function PJLSKruHxH()
    if delfile then
        FpmUOlkiL(delfile, GehHlaHyAPo)
    elseif writefile then
        FpmUOlkiL(writefile, GehHlaHyAPo, "")
    end
end

-- ===== المنصات المسموحة =====
local function MxgzNzZRU(platforms)
    if not writefile or type(platforms) ~= "table" then return end
    local GISjRVsyARE = {}
    for cJaLYsJew, platform in pGeZzgRfIj(platforms) do
        local WuwqzGoPiI = platform == "pc" and "PC"
            or platform == "mobile" and "Mobile"
            or platform == "console" and "Console"
            or platform
        if WuwqzGoPiI == "PC" or WuwqzGoPiI == "Mobile" or WuwqzGoPiI == "Console" then
            table.insert(GISjRVsyARE, WuwqzGoPiI)
        end
    end
    if #GISjRVsyARE > 0 then
        FpmUOlkiL(writefile, rJxBJkPKdHOP, table.concat(GISjRVsyARE, "|"))
    end
end

local function zSqkkswSf()
    if not (readfile and isfile and isfile(rJxBJkPKdHOP)) then return nil end
    local eIuUaEQWf, RlVlnmqCwaQn = FpmUOlkiL(readfile, rJxBJkPKdHOP)
    if not eIuUaEQWf or type(RlVlnmqCwaQn) ~= "string" or RlVlnmqCwaQn == "" then return nil end
    local VWRqjSAVpSFH = {}
    for OsLqXWnkLv in RlVlnmqCwaQn:gmatch("[^|]+") do VWRqjSAVpSFH[OsLqXWnkLv] = true end
    return VWRqjSAVpSFH
end

local function dDZWYwogRKnN(VWRqjSAVpSFH)
    if not VWRqjSAVpSFH then return end
    local jTvqTvfh = {}
    for cJaLYsJew, platform in pGeZzgRfIj(bMyqYOIE) do
        if VWRqjSAVpSFH[platform] then table.insert(jTvqTvfh, platform) end
    end
    bMyqYOIE = jTvqTvfh
end

-- ===== UI =====
local kTPezDSsY = Instance.new("ScreenGui")
kTPezDSsY.Name = "DeviceModeGlass"
kTPezDSsY.ResetOnSpawn = false
kTPezDSsY.IgnoreGuiInset = true
kTPezDSsY.Parent = CznsCDXp:WaitForChild("PlayerGui")

local xEKzetBhncza = Instance.new("Frame")
xEKzetBhncza.Name = "LicenseToast"
xEKzetBhncza.AnchorPoint = Vector2.new(1, 0)
xEKzetBhncza.Position = UDim2.new(1, 360, 0, 80)
xEKzetBhncza.Size = UDim2.new(0, 310, 0, 86)
xEKzetBhncza.BackgroundColor3 = Color3.fromRGB(13, 16, 26)
xEKzetBhncza.BackgroundTransparency = 0.12
xEKzetBhncza.Visible = false
xEKzetBhncza.Parent = kTPezDSsY

local APoXLmTdFIEX = Instance.new("UICorner")
APoXLmTdFIEX.CornerRadius = UDim.new(0, 16)
APoXLmTdFIEX.Parent = xEKzetBhncza

local XazQXmTa = Instance.new("UIStroke")
XazQXmTa.Color = Color3.fromRGB(150, 115, 255)
XazQXmTa.Transparency = 0.25
XazQXmTa.Thickness = 1
XazQXmTa.Parent = xEKzetBhncza

local vTvUJavcw = Instance.new("UIGradient")
vTvUJavcw.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 25, 57)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 14, 22)),
})
vTvUJavcw.Rotation = 18
vTvUJavcw.Parent = xEKzetBhncza

local WnaIOxkg = Instance.new("Frame")
WnaIOxkg.Size = UDim2.new(0, 4, 1, -24)
WnaIOxkg.Position = UDim2.new(0, 12, 0, 12)
WnaIOxkg.BackgroundColor3 = Color3.fromRGB(151, 112, 255)
WnaIOxkg.BorderSizePixel = 0
WnaIOxkg.Parent = xEKzetBhncza

local EOGdYzXmT = Instance.new("UICorner")
EOGdYzXmT.CornerRadius = UDim.new(1, 0)
EOGdYzXmT.Parent = WnaIOxkg

local TvHqLeViLl = Instance.new("TextLabel")
TvHqLeViLl.BackgroundTransparency = 1
TvHqLeViLl.Position = UDim2.new(0, 29, 0, 14)
TvHqLeViLl.Size = UDim2.new(1, -45, 0, 22)
TvHqLeViLl.Font = Enum.Font.GothamBold
TvHqLeViLl.TextSize = 14
TvHqLeViLl.TextColor3 = Color3.fromRGB(244, 241, 255)
TvHqLeViLl.TextXAlignment = Enum.TextXAlignment.Left
TvHqLeViLl.Text = "DeviceMode"
TvHqLeViLl.Parent = xEKzetBhncza

local LcnBeEhHKjm = Instance.new("TextLabel")
LcnBeEhHKjm.BackgroundTransparency = 1
LcnBeEhHKjm.Position = UDim2.new(0, 29, 0, 39)
LcnBeEhHKjm.Size = UDim2.new(1, -45, 0, 30)
LcnBeEhHKjm.Font = Enum.Font.Gotham
LcnBeEhHKjm.TextSize = 12
LcnBeEhHKjm.TextColor3 = Color3.fromRGB(192, 187, 218)
LcnBeEhHKjm.TextXAlignment = Enum.TextXAlignment.Left
LcnBeEhHKjm.TextWrapped = true
LcnBeEhHKjm.Text = "Checking license..."
LcnBeEhHKjm.Parent = xEKzetBhncza

local wkXgQOScwrff = 0

local function EDSyQgNJBl(message, color, seconds)
    wkXgQOScwrff += 1
    local nSsCDlwETiWZ = wkXgQOScwrff
    local XtZntMwIkHM = color or Color3.fromRGB(151, 112, 255)
    WnaIOxkg.BackgroundColor3 = XtZntMwIkHM
    XazQXmTa.Color = XtZntMwIkHM
    LcnBeEhHKjm.TextColor3 = color or Color3.fromRGB(216, 209, 246)
    LcnBeEhHKjm.Text = hQsHHMocY(message)
    xEKzetBhncza.Visible = true
    xEKzetBhncza.Position = UDim2.new(1, 360, 0, 80)
    croPVBAjy:Create(
        xEKzetBhncza,
        TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {Position= UDim2.new(1, -24, 0, 80) }
    ):Play()
    task.delay(seconds or 8, function()
        if nSsCDlwETiWZ ~= wkXgQOScwrff then return end
        local akUTDUdf = croPVBAjy:Create(
            xEKzetBhncza,
            TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {Position= UDim2.new(1, 360, 0, 80) }
        )
        akUTDUdf:Play()
        local sbJczHnwIIV = FpmUOlkiL(function() akUTDUdf.Completed:Wait() end)
        if sbJczHnwIIV and nSsCDlwETiWZ == wkXgQOScwrff then xEKzetBhncza.Visible = false end
    end)
end

local function kazMWRwBPyhq(message, LqQBzaxMfj)
    if LqQBzaxMfj then message = message .. "\nCode: " .. hQsHHMocY(LqQBzaxMfj) end
    EDSyQgNJBl(message, Color3.fromRGB(255, 104, 126), 12)
end

_G.__dm_killed = false

-- ===== السبوفر =====
local function nBuamglqUebg(activeToken, activeExpiry)
    if not game:IsLoaded() then game.Loaded:Wait() end

    local function yGPecptX(dev)
        if writefile then FpmUOlkiL(writefile, GAXlOumnXr, dev) end
        _G.TargetDevice = dev
    end

    local function LOnSaBQABKq()
        return _G.TargetDevice
    end

    local function kFlNrJfFu()
        if not debug or not debug.getinfo then return true end
        local oVhYFUJKVqcw = {bIxtrqudiK, GiepjcWpw, FpmUOlkiL}
        if getgc then table.insert(oVhYFUJKVqcw, getgc) end
        for cJaLYsJew, func in pGeZzgRfIj(oVhYFUJKVqcw) do
            local auBnRleeqkcD = debug.getinfo(func)
            if not auBnRleeqkcD or auBnRleeqkcD.what ~= "C" or auBnRleeqkcD.source ~= "=[C]" then
                return false
            end
        end
        return true
    end

    if not kFlNrJfFu() then return end

    -- أسماء المفاتيح
    local gvQBejBPQQQ      = "Device"
    local jGmDlHxc  = "FixXCoordinateAspectRate"
    local PtulbhrVLF  = "PreferredInput"
    local flpbdhCjuH     = "Gamepad"
    local vuchjpUHWo    = "Keyboard"

    local function qKEdBbZX()
        local AVQDMBUIrM = ""
        for cJaLYsJew = 1, math.random(10, 16) do
            AVQDMBUIrM = AVQDMBUIrM .. string.char(math.random(97, 122))
        end
        return AVQDMBUIrM
    end

    local function dCgDkPVw()
        local PxBxLZXezbuI = game.Players.LocalPlayer
        if not PxBxLZXezbuI then return end
        local HRWDJlLH = PxBxLZXezbuI:FindFirstChild("PlayerGui") or PxBxLZXezbuI:WaitForChild("PlayerGui", 10)
        if not HRWDJlLH then return end
        local zjwbLAayBVq = HRWDJlLH:FindFirstChild("Screen") or HRWDJlLH:WaitForChild("Screen", 10)
        if not zjwbLAayBVq then return end
        zjwbLAayBVq.Enabled = true
        local ozqprFWkd = zjwbLAayBVq:FindFirstChild("ConsoleButton", true)
        if ozqprFWkd and ozqprFWkd:IsA("GuiObject") then ozqprFWkd.Visible = false end
        local FhdzAfdbDi = zjwbLAayBVq:FindFirstChild("ShiftLockArea")
            or zjwbLAayBVq:WaitForChild("ShiftLockArea", 10)
        if not (FhdzAfdbDi and FhdzAfdbDi:IsA("GuiObject")) then return end
        FhdzAfdbDi.Visible = true
        local CtKXjJFC = FhdzAfdbDi:FindFirstChild("Toggle")
            or FhdzAfdbDi:WaitForChild("Toggle", 10)
        local kRkooKXPEy = zjwbLAayBVq:FindFirstChild("MouseLockedCursor")
            or zjwbLAayBVq:WaitForChild("MouseLockedCursor", 10)
        if not (CtKXjJFC and CtKXjJFC:IsA("GuiObject")) then return end
        CtKXjJFC.Visible = true
        if not (kRkooKXPEy and kRkooKXPEy:IsA("GuiObject")) then return end

        local function uhPtVGgQx()
            local SeCBiqNAPy = CtKXjJFC.Active or CtKXjJFC.Selected
                or (CtKXjJFC:IsA("ImageButton") and CtKXjJFC.ImageRectOffset.X > 0)
            kRkooKXPEy.Visible = SeCBiqNAPy
        end
        uhPtVGgQx()

        if not CtKXjJFC:GetAttribute("CursorBound") then
            CtKXjJFC:SetAttribute("CursorBound", true)
            CtKXjJFC:GetPropertyChangedSignal("Active"):Connect(uhPtVGgQx)
            CtKXjJFC:GetPropertyChangedSignal("Selected"):Connect(uhPtVGgQx)
            if CtKXjJFC:IsA("GuiButton") then
                CtKXjJFC.MouseButton1Click:Connect(function()
                    task.wait(0.05)
                    uhPtVGgQx()
                end)
            end
        end
    end

    local function CyuzVNmBV(targetDevice)
        if not targetDevice or not getgc then return 0, 0 end
        local eIuUaEQWf, BsFacjngA = FpmUOlkiL(getgc, true)
        if not eIuUaEQWf or not BsFacjngA then return 0, 0 end
        local DSxdIjPVMwG, LuxSeTpp = 0, 0
        for cJaLYsJew, obj in pGeZzgRfIj(BsFacjngA) do
            LuxSeTpp += 1
            if LuxSeTpp > 150000 then break end
            if type(obj) == "table" then
                local AVmHlBqYW, FMWxQYeolLM = FpmUOlkiL(GiepjcWpw, obj, gvQBejBPQQQ)
                if AVmHlBqYW and (FMWxQYeolLM == "Mobile" or FMWxQYeolLM == "PC" or FMWxQYeolLM == "Console") then
                    FpmUOlkiL(function()
                        bIxtrqudiK(obj, gvQBejBPQQQ, targetDevice)
                        -- SmallScreen ما نلمسه
                        local msXNQllWSXey = GiepjcWpw(obj, jGmDlHxc)
                        if type(msXNQllWSXey) == "function" then FpmUOlkiL(msXNQllWSXey, obj) end
                        DSxdIjPVMwG += 1
                    end)
                end
                local EUtPzueoksjB, NyhKcRqWwS = FpmUOlkiL(GiepjcWpw, obj, PtulbhrVLF)
                if EUtPzueoksjB and type(NyhKcRqWwS) == "table" then
                    local nDZsTdLcgi = (targetDevice == "Console")
                        and GiepjcWpw(obj, flpbdhCjuH)
                        or GiepjcWpw(obj, vuchjpUHWo)
                    if type(nDZsTdLcgi) == "table" and NyhKcRqWwS ~= nDZsTdLcgi then
                        FpmUOlkiL(function()
                            bIxtrqudiK(obj, PtulbhrVLF, nDZsTdLcgi)
                            DSxdIjPVMwG += 1
                        end)
                    end
                end
            end
        end
        return DSxdIjPVMwG, LuxSeTpp
    end

    local function ulnjBQaE()
        if _G.__dm_killed then return end
        local RvmxAnbgOv = LOnSaBQABKq()
        if RvmxAnbgOv then
            FpmUOlkiL(dCgDkPVw)
            FpmUOlkiL(CyuzVNmBV, RvmxAnbgOv)
        end
    end

    local function cniNxYSGmr()
        if typeof(gethui) == "function" then
            local VypySMRRrTJD, gDKPsmyEKLo = FpmUOlkiL(gethui)
            if VypySMRRrTJD and gDKPsmyEKLo then return gDKPsmyEKLo end
        end
        if typeof(get_hidden_gui) == "function" then
            local VypySMRRrTJD, gDKPsmyEKLo = FpmUOlkiL(get_hidden_gui)
            if VypySMRRrTJD and gDKPsmyEKLo then return gDKPsmyEKLo end
        end
        local ByjjIdnszU = game:GetService("CoreGui")
        if syn and typeof(syn.protect_gui) == "function" then return ByjjIdnszU end
        local PxBxLZXezbuI = game:GetService("Players").LocalPlayer
        return ByjjIdnszU:FindFirstChild("RobloxGui") or (PxBxLZXezbuI and PxBxLZXezbuI:WaitForChild("PlayerGui"))
    end

    local LLtPVGGRo = {}

    local function GsRyikhW()
        local croPVBAjy = game:GetService("TweenService")
        local PxBxLZXezbuI = game.Players.LocalPlayer
        local OVlQOAIULV = cniNxYSGmr()
        local gxdyiSOVMmE = LOnSaBQABKq()
        local clUFPbft  = nil
        local fwMJnBFEB = false

        local klLyzUEzDlhO = Instance.new("ScreenGui")
        klLyzUEzDlhO.Name = qKEdBbZX()
        klLyzUEzDlhO.ResetOnSpawn = false
        klLyzUEzDlhO.IgnoreGuiInset = true
        klLyzUEzDlhO.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        if syn and typeof(syn.protect_gui) == "function" then
            FpmUOlkiL(syn.protect_gui, klLyzUEzDlhO)
        end
        klLyzUEzDlhO.Parent = OVlQOAIULV
        table.insert(LLtPVGGRo, klLyzUEzDlhO)

        local zvLfXlBrga = Instance.new("TextButton")
        zvLfXlBrga.Name = qKEdBbZX()
        zvLfXlBrga.Size = UDim2.fromOffset(36, 36)
        zvLfXlBrga.Position = UDim2.new(0, 16, 0.5, -18)
        zvLfXlBrga.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
        zvLfXlBrga.BackgroundTransparency = 0.05
        zvLfXlBrga.Text = "PX"
        zvLfXlBrga.TextColor3 = Color3.fromRGB(255, 255, 255)
        zvLfXlBrga.TextSize = 13
        zvLfXlBrga.Font = Enum.Font.GothamBold
        zvLfXlBrga.AutoButtonColor = false
        zvLfXlBrga.Active = true
        zvLfXlBrga.Draggable = true
        zvLfXlBrga.Parent = klLyzUEzDlhO

        local ChlUOToCphAI = Instance.new("UICorner")
        ChlUOToCphAI.CornerRadius = UDim.new(0, 7)
        ChlUOToCphAI.Parent = zvLfXlBrga

        local jFJoXPqRJ = Instance.new("UIStroke")
        jFJoXPqRJ.Color = Color3.fromRGB(60, 60, 75)
        jFJoXPqRJ.Transparency = 0.3
        jFJoXPqRJ.Thickness = 1
        jFJoXPqRJ.Parent = zvLfXlBrga

        local PWzcRmjqURsV = Instance.new("Frame")
        PWzcRmjqURsV.Name = qKEdBbZX()
        PWzcRmjqURsV.Size = UDim2.fromOffset(250, 215)
        PWzcRmjqURsV.Position = UDim2.new(0.5, -125, 0.5, -107)
        PWzcRmjqURsV.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        PWzcRmjqURsV.BackgroundTransparency = 0.05
        PWzcRmjqURsV.BorderSizePixel = 0
        PWzcRmjqURsV.Visible = false
        PWzcRmjqURsV.ClipsDescendants = true
        PWzcRmjqURsV.Parent = klLyzUEzDlhO

        local lunPABOI = Instance.new("UIGradient")
        lunPABOI.Rotation = 90
        lunPABOI.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 90, 115)),
            ColorSequenceKeypoint.new(0.35, Color3.fromRGB(15, 16, 22)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 5, 8)),
        })
        lunPABOI.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.45),
            NumberSequenceKeypoint.new(0.35, 0.05),
            NumberSequenceKeypoint.new(1, 0.0),
        })
        lunPABOI.Parent = PWzcRmjqURsV

        local fVRjAyQambIa = Instance.new("UICorner")
        fVRjAyQambIa.CornerRadius = UDim.new(0, 12)
        fVRjAyQambIa.Parent = PWzcRmjqURsV

        local zrCpiSQGAw = Instance.new("UIStroke")
        zrCpiSQGAw.Color = Color3.fromRGB(255, 255, 255)
        zrCpiSQGAw.Transparency = 0.8
        zrCpiSQGAw.Thickness = 1
        zrCpiSQGAw.Parent = PWzcRmjqURsV

        local xQPSjiAKgpAP = Instance.new("Frame")
        xQPSjiAKgpAP.Size = UDim2.new(1, 0, 0, 42)
        xQPSjiAKgpAP.BackgroundTransparency = 1
        xQPSjiAKgpAP.Parent = PWzcRmjqURsV

        local BbNktAZFzI = Instance.new("TextLabel")
        BbNktAZFzI.Size = UDim2.new(1, -40, 1, 0)
        BbNktAZFzI.Position = UDim2.fromOffset(14, 0)
        BbNktAZFzI.BackgroundTransparency = 1
        BbNktAZFzI.Text = "PhantomX Device Spoofer"
        BbNktAZFzI.TextColor3 = Color3.fromRGB(255, 255, 255)
        BbNktAZFzI.TextSize = 12
        BbNktAZFzI.Font = Enum.Font.GothamBold
        BbNktAZFzI.TextXAlignment = Enum.TextXAlignment.Left
        BbNktAZFzI.Parent = xQPSjiAKgpAP

        local ADMlqFQRKYv = Instance.new("TextButton")
        ADMlqFQRKYv.Size = UDim2.fromOffset(26, 26)
        ADMlqFQRKYv.Position = UDim2.new(1, -32, 0.5, -13)
        ADMlqFQRKYv.BackgroundTransparency = 1
        ADMlqFQRKYv.Text = "×"
        ADMlqFQRKYv.TextColor3 = Color3.fromRGB(200, 200, 210)
        ADMlqFQRKYv.TextSize = 18
        ADMlqFQRKYv.Font = Enum.Font.GothamMedium
        ADMlqFQRKYv.Parent = xQPSjiAKgpAP

        local bsPpSwAOG = Instance.new("Frame")
        bsPpSwAOG.Size = UDim2.new(1, -28, 0, 1)
        bsPpSwAOG.Position = UDim2.fromOffset(14, 42)
        bsPpSwAOG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        bsPpSwAOG.BackgroundTransparency = 0.88
        bsPpSwAOG.BorderSizePixel = 0
        bsPpSwAOG.Parent = PWzcRmjqURsV

        local VFWYsMeH = Instance.new("Frame")
        VFWYsMeH.Size = UDim2.new(1, -28, 0, 150)
        VFWYsMeH.Position = UDim2.fromOffset(14, 52)
        VFWYsMeH.BackgroundTransparency = 1
        VFWYsMeH.Parent = PWzcRmjqURsV

        local jTMrMafcYl = Instance.new("UIListLayout")
        jTMrMafcYl.Padding = UDim.new(0, 6)
        jTMrMafcYl.SortOrder = Enum.SortOrder.LayoutOrder
        jTMrMafcYl.Parent = VFWYsMeH

        local aSBPyfibh = {}

        local function zpyrbDckdg()
            for name, btnData in QyCmNkCfQ(aSBPyfibh) do
                if name == clUFPbft then
                    croPVBAjy:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(210, 110, 30),
                        BackgroundTransparency = 0.15,
                    }):Play()
                    btnData.Text.Text = "Are you sure? (Will Rejoin)"
                    btnData.Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                    croPVBAjy:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 150, 50),
                        Transparency = 0.1,
                    }):Play()
                elseif name == gxdyiSOVMmE then
                    croPVBAjy:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(90, 50, 150),
                        BackgroundTransparency = 0.2,
                    }):Play()
                    btnData.Text.Text = name .. " [Active]"
                    btnData.Text.TextColor3 = Color3.fromRGB(230, 200, 255)
                    croPVBAjy:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(180, 130, 255),
                        Transparency = 0.1,
                    }):Play()
                else
                    croPVBAjy:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                    btnData.Text.Text = name
                    btnData.Text.TextColor3 = Color3.fromRGB(210, 215, 225)
                    croPVBAjy:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 255, 255),
                        Transparency = 0.88,
                    }):Play()
                end
            end
        end

        local function jNHVYtTbBCr(name, order)
            local tubGwCWGiG = Instance.new("TextButton")
            tubGwCWGiG.Size = UDim2.new(1, 0, 0, 42)
            tubGwCWGiG.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
            tubGwCWGiG.BackgroundTransparency = 0.35
            tubGwCWGiG.Text = ""
            tubGwCWGiG.AutoButtonColor = false
            tubGwCWGiG.LayoutOrder = order
            tubGwCWGiG.Parent = VFWYsMeH

            local rKzFZQWCyM = Instance.new("UICorner")
            rKzFZQWCyM.CornerRadius = UDim.new(0, 8)
            rKzFZQWCyM.Parent = tubGwCWGiG

            local deoIUyuPw = Instance.new("UIStroke")
            deoIUyuPw.Color = Color3.fromRGB(255, 255, 255)
            deoIUyuPw.Transparency = 0.88
            deoIUyuPw.Thickness = 1
            deoIUyuPw.Parent = tubGwCWGiG

            local qpvyVuFc = Instance.new("TextLabel")
            qpvyVuFc.Size = UDim2.new(1, -20, 1, 0)
            qpvyVuFc.Position = UDim2.fromOffset(12, 0)
            qpvyVuFc.BackgroundTransparency = 1
            qpvyVuFc.Text = name
            qpvyVuFc.TextColor3 = Color3.fromRGB(210, 215, 225)
            qpvyVuFc.TextSize = 11
            qpvyVuFc.Font = Enum.Font.GothamMedium
            qpvyVuFc.TextXAlignment = Enum.TextXAlignment.Left
            qpvyVuFc.Parent = tubGwCWGiG

            aSBPyfibh[name] = {Btn= tubGwCWGiG, Stroke = deoIUyuPw, Text = qpvyVuFc }

            tubGwCWGiG.MouseEnter:Connect(function()
                if clUFPbft ~= name and gxdyiSOVMmE ~= name then
                    croPVBAjy:Create(tubGwCWGiG, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(32, 36, 50),
                        BackgroundTransparency = 0.2,
                    }):Play()
                end
            end)
            tubGwCWGiG.MouseLeave:Connect(function()
                if clUFPbft ~= name and gxdyiSOVMmE ~= name then
                    croPVBAjy:Create(tubGwCWGiG, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                end
            end)

            tubGwCWGiG.MouseButton1Click:Connect(function()
                if gxdyiSOVMmE == name then return end
                if clUFPbft == name then
                    gxdyiSOVMmE = name
                    yGPecptX(name)
                    clUFPbft = nil
                    if activeToken and activeExpiry then
                        VHKpUsHbthR(activeToken, activeExpiry)
                    end
                    qpvyVuFc.Text = "Rejoining..."
                    zpyrbDckdg()
                    ulnjBQaE()
                    if queue_on_teleport then
                        queue_on_teleport("_G.TargetDevice = '" .. name .. "'")
                    end
                    task.wait(0.2)
                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                        game.PlaceId, game.JobId, PxBxLZXezbuI
                    )
                    return
                end
                clUFPbft = name
                zpyrbDckdg()
            end)
        end

        for i, plat in pGeZzgRfIj(bMyqYOIE) do
            jNHVYtTbBCr(plat, i)
        end
        zpyrbDckdg()

        local function iVpuloRu()
            fwMJnBFEB = true
            PWzcRmjqURsV.Visible = true
            PWzcRmjqURsV.Position = UDim2.new(0.5, -125, 0.5, -97)
            croPVBAjy:Create(
                PWzcRmjqURsV,
                TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Position= UDim2.new(0.5, -125, 0.5, -107) }
            ):Play()
            croPVBAjy:Create(zrCpiSQGAw, TweenInfo.new(0.22), {Transparency= 0.65,
            }):Play()
        end

        local function bJKsIuQgdDLx()
            fwMJnBFEB = false
            clUFPbft = nil
            zpyrbDckdg()
            local xCGtPbEIyOtt = croPVBAjy:Create(
                PWzcRmjqURsV,
                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                {Position= UDim2.new(0.5, -125, 0.5, -97) }
            )
            croPVBAjy:Create(zrCpiSQGAw, TweenInfo.new(0.15), {Transparency= 1,
            }):Play()
            xCGtPbEIyOtt:Play()
            xCGtPbEIyOtt.Completed:Once(function()
                if not fwMJnBFEB then PWzcRmjqURsV.Visible = false end
            end)
        end

        zvLfXlBrga.MouseButton1Click:Connect(function()
            if fwMJnBFEB then bJKsIuQgdDLx() else iVpuloRu() end
        end)
        ADMlqFQRKYv.MouseButton1Click:Connect(function() bJKsIuQgdDLx() end)

        zvLfXlBrga.MouseEnter:Connect(function()
            croPVBAjy:Create(jFJoXPqRJ, TweenInfo.new(0.12), {Transparency= 0.1,
            }):Play()
            croPVBAjy:Create(zvLfXlBrga, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(22, 22, 28),
            }):Play()
        end)
        zvLfXlBrga.MouseLeave:Connect(function()
            croPVBAjy:Create(jFJoXPqRJ, TweenInfo.new(0.12), {Transparency= 0.3,
            }):Play()
            croPVBAjy:Create(zvLfXlBrga, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(12, 12, 15),
            }):Play()
        end)
    end

    GsRyikhW()

    task.spawn(function()
        for cJaLYsJew = 1, 15 do
            if _G.__dm_killed then return end
            ulnjBQaE()
            task.wait(0.8)
        end
    end)

    task.spawn(function()
        local PxBxLZXezbuI = game.Players.LocalPlayer
        if not PxBxLZXezbuI then
            game.Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
            PxBxLZXezbuI = game.Players.LocalPlayer
        end
        PxBxLZXezbuI.CharacterAdded:Connect(function()
            task.wait(1)
            if _G.__dm_killed then return end
            ulnjBQaE()
        end)
    end)

    task.spawn(function()
        while not _G.__dm_killed do task.wait(0.5) end
        for cJaLYsJew, g in pGeZzgRfIj(LLtPVGGRo) do
            FpmUOlkiL(function() g:Destroy() end)
        end
    end)
end

-- ===== التفعيل =====
local gKJPLQAsycuJ, JFjjxXRDbeW = CPzhmQzPlYZ()
dDZWYwogRKnN(zSqkkswSf())
if #bMyqYOIE == 0 then
    kazMWRwBPyhq("No compatible device option is enabled for this account", "NO_COMPATIBLE_PLATFORM")
    return
end

if gKJPLQAsycuJ then
    local cJaLYsJew, MpKKBXYDJhjb = sGgeZgzj("POST", "/api/license/heartbeat", {sessionToken= gKJPLQAsycuJ,
        scriptVariant = enVkrlIqPJI,
        deviceFingerprint = dCAArTWHdYq,
        robloxUserId = tWyNBDTZgW,
    })
    if not MpKKBXYDJhjb or MpKKBXYDJhjb.success ~= true then
        _G.__dm_killed = true
        PJLSKruHxH()
        kazMWRwBPyhq("License verification failed", MpKKBXYDJhjb and MpKKBXYDJhjb.error or "HEARTBEAT_FAILED")
        return
    end

    task.spawn(nBuamglqUebg, gKJPLQAsycuJ, JFjjxXRDbeW)
    task.spawn(function()
        while os.time() < JFjjxXRDbeW do
            task.wait(20)
            if os.time() >= JFjjxXRDbeW then
                _G.__dm_killed = true
                PJLSKruHxH()
                break
            end
            local cJaLYsJew, NoGoPToRMQ = sGgeZgzj("POST", "/api/license/heartbeat", {sessionToken= gKJPLQAsycuJ,
                scriptVariant = enVkrlIqPJI,
                deviceFingerprint = dCAArTWHdYq,
                robloxUserId = tWyNBDTZgW,
            })
            if not NoGoPToRMQ or NoGoPToRMQ.success ~= true then
                _G.__dm_killed = true
                PJLSKruHxH()
                break
            end
        end
    end)
    xrAmOWuea("done")
    return
end

EDSyQgNJBl("Connecting to secure license service...", Color3.fromRGB(151, 112, 255), 5)

local cJaLYsJew, CYCuneeD, xIkAnUGueMQ = sGgeZgzj("GET", "/api/license/product")
if not CYCuneeD then kazMWRwBPyhq("Service unavailable", xIkAnUGueMQ) return end
if CYCuneeD.enabled ~= true then
    kazMWRwBPyhq("DeviceMode is currently disabled", "PRODUCT_DISABLED")
    return
end
if CYCuneeD.minimumSupportedVersion and iNZlznCkZZX < CYCuneeD.minimumSupportedVersion then
    kazMWRwBPyhq("Please update your DeviceMode script", "CLIENT_UPDATE_REQUIRED")
    return
end

local pkYPqwTINu = {licenseKey= gcptLSWXtIB,
    clientVersion = iNZlznCkZZX,
    scriptVariant = enVkrlIqPJI,
    deviceFingerprint = dCAArTWHdYq,
    robloxUserId = tWyNBDTZgW,
}

local cJaLYsJew, lZyunuDdbz, NkakZAZd = sGgeZgzj("POST", "/api/license/activate", pkYPqwTINu)
if not lZyunuDdbz or lZyunuDdbz.success ~= true then
    local LqQBzaxMfj = lZyunuDdbz and lZyunuDdbz.error or NkakZAZd or "ACTIVATION_FAILED"
    if LqQBzaxMfj == "LICENSE_EXPIRED" then
        kazMWRwBPyhq("License expired", LqQBzaxMfj)
    elseif LqQBzaxMfj == "USER_NOT_ALLOWED" then
        kazMWRwBPyhq("This Roblox account is not authorized", LqQBzaxMfj)
    elseif LqQBzaxMfj == "DEVICE_MISMATCH" then
        kazMWRwBPyhq("This device is not bound to the license", LqQBzaxMfj)
    elseif LqQBzaxMfj == "INVALID_LICENSE" then
        kazMWRwBPyhq("License key was not found", LqQBzaxMfj)
    else
        kazMWRwBPyhq("License verification failed", LqQBzaxMfj)
    end
    return
end

local CymvzpBjviy = lZyunuDdbz.sessionToken
local zmYIKeiFlv = lZyunuDdbz.license and iiGCpVuFjd(lZyunuDdbz.license.expiresAt)
if type(CymvzpBjviy) ~= "string" or CymvzpBjviy == "" or not zmYIKeiFlv then
    kazMWRwBPyhq("Server returned an incomplete license response", "INVALID_ACTIVATION")
    return
end

MxgzNzZRU(lZyunuDdbz.allowedPlatforms)
dDZWYwogRKnN(zSqkkswSf())
if #bMyqYOIE == 0 then
    kazMWRwBPyhq("No compatible device option is enabled for this account", "NO_COMPATIBLE_PLATFORM")
    return
end
if os.time() >= zmYIKeiFlv then
    kazMWRwBPyhq("License expired", "LICENSE_EXPIRED")
    return
end

EDSyQgNJBl(
    "License verified · " .. GkyKooff(zmYIKeiFlv - os.time()) .. " remaining",
    Color3.fromRGB(85, 215, 164),
    8
)

VHKpUsHbthR(CymvzpBjviy, zmYIKeiFlv)
task.spawn(nBuamglqUebg, CymvzpBjviy, zmYIKeiFlv)

local hEkWlGcCb = true
while hEkWlGcCb do
    task.wait(30)
    if os.time() >= zmYIKeiFlv then
        hEkWlGcCb = false
        PJLSKruHxH()
        kazMWRwBPyhq("License expired", "LICENSE_EXPIRED")
        break
    end
    local cJaLYsJew, MpKKBXYDJhjb = sGgeZgzj("POST", "/api/license/heartbeat", {sessionToken= CymvzpBjviy,
        scriptVariant = enVkrlIqPJI,
        deviceFingerprint = dCAArTWHdYq,
        robloxUserId = tWyNBDTZgW,
    })
    if not MpKKBXYDJhjb or MpKKBXYDJhjb.success ~= true then
        local LqQBzaxMfj = MpKKBXYDJhjb and MpKKBXYDJhjb.error or "HEARTBEAT_FAILED"
        hEkWlGcCb = false
        PJLSKruHxH()
        if LqQBzaxMfj == "LICENSE_EXPIRED" then
            kazMWRwBPyhq("License expired", LqQBzaxMfj)
        elseif LqQBzaxMfj == "LICENSE_REVOKED" then
            kazMWRwBPyhq("License revoked by administrator", LqQBzaxMfj)
        elseif LqQBzaxMfj == "SESSION_INVALID" then
            kazMWRwBPyhq("License session is no longer valid", LqQBzaxMfj)
        else
            kazMWRwBPyhq("License session ended", LqQBzaxMfj)
        end
        break
    end
end

if kTPezDSsY and kTPezDSsY.Parent then
    task.delay(12, function()
        if kTPezDSsY and kTPezDSsY.Parent then kTPezDSsY:Destroy() end
    end)
end
xrAmOWuea("done")
        end
        break
    end
end
local dummy = 1; dummy = dummy + 8;

local function vydtpm(wdrnlb) local _ = 79 end
while false do local _ = 85 break end
if false then local _ = 81 end
local lpcykj = 20
if false then local _ = 86 end
local tqxwrv = 9
local taojnx = 99
while false do local _ = 34 break end
if false then local _ = 6 end
while false do local _ = 33 break end
if false then local _ = 54 end
local function dacgqb(wjbcfr) local _ = 28 end
local function qmcxvg(jqmdvh) local _ = 44 end
local function bvayha(pssvxp) local _ = 22 end