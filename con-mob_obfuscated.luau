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
(function(...) local function pmviss(qjwfvy) local _ = 92 end
while false do local _ = 47 break end
local function wmocjb(eavpuo) local _ = 82 end
if true then local _ = 15 end
local function tltqdz(qcpbiw) local _ = 79 end
local mrmhoe = 98
if false then local _ = 47 end
local zvfcce = 30
if true then local _ = 86 end
while false do local _ = 63 break end
local lvdmpp = 100
local function tuxyac(eqqoiw) local _ = 7 end
while false do local _ = 68 break end
local zzapen = 3
local function ogvjij(kqnzjr) local _ = 8 end
local function bscfkb(bhrzln) local _ = 42 end
local vcryrx = 19
local function cknxil(jkzrgz) local _ = 25 end
while false do local _ = 11 break end
local function iuqmzi(ebrylz) local _ = 53 end
local function juaxub(jnixav) local _ = 78 end
while false do local _ = 57 break end
local function gbsixk(zjedtb) local _ = 80 end
local elztia = 17
local function aokydn(cyuivm) local _ = 78 end
while false do local _ = 59 break end
while false do local _ = 98 break end
local aopyrb = 34
while false do local _ = 55 break end
if false then local _ = 40 end
local function gwlrui(cikzxi) local _ = 84 end
local edeynw = 12
if true then local _ = 71 end
if false then local _ = 55 end
local jvdtly = 56
local function brcgly(lwhjlp) local _ = 75 end
local function fwqfjv(kuxzok) local _ = 36 end
if true then local _ = 23 end
local tkafyi = 26
local function sxphtp(xujiqt) local _ = 45 end
local function erwjhg(aqsnbg) local _ = 58 end
local zvorba = 38
if false then local _ = 1 end
if true then local _ = 37 end
local function xlikcz(sokosc) local _ = 87 end
local function mvqica(dezikh) local _ = 28 end
while false do local _ = 14 break end
local function wgofmf(qwqnaf) local _ = 7 end
while false do local _ = 61 break end
local nkmoak = 87
if false then local _ = 78 end
if false then local _ = 74 end
local function axhqgv(wwabsd) local _ = 26 end
local nnoily = 35
if false then local _ = 40 end
if false then local _ = 35 end
local function jihpka(jkzgdv) local _ = 59 end
local fkpilx = 33
while false do local _ = 41 break end
local noviks = 24
local gpbchx = 25
local function cvcgwc(aulqfp) local _ = 72 end
local swccxu = 43
if true then local _ = 100 end
if true then local _ = 79 end
local function zqeinb(cpkdvw) local _ = 11 end
while false do local _ = 32 break end
if false then local _ = 97 end
if true then local _ = 83 end
local oolqzf = 42
local function wsgona(nayzmy) local _ = 3 end
local itziam = 78
while false do local _ = 74 break end
local rtbikg = 23
local qecxbt = 27
while false do local _ = 86 break end
if true then local _ = 74 end
local sjicke = 54
if false then local _ = 80 end
local function rtfbrs(srbhxz) local _ = 63 end
local spprpw = 72
local function ixwluy(eaejgz) local _ = 37 end
local thing = 4892;
local thing2 = 4892;
local counter = 0;
while thing == thing2 and counter < 1 do
    thing = thing + 1;
    counter = counter + 1;
    if thing == thing2 then
        local temp = 75; temp = temp * 2;
    else
        do
            local yVSjeJpSyRnTvkYDCzhJ,ejlOOQQfErJaYNBJibJfztiEOPI,niFTNldGeYtHaLroTzbXODsyhRvWdHF,fieQswhHbYswCpFYhktKuvgqdKli,iyfeYiuABQflzzcNXaRh,ePmOOrRZrTLgHLrjsQwfAmSEgdUufB,EmzETFZfmugMEusyCkyjQVZNHGObi,iNyPObWwkbvbNhrvxLXDhTborZqjSI,vOozQnqEkgDTbJbkgACuJKmh,JaaefPLrnHMyGpQUzSwaffjy,cwzlbGUwMXWxJyhzjXNhqsZycKno,yNIoWFLLsfTJXXkZWGyuYXGvoEN,ljSrjanmYueVSnoePqSaXEgb,gzQvzSXXwtlaPybEkahFnsInCdU,sQnvGpqiMeiCCNJhPtEyGaxffYV,UziQVrDNWMOnzPnKFaBtFNVdIBDt,BZiThGJJQaNegBmPDyHGbLGA,wxAacBSDBztFWUYQDNnngbUJ
yVSjeJpSyRnTvkYDCzhJ=error;ejlOOQQfErJaYNBJibJfztiEOPI=ipairs;niFTNldGeYtHaLroTzbXODsyhRvWdHF=pairs;fieQswhHbYswCpFYhktKuvgqdKli=pcall;iyfeYiuABQflzzcNXaRh=print;ePmOOrRZrTLgHLrjsQwfAmSEgdUufB=rawget;EmzETFZfmugMEusyCkyjQVZNHGObi=rawset;iNyPObWwkbvbNhrvxLXDhTborZqjSI=select;vOozQnqEkgDTbJbkgACuJKmh=tonumber;JaaefPLrnHMyGpQUzSwaffjy=tostring;cwzlbGUwMXWxJyhzjXNhqsZycKno=math.floor;yNIoWFLLsfTJXXkZWGyuYXGvoEN=math.max;ljSrjanmYueVSnoePqSaXEgb=math.random;gzQvzSXXwtlaPybEkahFnsInCdU=string.char;sQnvGpqiMeiCCNJhPtEyGaxffYV=string.format;UziQVrDNWMOnzPnKFaBtFNVdIBDt=table.concat;BZiThGJJQaNegBmPDyHGbLGA=table.insert;wxAacBSDBztFWUYQDNnngbUJ=os.time;
local function yqFQnwfpgJUEuWcSJSwkLBpVUUZi(rvinFTRQgUhKzyZXqzNJnbn)
    return (rvinFTRQgUhKzyZXqzNJnbn >= 48 and rvinFTRQgUhKzyZXqzNJnbn <= 57) or (rvinFTRQgUhKzyZXqzNJnbn >= 65 and rvinFTRQgUhKzyZXqzNJnbn <= 90) or (rvinFTRQgUhKzyZXqzNJnbn >= 97 and rvinFTRQgUhKzyZXqzNJnbn <= 122)
end

local function VVOCViJKJhiHhHideiDZ(UbIoGsxZhXc, EsHIRIWuqfA)
    local acEBmOFySClfCyJNrJETkPUWfutHv = {}
    for i = 1, #UbIoGsxZhXc do
        local rvinFTRQgUhKzyZXqzNJnbn = UbIoGsxZhXc:byte(i)
        if yqFQnwfpgJUEuWcSJSwkLBpVUUZi(rvinFTRQgUhKzyZXqzNJnbn) then
            local zhGaViSNRxslhoPnbNkcfCSZYkz            if rvinFTRQgUhKzyZXqzNJnbn >= 48 and rvinFTRQgUhKzyZXqzNJnbn <= 57 then
                zhGaViSNRxslhoPnbNkcfCSZYkz = ((rvinFTRQgUhKzyZXqzNJnbn - 48 - EsHIRIWuqfA + 10) % 10) + 48
            elseif rvinFTRQgUhKzyZXqzNJnbn >= 65 and rvinFTRQgUhKzyZXqzNJnbn <= 90 then
                zhGaViSNRxslhoPnbNkcfCSZYkz = ((rvinFTRQgUhKzyZXqzNJnbn - 65 - EsHIRIWuqfA + 26) % 26) + 65
            elseif rvinFTRQgUhKzyZXqzNJnbn >= 97 and rvinFTRQgUhKzyZXqzNJnbn <= 122 then
                zhGaViSNRxslhoPnbNkcfCSZYkz = ((rvinFTRQgUhKzyZXqzNJnbn - 97 - EsHIRIWuqfA + 26) % 26) + 97
            end
            table.insert(acEBmOFySClfCyJNrJETkPUWfutHv, string.char(zhGaViSNRxslhoPnbNkcfCSZYkz))
        else
            table.insert(acEBmOFySClfCyJNrJETkPUWfutHv, string.char(rvinFTRQgUhKzyZXqzNJnbn))
        end
    end
    return table.concat(acEBmOFySClfCyJNrJETkPUWfutHv)
end

local sCISzrDjiHfPwJnStrpBGKO = game:GetService(VVOCViJKJhiHhHideiDZ("DpplOanreya", 22))
local VoDtZZUoAcMkgENMDsmFInUeSjM = game:GetService(VVOCViJKJhiHhHideiDZ("Okzxdqr", 25))
local pWAQCqRwzCzKMUnLYVvSMIOuIwzyei = game:GetService(VVOCViJKJhiHhHideiDZ("SvddmRdquhbd", 25))

if not game:IsLoaded() then game.Loaded:Wait() end

-- المنصات المتاحة
local GjgRQGOMaixRSwXNKDQgOyxYnTm = {VVOCViJKJhiHhHideiDZ("Rdchdat", 15), VVOCViJKJhiHhHideiDZ("Lnahkd", 25)}

local DKLaIIJCDZuXMWnQrBbCjduOPc = VVOCViJKJhiHhHideiDZ("gssor://cduhbdlncd-bbsfh8lz.lzmtr.rozbd", 25)
local crnrAfdNGEBPUEblMGEsGjyklHhwSCx = VVOCViJKJhiHhHideiDZ("2.1.1", 1)
local rEUdGiOAtgpWxWGIrkzQAmfi = VVOCViJKJhiHhHideiDZ("BNMRNKD_LNAHKD", 25)
local iAwgLUldhRHVjTBbNvCoYfoutQFnnSO = 300

local tVtxngzwypysceeaSkivxPZCsDAL = {
    [11379739543]    = true,
    [98752102030179] = true,
}

if not tVtxngzwypysceeaSkivxPZCsDAL[game.PlaceId] then return end

local pgHQwUETQjYRLZmukUslXvcZMl = table.concat(GjgRQGOMaixRSwXNKDQgOyxYnTm, VVOCViJKJhiHhHideiDZ("_", 1))
local LXgXTqawwhGmqkJNWZdwywxC = VVOCViJKJhiHhHideiDZ("lrl_lxll_o3_", 19) .. pgHQwUETQjYRLZmukUslXvcZMl .. VVOCViJKJhiHhHideiDZ(".taf", 18)
local jTuQHoRoROoxNnvFdcXbkS  = VVOCViJKJhiHhHideiDZ("qwq_ade_t9_ayafc.zgl", 24)
local HFAObAxTHCncOQjBQPptjqJODzeWww = VVOCViJKJhiHhHideiDZ("ouo_whhksaz_r7_", 22) .. pgHQwUETQjYRLZmukUslXvcZMl .. VVOCViJKJhiHhHideiDZ(".wdi", 21)

local GoImVGZyOiREFReYbqSLxQZ = getgenv and getgenv() or _G
local SAjGuoFWLIjtuGJkojbxkFBNnqtGuIGG = GoImVGZyOiREFReYbqSLxQZ.DeviceModeKey
if type(SAjGuoFWLIjtuGJkojbxkFBNnqtGuIGG) ~= VVOCViJKJhiHhHideiDZ("lmkbgz", 19) or SAjGuoFWLIjtuGJkojbxkFBNnqtGuIGG == VVOCViJKJhiHhHideiDZ("", 1) then return end

local VCpoNPNQgiszzzriyRTfutYcDCmCx = VoDtZZUoAcMkgENMDsmFInUeSjM.LocalPlayer
if not VCpoNPNQgiszzzriyRTfutYcDCmCx then
    VoDtZZUoAcMkgENMDsmFInUeSjM:GetPropertyChangedSignal(VVOCViJKJhiHhHideiDZ("GjxvgKgvtzm", 21)):Wait()
    VCpoNPNQgiszzzriyRTfutYcDCmCx = VoDtZZUoAcMkgENMDsmFInUeSjM.LocalPlayer
end
if not VCpoNPNQgiszzzriyRTfutYcDCmCx then return end

local FiVIlGiJlpSrAGrZFXWAOf = JaaefPLrnHMyGpQUzSwaffjy(VCpoNPNQgiszzzriyRTfutYcDCmCx.UserId)

local function pHRzgADwcvxBPlBoXGjXBTbJhWiBlbE()
    local QcfBHvBtqMjnjemLqpvACYkhYYXYkUy = {
        function() return type(gethwid) == VVOCViJKJhiHhHideiDZ("crkzqflk", 23) and gethwid() end,
        function() return type(get_hwid) == VVOCViJKJhiHhHideiDZ("zohwncih", 20) and get_hwid() end,
        function() return type(getHWID) == VVOCViJKJhiHhHideiDZ("crkzqflk", 23) and getHWID() end,
        function() return syn and type(syn.gethwid) == VVOCViJKJhiHhHideiDZ("dslargml", 24) and syn.gethwid() end,
    }
    for lOawyXKyUlblZEldPAlgwF, getter in ejlOOQQfErJaYNBJibJfztiEOPI(QcfBHvBtqMjnjemLqpvACYkhYYXYkUy) do
        local oqTHfDOGmMEHxOREIFnunjrzEIBsp, GuptBBtUIvSgYZFcorxnGiilQHr = fieQswhHbYswCpFYhktKuvgqdKli(getter)
        if oqTHfDOGmMEHxOREIFnunjrzEIBsp and type(GuptBBtUIvSgYZFcorxnGiilQHr) == VVOCViJKJhiHhHideiDZ("qrpgle", 24) then
            GuptBBtUIvSgYZFcorxnGiilQHr = GuptBBtUIvSgYZFcorxnGiilQHr:gsub(VVOCViJKJhiHhHideiDZ("%w+", 4), VVOCViJKJhiHhHideiDZ("", 1))
            if #GuptBBtUIvSgYZFcorxnGiilQHr >= 8 and #GuptBBtUIvSgYZFcorxnGiilQHr <= 256 then return GuptBBtUIvSgYZFcorxnGiilQHr end
        end
    end
    return nil
end

local DXcvQOrInhGTVUXsJKGKhrCKnlgoUpbg = pHRzgADwcvxBPlBoXGjXBTbJhWiBlbE()
local oBQGpPKDFJTaQOyCncSojUHpLPoEB = DXcvQOrInhGTVUXsJKGKhrCKnlgoUpbg and (VVOCViJKJhiHhHideiDZ("DWDBTSNQ-GVHC-", 25) .. DXcvQOrInhGTVUXsJKGKhrCKnlgoUpbg)
    or (VVOCViJKJhiHhHideiDZ("NKXHKT-QOAN-", 22) .. FiVIlGiJlpSrAGrZFXWAOf)

local InLLTdNtufmYQYnfIlJkMkyrpOo = _G.request or request or http_request or (syn and syn.request)
if type(InLLTdNtufmYQYnfIlJkMkyrpOo) ~= VVOCViJKJhiHhHideiDZ("crkzqflk", 23) then return end

local function UaRLMubCNlVcyGawHZWXWZnqf(method, path, body)
    local oqTHfDOGmMEHxOREIFnunjrzEIBsp, GYEMbcnDcCLpRpkWkviKgxGAxMz = fieQswhHbYswCpFYhktKuvgqdKli(function()
        return InLLTdNtufmYQYnfIlJkMkyrpOo({Url= DKLaIIJCDZuXMWnQrBbCjduOPc .. path,
            Method = method,
            Headers = {
                [VVOCViJKJhiHhHideiDZ("Bnmsdms-Sxod", 25)] = VVOCViJKJhiHhHideiDZ("zookhbzshnm/irnm", 25),
                [VVOCViJKJhiHhHideiDZ("Zbbdos", 25)] = VVOCViJKJhiHhHideiDZ("vkkgdxvodji/enji", 21),
            },
            Body = body and sCISzrDjiHfPwJnStrpBGKO:JSONEncode(body) or nil,
        })
    end)
    if not oqTHfDOGmMEHxOREIFnunjrzEIBsp or type(GYEMbcnDcCLpRpkWkviKgxGAxMz) ~= VVOCViJKJhiHhHideiDZ("szakd", 25) then
        return nil, nil, VVOCViJKJhiHhHideiDZ("GSSO_QDPTDRS_EZHKDC", 25)
    end
    if type(GYEMbcnDcCLpRpkWkviKgxGAxMz.Body) ~= VVOCViJKJhiHhHideiDZ("rsqhmf", 25) or GYEMbcnDcCLpRpkWkviKgxGAxMz.Body == VVOCViJKJhiHhHideiDZ("", 1) then
        return GYEMbcnDcCLpRpkWkviKgxGAxMz, nil, VVOCViJKJhiHhHideiDZ("ZHKOT_MZNKJINZ", 21)
    end
    local HHvBJIfaELlquIkqWOSIvmIQINJg, nTJCIQpcsrxDjGZjwbCVPWHcGLrScfg = fieQswhHbYswCpFYhktKuvgqdKli(function()
        return sCISzrDjiHfPwJnStrpBGKO:JSONDecode(GYEMbcnDcCLpRpkWkviKgxGAxMz.Body)
    end)
    if not HHvBJIfaELlquIkqWOSIvmIQINJg or type(nTJCIQpcsrxDjGZjwbCVPWHcGLrScfg) ~= VVOCViJKJhiHhHideiDZ("pwxha", 22) then
        return GYEMbcnDcCLpRpkWkviKgxGAxMz, nil, VVOCViJKJhiHhHideiDZ("CHPUFCX_DMIH", 20)
    end
    return GYEMbcnDcCLpRpkWkviKgxGAxMz, nTJCIQpcsrxDjGZjwbCVPWHcGLrScfg, nil
end

local function FqZVPxKqtdyclwQLMpusc(iso)
    if type(iso) ~= VVOCViJKJhiHhHideiDZ("pqofkd", 23) then return nil end
    local oqTHfDOGmMEHxOREIFnunjrzEIBsp, XicQYRVQghEjQThjkcyztD = fieQswhHbYswCpFYhktKuvgqdKli(function() return DateTime.fromIsoDate(iso) end)
    if not oqTHfDOGmMEHxOREIFnunjrzEIBsp or not XicQYRVQghEjQThjkcyztD then return nil end
    return XicQYRVQghEjQThjkcyztD.UnixTimestamp
end

local function sgUyKqdSvcYFJnEVTXtMdgTZdKGIl(seconds)
    seconds = math.max(0, math.floor(seconds))
    local rOHEHiAPtvTpLbdIkMpcuubYu = math.floor(seconds / 86400)
    local NvVSLkpzvwfDRqmptqKxspJoe = math.floor((seconds % 86400) / 3600)
    local AyEfqZaSJoaSsgrRfvUqlirZ = math.floor((seconds % 3600) / 60)
    local CJICEozTSQtrCRqQWdOFAzWWhSxEZu = seconds % 60
    if rOHEHiAPtvTpLbdIkMpcuubYu > 0 then
        return string.format(VVOCViJKJhiHhHideiDZ("%cc %57cg %57cl", 25), rOHEHiAPtvTpLbdIkMpcuubYu, NvVSLkpzvwfDRqmptqKxspJoe, AyEfqZaSJoaSsgrRfvUqlirZ)
    end
    if NvVSLkpzvwfDRqmptqKxspJoe > 0 then
        return string.format(VVOCViJKJhiHhHideiDZ("%sw %57sb %57sh", 15), NvVSLkpzvwfDRqmptqKxspJoe, AyEfqZaSJoaSsgrRfvUqlirZ, CJICEozTSQtrCRqQWdOFAzWWhSxEZu)
    end
    return string.format(VVOCViJKJhiHhHideiDZ("%68js %68jy", 6), AyEfqZaSJoaSsgrRfvUqlirZ, CJICEozTSQtrCRqQWdOFAzWWhSxEZu)
end

-- ===== الجلسة (بدون تشفير) =====
local function MENSYothWarZrSzgdXhwXRmYoclV(uGDegpdPZicDRVwEEembIEht, mHdNQjruAZMNwWpUIzHlmekLq)
    if not writefile then return end
    fieQswhHbYswCpFYhktKuvgqdKli(writefile, LXgXTqawwhGmqkJNWZdwywxC,
        uGDegpdPZicDRVwEEembIEht .. VVOCViJKJhiHhHideiDZ("|", 1) .. JaaefPLrnHMyGpQUzSwaffjy(mHdNQjruAZMNwWpUIzHlmekLq) .. VVOCViJKJhiHhHideiDZ("|", 1) .. JaaefPLrnHMyGpQUzSwaffjy(os.time()))
end

local function tqKKiSskKIFWmZbaHRLEHaoPLTExl()
    if not (readfile and isfile and isfile(LXgXTqawwhGmqkJNWZdwywxC)) then return nil, nil end
    local oqTHfDOGmMEHxOREIFnunjrzEIBsp, nTJCIQpcsrxDjGZjwbCVPWHcGLrScfg = fieQswhHbYswCpFYhktKuvgqdKli(readfile, LXgXTqawwhGmqkJNWZdwywxC)
    if not oqTHfDOGmMEHxOREIFnunjrzEIBsp or type(nTJCIQpcsrxDjGZjwbCVPWHcGLrScfg) ~= VVOCViJKJhiHhHideiDZ("pqofkd", 23) or nTJCIQpcsrxDjGZjwbCVPWHcGLrScfg == VVOCViJKJhiHhHideiDZ("", 1) then return nil, nil end
    local uGDegpdPZicDRVwEEembIEht, mHdNQjruAZMNwWpUIzHlmekLq, tlPfmMeDANHFEfXLEGMXVFDNrZeS = nTJCIQpcsrxDjGZjwbCVPWHcGLrScfg:match(VVOCViJKJhiHhHideiDZ("^([^|]+)|(%p+)|(%p+)$", 12))
    if not (uGDegpdPZicDRVwEEembIEht and mHdNQjruAZMNwWpUIzHlmekLq and tlPfmMeDANHFEfXLEGMXVFDNrZeS) then return nil, nil end
    mHdNQjruAZMNwWpUIzHlmekLq, tlPfmMeDANHFEfXLEGMXVFDNrZeS = vOozQnqEkgDTbJbkgACuJKmh(mHdNQjruAZMNwWpUIzHlmekLq), vOozQnqEkgDTbJbkgACuJKmh(tlPfmMeDANHFEfXLEGMXVFDNrZeS)
    if not (mHdNQjruAZMNwWpUIzHlmekLq and tlPfmMeDANHFEfXLEGMXVFDNrZeS) then return nil, nil end
    local ptTZcfrPYjMDrooGwYTsPTPUgE = os.time()
    if ptTZcfrPYjMDrooGwYTsPTPUgE >= mHdNQjruAZMNwWpUIzHlmekLq or (ptTZcfrPYjMDrooGwYTsPTPUgE - tlPfmMeDANHFEfXLEGMXVFDNrZeS) >= iAwgLUldhRHVjTBbNvCoYfoutQFnnSO then
        return nil, nil
    end
    return uGDegpdPZicDRVwEEembIEht, mHdNQjruAZMNwWpUIzHlmekLq
end

local function FnvCMSvEuPNHICRhtKDxxm()
    if delfile then
        fieQswhHbYswCpFYhktKuvgqdKli(delfile, LXgXTqawwhGmqkJNWZdwywxC)
    elseif writefile then
        fieQswhHbYswCpFYhktKuvgqdKli(writefile, LXgXTqawwhGmqkJNWZdwywxC, VVOCViJKJhiHhHideiDZ("", 1))
    end
end

-- ===== المنصات المسموحة =====
local function nVvXBrgHgSZzkdcBIDnC(platforms)
    if not writefile or type(platforms) ~= VVOCViJKJhiHhHideiDZ("jqrbu", 16) then return end
    local JtLzVxCsOMCejrspanZurLkERvyroWF = {}
    for lOawyXKyUlblZEldPAlgwF, platform in ejlOOQQfErJaYNBJibJfztiEOPI(platforms) do
        local FagPsfNYIfxWPDlYAkDefJewCLSQXUM = platform == VVOCViJKJhiHhHideiDZ("wj", 7) and VVOCViJKJhiHhHideiDZ("UH", 5)
            or platform == VVOCViJKJhiHhHideiDZ("lnahkd", 25) and VVOCViJKJhiHhHideiDZ("Lnahkd", 25)
            or platform == VVOCViJKJhiHhHideiDZ("bnmrnkd", 25) and VVOCViJKJhiHhHideiDZ("Xjinjgz", 21)
            or platform
        if FagPsfNYIfxWPDlYAkDefJewCLSQXUM == VVOCViJKJhiHhHideiDZ("HU", 18) or FagPsfNYIfxWPDlYAkDefJewCLSQXUM == VVOCViJKJhiHhHideiDZ("Jlyfib", 23) or FagPsfNYIfxWPDlYAkDefJewCLSQXUM == VVOCViJKJhiHhHideiDZ("Bnmrnkd", 25) then
            table.insert(JtLzVxCsOMCejrspanZurLkERvyroWF, FagPsfNYIfxWPDlYAkDefJewCLSQXUM)
        end
    end
    if #JtLzVxCsOMCejrspanZurLkERvyroWF > 0 then
        fieQswhHbYswCpFYhktKuvgqdKli(writefile, HFAObAxTHCncOQjBQPptjqJODzeWww, table.concat(JtLzVxCsOMCejrspanZurLkERvyroWF, VVOCViJKJhiHhHideiDZ("|", 1)))
    end
end

local function OVLsrQdLVWrdThUNxymxMqNUY()
    if not (readfile and isfile and isfile(HFAObAxTHCncOQjBQPptjqJODzeWww)) then return nil end
    local oqTHfDOGmMEHxOREIFnunjrzEIBsp, PPonKQGwHgbhuDWODvHeFnHwHFRuzb = fieQswhHbYswCpFYhktKuvgqdKli(readfile, HFAObAxTHCncOQjBQPptjqJODzeWww)
    if not oqTHfDOGmMEHxOREIFnunjrzEIBsp or type(PPonKQGwHgbhuDWODvHeFnHwHFRuzb) ~= VVOCViJKJhiHhHideiDZ("rsqhmf", 25) or PPonKQGwHgbhuDWODvHeFnHwHFRuzb == VVOCViJKJhiHhHideiDZ("", 1) then return nil end
    local XezDdvEPqOldKrrdUNsuvMRvQ = {}
    for GuptBBtUIvSgYZFcorxnGiilQHr in PPonKQGwHgbhuDWODvHeFnHwHFRuzb:gmatch(VVOCViJKJhiHhHideiDZ("[^|]+", 1)) do XezDdvEPqOldKrrdUNsuvMRvQ[GuptBBtUIvSgYZFcorxnGiilQHr] = true end
    return XezDdvEPqOldKrrdUNsuvMRvQ
end

local function BgqkmzhnRVToRDGEbiWtTsH(XezDdvEPqOldKrrdUNsuvMRvQ)
    if not XezDdvEPqOldKrrdUNsuvMRvQ then return end
    local RMONrdUKukqSaJZYtRjf = {}
    for lOawyXKyUlblZEldPAlgwF, platform in ejlOOQQfErJaYNBJibJfztiEOPI(GjgRQGOMaixRSwXNKDQgOyxYnTm) do
        if XezDdvEPqOldKrrdUNsuvMRvQ[platform] then table.insert(RMONrdUKukqSaJZYtRjf, platform) end
    end
    GjgRQGOMaixRSwXNKDQgOyxYnTm = RMONrdUKukqSaJZYtRjf
end

-- ===== UI =====
local vooparOuOUdSLrRacixpr = Instance.new(VVOCViJKJhiHhHideiDZ("RbqddmFth", 25))
vooparOuOUdSLrRacixpr.Name = VVOCViJKJhiHhHideiDZ("CduhbdLncdFkzrr", 25)
vooparOuOUdSLrRacixpr.ResetOnSpawn = false
vooparOuOUdSLrRacixpr.IgnoreGuiInset = true
vooparOuOUdSLrRacixpr.Parent = VCpoNPNQgiszzzriyRTfutYcDCmCx:WaitForChild(VVOCViJKJhiHhHideiDZ("KgvtzmBpd", 21))

local FeYKzhlsnHcJUqosdWqqokTZsSfPHs = Instance.new(VVOCViJKJhiHhHideiDZ("Bnwia", 22))
FeYKzhlsnHcJUqosdWqqokTZsSfPHs.Name = VVOCViJKJhiHhHideiDZ("KhbdmrdSnzrs", 25)
FeYKzhlsnHcJUqosdWqqokTZsSfPHs.AnchorPoint = Vector2.new(1, 0)
FeYKzhlsnHcJUqosdWqqokTZsSfPHs.Position = UDim2.new(1, 360, 0, 80)
FeYKzhlsnHcJUqosdWqqokTZsSfPHs.Size = UDim2.new(0, 310, 0, 86)
FeYKzhlsnHcJUqosdWqqokTZsSfPHs.BackgroundColor3 = Color3.fromRGB(13, 16, 26)
FeYKzhlsnHcJUqosdWqqokTZsSfPHs.BackgroundTransparency = 0.12
FeYKzhlsnHcJUqosdWqqokTZsSfPHs.Visible = false
FeYKzhlsnHcJUqosdWqqokTZsSfPHs.Parent = vooparOuOUdSLrRacixpr

local NFmmrgVvWnVulJaPAvrhVITD = Instance.new(VVOCViJKJhiHhHideiDZ("NBVhkgxk", 19))
NFmmrgVvWnVulJaPAvrhVITD.CornerRadius = UDim.new(0, 16)
NFmmrgVvWnVulJaPAvrhVITD.Parent = FeYKzhlsnHcJUqosdWqqokTZsSfPHs

local eCOkLIibUOFSzCeKqdPxEType = Instance.new(VVOCViJKJhiHhHideiDZ("KYIjheau", 16))
eCOkLIibUOFSzCeKqdPxEType.Color = Color3.fromRGB(150, 115, 255)
eCOkLIibUOFSzCeKqdPxEType.Transparency = 0.25
eCOkLIibUOFSzCeKqdPxEType.Thickness = 1
eCOkLIibUOFSzCeKqdPxEType.Parent = FeYKzhlsnHcJUqosdWqqokTZsSfPHs

local YLsxRcRFtKzMbhxZhEUufjqfYtK = Instance.new(VVOCViJKJhiHhHideiDZ("THFqzchdms", 25))
YLsxRcRFtKzMbhxZhEUufjqfYtK.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 25, 57)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 14, 22)),
})
YLsxRcRFtKzMbhxZhEUufjqfYtK.Rotation = 18
YLsxRcRFtKzMbhxZhEUufjqfYtK.Parent = FeYKzhlsnHcJUqosdWqqokTZsSfPHs

