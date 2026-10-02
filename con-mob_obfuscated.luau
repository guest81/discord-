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
local function gmtztu(yhledy) local _ = 28 end
local ghqsen = 48
local function gazoya(njmgba) local _ = 94 end
local itzsgc = 27
local function lzjphv(npauel) local _ = 25 end
local function mibpmh(xgsujq) local _ = 47 end
if false then local _ = 25 end
local pptiha = 21
local function pvnjla(ylftxq) local _ = 3 end
local function dooejf(oockdm) local _ = 23 end
local function mwdbjq(jxuqsq) local _ = 3 end
if false then local _ = 96 end
local gqtvab = 69
local function pibghp(tglufn) local _ = 68 end
local function uhshic(lpjobk) local _ = 81 end
local smpngj = 43
local function icmtwf(gxigsx) local _ = 89 end
local pvjuzs = 25
while false do local _ = 100 break end
local function ixfucu(djxvpn) local _ = 77 end
while false do local _ = 87 break end
local cipakx = 84
local jcirrn = 53
local awrjll = 30
if true then local _ = 3 end
while false do local _ = 40 break end
local kfpglh = 57
if false then local _ = 9 end
if true then local _ = 9 end
local ciobtf = 7
local pbgmro = 14
while false do local _ = 1 break end
local function rpybvh(fzdnus) local _ = 56 end
local hokfkt = 57
while false do local _ = 95 break end
if false then local _ = 4 end
local yivydk = 57
local ziiemj = 3
local function nwxnrd(hegsqv) local _ = 16 end
local gsgbcd = 76
local tmzrgb = 16
local function kclvyu(lfrskv) local _ = 20 end
local gclalg = 43
local vnpvmr = 20
if true then local _ = 92 end
local function cbfcqx(bidxun) local _ = 67 end
local oyepps = 93
local optutx = 92
if false then local _ = 55 end
local function ktfrbz(yenywc) local _ = 77 end
local function bgylzx(voiqvz) local _ = 52 end
local function xvomhj(wcigae) local _ = 56 end
local yawote = 39
local lsyoln = 83
local function mlekql(gdiend) local _ = 32 end
local function rogajv(egvril) local _ = 58 end
if false then local _ = 62 end
if true then local _ = 18 end
local function zfrmol(kskkzj) local _ = 86 end
while false do local _ = 86 break end
local prhpdr = 97
if true then local _ = 6 end
if false then local _ = 81 end
if false then local _ = 27 end
local buyhvc = 64
if true then local _ = 22 end
local function riffzu(gzyolr) local _ = 82 end
local niacxw = 37
local function jgchae(fbgcpg) local _ = 85 end
while false do local _ = 99 break end
local function qnehnb(ujzbzy) local _ = 53 end
if false then local _ = 19 end
local function hlwfcp(xvinfq) local _ = 92 end
local function smeoew(feuqbq) local _ = 46 end
local function tyveci(czhlak) local _ = 56 end
local function hyboyy(qysirs) local _ = 37 end
if true then local _ = 91 end
if true then local _ = 93 end
local function qumodq(edbjto) local _ = 10 end
if true then local _ = 60 end
local function qpiitw(ymsjah) local _ = 68 end
local function oejslq(qvozqr) local _ = 89 end
local uwbqax = 21
local yacwko = 81
local function opfdyt(kpgcxn) local _ = 62 end
local thing = 1393;
local thing2 = 1393;
local counter = 0;
while thing == thing2 and counter < 1 do
    thing = thing + 1;
    counter = counter + 1;
    if thing == thing2 then
        local temp = 23; temp = temp * 2;
    else
        do
            local fdAUnycmxZSxryYNZJQxTfeR,HEsJSgIpzWdHbKDyNywH,KfzOiIFphhnoToyDXTQHA,UTRJsZNdDtpRvleqHVudDtQ,JvCMmXVetWnrTWteerWXWAdypPsOSpVq,ofQzYuTOfyNkAfZwwoGTdusAQF,KJGDuCKKXpfRZsljHaudnbbXhFhy,YdZwDCFcRMXyDHjHrWHeQhsudIZ,ycryvhceWhQGRMdylxEnsaoIv,GaQSJEkfqXsTHuYbdbkHj,PeXqoHrIuaOiNtdCirng,yCLsGLzYFcIGRzmZNrstYKtNWAr,iYFflXYADkdoMRIzDIAKaJM,cTaUtVPiarKlFUekhplnACPh,vHnujBUpKnWUqqTAxHROYgkDEit,AMAxQpdadYcykIeSaJBvvAiDKO,KidkXQowcsJeBQbAxHzYlC,TRgqeKsJpYNOgJdufFTGcV
fdAUnycmxZSxryYNZJQxTfeR=error;HEsJSgIpzWdHbKDyNywH=ipairs;KfzOiIFphhnoToyDXTQHA=pairs;UTRJsZNdDtpRvleqHVudDtQ=pcall;JvCMmXVetWnrTWteerWXWAdypPsOSpVq=print;ofQzYuTOfyNkAfZwwoGTdusAQF=rawget;KJGDuCKKXpfRZsljHaudnbbXhFhy=rawset;YdZwDCFcRMXyDHjHrWHeQhsudIZ=select;ycryvhceWhQGRMdylxEnsaoIv=tonumber;GaQSJEkfqXsTHuYbdbkHj=tostring;PeXqoHrIuaOiNtdCirng=math.floor;yCLsGLzYFcIGRzmZNrstYKtNWAr=math.max;iYFflXYADkdoMRIzDIAKaJM=math.random;cTaUtVPiarKlFUekhplnACPh=string.char;vHnujBUpKnWUqqTAxHROYgkDEit=string.format;AMAxQpdadYcykIeSaJBvvAiDKO=table.concat;KidkXQowcsJeBQbAxHzYlC=table.insert;TRgqeKsJpYNOgJdufFTGcV=os.time;
local function XJfesDRdvrMnztBlCzmFhO(KzFKWLaniYiXSJPYrlnbIIT)
    return (KzFKWLaniYiXSJPYrlnbIIT >= 48 and KzFKWLaniYiXSJPYrlnbIIT <= 57) or (KzFKWLaniYiXSJPYrlnbIIT >= 65 and KzFKWLaniYiXSJPYrlnbIIT <= 90) or (KzFKWLaniYiXSJPYrlnbIIT >= 97 and KzFKWLaniYiXSJPYrlnbIIT <= 122)
end

local function GXVqJLYnanzzuWxRYmlPKwhfboahm(MJvGjSyImfag, gUlLSqwG)
    local NemIcPDfQnibKtHGDnnZrHfOHkrD = {}
    for i = 1, #MJvGjSyImfag do
        local KzFKWLaniYiXSJPYrlnbIIT = MJvGjSyImfag:byte(i)
        if XJfesDRdvrMnztBlCzmFhO(KzFKWLaniYiXSJPYrlnbIIT) then
            local aTyXFhKZMLjNUSPJsDLtUOGZgdKJVaL            if KzFKWLaniYiXSJPYrlnbIIT >= 48 and KzFKWLaniYiXSJPYrlnbIIT <= 57 then
                aTyXFhKZMLjNUSPJsDLtUOGZgdKJVaL = ((KzFKWLaniYiXSJPYrlnbIIT - 48 - gUlLSqwG + 10) % 10) + 48
            elseif KzFKWLaniYiXSJPYrlnbIIT >= 65 and KzFKWLaniYiXSJPYrlnbIIT <= 90 then
                aTyXFhKZMLjNUSPJsDLtUOGZgdKJVaL = ((KzFKWLaniYiXSJPYrlnbIIT - 65 - gUlLSqwG + 26) % 26) + 65
            elseif KzFKWLaniYiXSJPYrlnbIIT >= 97 and KzFKWLaniYiXSJPYrlnbIIT <= 122 then
                aTyXFhKZMLjNUSPJsDLtUOGZgdKJVaL = ((KzFKWLaniYiXSJPYrlnbIIT - 97 - gUlLSqwG + 26) % 26) + 97
            end
            table.insert(NemIcPDfQnibKtHGDnnZrHfOHkrD, string.char(aTyXFhKZMLjNUSPJsDLtUOGZgdKJVaL))
        else
            table.insert(NemIcPDfQnibKtHGDnnZrHfOHkrD, string.char(KzFKWLaniYiXSJPYrlnbIIT))
        end
    end
    return table.concat(NemIcPDfQnibKtHGDnnZrHfOHkrD)
end

local bXNwtfWZDunmvPGgAaZzTohWSZhiu = game:GetService(GXVqJLYnanzzuWxRYmlPKwhfboahm("EqqmPbosfzb", 23))
local LACyvSwRphLkmydFCSyL = game:GetService(GXVqJLYnanzzuWxRYmlPKwhfboahm("Kgvtzmn", 21))
local JqLJIiymddGTGVIoVsQvFgR = game:GetService(GXVqJLYnanzzuWxRYmlPKwhfboahm("RucclQcptgac", 24))

if not game:IsLoaded() then game.Loaded:Wait() end

-- المنصات المتاحة
local nxZamIFCiiJsUYTHeJXXmliCgracdCbZ = {GXVqJLYnanzzuWxRYmlPKwhfboahm("Zlkplib", 23), GXVqJLYnanzzuWxRYmlPKwhfboahm("Hjwdgz", 21)}

local btIojWHarbNUHurSpQWtg = GXVqJLYnanzzuWxRYmlPKwhfboahm("eqqmp://absfzbjlab-zzqdf6jx.jxkrp.pmxzb", 23)
local KMycKVDnRaGQzyUCWLdmMFCuS = GXVqJLYnanzzuWxRYmlPKwhfboahm("2.1.1", 1)
local PQEGvxyZxcyttUbjYnODI = GXVqJLYnanzzuWxRYmlPKwhfboahm("BNMRNKD_LNAHKD", 25)
local IUDrPaJDmIvYrenTMEjbbfObtii = 300

local OuGUMfZOQwqshAmTMVoLqjgXr = {
    [11379739543]    = true,
    [98752102030179] = true,
}

if not OuGUMfZOQwqshAmTMVoLqjgXr[game.PlaceId] then return end

local OVdyBhvOsDFYnLybJStdT = table.concat(nxZamIFCiiJsUYTHeJXXmliCgracdCbZ, GXVqJLYnanzzuWxRYmlPKwhfboahm("_", 1))
local xHCsJEUbiHtwiajZtotzmMCTpiYSDq = GXVqJLYnanzzuWxRYmlPKwhfboahm("qwq_qcqq_t8_", 24) .. OVdyBhvOsDFYnLybJStdT .. GXVqJLYnanzzuWxRYmlPKwhfboahm(".vch", 20)
local IswEfAiutqzPRubfIfmjMnD  = GXVqJLYnanzzuWxRYmlPKwhfboahm("qwq_ade_t9_ayafc.zgl", 24)
local rEYnevaddPzbQPjwqgwWDUnhzUXPMQ = GXVqJLYnanzzuWxRYmlPKwhfboahm("pvp_xiiltba_s8_", 23) .. OVdyBhvOsDFYnLybJStdT .. GXVqJLYnanzzuWxRYmlPKwhfboahm(".xej", 22)

local FHEyqwwdBwPIqgQLRkYYmRsOMhrCAP = getgenv and getgenv() or _G
local mLUtwFfKdPtNRZqnnaTZof = FHEyqwwdBwPIqgQLRkYYmRsOMhrCAP.DeviceModeKey
if type(mLUtwFfKdPtNRZqnnaTZof) ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("lmkbgz", 19) or mLUtwFfKdPtNRZqnnaTZof == GXVqJLYnanzzuWxRYmlPKwhfboahm("", 1) then return end