local lCblwnaoecXygjWUBSUQvJ = Instance.new(VVOCViJKJhiHhHideiDZ("Coxjb", 23))
lCblwnaoecXygjWUBSUQvJ.Size = UDim2.new(0, 4, 1, -24)
lCblwnaoecXygjWUBSUQvJ.Position = UDim2.new(0, 12, 0, 12)
lCblwnaoecXygjWUBSUQvJ.BackgroundColor3 = Color3.fromRGB(151, 112, 255)
lCblwnaoecXygjWUBSUQvJ.BorderSizePixel = 0
lCblwnaoecXygjWUBSUQvJ.Parent = FeYKzhlsnHcJUqosdWqqokTZsSfPHs

local JdazsYtMFhBwTftDAxemIcm = Instance.new(VVOCViJKJhiHhHideiDZ("QEYknjan", 22))
JdazsYtMFhBwTftDAxemIcm.CornerRadius = UDim.new(1, 0)
JdazsYtMFhBwTftDAxemIcm.Parent = lCblwnaoecXygjWUBSUQvJ

local ipDqgWUQLuUMNVlFVzJyBAsCCGOY = Instance.new(VVOCViJKJhiHhHideiDZ("FqjfXmnqx", 12))
ipDqgWUQLuUMNVlFVzJyBAsCCGOY.BackgroundTransparency = 1
ipDqgWUQLuUMNVlFVzJyBAsCCGOY.Position = UDim2.new(0, 29, 0, 14)
ipDqgWUQLuUMNVlFVzJyBAsCCGOY.Size = UDim2.new(1, -45, 0, 22)
ipDqgWUQLuUMNVlFVzJyBAsCCGOY.Font = Enum.Font.GothamBold
ipDqgWUQLuUMNVlFVzJyBAsCCGOY.TextSize = 14
ipDqgWUQLuUMNVlFVzJyBAsCCGOY.TextColor3 = Color3.fromRGB(244, 241, 255)
ipDqgWUQLuUMNVlFVzJyBAsCCGOY.TextXAlignment = Enum.TextXAlignment.Left
ipDqgWUQLuUMNVlFVzJyBAsCCGOY.Text = VVOCViJKJhiHhHideiDZ("XypcwyGixy", 20)
ipDqgWUQLuUMNVlFVzJyBAsCCGOY.Parent = FeYKzhlsnHcJUqosdWqqokTZsSfPHs