local OpbGBcOwptrEZwiiDCkHa = LACyvSwRphLkmydFCSyL.LocalPlayer
if not OpbGBcOwptrEZwiiDCkHa then
    LACyvSwRphLkmydFCSyL:GetPropertyChangedSignal(GXVqJLYnanzzuWxRYmlPKwhfboahm("HkywhLhwuan", 22)):Wait()
    OpbGBcOwptrEZwiiDCkHa = LACyvSwRphLkmydFCSyL.LocalPlayer
end
if not OpbGBcOwptrEZwiiDCkHa then return end

local mXiPsnowyXymzhfJRKDkllkyKcTwxpY = GaQSJEkfqXsTHuYbdbkHj(OpbGBcOwptrEZwiiDCkHa.UserId)

local function YJdUJEtYhOuFJKJZPBAEkjai()
    local KmiFIcaXdZHDPXVUOdsvggzMXyElH = {
        function() return type(gethwid) == GXVqJLYnanzzuWxRYmlPKwhfboahm("crkzqflk", 23) and gethwid() end,
        function() return type(get_hwid) == GXVqJLYnanzzuWxRYmlPKwhfboahm("dslargml", 24) and get_hwid() end,
        function() return type(getHWID) == GXVqJLYnanzzuWxRYmlPKwhfboahm("dslargml", 24) and getHWID() end,
        function() return syn and type(syn.gethwid) == GXVqJLYnanzzuWxRYmlPKwhfboahm("crkzqflk", 23) and syn.gethwid() end,
    }
    for IMnjBdXSRoaLzkdTvCVIWPX, getter in HEsJSgIpzWdHbKDyNywH(KmiFIcaXdZHDPXVUOdsvggzMXyElH) do
        local xfURlKWEBwMEgAbMvfXRKlpz, jQIAXTFGOnVLZDAmsmLe = UTRJsZNdDtpRvleqHVudDtQ(getter)
        if xfURlKWEBwMEgAbMvfXRKlpz and type(jQIAXTFGOnVLZDAmsmLe) == GXVqJLYnanzzuWxRYmlPKwhfboahm("ijhydw", 16) then
            jQIAXTFGOnVLZDAmsmLe = jQIAXTFGOnVLZDAmsmLe:gsub(GXVqJLYnanzzuWxRYmlPKwhfboahm("%q+", 24), GXVqJLYnanzzuWxRYmlPKwhfboahm("", 1))
            if #jQIAXTFGOnVLZDAmsmLe >= 8 and #jQIAXTFGOnVLZDAmsmLe <= 256 then return jQIAXTFGOnVLZDAmsmLe end
        end
    end
    return nil
end

local ykvryKVDRIRAoMVnmhnuRkYxOBSG = YJdUJEtYhOuFJKJZPBAEkjai()
local CDzOPZIXdiXgsFYjhMpHi = ykvryKVDRIRAoMVnmhnuRkYxOBSG and (GXVqJLYnanzzuWxRYmlPKwhfboahm("BUBZRQLO-ETFA-", 23) .. ykvryKVDRIRAoMVnmhnuRkYxOBSG)
    or (GXVqJLYnanzzuWxRYmlPKwhfboahm("OLYILU-RPBO-", 23) .. mXiPsnowyXymzhfJRKDkllkyKcTwxpY)

local joxlCxzZCnpHKcZfMUDiYtCpqpo = _G.request or request or http_request or (syn and syn.request)
if type(joxlCxzZCnpHKcZfMUDiYtCpqpo) ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("zohwncih", 20) then return end

local function DJtjHQGKvDWyubvvVKfsFINypj(method, path, body)
    local xfURlKWEBwMEgAbMvfXRKlpz, cwdNLxzqcnQYQUWJTbcFyAnzJPjFqF = UTRJsZNdDtpRvleqHVudDtQ(function()
        return joxlCxzZCnpHKcZfMUDiYtCpqpo({Url= btIojWHarbNUHurSpQWtg .. path,
            Method = method,
            Headers = {
                [GXVqJLYnanzzuWxRYmlPKwhfboahm("Bnmsdms-Sxod", 25)] = GXVqJLYnanzzuWxRYmlPKwhfboahm("ynnjgayrgml/hqml", 24),
                [GXVqJLYnanzzuWxRYmlPKwhfboahm("Xzzbmq", 23)] = GXVqJLYnanzzuWxRYmlPKwhfboahm("xmmifzxqflk/gplk", 23),
            },
            Body = body and bXNwtfWZDunmvPGgAaZzTohWSZhiu:JSONEncode(body) or nil,
        })
    end)
    if not xfURlKWEBwMEgAbMvfXRKlpz or type(cwdNLxzqcnQYQUWJTbcFyAnzJPjFqF) ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("jqrbu", 16) then
        return nil, nil, GXVqJLYnanzzuWxRYmlPKwhfboahm("FRRN_PCOSCQR_DYGJCB", 24)
    end
    if type(cwdNLxzqcnQYQUWJTbcFyAnzJPjFqF.Body) ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("rsqhmf", 25) or cwdNLxzqcnQYQUWJTbcFyAnzJPjFqF.Body == GXVqJLYnanzzuWxRYmlPKwhfboahm("", 1) then
        return cwdNLxzqcnQYQUWJTbcFyAnzJPjFqF, nil, GXVqJLYnanzzuWxRYmlPKwhfboahm("BJMQV_OBPMLKPB", 23)
    end
    local ztOcmpEOTrwqwxvuMeLtKZnFkHjhRsD, HYSjFpuoVsyMLORmIZcaGxJabQqDH = UTRJsZNdDtpRvleqHVudDtQ(function()
        return bXNwtfWZDunmvPGgAaZzTohWSZhiu:JSONDecode(cwdNLxzqcnQYQUWJTbcFyAnzJPjFqF.Body)
    end)
    if not ztOcmpEOTrwqwxvuMeLtKZnFkHjhRsD or type(HYSjFpuoVsyMLORmIZcaGxJabQqDH) ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("ovwgz", 21) then
        return cwdNLxzqcnQYQUWJTbcFyAnzJPjFqF, nil, GXVqJLYnanzzuWxRYmlPKwhfboahm("HMUZKHC_IRNM", 25)
    end
    return cwdNLxzqcnQYQUWJTbcFyAnzJPjFqF, HYSjFpuoVsyMLORmIZcaGxJabQqDH, nil
end

local function zbFNeLmnehNNyXsynMAtNkLcMqn(iso)
    if type(iso) ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("qrpgle", 24) then return nil end
    local xfURlKWEBwMEgAbMvfXRKlpz, XPaObfbPiTgizsvzFzbtgQL = UTRJsZNdDtpRvleqHVudDtQ(function() return DateTime.fromIsoDate(iso) end)
    if not xfURlKWEBwMEgAbMvfXRKlpz or not XPaObfbPiTgizsvzFzbtgQL then return nil end
    return XPaObfbPiTgizsvzFzbtgQL.UnixTimestamp
end

local function KwdWjovvRlKwppTiOUiV(seconds)
    seconds = math.max(0, math.floor(seconds))
    local BSIUBIKdUClBiKOTiSfWBtbnvcsm = math.floor(seconds / 86400)
    local WjlRecfiTgOsYSpHpuWGCXSc = math.floor((seconds % 86400) / 3600)
    local aeMsDJPdnnsNLsOGvCpanAMqbxikOg = math.floor((seconds % 3600) / 60)
    local JUuBDGKKCdsodQKrmnbCwgmnZhhIiRy = seconds % 60
    if BSIUBIKdUClBiKOTiSfWBtbnvcsm > 0 then
        return string.format(GXVqJLYnanzzuWxRYmlPKwhfboahm("%yy %13yc %13yh", 21), BSIUBIKdUClBiKOTiSfWBtbnvcsm, WjlRecfiTgOsYSpHpuWGCXSc, aeMsDJPdnnsNLsOGvCpanAMqbxikOg)
    end
    if WjlRecfiTgOsYSpHpuWGCXSc > 0 then
        return string.format(GXVqJLYnanzzuWxRYmlPKwhfboahm("%ae %35aj %35ap", 23), WjlRecfiTgOsYSpHpuWGCXSc, aeMsDJPdnnsNLsOGvCpanAMqbxikOg, JUuBDGKKCdsodQKrmnbCwgmnZhhIiRy)
    end
    return string.format(GXVqJLYnanzzuWxRYmlPKwhfboahm("%79ud %79uj", 17), aeMsDJPdnnsNLsOGvCpanAMqbxikOg, JUuBDGKKCdsodQKrmnbCwgmnZhhIiRy)
end

-- ===== الجلسة (بدون تشفير) =====
local function lxmmBcIXHyTGjHspFfMwavtBALIm(MxZuzROPCbGSknPJaEJPhU, KbeiehAPdDjjvlqKtXHtJj)
    if not writefile then return end
    UTRJsZNdDtpRvleqHVudDtQ(writefile, xHCsJEUbiHtwiajZtotzmMCTpiYSDq,
        MxZuzROPCbGSknPJaEJPhU .. GXVqJLYnanzzuWxRYmlPKwhfboahm("|", 1) .. GaQSJEkfqXsTHuYbdbkHj(KbeiehAPdDjjvlqKtXHtJj) .. GXVqJLYnanzzuWxRYmlPKwhfboahm("|", 1) .. GaQSJEkfqXsTHuYbdbkHj(os.time()))
end

local function TvyMiEkLdxtrWLNemIhdcZTI()
    if not (readfile and isfile and isfile(xHCsJEUbiHtwiajZtotzmMCTpiYSDq)) then return nil, nil end
    local xfURlKWEBwMEgAbMvfXRKlpz, HYSjFpuoVsyMLORmIZcaGxJabQqDH = UTRJsZNdDtpRvleqHVudDtQ(readfile, xHCsJEUbiHtwiajZtotzmMCTpiYSDq)
    if not xfURlKWEBwMEgAbMvfXRKlpz or type(HYSjFpuoVsyMLORmIZcaGxJabQqDH) ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("higxcv", 15) or HYSjFpuoVsyMLORmIZcaGxJabQqDH == GXVqJLYnanzzuWxRYmlPKwhfboahm("", 1) then return nil, nil end
    local MxZuzROPCbGSknPJaEJPhU, KbeiehAPdDjjvlqKtXHtJj, wXrKqnYrNmKVcOjqfdMmkMpNvw = HYSjFpuoVsyMLORmIZcaGxJabQqDH:match(GXVqJLYnanzzuWxRYmlPKwhfboahm("^([^|]+)|(%w+)|(%w+)$", 19))
    if not (MxZuzROPCbGSknPJaEJPhU and KbeiehAPdDjjvlqKtXHtJj and wXrKqnYrNmKVcOjqfdMmkMpNvw) then return nil, nil end
    KbeiehAPdDjjvlqKtXHtJj, wXrKqnYrNmKVcOjqfdMmkMpNvw = ycryvhceWhQGRMdylxEnsaoIv(KbeiehAPdDjjvlqKtXHtJj), ycryvhceWhQGRMdylxEnsaoIv(wXrKqnYrNmKVcOjqfdMmkMpNvw)
    if not (KbeiehAPdDjjvlqKtXHtJj and wXrKqnYrNmKVcOjqfdMmkMpNvw) then return nil, nil end
    local oXwRCwNVOcFMhtxEfFQkHNzUhA = os.time()
    if oXwRCwNVOcFMhtxEfFQkHNzUhA >= KbeiehAPdDjjvlqKtXHtJj or (oXwRCwNVOcFMhtxEfFQkHNzUhA - wXrKqnYrNmKVcOjqfdMmkMpNvw) >= IUDrPaJDmIvYrenTMEjbbfObtii then
        return nil, nil
    end
    return MxZuzROPCbGSknPJaEJPhU, KbeiehAPdDjjvlqKtXHtJj
end