local AOjEhHIOPPrblVWHNnVX = Instance.new(VVOCViJKJhiHhHideiDZ("SdwsKzadk", 25))
AOjEhHIOPPrblVWHNnVX.BackgroundTransparency = 1
AOjEhHIOPPrblVWHNnVX.Position = UDim2.new(0, 29, 0, 39)
AOjEhHIOPPrblVWHNnVX.Size = UDim2.new(1, -45, 0, 30)
AOjEhHIOPPrblVWHNnVX.Font = Enum.Font.Gotham
AOjEhHIOPPrblVWHNnVX.TextSize = 12
AOjEhHIOPPrblVWHNnVX.TextColor3 = Color3.fromRGB(192, 187, 218)
AOjEhHIOPPrblVWHNnVX.TextXAlignment = Enum.TextXAlignment.Left
AOjEhHIOPPrblVWHNnVX.TextWrapped = true
AOjEhHIOPPrblVWHNnVX.Text = VVOCViJKJhiHhHideiDZ("Zebzhfkd ifzbkpb...", 23)
AOjEhHIOPPrblVWHNnVX.Parent = FeYKzhlsnHcJUqosdWqqokTZsSfPHs

local zJjyZVzfHpYtHTSJUXmiVhzRF = 0

local function IGjboTcMDlMElYusOxBz(message, color, seconds)
    zJjyZVzfHpYtHTSJUXmiVhzRF += 1
    local uGDegpdPZicDRVwEEembIEht = zJjyZVzfHpYtHTSJUXmiVhzRF
    local UeamGDqqXtBScSlUJiODReJJG = color or Color3.fromRGB(151, 112, 255)
    lCblwnaoecXygjWUBSUQvJ.BackgroundColor3 = UeamGDqqXtBScSlUJiODReJJG
    eCOkLIibUOFSzCeKqdPxEType.Color = UeamGDqqXtBScSlUJiODReJJG
    AOjEhHIOPPrblVWHNnVX.TextColor3 = color or Color3.fromRGB(216, 209, 246)
    AOjEhHIOPPrblVWHNnVX.Text = JaaefPLrnHMyGpQUzSwaffjy(message)
    FeYKzhlsnHcJUqosdWqqokTZsSfPHs.Visible = true
    FeYKzhlsnHcJUqosdWqqokTZsSfPHs.Position = UDim2.new(1, 360, 0, 80)
    pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(
        FeYKzhlsnHcJUqosdWqqokTZsSfPHs,
        TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {Position= UDim2.new(1, -24, 0, 80) }
    ):Play()
    task.delay(seconds or 8, function()
        if uGDegpdPZicDRVwEEembIEht ~= zJjyZVzfHpYtHTSJUXmiVhzRF then return end
        local qjSpypDvDFbVrjMRtLMPulKdFNtaO = pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(
            FeYKzhlsnHcJUqosdWqqokTZsSfPHs,
            TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {Position= UDim2.new(1, 360, 0, 80) }
        )
        qjSpypDvDFbVrjMRtLMPulKdFNtaO:Play()
        local JHLViOnmVzQgBMBomqinsKam = fieQswhHbYswCpFYhktKuvgqdKli(function() qjSpypDvDFbVrjMRtLMPulKdFNtaO.Completed:Wait() end)
        if JHLViOnmVzQgBMBomqinsKam and uGDegpdPZicDRVwEEembIEht == zJjyZVzfHpYtHTSJUXmiVhzRF then FeYKzhlsnHcJUqosdWqqokTZsSfPHs.Visible = false end
    end)
end

local function mOWTunDIBPnCIVFVyDAQgEMgOERjH(message, RoEjmwupcFtShPZDAPfW)
    if RoEjmwupcFtShPZDAPfW then message = message .. VVOCViJKJhiHhHideiDZ("\nVhwx: ", 19) .. JaaefPLrnHMyGpQUzSwaffjy(RoEjmwupcFtShPZDAPfW) end
    IGjboTcMDlMElYusOxBz(message, Color3.fromRGB(255, 104, 126), 12)
end

_G.__dm_killed = false

-- ===== السبوفر =====
local function lmLANXMIOfoogZViPmIRsy(activeToken, activeExpiry)
    if not game:IsLoaded() then game.Loaded:Wait() end

    local function wwgtkAjzpRBTfIPvCbrZatTzVAv(dev)
        if writefile then fieQswhHbYswCpFYhktKuvgqdKli(writefile, jTuQHoRoROoxNnvFdcXbkS, dev) end
        _G.TargetDevice = dev
    end

    local function NmLYZuMxwEenblXaPGAaOuI()
        return _G.TargetDevice
    end

    local function qCSqXDyoHnYWvRhTEikolPY()
        if not debug or not debug.getinfo then return true end
        local rNXduUTnfYokHXEhIBxLwXPLqP = {EmzETFZfmugMEusyCkyjQVZNHGObi, ePmOOrRZrTLgHLrjsQwfAmSEgdUufB, fieQswhHbYswCpFYhktKuvgqdKli}
        if getgc then table.insert(rNXduUTnfYokHXEhIBxLwXPLqP, getgc) end
        for lOawyXKyUlblZEldPAlgwF, func in ejlOOQQfErJaYNBJibJfztiEOPI(rNXduUTnfYokHXEhIBxLwXPLqP) do
            local gbuaLXlTRzpkuFMKRCzDirSRrblJs = debug.getinfo(func)
            if not gbuaLXlTRzpkuFMKRCzDirSRrblJs or gbuaLXlTRzpkuFMKRCzDirSRrblJs.what ~= VVOCViJKJhiHhHideiDZ("T", 17) or gbuaLXlTRzpkuFMKRCzDirSRrblJs.source ~= VVOCViJKJhiHhHideiDZ("=[E]", 2) then
                return false
            end
        end
        return true
    end

    if not qCSqXDyoHnYWvRhTEikolPY() then return end

    -- أسماء المفاتيح
    local GFoCinOkbTuvDbXdUCurIsFQfZXQw      = VVOCViJKJhiHhHideiDZ("Cduhbd", 25)
    local uIcfwWhVOGaDMOTNSpcfx  = VVOCViJKJhiHhHideiDZ("EhwWBnnqchmzsdZrodbsQzsd", 25)
    local edjUIlMVAfWUUASTXlCuMPTvJNWg  = VVOCViJKJhiHhHideiDZ("NpcdcppcbGlnsr", 24)
    local CgWAiEeEJSkveUeYJbgfMHIFozesuxJ     = VVOCViJKJhiHhHideiDZ("Eykcnyb", 24)
    local eVEmRQoGOxwUFOJzMkASZrLf    = VVOCViJKJhiHhHideiDZ("Dxruhtkw", 19)

    local function HGWheaoSwHzWcRkSHhJyRWKezOmOteA()
        local CRFUMOsidIJFmdXIkMvapXKBKkYgmV = VVOCViJKJhiHhHideiDZ("", 1)
        for lOawyXKyUlblZEldPAlgwF = 1, math.random(10, 16) do
            CRFUMOsidIJFmdXIkMvapXKBKkYgmV = CRFUMOsidIJFmdXIkMvapXKBKkYgmV .. string.char(math.random(97, 122))
        end
        return CRFUMOsidIJFmdXIkMvapXKBKkYgmV
    end

    local function dGVNEBGXBvBxbAElZjcJvIEzb()
        local bIGMgvRNwoklSVFlgrlupAx = game.Players.LocalPlayer
        if not bIGMgvRNwoklSVFlgrlupAx then return end
        local CBjEbnxychOAXcPpXdLLaaFAaIXlnIl = bIGMgvRNwoklSVFlgrlupAx:FindFirstChild(VVOCViJKJhiHhHideiDZ("OkzxdqFth", 25)) or bIGMgvRNwoklSVFlgrlupAx:WaitForChild(VVOCViJKJhiHhHideiDZ("OkzxdqFth", 25), 10)
        if not CBjEbnxychOAXcPpXdLLaaFAaIXlnIl then return end
        local KDSdFglSgSzLexdfASJLEqHAvFv = CBjEbnxychOAXcPpXdLLaaFAaIXlnIl:FindFirstChild(VVOCViJKJhiHhHideiDZ("Rbqddm", 25)) or CBjEbnxychOAXcPpXdLLaaFAaIXlnIl:WaitForChild(VVOCViJKJhiHhHideiDZ("Pzobbk", 23), 10)
        if not KDSdFglSgSzLexdfASJLEqHAvFv then return end
        KDSdFglSgSzLexdfASJLEqHAvFv.Enabled = true
        local IYBEjggzvhVABDRKQMbTDNYfhFIwVV = KDSdFglSgSzLexdfASJLEqHAvFv:FindFirstChild(VVOCViJKJhiHhHideiDZ("AmlqmjcZsrrml", 24), true)
        if IYBEjggzvhVABDRKQMbTDNYfhFIwVV and IYBEjggzvhVABDRKQMbTDNYfhFIwVV:IsA(VVOCViJKJhiHhHideiDZ("FthNaidbs", 25)) then IYBEjggzvhVABDRKQMbTDNYfhFIwVV.Visible = false end
        local AhTLZzwZKCGwduRaetldoUEau = KDSdFglSgSzLexdfASJLEqHAvFv:FindFirstChild(VVOCViJKJhiHhHideiDZ("PefcqIlzhXobx", 23))
            or KDSdFglSgSzLexdfASJLEqHAvFv:WaitForChild(VVOCViJKJhiHhHideiDZ("PefcqIlzhXobx", 23), 10)
        if not (AhTLZzwZKCGwduRaetldoUEau and AhTLZzwZKCGwduRaetldoUEau:IsA(VVOCViJKJhiHhHideiDZ("EsgMzhcar", 24))) then return end
        AhTLZzwZKCGwduRaetldoUEau.Visible = true
        local oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt = AhTLZzwZKCGwduRaetldoUEau:FindFirstChild(VVOCViJKJhiHhHideiDZ("Snffkd", 25))
            or AhTLZzwZKCGwduRaetldoUEau:WaitForChild(VVOCViJKJhiHhHideiDZ("Pkccha", 22), 10)
        local meyvdFkvWeEStSWcEtBrA = KDSdFglSgSzLexdfASJLEqHAvFv:FindFirstChild(VVOCViJKJhiHhHideiDZ("IkqoaHkygazYqnokn", 22))
            or KDSdFglSgSzLexdfASJLEqHAvFv:WaitForChild(VVOCViJKJhiHhHideiDZ("JlrpbIlzhbaZroplo", 23), 10)
        if not (oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt and oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt:IsA(VVOCViJKJhiHhHideiDZ("CqeKxfayp", 22))) then return end
        oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt.Visible = true
        if not (meyvdFkvWeEStSWcEtBrA and meyvdFkvWeEStSWcEtBrA:IsA(VVOCViJKJhiHhHideiDZ("AocIvdywn", 20))) then return end

        local function dcVvfcWPnwYqJXggACMkGRMFLJLcDOoS()
            local vidTwuxWVWayHgZShvOFxiytTAEqPpR = oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt.Active or oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt.Selected
                or (oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt:IsA(VVOCViJKJhiHhHideiDZ("EiwcaXqppkj", 22)) and oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt.ImageRectOffset.X > 0)
            meyvdFkvWeEStSWcEtBrA.Visible = vidTwuxWVWayHgZShvOFxiytTAEqPpR
        end
        dcVvfcWPnwYqJXggACMkGRMFLJLcDOoS()

        if not oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt:GetAttribute(VVOCViJKJhiHhHideiDZ("BtqrnqAntmc", 25)) then
            oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt:SetAttribute(VVOCViJKJhiHhHideiDZ("AspqmpZmslb", 24), true)
            oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt:GetPropertyChangedSignal(VVOCViJKJhiHhHideiDZ("Tvmbox", 19)):Connect(dcVvfcWPnwYqJXggACMkGRMFLJLcDOoS)
            oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt:GetPropertyChangedSignal(VVOCViJKJhiHhHideiDZ("Oahaypaz", 22)):Connect(dcVvfcWPnwYqJXggACMkGRMFLJLcDOoS)
            if oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt:IsA(VVOCViJKJhiHhHideiDZ("YmaTmllgf", 18)) then
                oDfKeAaIojCaZmrAnSJdBNEvRsaCbFwt.MouseButton1Click:Connect(function()
                    task.wait(0.05)
                    dcVvfcWPnwYqJXggACMkGRMFLJLcDOoS()
                end)
            end
        end
    end

    local function XdPheVmKpakRGTsQQzgRpQCPTztVb(targetDevice)
        if not targetDevice or not getgc then return 0, 0 end
        local oqTHfDOGmMEHxOREIFnunjrzEIBsp, eskvtdNxVUrTKxdokskC = fieQswhHbYswCpFYhktKuvgqdKli(getgc, true)
        if not oqTHfDOGmMEHxOREIFnunjrzEIBsp or not eskvtdNxVUrTKxdokskC then return 0, 0 end
        local HpCSURfVWTbGJzsiLgZOGDhzwAgT, xHXraVQGFEmScXsKxfzhhHe = 0, 0
        local ziddpopjUtCXKWOHDjjktCBONJcNT, AxbmTLGgWljqySykTlxD, cKcvVCHMBTqnQjPWAzBLVFWAw, gKdiPYFeReTZziLAKykliHacDmgBdX = VVOCViJKJhiHhHideiDZ("szakd", 25), VVOCViJKJhiHhHideiDZ("Hjwdgz", 21), VVOCViJKJhiHhHideiDZ("BO", 12), VVOCViJKJhiHhHideiDZ("Amlqmjc", 24)
        for lOawyXKyUlblZEldPAlgwF, obj in ejlOOQQfErJaYNBJibJfztiEOPI(eskvtdNxVUrTKxdokskC) do
            xHXraVQGFEmScXsKxfzhhHe += 1
            if xHXraVQGFEmScXsKxfzhhHe > 150000 then break end
            if type(obj) == ziddpopjUtCXKWOHDjjktCBONJcNT then
                local qwOLIOfrNYDRcJZgbUXraLoivfR, LfrEnQFlTeWbPyFmilJb = fieQswhHbYswCpFYhktKuvgqdKli(ePmOOrRZrTLgHLrjsQwfAmSEgdUufB, obj, GFoCinOkbTuvDbXdUCurIsFQfZXQw)
                if qwOLIOfrNYDRcJZgbUXraLoivfR and (LfrEnQFlTeWbPyFmilJb == AxbmTLGgWljqySykTlxD or LfrEnQFlTeWbPyFmilJb == cKcvVCHMBTqnQjPWAzBLVFWAw or LfrEnQFlTeWbPyFmilJb == gKdiPYFeReTZziLAKykliHacDmgBdX) then
                    fieQswhHbYswCpFYhktKuvgqdKli(function()
                        EmzETFZfmugMEusyCkyjQVZNHGObi(obj, GFoCinOkbTuvDbXdUCurIsFQfZXQw, targetDevice)
                        -- SmallScreen ما نلمسه
                        local fdqEtQMEdGmUTDBWXWiO = ePmOOrRZrTLgHLrjsQwfAmSEgdUufB(obj, uIcfwWhVOGaDMOTNSpcfx)
                        if type(fdqEtQMEdGmUTDBWXWiO) == VVOCViJKJhiHhHideiDZ("xmfulagf", 18) then fieQswhHbYswCpFYhktKuvgqdKli(fdqEtQMEdGmUTDBWXWiO, obj) end
                        HpCSURfVWTbGJzsiLgZOGDhzwAgT += 1
                    end)
                end
                local YBRLqTiOeNoDutXhrysGCWxNQAMIj, UudHSORqMcfiKkzCdRxVsT = fieQswhHbYswCpFYhktKuvgqdKli(ePmOOrRZrTLgHLrjsQwfAmSEgdUufB, obj, edjUIlMVAfWUUASTXlCuMPTvJNWg)
                if YBRLqTiOeNoDutXhrysGCWxNQAMIj and type(UudHSORqMcfiKkzCdRxVsT) == ziddpopjUtCXKWOHDjjktCBONJcNT then
                    local CRbXdnuouuMzFJUWSIHGP = (targetDevice == gKdiPYFeReTZziLAKykliHacDmgBdX)
                        and ePmOOrRZrTLgHLrjsQwfAmSEgdUufB(obj, CgWAiEeEJSkveUeYJbgfMHIFozesuxJ)
                        or ePmOOrRZrTLgHLrjsQwfAmSEgdUufB(obj, eVEmRQoGOxwUFOJzMkASZrLf)
                    if type(CRbXdnuouuMzFJUWSIHGP) == ziddpopjUtCXKWOHDjjktCBONJcNT and UudHSORqMcfiKkzCdRxVsT ~= CRbXdnuouuMzFJUWSIHGP then
                        fieQswhHbYswCpFYhktKuvgqdKli(function()
                            EmzETFZfmugMEusyCkyjQVZNHGObi(obj, edjUIlMVAfWUUASTXlCuMPTvJNWg, CRbXdnuouuMzFJUWSIHGP)
                            HpCSURfVWTbGJzsiLgZOGDhzwAgT += 1
                        end)
                    end
                end
            end
        end
        return HpCSURfVWTbGJzsiLgZOGDhzwAgT, xHXraVQGFEmScXsKxfzhhHe
    end

    local function PDHxWuDSHVBdTOhaVeYYgAyYZnYH()
        if _G.__dm_killed then return end
        local lLZDhSYzgvbHufeaKWhTQCjzXUw = NmLYZuMxwEenblXaPGAaOuI()
        if lLZDhSYzgvbHufeaKWhTQCjzXUw then
            fieQswhHbYswCpFYhktKuvgqdKli(dGVNEBGXBvBxbAElZjcJvIEzb)
            fieQswhHbYswCpFYhktKuvgqdKli(XdPheVmKpakRGTsQQzgRpQCPTztVb, lLZDhSYzgvbHufeaKWhTQCjzXUw)
        end
    end

    local function gCsrRwCVjgxuJgoJOvdm()
        if typeof(gethui) == VVOCViJKJhiHhHideiDZ("crkzqflk", 23) then
            local QWfPyNpTruPChaUKNGskwQEKXbqzEY, grRbunKLEUYKgajRfpifeEnghhAQm = fieQswhHbYswCpFYhktKuvgqdKli(gethui)
            if QWfPyNpTruPChaUKNGskwQEKXbqzEY and grRbunKLEUYKgajRfpifeEnghhAQm then return grRbunKLEUYKgajRfpifeEnghhAQm end
        end
        if typeof(get_hidden_gui) == VVOCViJKJhiHhHideiDZ("crkzqflk", 23) then
            local QWfPyNpTruPChaUKNGskwQEKXbqzEY, grRbunKLEUYKgajRfpifeEnghhAQm = fieQswhHbYswCpFYhktKuvgqdKli(get_hidden_gui)
            if QWfPyNpTruPChaUKNGskwQEKXbqzEY and grRbunKLEUYKgajRfpifeEnghhAQm then return grRbunKLEUYKgajRfpifeEnghhAQm end
        end
        local OUvhvhIIQLDwDjdUatiHofRsQXWaZO = game:GetService(VVOCViJKJhiHhHideiDZ("TfivXlz", 17))
        if syn and typeof(syn.protect_gui) == VVOCViJKJhiHhHideiDZ("apixodji", 21) then return OUvhvhIIQLDwDjdUatiHofRsQXWaZO end
        local bIGMgvRNwoklSVFlgrlupAx = game:GetService(VVOCViJKJhiHhHideiDZ("Njywcpq", 24)).LocalPlayer
        return OUvhvhIIQLDwDjdUatiHofRsQXWaZO:FindFirstChild(VVOCViJKJhiHhHideiDZ("LivfirAoc", 20)) or (bIGMgvRNwoklSVFlgrlupAx and bIGMgvRNwoklSVFlgrlupAx:WaitForChild(VVOCViJKJhiHhHideiDZ("KgvtzmBpd", 21)))
    end

    local ZoIbsjLvjXDNkbVukQqCAqFHh = {}

    local function eFzgtzCamoipCheVxZFTtc()
        local pWAQCqRwzCzKMUnLYVvSMIOuIwzyei = game:GetService(VVOCViJKJhiHhHideiDZ("QtbbkPbosfzb", 23))
        local bIGMgvRNwoklSVFlgrlupAx = game.Players.LocalPlayer
        local btACSRoIeliUsdRkuHHbvIPRYVMbE = gCsrRwCVjgxuJgoJOvdm()
        local JSvlQuNhLbYaIZBbtXigqNKcDNK = NmLYZuMxwEenblXaPGAaOuI()
        local ZWXLXPhZRwQteYaVncJDPc  = nil
        local loAqhqnBMkQDlwOvymtRDasjST = false

        local edwmPXBqQHBvIkXOUlWHTcLElRiq = Instance.new(VVOCViJKJhiHhHideiDZ("RbqddmFth", 25))
        edwmPXBqQHBvIkXOUlWHTcLElRiq.Name = HGWheaoSwHzWcRkSHhJyRWKezOmOteA()
        edwmPXBqQHBvIkXOUlWHTcLElRiq.ResetOnSpawn = false
        edwmPXBqQHBvIkXOUlWHTcLElRiq.IgnoreGuiInset = true
        edwmPXBqQHBvIkXOUlWHTcLElRiq.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        if syn and typeof(syn.protect_gui) == VVOCViJKJhiHhHideiDZ("etmbshnm", 25) then
            fieQswhHbYswCpFYhktKuvgqdKli(syn.protect_gui, edwmPXBqQHBvIkXOUlWHTcLElRiq)
        end
        edwmPXBqQHBvIkXOUlWHTcLElRiq.Parent = btACSRoIeliUsdRkuHHbvIPRYVMbE
        table.insert(ZoIbsjLvjXDNkbVukQqCAqFHh, edwmPXBqQHBvIkXOUlWHTcLElRiq)

        local BFrhceOPkzIhELFxftINbfrnfwe = Instance.new(VVOCViJKJhiHhHideiDZ("SdwsAtssnm", 25))
        BFrhceOPkzIhELFxftINbfrnfwe.Name = HGWheaoSwHzWcRkSHhJyRWKezOmOteA()
        BFrhceOPkzIhELFxftINbfrnfwe.Size = UDim2.fromOffset(36, 36)
        BFrhceOPkzIhELFxftINbfrnfwe.Position = UDim2.new(0, 16, 0.5, -18)
        BFrhceOPkzIhELFxftINbfrnfwe.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
        BFrhceOPkzIhELFxftINbfrnfwe.BackgroundTransparency = 0.05
        BFrhceOPkzIhELFxftINbfrnfwe.Text = VVOCViJKJhiHhHideiDZ("DL", 14)
        BFrhceOPkzIhELFxftINbfrnfwe.TextColor3 = Color3.fromRGB(255, 255, 255)
        BFrhceOPkzIhELFxftINbfrnfwe.TextSize = 13
        BFrhceOPkzIhELFxftINbfrnfwe.Font = Enum.Font.GothamBold
        BFrhceOPkzIhELFxftINbfrnfwe.AutoButtonColor = false
        BFrhceOPkzIhELFxftINbfrnfwe.Active = true
        BFrhceOPkzIhELFxftINbfrnfwe.Draggable = true
        BFrhceOPkzIhELFxftINbfrnfwe.Parent = edwmPXBqQHBvIkXOUlWHTcLElRiq

        local IiHgDHZwmoErboezoujQemulSEvfE = Instance.new(VVOCViJKJhiHhHideiDZ("QEYknjan", 22))
        IiHgDHZwmoErboezoujQemulSEvfE.CornerRadius = UDim.new(0, 7)
        IiHgDHZwmoErboezoujQemulSEvfE.Parent = BFrhceOPkzIhELFxftINbfrnfwe

        local aHojBAwlCingvKmtPbvEvLk = Instance.new(VVOCViJKJhiHhHideiDZ("NBLmkhdx", 19))
        aHojBAwlCingvKmtPbvEvLk.Color = Color3.fromRGB(60, 60, 75)
        aHojBAwlCingvKmtPbvEvLk.Transparency = 0.3
        aHojBAwlCingvKmtPbvEvLk.Thickness = 1
        aHojBAwlCingvKmtPbvEvLk.Parent = BFrhceOPkzIhELFxftINbfrnfwe

        local FIGFDSZlWlPWibYHdRLgkT = Instance.new(VVOCViJKJhiHhHideiDZ("Amvhz", 21))
        FIGFDSZlWlPWibYHdRLgkT.Name = HGWheaoSwHzWcRkSHhJyRWKezOmOteA()
        FIGFDSZlWlPWibYHdRLgkT.Size = UDim2.fromOffset(250, 215)
        FIGFDSZlWlPWibYHdRLgkT.Position = UDim2.new(0.5, -125, 0.5, -107)
        FIGFDSZlWlPWibYHdRLgkT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        FIGFDSZlWlPWibYHdRLgkT.BackgroundTransparency = 0.05
        FIGFDSZlWlPWibYHdRLgkT.BorderSizePixel = 0
        FIGFDSZlWlPWibYHdRLgkT.Visible = false
        FIGFDSZlWlPWibYHdRLgkT.ClipsDescendants = true
        FIGFDSZlWlPWibYHdRLgkT.Parent = edwmPXBqQHBvIkXOUlWHTcLElRiq

        local bXAHjDloVpFGRttIkooIrUyousorMq = Instance.new(VVOCViJKJhiHhHideiDZ("THFqzchdms", 25))
        bXAHjDloVpFGRttIkooIrUyousorMq.Rotation = 90
        bXAHjDloVpFGRttIkooIrUyousorMq.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 90, 115)),
            ColorSequenceKeypoint.new(0.35, Color3.fromRGB(15, 16, 22)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 5, 8)),
        })
        bXAHjDloVpFGRttIkooIrUyousorMq.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.45),
            NumberSequenceKeypoint.new(0.35, 0.05),
            NumberSequenceKeypoint.new(1, 0.0),
        })
        bXAHjDloVpFGRttIkooIrUyousorMq.Parent = FIGFDSZlWlPWibYHdRLgkT

        local nRyRjhTZAYxCiAoHfSxgZoB = Instance.new(VVOCViJKJhiHhHideiDZ("THBnqmdq", 25))
        nRyRjhTZAYxCiAoHfSxgZoB.CornerRadius = UDim.new(0, 12)
        nRyRjhTZAYxCiAoHfSxgZoB.Parent = FIGFDSZlWlPWibYHdRLgkT

        local WfTHhLWsdHPekUZfQbPZncRW = Instance.new(VVOCViJKJhiHhHideiDZ("SGQrpmic", 24))
        WfTHhLWsdHPekUZfQbPZncRW.Color = Color3.fromRGB(255, 255, 255)
        WfTHhLWsdHPekUZfQbPZncRW.Transparency = 0.8
        WfTHhLWsdHPekUZfQbPZncRW.Thickness = 1
        WfTHhLWsdHPekUZfQbPZncRW.Parent = FIGFDSZlWlPWibYHdRLgkT

        local AlRVKevDmKmDEoVIrlvP = Instance.new(VVOCViJKJhiHhHideiDZ("Coxjb", 23))
        AlRVKevDmKmDEoVIrlvP.Size = UDim2.new(1, 0, 0, 42)
        AlRVKevDmKmDEoVIrlvP.BackgroundTransparency = 1
        AlRVKevDmKmDEoVIrlvP.Parent = FIGFDSZlWlPWibYHdRLgkT

        local JvbxjvVEKeGrsgfHSjXLa = Instance.new(VVOCViJKJhiHhHideiDZ("RcvrJyzcj", 24))
        JvbxjvVEKeGrsgfHSjXLa.Size = UDim2.new(1, -40, 1, 0)
        JvbxjvVEKeGrsgfHSjXLa.Position = UDim2.fromOffset(14, 0)
        JvbxjvVEKeGrsgfHSjXLa.BackgroundTransparency = 1
        JvbxjvVEKeGrsgfHSjXLa.Text = VVOCViJKJhiHhHideiDZ("NfylrmkV Bctgac Qnmmdcp", 24)
        JvbxjvVEKeGrsgfHSjXLa.TextColor3 = Color3.fromRGB(255, 255, 255)
        JvbxjvVEKeGrsgfHSjXLa.TextSize = 12
        JvbxjvVEKeGrsgfHSjXLa.Font = Enum.Font.GothamBold
        JvbxjvVEKeGrsgfHSjXLa.TextXAlignment = Enum.TextXAlignment.Left
        JvbxjvVEKeGrsgfHSjXLa.Parent = AlRVKevDmKmDEoVIrlvP

        local nQJjRZeXXAJakCdlduAZv = Instance.new(VVOCViJKJhiHhHideiDZ("SdwsAtssnm", 25))
        nQJjRZeXXAJakCdlduAZv.Size = UDim2.fromOffset(26, 26)
        nQJjRZeXXAJakCdlduAZv.Position = UDim2.new(1, -32, 0.5, -13)
        nQJjRZeXXAJakCdlduAZv.BackgroundTransparency = 1
        nQJjRZeXXAJakCdlduAZv.Text = VVOCViJKJhiHhHideiDZ("×", 1)
        nQJjRZeXXAJakCdlduAZv.TextColor3 = Color3.fromRGB(200, 200, 210)
        nQJjRZeXXAJakCdlduAZv.TextSize = 18
        nQJjRZeXXAJakCdlduAZv.Font = Enum.Font.GothamMedium
        nQJjRZeXXAJakCdlduAZv.Parent = AlRVKevDmKmDEoVIrlvP

        local XbhtDMPopecfSOWIhTYpvAxurSuc = Instance.new(VVOCViJKJhiHhHideiDZ("Bnwia", 22))
        XbhtDMPopecfSOWIhTYpvAxurSuc.Size = UDim2.new(1, -28, 0, 1)
        XbhtDMPopecfSOWIhTYpvAxurSuc.Position = UDim2.fromOffset(14, 42)
        XbhtDMPopecfSOWIhTYpvAxurSuc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        XbhtDMPopecfSOWIhTYpvAxurSuc.BackgroundTransparency = 0.88
        XbhtDMPopecfSOWIhTYpvAxurSuc.BorderSizePixel = 0
        XbhtDMPopecfSOWIhTYpvAxurSuc.Parent = FIGFDSZlWlPWibYHdRLgkT

        local KmTMRlHZIFfXykoteEHWfGQnQCGJk = Instance.new(VVOCViJKJhiHhHideiDZ("Amvhz", 21))
        KmTMRlHZIFfXykoteEHWfGQnQCGJk.Size = UDim2.new(1, -28, 0, 150)
        KmTMRlHZIFfXykoteEHWfGQnQCGJk.Position = UDim2.fromOffset(14, 52)
        KmTMRlHZIFfXykoteEHWfGQnQCGJk.BackgroundTransparency = 1
        KmTMRlHZIFfXykoteEHWfGQnQCGJk.Parent = FIGFDSZlWlPWibYHdRLgkT

        local pWjxjoLBpwxTgrpHdVLZZdWgIbtXgGn = Instance.new(VVOCViJKJhiHhHideiDZ("QEHeopHwukqp", 22))
        pWjxjoLBpwxTgrpHdVLZZdWgIbtXgGn.Padding = UDim.new(0, 6)
        pWjxjoLBpwxTgrpHdVLZZdWgIbtXgGn.SortOrder = Enum.SortOrder.LayoutOrder
        pWjxjoLBpwxTgrpHdVLZZdWgIbtXgGn.Parent = KmTMRlHZIFfXykoteEHWfGQnQCGJk

        local MoteMRiYFxVKZvDENfDHJrtuvdXGgxj = {}

        local function vOAbbSnwlkhwfTsanqmIctGoMt()
            for name, btnData in niFTNldGeYtHaLroTzbXODsyhRvWdHF(MoteMRiYFxVKZvDENfDHJrtuvdXGgxj) do
                if name == ZWXLXPhZRwQteYaVncJDPc then
                    pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(210, 110, 30),
                        BackgroundTransparency = 0.15,
                    }):Play()
                    btnData.Text.Text = VVOCViJKJhiHhHideiDZ("Zqd xnt rtqd? (Vhkk Qdinhm)", 25)
                    btnData.Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                    pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 150, 50),
                        Transparency = 0.1,
                    }):Play()
                elseif name == JSvlQuNhLbYaIZBbtXigqNKcDNK then
                    pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(90, 50, 150),
                        BackgroundTransparency = 0.2,
                    }):Play()
                    btnData.Text.Text = name .. VVOCViJKJhiHhHideiDZ(" [Xzqfsb]", 23)
                    btnData.Text.TextColor3 = Color3.fromRGB(230, 200, 255)
                    pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(180, 130, 255),
                        Transparency = 0.1,
                    }):Play()
                else
                    pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                    btnData.Text.Text = name
                    btnData.Text.TextColor3 = Color3.fromRGB(210, 215, 225)
                    pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 255, 255),
                        Transparency = 0.88,
                    }):Play()
                end
            end
        end

        local function BCMWnlXxsrHnacQYScEEfxQwa(name, order)
            local CCMejfnxSvupoWcsQwWIUAGcRsnLkiV = Instance.new(VVOCViJKJhiHhHideiDZ("QbuqYrqqlk", 23))
            CCMejfnxSvupoWcsQwWIUAGcRsnLkiV.Size = UDim2.new(1, 0, 0, 42)
            CCMejfnxSvupoWcsQwWIUAGcRsnLkiV.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
            CCMejfnxSvupoWcsQwWIUAGcRsnLkiV.BackgroundTransparency = 0.35
            CCMejfnxSvupoWcsQwWIUAGcRsnLkiV.Text = VVOCViJKJhiHhHideiDZ("", 1)
            CCMejfnxSvupoWcsQwWIUAGcRsnLkiV.AutoButtonColor = false
            CCMejfnxSvupoWcsQwWIUAGcRsnLkiV.LayoutOrder = order
            CCMejfnxSvupoWcsQwWIUAGcRsnLkiV.Parent = KmTMRlHZIFfXykoteEHWfGQnQCGJk

            local MFpqkjuUnvVXFwfvRmDdyJ = Instance.new(VVOCViJKJhiHhHideiDZ("OCWilhyl", 20))
            MFpqkjuUnvVXFwfvRmDdyJ.CornerRadius = UDim.new(0, 8)
            MFpqkjuUnvVXFwfvRmDdyJ.Parent = CCMejfnxSvupoWcsQwWIUAGcRsnLkiV

            local xlXEPGiAdhGDGuXUavWNHL = Instance.new(VVOCViJKJhiHhHideiDZ("RFPqolhb", 23))
            xlXEPGiAdhGDGuXUavWNHL.Color = Color3.fromRGB(255, 255, 255)
            xlXEPGiAdhGDGuXUavWNHL.Transparency = 0.88
            xlXEPGiAdhGDGuXUavWNHL.Thickness = 1
            xlXEPGiAdhGDGuXUavWNHL.Parent = CCMejfnxSvupoWcsQwWIUAGcRsnLkiV

            local dCcUxPXqWzJxpVElByipD = Instance.new(VVOCViJKJhiHhHideiDZ("SdwsKzadk", 25))
            dCcUxPXqWzJxpVElByipD.Size = UDim2.new(1, -20, 1, 0)
            dCcUxPXqWzJxpVElByipD.Position = UDim2.fromOffset(12, 0)
            dCcUxPXqWzJxpVElByipD.BackgroundTransparency = 1
            dCcUxPXqWzJxpVElByipD.Text = name
            dCcUxPXqWzJxpVElByipD.TextColor3 = Color3.fromRGB(210, 215, 225)
            dCcUxPXqWzJxpVElByipD.TextSize = 11
            dCcUxPXqWzJxpVElByipD.Font = Enum.Font.GothamMedium
            dCcUxPXqWzJxpVElByipD.TextXAlignment = Enum.TextXAlignment.Left
            dCcUxPXqWzJxpVElByipD.Parent = CCMejfnxSvupoWcsQwWIUAGcRsnLkiV

            MoteMRiYFxVKZvDENfDHJrtuvdXGgxj[name] = {Btn= CCMejfnxSvupoWcsQwWIUAGcRsnLkiV, Stroke = xlXEPGiAdhGDGuXUavWNHL, Text = dCcUxPXqWzJxpVElByipD }

            CCMejfnxSvupoWcsQwWIUAGcRsnLkiV.MouseEnter:Connect(function()
                if ZWXLXPhZRwQteYaVncJDPc ~= name and JSvlQuNhLbYaIZBbtXigqNKcDNK ~= name then
                    pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(CCMejfnxSvupoWcsQwWIUAGcRsnLkiV, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(32, 36, 50),
                        BackgroundTransparency = 0.2,
                    }):Play()
                end
            end)
            CCMejfnxSvupoWcsQwWIUAGcRsnLkiV.MouseLeave:Connect(function()
                if ZWXLXPhZRwQteYaVncJDPc ~= name and JSvlQuNhLbYaIZBbtXigqNKcDNK ~= name then
                    pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(CCMejfnxSvupoWcsQwWIUAGcRsnLkiV, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                end
            end)

            CCMejfnxSvupoWcsQwWIUAGcRsnLkiV.MouseButton1Click:Connect(function()
                if JSvlQuNhLbYaIZBbtXigqNKcDNK == name then return end
                if ZWXLXPhZRwQteYaVncJDPc == name then
                    JSvlQuNhLbYaIZBbtXigqNKcDNK = name
                    wwgtkAjzpRBTfIPvCbrZatTzVAv(name)
                    ZWXLXPhZRwQteYaVncJDPc = nil
                    if activeToken and activeExpiry then
                        MENSYothWarZrSzgdXhwXRmYoclV(activeToken, activeExpiry)
                    end
                    dCcUxPXqWzJxpVElByipD.Text = VVOCViJKJhiHhHideiDZ("Kxchbgbgz...", 19)
                    vOAbbSnwlkhwfTsanqmIctGoMt()
                    PDHxWuDSHVBdTOhaVeYYgAyYZnYH()
                    if queue_on_teleport then
                        queue_on_teleport(VVOCViJKJhiHhHideiDZ("_F.SzqfdsCduhbd = '", 25) .. name .. VVOCViJKJhiHhHideiDZ("'", 1))
                    end
                    task.wait(0.2)
                    game:GetService(VVOCViJKJhiHhHideiDZ("SdkdonqsRdquhbd", 25)):TeleportToPlaceInstance(
                        game.PlaceId, game.JobId, bIGMgvRNwoklSVFlgrlupAx
                    )
                    return
                end
                ZWXLXPhZRwQteYaVncJDPc = name
                vOAbbSnwlkhwfTsanqmIctGoMt()
            end)
        end

        for i, plat in ejlOOQQfErJaYNBJibJfztiEOPI(GjgRQGOMaixRSwXNKDQgOyxYnTm) do
            BCMWnlXxsrHnacQYScEEfxQwa(plat, i)
        end
        vOAbbSnwlkhwfTsanqmIctGoMt()

        local function aTsYHewfayDdifXXkSfoWkJDmdExwE()
            loAqhqnBMkQDlwOvymtRDasjST = true
            FIGFDSZlWlPWibYHdRLgkT.Visible = true
            FIGFDSZlWlPWibYHdRLgkT.Position = UDim2.new(0.5, -125, 0.5, -97)
            pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(
                FIGFDSZlWlPWibYHdRLgkT,
                TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Position= UDim2.new(0.5, -125, 0.5, -107) }
            ):Play()
            pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(WfTHhLWsdHPekUZfQbPZncRW, TweenInfo.new(0.22), {Transparency= 0.65,
            }):Play()
        end

        local function DtEgDGcxJaUDeeuvWtRHplrOSs()
            loAqhqnBMkQDlwOvymtRDasjST = false
            ZWXLXPhZRwQteYaVncJDPc = nil
            vOAbbSnwlkhwfTsanqmIctGoMt()
            local ZRgzEMYZyscuifPDAxnQh = pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(
                FIGFDSZlWlPWibYHdRLgkT,
                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                {Position= UDim2.new(0.5, -125, 0.5, -97) }
            )
            pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(WfTHhLWsdHPekUZfQbPZncRW, TweenInfo.new(0.15), {Transparency= 1,
            }):Play()
            ZRgzEMYZyscuifPDAxnQh:Play()
            ZRgzEMYZyscuifPDAxnQh.Completed:Once(function()
                if not loAqhqnBMkQDlwOvymtRDasjST then FIGFDSZlWlPWibYHdRLgkT.Visible = false end
            end)
        end

        BFrhceOPkzIhELFxftINbfrnfwe.MouseButton1Click:Connect(function()
            if loAqhqnBMkQDlwOvymtRDasjST then DtEgDGcxJaUDeeuvWtRHplrOSs() else aTsYHewfayDdifXXkSfoWkJDmdExwE() end
        end)
        nQJjRZeXXAJakCdlduAZv.MouseButton1Click:Connect(function() DtEgDGcxJaUDeeuvWtRHplrOSs() end)

        BFrhceOPkzIhELFxftINbfrnfwe.MouseEnter:Connect(function()
            pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(aHojBAwlCingvKmtPbvEvLk, TweenInfo.new(0.12), {Transparency= 0.1,
            }):Play()
            pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(BFrhceOPkzIhELFxftINbfrnfwe, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(22, 22, 28),
            }):Play()
        end)
        BFrhceOPkzIhELFxftINbfrnfwe.MouseLeave:Connect(function()
            pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(aHojBAwlCingvKmtPbvEvLk, TweenInfo.new(0.12), {Transparency= 0.3,
            }):Play()
            pWAQCqRwzCzKMUnLYVvSMIOuIwzyei:Create(BFrhceOPkzIhELFxftINbfrnfwe, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(12, 12, 15),
            }):Play()
        end)
    end

    eFzgtzCamoipCheVxZFTtc()

    task.spawn(function()
        for lOawyXKyUlblZEldPAlgwF = 1, 15 do
            if _G.__dm_killed then return end
            PDHxWuDSHVBdTOhaVeYYgAyYZnYH()
            task.wait(0.8)
        end
    end)

    task.spawn(function()
        local bIGMgvRNwoklSVFlgrlupAx = game.Players.LocalPlayer
        if not bIGMgvRNwoklSVFlgrlupAx then
            game.Players:GetPropertyChangedSignal(VVOCViJKJhiHhHideiDZ("KnbzkOkzxdq", 25)):Wait()
            bIGMgvRNwoklSVFlgrlupAx = game.Players.LocalPlayer
        end
        bIGMgvRNwoklSVFlgrlupAx.CharacterAdded:Connect(function()
            task.wait(1)
            if _G.__dm_killed then return end
            PDHxWuDSHVBdTOhaVeYYgAyYZnYH()
        end)
    end)

    task.spawn(function()
        while not _G.__dm_killed do task.wait(0.5) end
        for lOawyXKyUlblZEldPAlgwF, g in ejlOOQQfErJaYNBJibJfztiEOPI(ZoIbsjLvjXDNkbVukQqCAqFHh) do
            fieQswhHbYswCpFYhktKuvgqdKli(function() g:Destroy() end)
        end
    end)