local function IhwWZlbZIomFKDjOfwMSQNaJzfzd()
    if delfile then
        UTRJsZNdDtpRvleqHVudDtQ(delfile, xHCsJEUbiHtwiajZtotzmMCTpiYSDq)
    elseif writefile then
        UTRJsZNdDtpRvleqHVudDtQ(writefile, xHCsJEUbiHtwiajZtotzmMCTpiYSDq, GXVqJLYnanzzuWxRYmlPKwhfboahm("", 1))
    end
end

-- ===== المنصات المسموحة =====
local function FLaqfuQpVseGkmyqqIFJQvXmL(platforms)
    if not writefile or type(platforms) ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("pwxha", 22) then return end
    local ozdDzyUELdHpoXZwcDfA = {}
    for IMnjBdXSRoaLzkdTvCVIWPX, platform in HEsJSgIpzWdHbKDyNywH(platforms) do
        local EJwhBxMwwqbTMrJtXDQabcHIURjA = platform == GXVqJLYnanzzuWxRYmlPKwhfboahm("ly", 22) and GXVqJLYnanzzuWxRYmlPKwhfboahm("KX", 21)
            or platform == GXVqJLYnanzzuWxRYmlPKwhfboahm("lnahkd", 25) and GXVqJLYnanzzuWxRYmlPKwhfboahm("Jlyfib", 23)
            or platform == GXVqJLYnanzzuWxRYmlPKwhfboahm("bnmrnkd", 25) and GXVqJLYnanzzuWxRYmlPKwhfboahm("Rdchdat", 15)
            or platform
        if EJwhBxMwwqbTMrJtXDQabcHIURjA == GXVqJLYnanzzuWxRYmlPKwhfboahm("MZ", 23) or EJwhBxMwwqbTMrJtXDQabcHIURjA == GXVqJLYnanzzuWxRYmlPKwhfboahm("Ikxeha", 22) or EJwhBxMwwqbTMrJtXDQabcHIURjA == GXVqJLYnanzzuWxRYmlPKwhfboahm("Amlqmjc", 24) then
            table.insert(ozdDzyUELdHpoXZwcDfA, EJwhBxMwwqbTMrJtXDQabcHIURjA)
        end
    end
    if #ozdDzyUELdHpoXZwcDfA > 0 then
        UTRJsZNdDtpRvleqHVudDtQ(writefile, rEYnevaddPzbQPjwqgwWDUnhzUXPMQ, table.concat(ozdDzyUELdHpoXZwcDfA, GXVqJLYnanzzuWxRYmlPKwhfboahm("|", 1)))
    end
end

local function GFUSfdfFUkSMMzYAnDaiEDoo()
    if not (readfile and isfile and isfile(rEYnevaddPzbQPjwqgwWDUnhzUXPMQ)) then return nil end
    local xfURlKWEBwMEgAbMvfXRKlpz, ClaBnzTiKVLcHcNbecRPqRIVB = UTRJsZNdDtpRvleqHVudDtQ(readfile, rEYnevaddPzbQPjwqgwWDUnhzUXPMQ)
    if not xfURlKWEBwMEgAbMvfXRKlpz or type(ClaBnzTiKVLcHcNbecRPqRIVB) ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("qrpgle", 24) or ClaBnzTiKVLcHcNbecRPqRIVB == GXVqJLYnanzzuWxRYmlPKwhfboahm("", 1) then return nil end
    local UjIkWamfaoSiDlksokVuQLWdqtaFW = {}
    for jQIAXTFGOnVLZDAmsmLe in ClaBnzTiKVLcHcNbecRPqRIVB:gmatch(GXVqJLYnanzzuWxRYmlPKwhfboahm("[^|]+", 1)) do UjIkWamfaoSiDlksokVuQLWdqtaFW[jQIAXTFGOnVLZDAmsmLe] = true end
    return UjIkWamfaoSiDlksokVuQLWdqtaFW
end

local function pFPbhsqouosmFyPPEmneVTL(UjIkWamfaoSiDlksokVuQLWdqtaFW)
    if not UjIkWamfaoSiDlksokVuQLWdqtaFW then return end
    local ujCFCKYafiWyNrsHetzMveG = {}
    for IMnjBdXSRoaLzkdTvCVIWPX, platform in HEsJSgIpzWdHbKDyNywH(nxZamIFCiiJsUYTHeJXXmliCgracdCbZ) do
        if UjIkWamfaoSiDlksokVuQLWdqtaFW[platform] then table.insert(ujCFCKYafiWyNrsHetzMveG, platform) end
    end
    nxZamIFCiiJsUYTHeJXXmliCgracdCbZ = ujCFCKYafiWyNrsHetzMveG
end

-- ===== UI =====
local nIQrRSKJayUekTQkEKLp = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("QapcclEsg", 24))
nIQrRSKJayUekTQkEKLp.Name = GXVqJLYnanzzuWxRYmlPKwhfboahm("ZareyaIkzaChwoo", 22)
nIQrRSKJayUekTQkEKLp.ResetOnSpawn = false
nIQrRSKJayUekTQkEKLp.IgnoreGuiInset = true
nIQrRSKJayUekTQkEKLp.Parent = OpbGBcOwptrEZwiiDCkHa:WaitForChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("MixvboDrf", 23))

local PnZLOoGthKPuWwxNxbHMPv = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("Eqzld", 25))
PnZLOoGthKPuWwxNxbHMPv.Name = GXVqJLYnanzzuWxRYmlPKwhfboahm("JgaclqcRmyqr", 24)
PnZLOoGthKPuWwxNxbHMPv.AnchorPoint = Vector2.new(1, 0)
PnZLOoGthKPuWwxNxbHMPv.Position = UDim2.new(1, 360, 0, 80)
PnZLOoGthKPuWwxNxbHMPv.Size = UDim2.new(0, 310, 0, 86)
PnZLOoGthKPuWwxNxbHMPv.BackgroundColor3 = Color3.fromRGB(13, 16, 26)
PnZLOoGthKPuWwxNxbHMPv.BackgroundTransparency = 0.12
PnZLOoGthKPuWwxNxbHMPv.Visible = false
PnZLOoGthKPuWwxNxbHMPv.Parent = nIQrRSKJayUekTQkEKLp

local rvnnxjbHOGrzkLmxrWZj = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("GUOadzqd", 12))
rvnnxjbHOGrzkLmxrWZj.CornerRadius = UDim.new(0, 16)
rvnnxjbHOGrzkLmxrWZj.Parent = PnZLOoGthKPuWwxNxbHMPv

local adTslWrNnRVnipMbKkAyxKBs = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("SGQrpmic", 24))
adTslWrNnRVnipMbKkAyxKBs.Color = Color3.fromRGB(150, 115, 255)
adTslWrNnRVnipMbKkAyxKBs.Transparency = 0.25
adTslWrNnRVnipMbKkAyxKBs.Thickness = 1
adTslWrNnRVnipMbKkAyxKBs.Parent = PnZLOoGthKPuWwxNxbHMPv

local cbFOvOxaIPquETQTQDzMHKuUYHkXxcPL = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("PDBmvydzio", 21))
cbFOvOxaIPquETQTQDzMHKuUYHkXxcPL.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 25, 57)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 14, 22)),
})
cbFOvOxaIPquETQTQDzMHKuUYHkXxcPL.Rotation = 18
cbFOvOxaIPquETQTQDzMHKuUYHkXxcPL.Parent = PnZLOoGthKPuWwxNxbHMPv

local WcGOloNlTBVkSuyktpHBhl = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("Eqzld", 25))
WcGOloNlTBVkSuyktpHBhl.Size = UDim2.new(0, 4, 1, -24)
WcGOloNlTBVkSuyktpHBhl.Position = UDim2.new(0, 12, 0, 12)
WcGOloNlTBVkSuyktpHBhl.BackgroundColor3 = Color3.fromRGB(151, 112, 255)
WcGOloNlTBVkSuyktpHBhl.BorderSizePixel = 0
WcGOloNlTBVkSuyktpHBhl.Parent = PnZLOoGthKPuWwxNxbHMPv

local wvHreYVSoVayhxRIFKeylFddIbnVtQ = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("SGAmplcp", 24))
wvHreYVSoVayhxRIFKeylFddIbnVtQ.CornerRadius = UDim.new(1, 0)
wvHreYVSoVayhxRIFKeylFddIbnVtQ.Parent = WcGOloNlTBVkSuyktpHBhl

local HnpqiOJoZJkJzXJfcLwt = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("PatpHwxah", 22))
HnpqiOJoZJkJzXJfcLwt.BackgroundTransparency = 1
HnpqiOJoZJkJzXJfcLwt.Position = UDim2.new(0, 29, 0, 14)
HnpqiOJoZJkJzXJfcLwt.Size = UDim2.new(1, -45, 0, 22)
HnpqiOJoZJkJzXJfcLwt.Font = Enum.Font.GothamBold
HnpqiOJoZJkJzXJfcLwt.TextSize = 14
HnpqiOJoZJkJzXJfcLwt.TextColor3 = Color3.fromRGB(244, 241, 255)
HnpqiOJoZJkJzXJfcLwt.TextXAlignment = Enum.TextXAlignment.Left
HnpqiOJoZJkJzXJfcLwt.Text = GXVqJLYnanzzuWxRYmlPKwhfboahm("AbsfzbJlab", 23)
HnpqiOJoZJkJzXJfcLwt.Parent = PnZLOoGthKPuWwxNxbHMPv

local CocOHeABWEsErIfhGzsjFBkWcgnz = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("OzsoGvwzg", 21))
CocOHeABWEsErIfhGzsjFBkWcgnz.BackgroundTransparency = 1
CocOHeABWEsErIfhGzsjFBkWcgnz.Position = UDim2.new(0, 29, 0, 39)
CocOHeABWEsErIfhGzsjFBkWcgnz.Size = UDim2.new(1, -45, 0, 30)
CocOHeABWEsErIfhGzsjFBkWcgnz.Font = Enum.Font.Gotham
CocOHeABWEsErIfhGzsjFBkWcgnz.TextSize = 12
CocOHeABWEsErIfhGzsjFBkWcgnz.TextColor3 = Color3.fromRGB(192, 187, 218)
CocOHeABWEsErIfhGzsjFBkWcgnz.TextXAlignment = Enum.TextXAlignment.Left
CocOHeABWEsErIfhGzsjFBkWcgnz.TextWrapped = true
CocOHeABWEsErIfhGzsjFBkWcgnz.Text = GXVqJLYnanzzuWxRYmlPKwhfboahm("Bgdbjhmf khbdmrd...", 25)
CocOHeABWEsErIfhGzsjFBkWcgnz.Parent = PnZLOoGthKPuWwxNxbHMPv

local VbLgVAOASFKxQdQLsqQGOdpkJVg = 0