end

-- ===== التفعيل =====
local xDkhWxUtRXuWdzbNgAzymLTpBnMz, RbgdxygfrUXTdGBKqxQLTIHJgiEmGsvJ = tqKKiSskKIFWmZbaHRLEHaoPLTExl()
BgqkmzhnRVToRDGEbiWtTsH(OVLsrQdLVWrdThUNxymxMqNUY())
if #GjgRQGOMaixRSwXNKDQgOyxYnTm == 0 then
    mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Mn bnlozshakd cduhbd noshnm hr dmzakdc enq sghr zbbntms", 25), VVOCViJKJhiHhHideiDZ("MN_BNLOZSHAKD_OKZSENQL", 25))
    return
end

if xDkhWxUtRXuWdzbNgAzymLTpBnMz then
    local lOawyXKyUlblZEldPAlgwF, koxbFYyCsRfUbdaWvFiKRtHDzYfh = UaRLMubCNlVcyGawHZWXWZnqf(VVOCViJKJhiHhHideiDZ("LKOP", 22), VVOCViJKJhiHhHideiDZ("/zoh/khbdmrd/gdzqsadzs", 25), {sessionToken= xDkhWxUtRXuWdzbNgAzymLTpBnMz,
        scriptVariant = rEUdGiOAtgpWxWGIrkzQAmfi,
        deviceFingerprint = oBQGpPKDFJTaQOyCncSojUHpLPoEB,
        robloxUserId = FiVIlGiJlpSrAGrZFXWAOf,
    })
    if not koxbFYyCsRfUbdaWvFiKRtHDzYfh or koxbFYyCsRfUbdaWvFiKRtHDzYfh.success ~= true then
        _G.__dm_killed = true
        FnvCMSvEuPNHICRhtKDxxm()
        mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Ifzbkpb sbofcfzxqflk cxfiba", 23), koxbFYyCsRfUbdaWvFiKRtHDzYfh and koxbFYyCsRfUbdaWvFiKRtHDzYfh.error or VVOCViJKJhiHhHideiDZ("FCYPRZCYR_DYGJCB", 24))
        return
    end

    task.spawn(lmLANXMIOfoogZViPmIRsy, xDkhWxUtRXuWdzbNgAzymLTpBnMz, RbgdxygfrUXTdGBKqxQLTIHJgiEmGsvJ)
    task.spawn(function()
        while os.time() < RbgdxygfrUXTdGBKqxQLTIHJgiEmGsvJ do
            task.wait(20)
            if os.time() >= RbgdxygfrUXTdGBKqxQLTIHJgiEmGsvJ then
                _G.__dm_killed = true
                FnvCMSvEuPNHICRhtKDxxm()
                break
            end
            local lOawyXKyUlblZEldPAlgwF, ktEihWWMlqGPRPfjqxpgzd = UaRLMubCNlVcyGawHZWXWZnqf(VVOCViJKJhiHhHideiDZ("ONRS", 25), VVOCViJKJhiHhHideiDZ("/zoh/khbdmrd/gdzqsadzs", 25), {sessionToken= xDkhWxUtRXuWdzbNgAzymLTpBnMz,
                scriptVariant = rEUdGiOAtgpWxWGIrkzQAmfi,
                deviceFingerprint = oBQGpPKDFJTaQOyCncSojUHpLPoEB,
                robloxUserId = FiVIlGiJlpSrAGrZFXWAOf,
            })
            if not ktEihWWMlqGPRPfjqxpgzd or ktEihWWMlqGPRPfjqxpgzd.success ~= true then
                _G.__dm_killed = true
                FnvCMSvEuPNHICRhtKDxxm()
                break
            end
        end
    end)
    iyfeYiuABQflzzcNXaRh(VVOCViJKJhiHhHideiDZ("vgfw", 18))
    return
end

IGjboTcMDlMElYusOxBz(VVOCViJKJhiHhHideiDZ("Amllcargle rm qcaspc jgaclqc qcptgac...", 24), Color3.fromRGB(151, 112, 255), 5)

local lOawyXKyUlblZEldPAlgwF, VrhKyaxisWGjLgcunyPlPLlr, qDnFiifIZHvVdqNwrlcJKLAwBCDFH = UaRLMubCNlVcyGawHZWXWZnqf(VVOCViJKJhiHhHideiDZ("AYN", 20), VVOCViJKJhiHhHideiDZ("/zoh/khbdmrd/oqnctbs", 25))
if not VrhKyaxisWGjLgcunyPlPLlr then mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Rdquhbd tmzuzhkzakd", 25), qDnFiifIZHvVdqNwrlcJKLAwBCDFH) return end
if VrhKyaxisWGjLgcunyPlPLlr.enabled ~= true then
    mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("CduhbdLncd hr btqqdmskx chrzakdc", 25), VVOCViJKJhiHhHideiDZ("NPMBSAR_BGQYZJCB", 24))
    return
end
if VrhKyaxisWGjLgcunyPlPLlr.minimumSupportedVersion and crnrAfdNGEBPUEblMGEsGjyklHhwSCx < VrhKyaxisWGjLgcunyPlPLlr.minimumSupportedVersion then
    mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Okdzrd toczsd xntq CduhbdLncd rbqhos", 25), VVOCViJKJhiHhHideiDZ("BKHDMS_TOCZSD_QDPTHQDC", 25))
    return