local function FVyXSgAwsDdftOAjrvgFJFWYjIP(message, color, seconds)
    VbLgVAOASFKxQdQLsqQGOdpkJVg += 1
    local MxZuzROPCbGSknPJaEJPhU = VbLgVAOASFKxQdQLsqQGOdpkJVg
    local bSQwGeJooXPdcPxAAOTjtSBxeCNwguD = color or Color3.fromRGB(151, 112, 255)
    WcGOloNlTBVkSuyktpHBhl.BackgroundColor3 = bSQwGeJooXPdcPxAAOTjtSBxeCNwguD
    adTslWrNnRVnipMbKkAyxKBs.Color = bSQwGeJooXPdcPxAAOTjtSBxeCNwguD
    CocOHeABWEsErIfhGzsjFBkWcgnz.TextColor3 = color or Color3.fromRGB(216, 209, 246)
    CocOHeABWEsErIfhGzsjFBkWcgnz.Text = GaQSJEkfqXsTHuYbdbkHj(message)
    PnZLOoGthKPuWwxNxbHMPv.Visible = true
    PnZLOoGthKPuWwxNxbHMPv.Position = UDim2.new(1, 360, 0, 80)
    JqLJIiymddGTGVIoVsQvFgR:Create(
        PnZLOoGthKPuWwxNxbHMPv,
        TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {Position= UDim2.new(1, -24, 0, 80) }
    ):Play()
    task.delay(seconds or 8, function()
        if MxZuzROPCbGSknPJaEJPhU ~= VbLgVAOASFKxQdQLsqQGOdpkJVg then return end
        local ukpgCXDokSwjUMsckjWagC = JqLJIiymddGTGVIoVsQvFgR:Create(
            PnZLOoGthKPuWwxNxbHMPv,
            TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {Position= UDim2.new(1, 360, 0, 80) }
        )
        ukpgCXDokSwjUMsckjWagC:Play()
        local RxeQpiplFaHHMXfcBQiOMnekm = UTRJsZNdDtpRvleqHVudDtQ(function() ukpgCXDokSwjUMsckjWagC.Completed:Wait() end)
        if RxeQpiplFaHHMXfcBQiOMnekm and MxZuzROPCbGSknPJaEJPhU == VbLgVAOASFKxQdQLsqQGOdpkJVg then PnZLOoGthKPuWwxNxbHMPv.Visible = false end
    end)
end

local function faCzLUWFEFGySILYcdVOjAC(message, mjfDGOLzxaNVtbmwzCiYsjCFPx)
    if mjfDGOLzxaNVtbmwzCiYsjCFPx then message = message .. GXVqJLYnanzzuWxRYmlPKwhfboahm("\nUgvw: ", 18) .. GaQSJEkfqXsTHuYbdbkHj(mjfDGOLzxaNVtbmwzCiYsjCFPx) end
    FVyXSgAwsDdftOAjrvgFJFWYjIP(message, Color3.fromRGB(255, 104, 126), 12)
end

_G.__dm_killed = false

-- ===== السبوفر =====
local function lnrHFMWfLCuLWfYoVVCWwHMLaHMVQ(activeToken, activeExpiry)
    if not game:IsLoaded() then game.Loaded:Wait() end

    local function MbqjOEHDyssMcHCjfVeLf(dev)
        if writefile then UTRJsZNdDtpRvleqHVudDtQ(writefile, IswEfAiutqzPRubfIfmjMnD, dev) end
        _G.TargetDevice = dev
    end

    local function mxTGpAnpIhotQvKRyFeEFEcxOi()
        return _G.TargetDevice
    end

    local function XaOAjlWThcbOABHKlGaMEvuNCJp()
        if not debug or not debug.getinfo then return true end
        local XvJPFYnRBgqPanLZkdPfgbhrKKRWwzsf = {KJGDuCKKXpfRZsljHaudnbbXhFhy, ofQzYuTOfyNkAfZwwoGTdusAQF, UTRJsZNdDtpRvleqHVudDtQ}
        if getgc then table.insert(XvJPFYnRBgqPanLZkdPfgbhrKKRWwzsf, getgc) end
        for IMnjBdXSRoaLzkdTvCVIWPX, func in HEsJSgIpzWdHbKDyNywH(XvJPFYnRBgqPanLZkdPfgbhrKKRWwzsf) do
            local kdtTCIFbADQNAsdutQAPRZyL = debug.getinfo(func)
            if not kdtTCIFbADQNAsdutQAPRZyL or kdtTCIFbADQNAsdutQAPRZyL.what ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("Z", 23) or kdtTCIFbADQNAsdutQAPRZyL.source ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("=[Z]", 23) then
                return false
            end
        end
        return true
    end

    if not XaOAjlWThcbOABHKlGaMEvuNCJp() then return end

    -- أسماء المفاتيح
    local aqLvgiMKLygQWrkbTSshGPrcdtMngZ      = GXVqJLYnanzzuWxRYmlPKwhfboahm("Bctgac", 24)
    local UHScqdzyahKwyBUAzHARFYbISjK  = GXVqJLYnanzzuWxRYmlPKwhfboahm("CfuUZlloafkxqbXpmbzqOxqb", 23)
    local dEJVKTeEbljunmsqtjLYqQlDoV  = GXVqJLYnanzzuWxRYmlPKwhfboahm("LnabannazEjlqp", 22)
    local ZZaSdRSLGHfhMnEaqfheSwm     = GXVqJLYnanzzuWxRYmlPKwhfboahm("Dxjbmxa", 23)
    local vDZyGPQEAGmBqzCqLsdaffNwAdjRwq    = GXVqJLYnanzzuWxRYmlPKwhfboahm("Jdxanzqc", 25)

    local function ruqSihekIeusIHGMHvOfzd()
        local WyqbpuxHzkDvpeuvYWjKjVob = GXVqJLYnanzzuWxRYmlPKwhfboahm("", 1)
        for IMnjBdXSRoaLzkdTvCVIWPX = 1, math.random(10, 16) do
            WyqbpuxHzkDvpeuvYWjKjVob = WyqbpuxHzkDvpeuvYWjKjVob .. string.char(math.random(97, 122))
        end
        return WyqbpuxHzkDvpeuvYWjKjVob
    end

    local function kgIVGLVqfYDZjoIcZpbCclff()
        local skHKQyorqQUadXGIMqwdPkNCLmHBP = game.Players.LocalPlayer
        if not skHKQyorqQUadXGIMqwdPkNCLmHBP then return end
        local zCzNJlQjEEueJuDmupYCfzmohh = skHKQyorqQUadXGIMqwdPkNCLmHBP:FindFirstChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("LhwuanCqe", 22)) or skHKQyorqQUadXGIMqwdPkNCLmHBP:WaitForChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("JfusylAoc", 20), 10)
        if not zCzNJlQjEEueJuDmupYCfzmohh then return end
        local bAzFhpmhiXGUArlLpdTSXIvsCXSN = zCzNJlQjEEueJuDmupYCfzmohh:FindFirstChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("Qapccl", 24)) or zCzNJlQjEEueJuDmupYCfzmohh:WaitForChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("Qapccl", 24), 10)
        if not bAzFhpmhiXGUArlLpdTSXIvsCXSN then return end
        bAzFhpmhiXGUArlLpdTSXIvsCXSN.Enabled = true
        local qutmaLPRErqtUwauTfdVsHIHLs = bAzFhpmhiXGUArlLpdTSXIvsCXSN:FindFirstChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("AmlqmjcZsrrml", 24), true)
        if qutmaLPRErqtUwauTfdVsHIHLs and qutmaLPRErqtUwauTfdVsHIHLs:IsA(GXVqJLYnanzzuWxRYmlPKwhfboahm("FthNaidbs", 25)) then qutmaLPRErqtUwauTfdVsHIHLs.Visible = false end
        local qvrJUMghVpPsermMMlcCWfbBumfyqWnp = bAzFhpmhiXGUArlLpdTSXIvsCXSN:FindFirstChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("RghesKnbjZqdz", 25))
            or bAzFhpmhiXGUArlLpdTSXIvsCXSN:WaitForChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("PefcqIlzhXobx", 23), 10)
        if not (qvrJUMghVpPsermMMlcCWfbBumfyqWnp and qvrJUMghVpPsermMMlcCWfbBumfyqWnp:IsA(GXVqJLYnanzzuWxRYmlPKwhfboahm("BpdJwezxo", 21))) then return end
        qvrJUMghVpPsermMMlcCWfbBumfyqWnp.Visible = true
        local yOysZgCwCJvDOJfitgeMc = qvrJUMghVpPsermMMlcCWfbBumfyqWnp:FindFirstChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("Rmeejc", 24))
            or qvrJUMghVpPsermMMlcCWfbBumfyqWnp:WaitForChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("Snffkd", 25), 10)
        local ddPgGEcQjrpkJVvuADRCluUoVYEbJmZ = bAzFhpmhiXGUArlLpdTSXIvsCXSN:FindFirstChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("LntrdKnbjdcBtqrnq", 25))
            or bAzFhpmhiXGUArlLpdTSXIvsCXSN:WaitForChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("KmsqcJmaicbAspqmp", 24), 10)
        if not (yOysZgCwCJvDOJfitgeMc and yOysZgCwCJvDOJfitgeMc:IsA(GXVqJLYnanzzuWxRYmlPKwhfboahm("AocIvdywn", 20))) then return end
        yOysZgCwCJvDOJfitgeMc.Visible = true
        if not (ddPgGEcQjrpkJVvuADRCluUoVYEbJmZ and ddPgGEcQjrpkJVvuADRCluUoVYEbJmZ:IsA(GXVqJLYnanzzuWxRYmlPKwhfboahm("FthNaidbs", 25))) then return end

        local function UIsJAABlrnBFXCRbtRgUb()
            local EYXTFbiAfxkenatbSnrpAbEgv = yOysZgCwCJvDOJfitgeMc.Active or yOysZgCwCJvDOJfitgeMc.Selected
                or (yOysZgCwCJvDOJfitgeMc:IsA(GXVqJLYnanzzuWxRYmlPKwhfboahm("HlzfdAtssnm", 25)) and yOysZgCwCJvDOJfitgeMc.ImageRectOffset.X > 0)
            ddPgGEcQjrpkJVvuADRCluUoVYEbJmZ.Visible = EYXTFbiAfxkenatbSnrpAbEgv
        end
        UIsJAABlrnBFXCRbtRgUb()

        if not yOysZgCwCJvDOJfitgeMc:GetAttribute(GXVqJLYnanzzuWxRYmlPKwhfboahm("ZroploYlrka", 23)) then
            yOysZgCwCJvDOJfitgeMc:SetAttribute(GXVqJLYnanzzuWxRYmlPKwhfboahm("YqnoknXkqjz", 22), true)
            yOysZgCwCJvDOJfitgeMc:GetPropertyChangedSignal(GXVqJLYnanzzuWxRYmlPKwhfboahm("Zbshud", 25)):Connect(UIsJAABlrnBFXCRbtRgUb)
            yOysZgCwCJvDOJfitgeMc:GetPropertyChangedSignal(GXVqJLYnanzzuWxRYmlPKwhfboahm("Pbibzqba", 23)):Connect(UIsJAABlrnBFXCRbtRgUb)
            if yOysZgCwCJvDOJfitgeMc:IsA(GXVqJLYnanzzuWxRYmlPKwhfboahm("DrfYrqqlk", 23)) then
                yOysZgCwCJvDOJfitgeMc.MouseButton1Click:Connect(function()
                    task.wait(0.05)
                    UIsJAABlrnBFXCRbtRgUb()
                end)
            end
        end
    end

    local function fCWDaIHJyOegzJAhUnJscnQhR(targetDevice)
        if not targetDevice or not getgc then return 0, 0 end
        local xfURlKWEBwMEgAbMvfXRKlpz, ItEqWgEKOQoeKPwhIfDFtAE = UTRJsZNdDtpRvleqHVudDtQ(getgc, true)
        if not xfURlKWEBwMEgAbMvfXRKlpz or not ItEqWgEKOQoeKPwhIfDFtAE then return 0, 0 end
        local VGVJnNayhDKizsduCtkXjaAadpiIAAwt, cxdCYhfFQgdljXIdULCSDfMEXmeDH = 0, 0
        for IMnjBdXSRoaLzkdTvCVIWPX, obj in HEsJSgIpzWdHbKDyNywH(ItEqWgEKOQoeKPwhIfDFtAE) do
            cxdCYhfFQgdljXIdULCSDfMEXmeDH += 1
            if cxdCYhfFQgdljXIdULCSDfMEXmeDH > 150000 then break end
            if type(obj) == GXVqJLYnanzzuWxRYmlPKwhfboahm("nuvfy", 20) then
                local YMbOVWUYPBLtXRqbGyrJtHQOwWVUo, xuywaRVRgRbETRWDeHIgrA = UTRJsZNdDtpRvleqHVudDtQ(ofQzYuTOfyNkAfZwwoGTdusAQF, obj, aqLvgiMKLygQWrkbTSshGPrcdtMngZ)
                if YMbOVWUYPBLtXRqbGyrJtHQOwWVUo and (xuywaRVRgRbETRWDeHIgrA == GXVqJLYnanzzuWxRYmlPKwhfboahm("Jlyfib", 23) or xuywaRVRgRbETRWDeHIgrA == GXVqJLYnanzzuWxRYmlPKwhfboahm("NA", 24) or xuywaRVRgRbETRWDeHIgrA == GXVqJLYnanzzuWxRYmlPKwhfboahm("Tfejfcv", 17)) then
                    UTRJsZNdDtpRvleqHVudDtQ(function()
                        KJGDuCKKXpfRZsljHaudnbbXhFhy(obj, aqLvgiMKLygQWrkbTSshGPrcdtMngZ, targetDevice)
                        -- SmallScreen ما نلمسه
                        local umqoVHoawodmgiPfmgcBbFFjh = ofQzYuTOfyNkAfZwwoGTdusAQF(obj, UHScqdzyahKwyBUAzHARFYbISjK)
                        if type(umqoVHoawodmgiPfmgcBbFFjh) == GXVqJLYnanzzuWxRYmlPKwhfboahm("etmbshnm", 25) then UTRJsZNdDtpRvleqHVudDtQ(umqoVHoawodmgiPfmgcBbFFjh, obj) end
                        VGVJnNayhDKizsduCtkXjaAadpiIAAwt += 1
                    end)
                end
                local tlYApZeVqNcuiMbzEGZTreUDpTIDCtK, bhJtoyPifTcBjlDmOrklZggzFi = UTRJsZNdDtpRvleqHVudDtQ(ofQzYuTOfyNkAfZwwoGTdusAQF, obj, dEJVKTeEbljunmsqtjLYqQlDoV)
                if tlYApZeVqNcuiMbzEGZTreUDpTIDCtK and type(bhJtoyPifTcBjlDmOrklZggzFi) == GXVqJLYnanzzuWxRYmlPKwhfboahm("mtuex", 19) then
                    local dovsylRgBXbqnzlYjnPfMBIhRO = (targetDevice == GXVqJLYnanzzuWxRYmlPKwhfboahm("Zlkplib", 23))
                        and ofQzYuTOfyNkAfZwwoGTdusAQF(obj, ZZaSdRSLGHfhMnEaqfheSwm)
                        or ofQzYuTOfyNkAfZwwoGTdusAQF(obj, vDZyGPQEAGmBqzCqLsdaffNwAdjRwq)
                    if type(dovsylRgBXbqnzlYjnPfMBIhRO) == GXVqJLYnanzzuWxRYmlPKwhfboahm("lstdw", 18) and bhJtoyPifTcBjlDmOrklZggzFi ~= dovsylRgBXbqnzlYjnPfMBIhRO then
                        UTRJsZNdDtpRvleqHVudDtQ(function()
                            KJGDuCKKXpfRZsljHaudnbbXhFhy(obj, dEJVKTeEbljunmsqtjLYqQlDoV, dovsylRgBXbqnzlYjnPfMBIhRO)
                            VGVJnNayhDKizsduCtkXjaAadpiIAAwt += 1
                        end)
                    end
                end
            end
        end
        return VGVJnNayhDKizsduCtkXjaAadpiIAAwt, cxdCYhfFQgdljXIdULCSDfMEXmeDH
    end

    local function vVMvsCKCcilaZtjdYCHtMXNBAcqL()
        if _G.__dm_killed then return end
        local CFqNuAVtohPOUqaFtakGsTjehlrSm = mxTGpAnpIhotQvKRyFeEFEcxOi()
        if CFqNuAVtohPOUqaFtakGsTjehlrSm then
            UTRJsZNdDtpRvleqHVudDtQ(kgIVGLVqfYDZjoIcZpbCclff)
            UTRJsZNdDtpRvleqHVudDtQ(fCWDaIHJyOegzJAhUnJscnQhR, CFqNuAVtohPOUqaFtakGsTjehlrSm)
        end
    end

    local function sqhfZNrFfRdzXtaRnkErEjrINtnYSOQ()
        if typeof(gethui) == GXVqJLYnanzzuWxRYmlPKwhfboahm("crkzqflk", 23) then
            local myyBhlgFanJveefdCkIPF, QggmhIfSyBfXoUmIqkOBcOWbTHTXFp = UTRJsZNdDtpRvleqHVudDtQ(gethui)
            if myyBhlgFanJveefdCkIPF and QggmhIfSyBfXoUmIqkOBcOWbTHTXFp then return QggmhIfSyBfXoUmIqkOBcOWbTHTXFp end
        end
        if typeof(get_hidden_gui) == GXVqJLYnanzzuWxRYmlPKwhfboahm("etmbshnm", 25) then
            local myyBhlgFanJveefdCkIPF, QggmhIfSyBfXoUmIqkOBcOWbTHTXFp = UTRJsZNdDtpRvleqHVudDtQ(get_hidden_gui)
            if myyBhlgFanJveefdCkIPF and QggmhIfSyBfXoUmIqkOBcOWbTHTXFp then return QggmhIfSyBfXoUmIqkOBcOWbTHTXFp end
        end
        local UHomAEViHbHalDodOwQnHNDpOZJAmFbP = game:GetService(GXVqJLYnanzzuWxRYmlPKwhfboahm("UgjwYma", 18))
        if syn and typeof(syn.protect_gui) == GXVqJLYnanzzuWxRYmlPKwhfboahm("etmbshnm", 25) then return UHomAEViHbHalDodOwQnHNDpOZJAmFbP end
        local skHKQyorqQUadXGIMqwdPkNCLmHBP = game:GetService(GXVqJLYnanzzuWxRYmlPKwhfboahm("Lhwuano", 22)).LocalPlayer
        return UHomAEViHbHalDodOwQnHNDpOZJAmFbP:FindFirstChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("QnaknwFth", 25)) or (skHKQyorqQUadXGIMqwdPkNCLmHBP and skHKQyorqQUadXGIMqwdPkNCLmHBP:WaitForChild(GXVqJLYnanzzuWxRYmlPKwhfboahm("KgvtzmBpd", 21)))
    end

    local pxtgKfuerprbNrctbunFPb = {}

    local function QuqqWAzAOORCnelsvlguxwqfR()
        local JqLJIiymddGTGVIoVsQvFgR = game:GetService(GXVqJLYnanzzuWxRYmlPKwhfboahm("SvddmRdquhbd", 25))
        local skHKQyorqQUadXGIMqwdPkNCLmHBP = game.Players.LocalPlayer
        local VldIWeoAmzWnucFIcOEwncSNvROK = sqhfZNrFfRdzXtaRnkErEjrINtnYSOQ()
        local ugVpPPvrGJXbSVjnGFdb = mxTGpAnpIhotQvKRyFeEFEcxOi()
        local rPeMiVeqeuSDQthurzKXGPljsGM  = nil
        local eLoYPcXwiBwgxfyMJfWIMZymepgIcDIO = false

        local sjktAlCmVXAFssJmmXgrsLSFzG = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("OynaajCqe", 22))
        sjktAlCmVXAFssJmmXgrsLSFzG.Name = ruqSihekIeusIHGMHvOfzd()
        sjktAlCmVXAFssJmmXgrsLSFzG.ResetOnSpawn = false
        sjktAlCmVXAFssJmmXgrsLSFzG.IgnoreGuiInset = true
        sjktAlCmVXAFssJmmXgrsLSFzG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        if syn and typeof(syn.protect_gui) == GXVqJLYnanzzuWxRYmlPKwhfboahm("etmbshnm", 25) then
            UTRJsZNdDtpRvleqHVudDtQ(syn.protect_gui, sjktAlCmVXAFssJmmXgrsLSFzG)
        end
        sjktAlCmVXAFssJmmXgrsLSFzG.Parent = VldIWeoAmzWnucFIcOEwncSNvROK
        table.insert(pxtgKfuerprbNrctbunFPb, sjktAlCmVXAFssJmmXgrsLSFzG)

        local RukcbeqRrqWUqqrNhcseYfZbOo = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("QbuqYrqqlk", 23))
        RukcbeqRrqWUqqrNhcseYfZbOo.Name = ruqSihekIeusIHGMHvOfzd()
        RukcbeqRrqWUqqrNhcseYfZbOo.Size = UDim2.fromOffset(36, 36)
        RukcbeqRrqWUqqrNhcseYfZbOo.Position = UDim2.new(0, 16, 0.5, -18)
        RukcbeqRrqWUqqrNhcseYfZbOo.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
        RukcbeqRrqWUqqrNhcseYfZbOo.BackgroundTransparency = 0.05
        RukcbeqRrqWUqqrNhcseYfZbOo.Text = GXVqJLYnanzzuWxRYmlPKwhfboahm("KS", 21)
        RukcbeqRrqWUqqrNhcseYfZbOo.TextColor3 = Color3.fromRGB(255, 255, 255)
        RukcbeqRrqWUqqrNhcseYfZbOo.TextSize = 13
        RukcbeqRrqWUqqrNhcseYfZbOo.Font = Enum.Font.GothamBold
        RukcbeqRrqWUqqrNhcseYfZbOo.AutoButtonColor = false
        RukcbeqRrqWUqqrNhcseYfZbOo.Active = true
        RukcbeqRrqWUqqrNhcseYfZbOo.Draggable = true
        RukcbeqRrqWUqqrNhcseYfZbOo.Parent = sjktAlCmVXAFssJmmXgrsLSFzG

        local qeleOrsbHnIltRuLwxJyuPQHgWqxkL = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("THBnqmdq", 25))
        qeleOrsbHnIltRuLwxJyuPQHgWqxkL.CornerRadius = UDim.new(0, 7)
        qeleOrsbHnIltRuLwxJyuPQHgWqxkL.Parent = RukcbeqRrqWUqqrNhcseYfZbOo

        local zEEmnsbwEzMVaPNSQkVDkuPHHBzKqbsz = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("THRsqnjd", 25))
        zEEmnsbwEzMVaPNSQkVDkuPHHBzKqbsz.Color = Color3.fromRGB(60, 60, 75)
        zEEmnsbwEzMVaPNSQkVDkuPHHBzKqbsz.Transparency = 0.3
        zEEmnsbwEzMVaPNSQkVDkuPHHBzKqbsz.Thickness = 1
        zEEmnsbwEzMVaPNSQkVDkuPHHBzKqbsz.Parent = RukcbeqRrqWUqqrNhcseYfZbOo

        local YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("Bnwia", 22))
        YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.Name = ruqSihekIeusIHGMHvOfzd()
        YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.Size = UDim2.fromOffset(250, 215)
        YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.Position = UDim2.new(0.5, -125, 0.5, -107)
        YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.BackgroundTransparency = 0.05
        YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.BorderSizePixel = 0
        YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.Visible = false
        YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.ClipsDescendants = true
        YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.Parent = sjktAlCmVXAFssJmmXgrsLSFzG

        local DKTaHNWkutUgXSEDRXAIMMNy = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("THFqzchdms", 25))
        DKTaHNWkutUgXSEDRXAIMMNy.Rotation = 90
        DKTaHNWkutUgXSEDRXAIMMNy.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 90, 115)),
            ColorSequenceKeypoint.new(0.35, Color3.fromRGB(15, 16, 22)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 5, 8)),
        })
        DKTaHNWkutUgXSEDRXAIMMNy.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.45),
            NumberSequenceKeypoint.new(0.35, 0.05),
            NumberSequenceKeypoint.new(1, 0.0),
        })
        DKTaHNWkutUgXSEDRXAIMMNy.Parent = YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR

        local HSVqgtFhUJvLvjwAJpIeZjvLMJYLGQV = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("SGAmplcp", 24))
        HSVqgtFhUJvLvjwAJpIeZjvLMJYLGQV.CornerRadius = UDim.new(0, 12)
        HSVqgtFhUJvLvjwAJpIeZjvLMJYLGQV.Parent = YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR

        local OttwHaxdlNoegZJcAHwYQPnoFvQm = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("SGQrpmic", 24))
        OttwHaxdlNoegZJcAHwYQPnoFvQm.Color = Color3.fromRGB(255, 255, 255)
        OttwHaxdlNoegZJcAHwYQPnoFvQm.Transparency = 0.8
        OttwHaxdlNoegZJcAHwYQPnoFvQm.Thickness = 1
        OttwHaxdlNoegZJcAHwYQPnoFvQm.Parent = YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR

        local EhlWGToHxoyNFaMReUzbpnfdtEGBvbz = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("Amvhz", 21))
        EhlWGToHxoyNFaMReUzbpnfdtEGBvbz.Size = UDim2.new(1, 0, 0, 42)
        EhlWGToHxoyNFaMReUzbpnfdtEGBvbz.BackgroundTransparency = 1
        EhlWGToHxoyNFaMReUzbpnfdtEGBvbz.Parent = YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR

        local GstMvYJFKzmdoTHoEwBZ = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("OzsoGvwzg", 21))
        GstMvYJFKzmdoTHoEwBZ.Size = UDim2.new(1, -40, 1, 0)
        GstMvYJFKzmdoTHoEwBZ.Position = UDim2.fromOffset(14, 0)
        GstMvYJFKzmdoTHoEwBZ.BackgroundTransparency = 1
        GstMvYJFKzmdoTHoEwBZ.Text = GXVqJLYnanzzuWxRYmlPKwhfboahm("NfylrmkV Bctgac Qnmmdcp", 24)
        GstMvYJFKzmdoTHoEwBZ.TextColor3 = Color3.fromRGB(255, 255, 255)
        GstMvYJFKzmdoTHoEwBZ.TextSize = 12
        GstMvYJFKzmdoTHoEwBZ.Font = Enum.Font.GothamBold
        GstMvYJFKzmdoTHoEwBZ.TextXAlignment = Enum.TextXAlignment.Left
        GstMvYJFKzmdoTHoEwBZ.Parent = EhlWGToHxoyNFaMReUzbpnfdtEGBvbz

        local nGmNmEQdBmUoDyAJveNmjpIAigI = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("QbuqYrqqlk", 23))
        nGmNmEQdBmUoDyAJveNmjpIAigI.Size = UDim2.fromOffset(26, 26)
        nGmNmEQdBmUoDyAJveNmjpIAigI.Position = UDim2.new(1, -32, 0.5, -13)
        nGmNmEQdBmUoDyAJveNmjpIAigI.BackgroundTransparency = 1
        nGmNmEQdBmUoDyAJveNmjpIAigI.Text = GXVqJLYnanzzuWxRYmlPKwhfboahm("×", 1)
        nGmNmEQdBmUoDyAJveNmjpIAigI.TextColor3 = Color3.fromRGB(200, 200, 210)
        nGmNmEQdBmUoDyAJveNmjpIAigI.TextSize = 18
        nGmNmEQdBmUoDyAJveNmjpIAigI.Font = Enum.Font.GothamMedium
        nGmNmEQdBmUoDyAJveNmjpIAigI.Parent = EhlWGToHxoyNFaMReUzbpnfdtEGBvbz

        local uaIhAelpDwKlRNjzxPbxcVTqITPz = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("Eqzld", 25))
        uaIhAelpDwKlRNjzxPbxcVTqITPz.Size = UDim2.new(1, -28, 0, 1)
        uaIhAelpDwKlRNjzxPbxcVTqITPz.Position = UDim2.fromOffset(14, 42)
        uaIhAelpDwKlRNjzxPbxcVTqITPz.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        uaIhAelpDwKlRNjzxPbxcVTqITPz.BackgroundTransparency = 0.88
        uaIhAelpDwKlRNjzxPbxcVTqITPz.BorderSizePixel = 0
        uaIhAelpDwKlRNjzxPbxcVTqITPz.Parent = YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR

        local EaeLsAJSHNEIuhSopPbHytNbPYojHnL = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("Coxjb", 23))
        EaeLsAJSHNEIuhSopPbHytNbPYojHnL.Size = UDim2.new(1, -28, 0, 150)
        EaeLsAJSHNEIuhSopPbHytNbPYojHnL.Position = UDim2.fromOffset(14, 52)
        EaeLsAJSHNEIuhSopPbHytNbPYojHnL.BackgroundTransparency = 1
        EaeLsAJSHNEIuhSopPbHytNbPYojHnL.Parent = YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR

        local UTAWanURSXIxVPLFynzPNyhNJbsxRLv = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("THKhrsKzxnts", 25))
        UTAWanURSXIxVPLFynzPNyhNJbsxRLv.Padding = UDim.new(0, 6)
        UTAWanURSXIxVPLFynzPNyhNJbsxRLv.SortOrder = Enum.SortOrder.LayoutOrder
        UTAWanURSXIxVPLFynzPNyhNJbsxRLv.Parent = EaeLsAJSHNEIuhSopPbHytNbPYojHnL

        local bSadHaKkooVSCMkVNWoslx = {}

        local function jVMRJzPMcYSzgVkfIFinSluC()
            for name, btnData in KfzOiIFphhnoToyDXTQHA(bSadHaKkooVSCMkVNWoslx) do
                if name == rPeMiVeqeuSDQthurzKXGPljsGM then
                    JqLJIiymddGTGVIoVsQvFgR:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(210, 110, 30),
                        BackgroundTransparency = 0.15,
                    }):Play()
                    btnData.Text.Text = GXVqJLYnanzzuWxRYmlPKwhfboahm("Ypc wms qspc? (Ugjj Pchmgl)", 24)
                    btnData.Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                    JqLJIiymddGTGVIoVsQvFgR:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 150, 50),
                        Transparency = 0.1,
                    }):Play()
                elseif name == ugVpPPvrGJXbSVjnGFdb then
                    JqLJIiymddGTGVIoVsQvFgR:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(90, 50, 150),
                        BackgroundTransparency = 0.2,
                    }):Play()
                    btnData.Text.Text = name .. GXVqJLYnanzzuWxRYmlPKwhfboahm(" [Yargtc]", 24)
                    btnData.Text.TextColor3 = Color3.fromRGB(230, 200, 255)
                    JqLJIiymddGTGVIoVsQvFgR:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(180, 130, 255),
                        Transparency = 0.1,
                    }):Play()
                else
                    JqLJIiymddGTGVIoVsQvFgR:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                    btnData.Text.Text = name
                    btnData.Text.TextColor3 = Color3.fromRGB(210, 215, 225)
                    JqLJIiymddGTGVIoVsQvFgR:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 255, 255),
                        Transparency = 0.88,
                    }):Play()
                end
            end
        end

        local function CbxoALqSxYZEWVirUgDKDKeRpk(name, order)
            local stCVCWwgSdiTXkanWWRr = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("SdwsAtssnm", 25))
            stCVCWwgSdiTXkanWWRr.Size = UDim2.new(1, 0, 0, 42)
            stCVCWwgSdiTXkanWWRr.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
            stCVCWwgSdiTXkanWWRr.BackgroundTransparency = 0.35
            stCVCWwgSdiTXkanWWRr.Text = GXVqJLYnanzzuWxRYmlPKwhfboahm("", 1)
            stCVCWwgSdiTXkanWWRr.AutoButtonColor = false
            stCVCWwgSdiTXkanWWRr.LayoutOrder = order
            stCVCWwgSdiTXkanWWRr.Parent = EaeLsAJSHNEIuhSopPbHytNbPYojHnL

            local lulEHMmdaYjMyveApZTBQhrLfjsKjlkg = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("THBnqmdq", 25))
            lulEHMmdaYjMyveApZTBQhrLfjsKjlkg.CornerRadius = UDim.new(0, 8)
            lulEHMmdaYjMyveApZTBQhrLfjsKjlkg.Parent = stCVCWwgSdiTXkanWWRr

            local UDAkwmNVjxQoeGOilLUAGTaoxb = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("THRsqnjd", 25))
            UDAkwmNVjxQoeGOilLUAGTaoxb.Color = Color3.fromRGB(255, 255, 255)
            UDAkwmNVjxQoeGOilLUAGTaoxb.Transparency = 0.88
            UDAkwmNVjxQoeGOilLUAGTaoxb.Thickness = 1
            UDAkwmNVjxQoeGOilLUAGTaoxb.Parent = stCVCWwgSdiTXkanWWRr

            local IWDBMWsBRjgbmzyvQEMLXwZx = Instance.new(GXVqJLYnanzzuWxRYmlPKwhfboahm("QbuqIxybi", 23))
            IWDBMWsBRjgbmzyvQEMLXwZx.Size = UDim2.new(1, -20, 1, 0)
            IWDBMWsBRjgbmzyvQEMLXwZx.Position = UDim2.fromOffset(12, 0)
            IWDBMWsBRjgbmzyvQEMLXwZx.BackgroundTransparency = 1
            IWDBMWsBRjgbmzyvQEMLXwZx.Text = name
            IWDBMWsBRjgbmzyvQEMLXwZx.TextColor3 = Color3.fromRGB(210, 215, 225)
            IWDBMWsBRjgbmzyvQEMLXwZx.TextSize = 11
            IWDBMWsBRjgbmzyvQEMLXwZx.Font = Enum.Font.GothamMedium
            IWDBMWsBRjgbmzyvQEMLXwZx.TextXAlignment = Enum.TextXAlignment.Left
            IWDBMWsBRjgbmzyvQEMLXwZx.Parent = stCVCWwgSdiTXkanWWRr

            bSadHaKkooVSCMkVNWoslx[name] = {Btn= stCVCWwgSdiTXkanWWRr, Stroke = UDAkwmNVjxQoeGOilLUAGTaoxb, Text = IWDBMWsBRjgbmzyvQEMLXwZx }

            stCVCWwgSdiTXkanWWRr.MouseEnter:Connect(function()
                if rPeMiVeqeuSDQthurzKXGPljsGM ~= name and ugVpPPvrGJXbSVjnGFdb ~= name then
                    JqLJIiymddGTGVIoVsQvFgR:Create(stCVCWwgSdiTXkanWWRr, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(32, 36, 50),
                        BackgroundTransparency = 0.2,
                    }):Play()
                end
            end)
            stCVCWwgSdiTXkanWWRr.MouseLeave:Connect(function()
                if rPeMiVeqeuSDQthurzKXGPljsGM ~= name and ugVpPPvrGJXbSVjnGFdb ~= name then
                    JqLJIiymddGTGVIoVsQvFgR:Create(stCVCWwgSdiTXkanWWRr, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                end
            end)

            stCVCWwgSdiTXkanWWRr.MouseButton1Click:Connect(function()
                if ugVpPPvrGJXbSVjnGFdb == name then return end
                if rPeMiVeqeuSDQthurzKXGPljsGM == name then
                    ugVpPPvrGJXbSVjnGFdb = name
                    MbqjOEHDyssMcHCjfVeLf(name)
                    rPeMiVeqeuSDQthurzKXGPljsGM = nil
                    if activeToken and activeExpiry then
                        lxmmBcIXHyTGjHspFfMwavtBALIm(activeToken, activeExpiry)
                    end
                    IWDBMWsBRjgbmzyvQEMLXwZx.Text = GXVqJLYnanzzuWxRYmlPKwhfboahm("Pchmglgle...", 24)
                    jVMRJzPMcYSzgVkfIFinSluC()
                    vVMvsCKCcilaZtjdYCHtMXNBAcqL()
                    if queue_on_teleport then
                        queue_on_teleport(GXVqJLYnanzzuWxRYmlPKwhfboahm("_F.SzqfdsCduhbd = '", 25) .. name .. GXVqJLYnanzzuWxRYmlPKwhfboahm("'", 1))
                    end
                    task.wait(0.2)
                    game:GetService(GXVqJLYnanzzuWxRYmlPKwhfboahm("OzgzkjmoNzmqdxz", 21)):TeleportToPlaceInstance(
                        game.PlaceId, game.JobId, skHKQyorqQUadXGIMqwdPkNCLmHBP
                    )
                    return
                end
                rPeMiVeqeuSDQthurzKXGPljsGM = name
                jVMRJzPMcYSzgVkfIFinSluC()
            end)
        end

        for i, plat in HEsJSgIpzWdHbKDyNywH(nxZamIFCiiJsUYTHeJXXmliCgracdCbZ) do
            CbxoALqSxYZEWVirUgDKDKeRpk(plat, i)
        end
        jVMRJzPMcYSzgVkfIFinSluC()

        local function kYnNtWmxnFNRnnRrKcBLvESmqX()
            eLoYPcXwiBwgxfyMJfWIMZymepgIcDIO = true
            YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.Visible = true
            YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.Position = UDim2.new(0.5, -125, 0.5, -97)
            JqLJIiymddGTGVIoVsQvFgR:Create(
                YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR,
                TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Position= UDim2.new(0.5, -125, 0.5, -107) }
            ):Play()
            JqLJIiymddGTGVIoVsQvFgR:Create(OttwHaxdlNoegZJcAHwYQPnoFvQm, TweenInfo.new(0.22), {Transparency= 0.65,
            }):Play()
        end

        local function IOzEivGWLUTjyaEAmCMehCwgZpQB()
            eLoYPcXwiBwgxfyMJfWIMZymepgIcDIO = false
            rPeMiVeqeuSDQthurzKXGPljsGM = nil
            jVMRJzPMcYSzgVkfIFinSluC()
            local axpVPEvaemeHLKXPdZknelMSU = JqLJIiymddGTGVIoVsQvFgR:Create(
                YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR,
                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                {Position= UDim2.new(0.5, -125, 0.5, -97) }
            )
            JqLJIiymddGTGVIoVsQvFgR:Create(OttwHaxdlNoegZJcAHwYQPnoFvQm, TweenInfo.new(0.15), {Transparency= 1,
            }):Play()
            axpVPEvaemeHLKXPdZknelMSU:Play()
            axpVPEvaemeHLKXPdZknelMSU.Completed:Once(function()
                if not eLoYPcXwiBwgxfyMJfWIMZymepgIcDIO then YwbkDwuJOhPOfrgCXFUwUvukUyqDrCR.Visible = false end
            end)
        end

        RukcbeqRrqWUqqrNhcseYfZbOo.MouseButton1Click:Connect(function()
            if eLoYPcXwiBwgxfyMJfWIMZymepgIcDIO then IOzEivGWLUTjyaEAmCMehCwgZpQB() else kYnNtWmxnFNRnnRrKcBLvESmqX() end
        end)
        nGmNmEQdBmUoDyAJveNmjpIAigI.MouseButton1Click:Connect(function() IOzEivGWLUTjyaEAmCMehCwgZpQB() end)

        RukcbeqRrqWUqqrNhcseYfZbOo.MouseEnter:Connect(function()
            JqLJIiymddGTGVIoVsQvFgR:Create(zEEmnsbwEzMVaPNSQkVDkuPHHBzKqbsz, TweenInfo.new(0.12), {Transparency= 0.1,
            }):Play()
            JqLJIiymddGTGVIoVsQvFgR:Create(RukcbeqRrqWUqqrNhcseYfZbOo, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(22, 22, 28),
            }):Play()
        end)
        RukcbeqRrqWUqqrNhcseYfZbOo.MouseLeave:Connect(function()
            JqLJIiymddGTGVIoVsQvFgR:Create(zEEmnsbwEzMVaPNSQkVDkuPHHBzKqbsz, TweenInfo.new(0.12), {Transparency= 0.3,
            }):Play()
            JqLJIiymddGTGVIoVsQvFgR:Create(RukcbeqRrqWUqqrNhcseYfZbOo, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(12, 12, 15),
            }):Play()
        end)
    end

    QuqqWAzAOORCnelsvlguxwqfR()

    task.spawn(function()
        for IMnjBdXSRoaLzkdTvCVIWPX = 1, 15 do
            if _G.__dm_killed then return end
            vVMvsCKCcilaZtjdYCHtMXNBAcqL()
            task.wait(0.8)
        end
    end)

    task.spawn(function()
        local skHKQyorqQUadXGIMqwdPkNCLmHBP = game.Players.LocalPlayer
        if not skHKQyorqQUadXGIMqwdPkNCLmHBP then
            game.Players:GetPropertyChangedSignal(GXVqJLYnanzzuWxRYmlPKwhfboahm("JmayjNjywcp", 24)):Wait()
            skHKQyorqQUadXGIMqwdPkNCLmHBP = game.Players.LocalPlayer
        end
        skHKQyorqQUadXGIMqwdPkNCLmHBP.CharacterAdded:Connect(function()
            task.wait(1)
            if _G.__dm_killed then return end
            vVMvsCKCcilaZtjdYCHtMXNBAcqL()
        end)
    end)

    task.spawn(function()
        while not _G.__dm_killed do task.wait(0.5) end
        for IMnjBdXSRoaLzkdTvCVIWPX, g in HEsJSgIpzWdHbKDyNywH(pxtgKfuerprbNrctbunFPb) do
            UTRJsZNdDtpRvleqHVudDtQ(function() g:Destroy() end)
        end
    end)