end

local CCLvsZBMTkpkPLcFNcEuTmvUlbWcA = {licenseKey= SAjGuoFWLIjtuGJkojbxkFBNnqtGuIGG,
    clientVersion = crnrAfdNGEBPUEblMGEsGjyklHhwSCx,
    scriptVariant = rEUdGiOAtgpWxWGIrkzQAmfi,
    deviceFingerprint = oBQGpPKDFJTaQOyCncSojUHpLPoEB,
    robloxUserId = FiVIlGiJlpSrAGrZFXWAOf,
}

local lOawyXKyUlblZEldPAlgwF, DkxQDRlmMEJXiwEDIvNwAQp, KaTmFmRySAhBIfmaVTsdIqzpXgR = UaRLMubCNlVcyGawHZWXWZnqf(VVOCViJKJhiHhHideiDZ("NMQR", 24), VVOCViJKJhiHhHideiDZ("/zoh/khbdmrd/zbshuzsd", 25), CCLvsZBMTkpkPLcFNcEuTmvUlbWcA)
if not DkxQDRlmMEJXiwEDIvNwAQp or DkxQDRlmMEJXiwEDIvNwAQp.success ~= true then
    local RoEjmwupcFtShPZDAPfW = DkxQDRlmMEJXiwEDIvNwAQp and DkxQDRlmMEJXiwEDIvNwAQp.error or KaTmFmRySAhBIfmaVTsdIqzpXgR or VVOCViJKJhiHhHideiDZ("ZBSHUZSHNM_EZHKDC", 25)
    if RoEjmwupcFtShPZDAPfW == VVOCViJKJhiHhHideiDZ("KHBDMRD_DWOHQDC", 25) then
        mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Khbdmrd dwohqdc", 25), RoEjmwupcFtShPZDAPfW)
    elseif RoEjmwupcFtShPZDAPfW == VVOCViJKJhiHhHideiDZ("TRDQ_MNS_ZKKNVDC", 25) then
        mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Qefp Olyilu xzzlrkq fp klq xrqelofwba", 23), RoEjmwupcFtShPZDAPfW)
    elseif RoEjmwupcFtShPZDAPfW == VVOCViJKJhiHhHideiDZ("CDUHBD_LHRLZSBG", 25) then
        mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Sghr cduhbd hr mns antmc sn sgd khbdmrd", 25), RoEjmwupcFtShPZDAPfW)
    elseif RoEjmwupcFtShPZDAPfW == VVOCViJKJhiHhHideiDZ("HMUZKHC_KHBDMRD", 25) then
        mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Khbdmrd jdx vzr mns entmc", 25), RoEjmwupcFtShPZDAPfW)
    else
        mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Khbdmrd udqhehbzshnm ezhkdc", 25), RoEjmwupcFtShPZDAPfW)
    end
    return