end

-- ===== التفعيل =====
local FBCmZumrVzENdDvipECzZqdPitsjvVI, hjaZJiyKtrtPjGlxlJAlcw = TvyMiEkLdxtrWLNemIhdcZTI()
pFPbhsqouosmFyPPEmneVTL(GFUSfdfFUkSMMzYAnDaiEDoo())
if #nxZamIFCiiJsUYTHeJXXmliCgracdCbZ == 0 then
    faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Ij xjhkvodwgz yzqdxz jkodji dn zivwgzy ajm ocdn vxxjpio", 21), GXVqJLYnanzzuWxRYmlPKwhfboahm("LM_AMKNYRGZJC_NJYRDMPK", 24))
    return
end

if FBCmZumrVzENdDvipECzZqdPitsjvVI then
    local IMnjBdXSRoaLzkdTvCVIWPX, kfvUPfBlQyzLVUjTsFzUeTwC = DJtjHQGKvDWyubvvVKfsFINypj(GXVqJLYnanzzuWxRYmlPKwhfboahm("AZDE", 11), GXVqJLYnanzzuWxRYmlPKwhfboahm("/zoh/khbdmrd/gdzqsadzs", 25), {sessionToken= FBCmZumrVzENdDvipECzZqdPitsjvVI,
        scriptVariant = PQEGvxyZxcyttUbjYnODI,
        deviceFingerprint = CDzOPZIXdiXgsFYjhMpHi,
        robloxUserId = mXiPsnowyXymzhfJRKDkllkyKcTwxpY,
    })
    if not kfvUPfBlQyzLVUjTsFzUeTwC or kfvUPfBlQyzLVUjTsFzUeTwC.success ~= true then
        _G.__dm_killed = true
        IhwWZlbZIomFKDjOfwMSQNaJzfzd()
        faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Khbdmrd udqhehbzshnm ezhkdc", 25), kfvUPfBlQyzLVUjTsFzUeTwC and kfvUPfBlQyzLVUjTsFzUeTwC.error or GXVqJLYnanzzuWxRYmlPKwhfboahm("FCYPRZCYR_DYGJCB", 24))
        return
    end

    task.spawn(lnrHFMWfLCuLWfYoVVCWwHMLaHMVQ, FBCmZumrVzENdDvipECzZqdPitsjvVI, hjaZJiyKtrtPjGlxlJAlcw)
    task.spawn(function()
        while os.time() < hjaZJiyKtrtPjGlxlJAlcw do
            task.wait(20)
            if os.time() >= hjaZJiyKtrtPjGlxlJAlcw then
                _G.__dm_killed = true
                IhwWZlbZIomFKDjOfwMSQNaJzfzd()
                break
            end
            local IMnjBdXSRoaLzkdTvCVIWPX, lbGeKblDGXgrUfumKoEPopoMwNUd = DJtjHQGKvDWyubvvVKfsFINypj(GXVqJLYnanzzuWxRYmlPKwhfboahm("JIMN", 20), GXVqJLYnanzzuWxRYmlPKwhfboahm("/yng/jgaclqc/fcyprzcyr", 24), {sessionToken= FBCmZumrVzENdDvipECzZqdPitsjvVI,
                scriptVariant = PQEGvxyZxcyttUbjYnODI,
                deviceFingerprint = CDzOPZIXdiXgsFYjhMpHi,
                robloxUserId = mXiPsnowyXymzhfJRKDkllkyKcTwxpY,
            })
            if not lbGeKblDGXgrUfumKoEPopoMwNUd or lbGeKblDGXgrUfumKoEPopoMwNUd.success ~= true then
                _G.__dm_killed = true
                IhwWZlbZIomFKDjOfwMSQNaJzfzd()
                break
            end
        end
    end)
    JvCMmXVetWnrTWteerWXWAdypPsOSpVq(GXVqJLYnanzzuWxRYmlPKwhfboahm("vgfw", 18))
    return
end

FVyXSgAwsDdftOAjrvgFJFWYjIP(GXVqJLYnanzzuWxRYmlPKwhfboahm("Amllcargle rm qcaspc jgaclqc qcptgac...", 24), Color3.fromRGB(151, 112, 255), 5)

local IMnjBdXSRoaLzkdTvCVIWPX, SRduWBXtmGeiTfHDKwFRCn, BzjqeFHRkXNKzxCpOgNcCSaRQzZhSh = DJtjHQGKvDWyubvvVKfsFINypj(GXVqJLYnanzzuWxRYmlPKwhfboahm("FDS", 25), GXVqJLYnanzzuWxRYmlPKwhfboahm("/zoh/khbdmrd/oqnctbs", 25))
if not SRduWBXtmGeiTfHDKwFRCn then faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Rdquhbd tmzuzhkzakd", 25), BzjqeFHRkXNKzxCpOgNcCSaRQzZhSh) return end
if SRduWBXtmGeiTfHDKwFRCn.enabled ~= true then
    faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("AbsfzbJlab fp zroobkqiv afpxyiba", 23), GXVqJLYnanzzuWxRYmlPKwhfboahm("OQNCTBS_CHRZAKDC", 25))
    return
end
if SRduWBXtmGeiTfHDKwFRCn.minimumSupportedVersion and KMycKVDnRaGQzyUCWLdmMFCuS < SRduWBXtmGeiTfHDKwFRCn.minimumSupportedVersion then
    faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Okdzrd toczsd xntq CduhbdLncd rbqhos", 25), GXVqJLYnanzzuWxRYmlPKwhfboahm("BKHDMS_TOCZSD_QDPTHQDC", 25))
    return
end

local BOCFYMgrfGTZdntiNvmcx = {licenseKey= mLUtwFfKdPtNRZqnnaTZof,
    clientVersion = KMycKVDnRaGQzyUCWLdmMFCuS,
    scriptVariant = PQEGvxyZxcyttUbjYnODI,
    deviceFingerprint = CDzOPZIXdiXgsFYjhMpHi,
    robloxUserId = mXiPsnowyXymzhfJRKDkllkyKcTwxpY,
}