end

local iJvMxFvoVvynUTplbglksQL = DkxQDRlmMEJXiwEDIvNwAQp.sessionToken
local WfYdiASNBjSeELvWrGjBRY = DkxQDRlmMEJXiwEDIvNwAQp.license and FqZVPxKqtdyclwQLMpusc(DkxQDRlmMEJXiwEDIvNwAQp.license.expiresAt)
if type(iJvMxFvoVvynUTplbglksQL) ~= VVOCViJKJhiHhHideiDZ("nomdib", 21) or iJvMxFvoVvynUTplbglksQL == VVOCViJKJhiHhHideiDZ("", 1) or not WfYdiASNBjSeELvWrGjBRY then
    mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Rdqudq qdstqmdc zm hmbnlokdsd khbdmrd qdronmrd", 25), VVOCViJKJhiHhHideiDZ("HMUZKHC_ZBSHUZSHNM", 25))
    return
end

nVvXBrgHgSZzkdcBIDnC(DkxQDRlmMEJXiwEDIvNwAQp.allowedPlatforms)
BgqkmzhnRVToRDGEbiWtTsH(OVLsrQdLVWrdThUNxymxMqNUY())
if #GjgRQGOMaixRSwXNKDQgOyxYnTm == 0 then
    mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Mn bnlozshakd cduhbd noshnm hr dmzakdc enq sghr zbbntms", 25), VVOCViJKJhiHhHideiDZ("KL_ZLJMXQFYIB_MIXQCLOJ", 23))
    return
end
if os.time() >= WfYdiASNBjSeELvWrGjBRY then
    mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Jgaclqc cvngpcb", 24), VVOCViJKJhiHhHideiDZ("JGACLQC_CVNGPCB", 24))
    return
end

IGjboTcMDlMElYusOxBz(
    VVOCViJKJhiHhHideiDZ("Jgaclqc tcpgdgcb · ", 24) .. sgUyKqdSvcYFJnEVTXtMdgTZdKGIl(WfYdiASNBjSeELvWrGjBRY - os.time()) .. VVOCViJKJhiHhHideiDZ(" qdlzhmhmf", 25),
    Color3.fromRGB(85, 215, 164),
    8
)

MENSYothWarZrSzgdXhwXRmYoclV(iJvMxFvoVvynUTplbglksQL, WfYdiASNBjSeELvWrGjBRY)
task.spawn(lmLANXMIOfoogZViPmIRsy, iJvMxFvoVvynUTplbglksQL, WfYdiASNBjSeELvWrGjBRY)

local lGqwulJqrFVOMidhkUgBEME = true
while lGqwulJqrFVOMidhkUgBEME do
    task.wait(30)
    if os.time() >= WfYdiASNBjSeELvWrGjBRY then
        lGqwulJqrFVOMidhkUgBEME = false
        FnvCMSvEuPNHICRhtKDxxm()
        mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Ifzbkpb bumfoba", 23), VVOCViJKJhiHhHideiDZ("JGACLQC_CVNGPCB", 24))
        break
    end
    local lOawyXKyUlblZEldPAlgwF, koxbFYyCsRfUbdaWvFiKRtHDzYfh = UaRLMubCNlVcyGawHZWXWZnqf(VVOCViJKJhiHhHideiDZ("LKOP", 22), VVOCViJKJhiHhHideiDZ("/zoh/khbdmrd/gdzqsadzs", 25), {sessionToken= iJvMxFvoVvynUTplbglksQL,
        scriptVariant = rEUdGiOAtgpWxWGIrkzQAmfi,
        deviceFingerprint = oBQGpPKDFJTaQOyCncSojUHpLPoEB,
        robloxUserId = FiVIlGiJlpSrAGrZFXWAOf,
    })
    if not koxbFYyCsRfUbdaWvFiKRtHDzYfh or koxbFYyCsRfUbdaWvFiKRtHDzYfh.success ~= true then
        local RoEjmwupcFtShPZDAPfW = koxbFYyCsRfUbdaWvFiKRtHDzYfh and koxbFYyCsRfUbdaWvFiKRtHDzYfh.error or VVOCViJKJhiHhHideiDZ("GDZQSADZS_EZHKDC", 25)
        lGqwulJqrFVOMidhkUgBEME = false
        FnvCMSvEuPNHICRhtKDxxm()
        if RoEjmwupcFtShPZDAPfW == VVOCViJKJhiHhHideiDZ("KHBDMRD_DWOHQDC", 25) then
            mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Khbdmrd dwohqdc", 25), RoEjmwupcFtShPZDAPfW)
        elseif RoEjmwupcFtShPZDAPfW == VVOCViJKJhiHhHideiDZ("FCWYHMY_LYPIEYX", 20) then
            mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Khbdmrd qdunjdc ax zclhmhrsqzsnq", 25), RoEjmwupcFtShPZDAPfW)
        elseif RoEjmwupcFtShPZDAPfW == VVOCViJKJhiHhHideiDZ("QCQQGML_GLTYJGB", 24) then
            mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Khbdmrd rdrrhnm hr mn knmfdq uzkhc", 25), RoEjmwupcFtShPZDAPfW)
        else
            mOWTunDIBPnCIVFVyDAQgEMgOERjH(VVOCViJKJhiHhHideiDZ("Jgaclqc qcqqgml clbcb", 24), RoEjmwupcFtShPZDAPfW)
        end
        break
    end
end

if vooparOuOUdSLrRacixpr and vooparOuOUdSLrRacixpr.Parent then
    task.delay(12, function()
        if vooparOuOUdSLrRacixpr and vooparOuOUdSLrRacixpr.Parent then vooparOuOUdSLrRacixpr:Destroy() end
    end)
end
iyfeYiuABQflzzcNXaRh(VVOCViJKJhiHhHideiDZ("cnmd", 25))
        end
        break
    end
end
local dummy = 1; dummy = dummy + 2;

while false do local _ = 15 break end
local function hcdzse(pnipqa) local _ = 1 end
if true then local _ = 19 end
local xkrguv = 32
local function ychbsf(ruxgbw) local _ = 21 end
if true then local _ = 77 end
local mmekzp = 8
local khsqid = 25
while false do local _ = 25 break end
if false then local _ = 60 end
local bpezuo = 3
local xirwdh = 56
if false then local _ = 27 end
local ddhkgw = 85
if false then local _ = 6 end
local rcgoie = 23
local function cmjmzh(lgyznu) local _ = 60 end
local bocwcn = 89
if true then local _ = 20 end
while false do local _ = 3 break end
local function rpvujr(brqdts) local _ = 29 end
local gpfnix = 15
local function actgkk(ioohle) local _ = 64 end
local wuzunq = 94
local bvxjkg = 21
if false then local _ = 76 end
local function xnuoym(vllbip) local _ = 46 end
if true then local _ = 31 end
local alhboo = 43
if false then local _ = 10 end
if true then local _ = 96 end
if true then local _ = 92 end
local ythtjy = 74
local qrhqki = 78
local niapxk = 73
if true then local _ = 92 end
local sxdyrk = 96
local usfqtq = 74
local function ngtcjf(vwlotc) local _ = 20 end
if false then local _ = 56 end
local function defdsc(mtijob) local _ = 4 end
local irrlum = 26
if true then local _ = 65 end
local function gvoivj(qyithn) local _ = 39 end
while false do local _ = 68 break end
if false then local _ = 68 end
if true then local _ = 24 end
local pgqudm = 52
if true then local _ = 63 end
local function siyecv(mbgtcf) local _ = 70 end
if false then local _ = 52 end
local mngukx = 29
if true then local _ = 92 end
local function svyngq(cqneue) local _ = 29 end
if false then local _ = 55 end
if true then local _ = 12 end
local hgbyur = 44
local function wbeysf(mokvml) local _ = 68 end
local function retxao(sljnrk) local _ = 22 end
local okrgit = 100
local xpiiec = 98
local function hirdup(ypsgcd) local _ = 90 end
if false then local _ = 63 end
local function vjkbzy(csiwmq) local _ = 54 end
if false then local _ = 78 end
local function fxrmob(erdfuv) local _ = 14 end
local function zxqxfx(sjbpzf) local _ = 51 end
local function moeukw(fgvezl) local _ = 93 end
if true then local _ = 59 end
local function oblzfl(fdutqm) local _ = 51 end
if false then local _ = 30 end
local toxxbn = 91
while false do local _ = 95 break end
local function uberre(dqtmxk) local _ = 99 end
if false then local _ = 100 end
local function jfdwxq(onbgfi) local _ = 16 end
while false do local _ = 73 break end end)()