local IMnjBdXSRoaLzkdTvCVIWPX, YyfomWtBXhIVeYMZWHcbdxdtGBoOGbol, KMLCQzyJbZDzohHUFDfzjGh = DJtjHQGKvDWyubvvVKfsFINypj(GXVqJLYnanzzuWxRYmlPKwhfboahm("NMQR", 24), GXVqJLYnanzzuWxRYmlPKwhfboahm("/xmf/ifzbkpb/xzqfsxqb", 23), BOCFYMgrfGTZdntiNvmcx)
if not YyfomWtBXhIVeYMZWHcbdxdtGBoOGbol or YyfomWtBXhIVeYMZWHcbdxdtGBoOGbol.success ~= true then
    local mjfDGOLzxaNVtbmwzCiYsjCFPx = YyfomWtBXhIVeYMZWHcbdxdtGBoOGbol and YyfomWtBXhIVeYMZWHcbdxdtGBoOGbol.error or KMLCQzyJbZDzohHUFDfzjGh or GXVqJLYnanzzuWxRYmlPKwhfboahm("XZQFSXQFLK_CXFIBA", 23)
    if mjfDGOLzxaNVtbmwzCiYsjCFPx == GXVqJLYnanzzuWxRYmlPKwhfboahm("IFZBKPB_BUMFOBA", 23) then
        faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Khbdmrd dwohqdc", 25), mjfDGOLzxaNVtbmwzCiYsjCFPx)
    elseif mjfDGOLzxaNVtbmwzCiYsjCFPx == GXVqJLYnanzzuWxRYmlPKwhfboahm("TRDQ_MNS_ZKKNVDC", 25) then
        faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Sghr Qnaknw zbbntms hr mns ztsgnqhydc", 25), mjfDGOLzxaNVtbmwzCiYsjCFPx)
    elseif mjfDGOLzxaNVtbmwzCiYsjCFPx == GXVqJLYnanzzuWxRYmlPKwhfboahm("BCTGAC_KGQKYRAF", 24) then
        faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Sghr cduhbd hr mns antmc sn sgd khbdmrd", 25), mjfDGOLzxaNVtbmwzCiYsjCFPx)
    elseif mjfDGOLzxaNVtbmwzCiYsjCFPx == GXVqJLYnanzzuWxRYmlPKwhfboahm("FKSXIFA_IFZBKPB", 23) then
        faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Jgaclqc icw uyq lmr dmslb", 24), mjfDGOLzxaNVtbmwzCiYsjCFPx)
    else
        faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Khbdmrd udqhehbzshnm ezhkdc", 25), mjfDGOLzxaNVtbmwzCiYsjCFPx)
    end
    return
end

local QaDdPlEjznRUCgdPDCjG = YyfomWtBXhIVeYMZWHcbdxdtGBoOGbol.sessionToken
local mwetADCwLsvIBwtSqhYJNjAoM = YyfomWtBXhIVeYMZWHcbdxdtGBoOGbol.license and zbFNeLmnehNNyXsynMAtNkLcMqn(YyfomWtBXhIVeYMZWHcbdxdtGBoOGbol.license.expiresAt)
if type(QaDdPlEjznRUCgdPDCjG) ~= GXVqJLYnanzzuWxRYmlPKwhfboahm("pqofkd", 23) or QaDdPlEjznRUCgdPDCjG == GXVqJLYnanzzuWxRYmlPKwhfboahm("", 1) or not mwetADCwLsvIBwtSqhYJNjAoM then
    faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Rdqudq qdstqmdc zm hmbnlokdsd khbdmrd qdronmrd", 25), GXVqJLYnanzzuWxRYmlPKwhfboahm("GLTYJGB_YARGTYRGML", 24))
    return
end

FLaqfuQpVseGkmyqqIFJQvXmL(YyfomWtBXhIVeYMZWHcbdxdtGBoOGbol.allowedPlatforms)
pFPbhsqouosmFyPPEmneVTL(GFUSfdfFUkSMMzYAnDaiEDoo())
if #nxZamIFCiiJsUYTHeJXXmliCgracdCbZ == 0 then
    faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Lm amknyrgzjc bctgac mnrgml gq clyzjcb dmp rfgq yaamslr", 24), GXVqJLYnanzzuWxRYmlPKwhfboahm("JK_YKILWPEXHA_LHWPBKNI", 22))
    return
end
if os.time() >= mwetADCwLsvIBwtSqhYJNjAoM then
    faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Jgaclqc cvngpcb", 24), GXVqJLYnanzzuWxRYmlPKwhfboahm("JGACLQC_CVNGPCB", 24))
    return
end

FVyXSgAwsDdftOAjrvgFJFWYjIP(
    GXVqJLYnanzzuWxRYmlPKwhfboahm("Khbdmrd udqhehdc · ", 25) .. KwdWjovvRlKwppTiOUiV(mwetADCwLsvIBwtSqhYJNjAoM - os.time()) .. GXVqJLYnanzzuWxRYmlPKwhfboahm(" naiwejejc", 22),
    Color3.fromRGB(85, 215, 164),
    8
)

lxmmBcIXHyTGjHspFfMwavtBALIm(QaDdPlEjznRUCgdPDCjG, mwetADCwLsvIBwtSqhYJNjAoM)
task.spawn(lnrHFMWfLCuLWfYoVVCWwHMLaHMVQ, QaDdPlEjznRUCgdPDCjG, mwetADCwLsvIBwtSqhYJNjAoM)

local addJXfneRkMuxxqAnqbnZ = true
while addJXfneRkMuxxqAnqbnZ do
    task.wait(30)
    if os.time() >= mwetADCwLsvIBwtSqhYJNjAoM then
        addJXfneRkMuxxqAnqbnZ = false
        IhwWZlbZIomFKDjOfwMSQNaJzfzd()
        faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Khbdmrd dwohqdc", 25), GXVqJLYnanzzuWxRYmlPKwhfboahm("IFZBKPB_BUMFOBA", 23))
        break
    end
    local IMnjBdXSRoaLzkdTvCVIWPX, kfvUPfBlQyzLVUjTsFzUeTwC = DJtjHQGKvDWyubvvVKfsFINypj(GXVqJLYnanzzuWxRYmlPKwhfboahm("KJNO", 21), GXVqJLYnanzzuWxRYmlPKwhfboahm("/zoh/khbdmrd/gdzqsadzs", 25), {sessionToken= QaDdPlEjznRUCgdPDCjG,
        scriptVariant = PQEGvxyZxcyttUbjYnODI,
        deviceFingerprint = CDzOPZIXdiXgsFYjhMpHi,
        robloxUserId = mXiPsnowyXymzhfJRKDkllkyKcTwxpY,
    })
    if not kfvUPfBlQyzLVUjTsFzUeTwC or kfvUPfBlQyzLVUjTsFzUeTwC.success ~= true then
        local mjfDGOLzxaNVtbmwzCiYsjCFPx = kfvUPfBlQyzLVUjTsFzUeTwC and kfvUPfBlQyzLVUjTsFzUeTwC.error or GXVqJLYnanzzuWxRYmlPKwhfboahm("GDZQSADZS_EZHKDC", 25)
        addJXfneRkMuxxqAnqbnZ = false
        IhwWZlbZIomFKDjOfwMSQNaJzfzd()
        if mjfDGOLzxaNVtbmwzCiYsjCFPx == GXVqJLYnanzzuWxRYmlPKwhfboahm("KHBDMRD_DWOHQDC", 25) then
            faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Ifzbkpb bumfoba", 23), mjfDGOLzxaNVtbmwzCiYsjCFPx)
        elseif mjfDGOLzxaNVtbmwzCiYsjCFPx == GXVqJLYnanzzuWxRYmlPKwhfboahm("DAUWFKW_JWNGCWV", 18) then
            faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Khbdmrd qdunjdc ax zclhmhrsqzsnq", 25), mjfDGOLzxaNVtbmwzCiYsjCFPx)
        elseif mjfDGOLzxaNVtbmwzCiYsjCFPx == GXVqJLYnanzzuWxRYmlPKwhfboahm("PBPPFLK_FKSXIFA", 23) then
            faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Jgaclqc qcqqgml gq lm jmlecp tyjgb", 24), mjfDGOLzxaNVtbmwzCiYsjCFPx)
        else
            faCzLUWFEFGySILYcdVOjAC(GXVqJLYnanzzuWxRYmlPKwhfboahm("Khbdmrd rdrrhnm dmcdc", 25), mjfDGOLzxaNVtbmwzCiYsjCFPx)
        end
        break
    end
end

if nIQrRSKJayUekTQkEKLp and nIQrRSKJayUekTQkEKLp.Parent then
    task.delay(12, function()
        if nIQrRSKJayUekTQkEKLp and nIQrRSKJayUekTQkEKLp.Parent then nIQrRSKJayUekTQkEKLp:Destroy() end
    end)
end
JvCMmXVetWnrTWteerWXWAdypPsOSpVq(GXVqJLYnanzzuWxRYmlPKwhfboahm("cnmd", 25))
        end
        break
    end
end
local dummy = 1; dummy = dummy + 2;

if true then local _ = 66 end
if true then local _ = 73 end
if true then local _ = 58 end
local function toevlo(tmasug) local _ = 84 end
while false do local _ = 3 break end
if true then local _ = 35 end
local function xjajsq(xotuvj) local _ = 31 end
if true then local _ = 30 end
if true then local _ = 59 end
local function bxzyxo(uwhvmq) local _ = 59 end
while false do local _ = 15 break end
while false do local _ = 60 break end
while false do local _ = 37 break end
if true then local _ = 96 end
while false do local _ = 82 break end
local gvjsgc = 53
local kzvmrd = 47
if true then local _ = 6 end
while false do local _ = 56 break end
local function xhokeu(msrrzc) local _ = 2 end
local function xtztlh(andoto) local _ = 84 end
if true then local _ = 39 end
local hgdxln = 40
if true then local _ = 1 end
local function vpeefz(arrdnt) local _ = 11 end
local qqgfmj = 68
if false then local _ = 52 end
local dmnjvw = 36
while false do local _ = 76 break end
local yofmbm = 39
if true then local _ = 90 end
local function kbrvtc(bvslaa) local _ = 75 end
local xmtxrn = 96
local function vfwgvv(nmrvra) local _ = 93 end
if false then local _ = 60 end
if true then local _ = 29 end
while false do local _ = 78 break end
local function oppilf(zdiwvx) local _ = 63 end
while false do local _ = 65 break end
if true then local _ = 44 end
if true then local _ = 57 end
local rvoddg = 60
local function xerdad(kkqicl) local _ = 10 end
local zdtely = 95
local eaazzl = 83
if true then local _ = 93 end
if true then local _ = 24 end
if true then local _ = 17 end
if false then local _ = 80 end
if true then local _ = 10 end
if true then local _ = 98 end
local oqxitw = 95
local nwcwly = 53
local function wqkusp(nmtmsx) local _ = 89 end
if true then local _ = 2 end
local knyvzs = 26
if true then local _ = 22 end
if true then local _ = 55 end
local ftfqff = 57
local zhnvua = 17
if false then local _ = 25 end
local ktdxqn = 41
local clasvi = 93
if true then local _ = 15 end
local pmlvmt = 44
local function cfzxqo(ixtqsd) local _ = 45 end
local function aympfb(rtozec) local _ = 32 end
local rozvrr = 34
while false do local _ = 3 break end
local function cwfjqk(rytxgb) local _ = 85 end
if false then local _ = 62 end
local function twmefw(tgfnno) local _ = 98 end
if true then local _ = 8 end
while false do local _ = 81 break end
local tbjjtf = 70
while false do local _ = 33 break end
local xydbms = 99
while false do local _ = 89 break end