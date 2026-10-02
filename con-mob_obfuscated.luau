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
if true then local _ = 21 end
while false do local _ = 24 break end
local function yvdhng(lmgnnl) local _ = 76 end
local function bdynnu(rwihxk) local _ = 20 end
if true then local _ = 6 end
if true then local _ = 87 end
while false do local _ = 22 break end
local function magzxo(nfqsiv) local _ = 62 end
local rfbfux = 95
local gyhbqw = 75
while false do local _ = 64 break end
while false do local _ = 81 break end
if true then local _ = 59 end
local thing = 6583;
local thing2 = 6583;
local counter = 0;
while thing == thing2 and counter < 1 do
    thing = thing + 1;
    counter = counter + 1;
    if thing == thing2 then
        local str = 'dummy'; str = str .. str;
    else
        do
            local ucAIttDQvLq,CwDtTjnc,yNLHulMPnWeB,JGZLauJDL,ISAPGSASAL,BoHOZceTz,NTGjJfRYrNQ,OtnNzgWuQCY,QJyguEPBkDk,TWFRAMWWD,OSwmfwoKCQtU,JHucTHxHyrb,zcaIBebqjsq,QokthjQyq,xTZJbEqllf,vluJuJCEuKo,dngTJjcUkTF,yCczfvNh
ucAIttDQvLq=error;CwDtTjnc=ipairs;yNLHulMPnWeB=pairs;JGZLauJDL=pcall;ISAPGSASAL=print;BoHOZceTz=rawget;NTGjJfRYrNQ=rawset;OtnNzgWuQCY=select;QJyguEPBkDk=tonumber;TWFRAMWWD=tostring;OSwmfwoKCQtU=math.floor;JHucTHxHyrb=math.max;zcaIBebqjsq=math.random;QokthjQyq=string.char;xTZJbEqllf=string.format;vluJuJCEuKo=table.concat;dngTJjcUkTF=table.insert;yCczfvNh=os.time;
local vtsOVprpkXPM = {[10]="\\010",[32]=" ",[36]="$",[37]="%",[39]="'",[40]="(",[41]=")",[43]="+",[45]="-",[46]=".",[47]="/",[49]="1",[50]="2",[51]="3",[52]="4",[53]="5",[54]="6",[55]="7",[56]="8",[57]="9",[58]=":",[61]="=",[63]="?",[65]="A",[66]="B",[67]="C",[68]="D",[69]="E",[70]="F",[71]="G",[72]="H",[73]="I",[74]="J",[75]="K",[76]="L",[77]="M",[78]="N",[79]="O",[80]="P",[81]="Q",[82]="R",[83]="S",[84]="T",[85]="U",[86]="V",[87]="W",[88]="X",[89]="Y",[90]="Z",[91]="[",[93]="]",[94]="^",[95]="_",[97]="a",[98]="b",[99]="c",[100]="d",[101]="e",[102]="f",[103]="g",[104]="h",[105]="i",[106]="j",[107]="k",[108]="l",[109]="m",[110]="n",[111]="o",[112]="p",[113]="q",[114]="r",[115]="s",[116]="t",[117]="u",[118]="v",[119]="w",[120]="x",[121]="y",[122]="z",[124]="|",[195]="\\195",[151]="\\151",[194]="\\194",[183]="\\183"}
local function LSniYNPdUp(iWwOcGlcOV)
    return (iWwOcGlcOV >= 48 and iWwOcGlcOV <= 57) or (iWwOcGlcOV >= 65 and iWwOcGlcOV <= 90) or (iWwOcGlcOV >= 97 and iWwOcGlcOV <= 122)
end

local function fxpZqKdCnRQ(XbdtNcLgxe, tAMmRMNZzgei)
    local AWYumKMnm = {}
    for i = 1, #XbdtNcLgxe do
        local iWwOcGlcOV = XbdtNcLgxe:byte(i)
        if LSniYNPdUp(iWwOcGlcOV) then
            local hXhaVVtYMRn            if iWwOcGlcOV >= 48 and iWwOcGlcOV <= 57 then
                hXhaVVtYMRn = ((iWwOcGlcOV - 48 - tAMmRMNZzgei + 10) % 10) + 48
            elseif iWwOcGlcOV >= 65 and iWwOcGlcOV <= 90 then
                hXhaVVtYMRn = ((iWwOcGlcOV - 65 - tAMmRMNZzgei + 26) % 26) + 65
            elseif iWwOcGlcOV >= 97 and iWwOcGlcOV <= 122 then
                hXhaVVtYMRn = ((iWwOcGlcOV - 97 - tAMmRMNZzgei + 26) % 26) + 97
            end
            table.insert(AWYumKMnm, string.char(hXhaVVtYMRn))
        else
            table.insert(AWYumKMnm, string.char(iWwOcGlcOV))
        end
    end
    return table.concat(AWYumKMnm)
end

local ZLEFCdSSAxaz = game:GetService(fxpZqKdCnRQ((vtsOVprpkXPM[816 - (745)]..vtsOVprpkXPM[-674 + 789]..vtsOVprpkXPM[216 - (101)]..vtsOVprpkXPM[-561 + 672]..vtsOVprpkXPM[720 - (638)]..vtsOVprpkXPM[-376 + 476]..vtsOVprpkXPM[958 - (845)]..vtsOVprpkXPM[442 - (325)]..vtsOVprpkXPM[442 - (338)]..vtsOVprpkXPM[-221 + 319]..vtsOVprpkXPM[989 - (889)]), 25))
local SUySjZSHaf = game:GetService(fxpZqKdCnRQ((vtsOVprpkXPM[245 - (169)]..vtsOVprpkXPM[753 - (649)]..vtsOVprpkXPM[297 - (178)]..vtsOVprpkXPM[649 - (532)]..vtsOVprpkXPM[-736 + 833]..vtsOVprpkXPM[771 - (661)]..vtsOVprpkXPM[500 - (389)]), 22))
local ySBqiEPfU = game:GetService(fxpZqKdCnRQ((vtsOVprpkXPM[-419 + 499]..vtsOVprpkXPM[941 - (826)]..vtsOVprpkXPM[507 - (410)]..vtsOVprpkXPM[-218 + 315]..vtsOVprpkXPM[946 - (840)]..vtsOVprpkXPM[-201 + 280]..vtsOVprpkXPM[757 - (660)]..vtsOVprpkXPM[459 - (349)]..vtsOVprpkXPM[929 - (815)]..vtsOVprpkXPM[500 - (399)]..vtsOVprpkXPM[-753 + 874]..vtsOVprpkXPM[-876 + 973]), 22))

if not game:IsLoaded() then game.Loaded:Wait() end

-- المنصات المتاحة
local dHuKNuezIIE = {fxpZqKdCnRQ((vtsOVprpkXPM[207 - (117)]..vtsOVprpkXPM[-604 + 712]..vtsOVprpkXPM[-409 + 516]..vtsOVprpkXPM[915 - (803)]..vtsOVprpkXPM[-805 + 913]..vtsOVprpkXPM[628 - (523)]..vtsOVprpkXPM[-222 + 320]), 23), fxpZqKdCnRQ((vtsOVprpkXPM[276 - (201)]..vtsOVprpkXPM[529 - (420)]..vtsOVprpkXPM[-137 + 259]..vtsOVprpkXPM[144 - (41)]..vtsOVprpkXPM[830 - (724)]..vtsOVprpkXPM[-676 + 775]), 24)}

local lSSoofXRUD = fxpZqKdCnRQ((vtsOVprpkXPM[-827 + 930]..vtsOVprpkXPM[335 - (220)]..vtsOVprpkXPM[665 - (550)]..vtsOVprpkXPM[-246 + 357]..vtsOVprpkXPM[-376 + 490]..vtsOVprpkXPM[-817 + 875]..vtsOVprpkXPM[-870 + 917]..vtsOVprpkXPM[-687 + 734]..vtsOVprpkXPM[-530 + 629]..vtsOVprpkXPM[-593 + 693]..vtsOVprpkXPM[-178 + 295]..vtsOVprpkXPM[446 - (342)]..vtsOVprpkXPM[-606 + 704]..vtsOVprpkXPM[311 - (211)]..vtsOVprpkXPM[207 - (99)]..vtsOVprpkXPM[7 + 103]..vtsOVprpkXPM[352 - (253)]..vtsOVprpkXPM[459 - (359)]..vtsOVprpkXPM[834 - (789)]..vtsOVprpkXPM[768 - (670)]..vtsOVprpkXPM[-429 + 527]..vtsOVprpkXPM[-517 + 632]..vtsOVprpkXPM[132 - (30)]..vtsOVprpkXPM[-805 + 909]..vtsOVprpkXPM[-509 + 565]..vtsOVprpkXPM[320 - (212)]..vtsOVprpkXPM[-140 + 262]..vtsOVprpkXPM[-324 + 370]..vtsOVprpkXPM[942 - (834)]..vtsOVprpkXPM[-183 + 305]..vtsOVprpkXPM[-523 + 632]..vtsOVprpkXPM[200 - (84)]..vtsOVprpkXPM[440 - (326)]..vtsOVprpkXPM[683 - (637)]..vtsOVprpkXPM[279 - (165)]..vtsOVprpkXPM[-513 + 624]..vtsOVprpkXPM[911 - (789)]..vtsOVprpkXPM[193 - (95)]..vtsOVprpkXPM[461 - (361)]), 25)
local OlwNtoFsKA = fxpZqKdCnRQ((vtsOVprpkXPM[315 - (265)]..vtsOVprpkXPM[505 - (459)]..vtsOVprpkXPM[189 - (140)]..vtsOVprpkXPM[-155 + 201]..vtsOVprpkXPM[191 - (142)]), 1)
local TqjfHuOX = fxpZqKdCnRQ((vtsOVprpkXPM[-420 + 507]..vtsOVprpkXPM[244 - (171)]..vtsOVprpkXPM[624 - (552)]..vtsOVprpkXPM[-78 + 155]..vtsOVprpkXPM[-350 + 423]..vtsOVprpkXPM[116 - (46)]..vtsOVprpkXPM[903 - (814)]..vtsOVprpkXPM[-591 + 686]..vtsOVprpkXPM[-709 + 780]..vtsOVprpkXPM[575 - (502)]..vtsOVprpkXPM[-835 + 921]..vtsOVprpkXPM[-161 + 228]..vtsOVprpkXPM[426 - (356)]..vtsOVprpkXPM[489 - (400)]), 20)
local PLmxOBUCHLU = 300

local gkRsmttkZjGL = {
    [11379739543]    = true,
    [98752102030179] = true,
}

if not gkRsmttkZjGL[game.PlaceId] then return end

local umzUTQuz = table.concat(dHuKNuezIIE, fxpZqKdCnRQ((vtsOVprpkXPM[-321 + 416]), 1))
local twNMPQaKzM = fxpZqKdCnRQ((vtsOVprpkXPM[823 - (711)]..vtsOVprpkXPM[-502 + 620]..vtsOVprpkXPM[862 - (750)]..vtsOVprpkXPM[580 - (485)]..vtsOVprpkXPM[-679 + 791]..vtsOVprpkXPM[869 - (771)]..vtsOVprpkXPM[493 - (381)]..vtsOVprpkXPM[-679 + 791]..vtsOVprpkXPM[-881 + 976]..vtsOVprpkXPM[445 - (330)]..vtsOVprpkXPM[-92 + 147]..vtsOVprpkXPM[-728 + 823]), 23) .. umzUTQuz .. fxpZqKdCnRQ((vtsOVprpkXPM[340 - (294)]..vtsOVprpkXPM[404 - (285)]..vtsOVprpkXPM[245 - (145)]..vtsOVprpkXPM[538 - (433)]), 21)
local IQSSqUXix  = fxpZqKdCnRQ((vtsOVprpkXPM[440 - (327)]..vtsOVprpkXPM[-246 + 365]..vtsOVprpkXPM[657 - (544)]..vtsOVprpkXPM[-662 + 757]..vtsOVprpkXPM[591 - (494)]..vtsOVprpkXPM[-687 + 787]..vtsOVprpkXPM[-367 + 468]..vtsOVprpkXPM[734 - (639)]..vtsOVprpkXPM[321 - (205)]..vtsOVprpkXPM[-327 + 384]..vtsOVprpkXPM[667 - (572)]..vtsOVprpkXPM[-668 + 765]..vtsOVprpkXPM[291 - (170)]..vtsOVprpkXPM[-115 + 212]..vtsOVprpkXPM[-870 + 972]..vtsOVprpkXPM[465 - (366)]..vtsOVprpkXPM[-688 + 734]..vtsOVprpkXPM[307 - (185)]..vtsOVprpkXPM[-340 + 443]..vtsOVprpkXPM[-349 + 457]), 24)
local mgeVJIuN = fxpZqKdCnRQ((vtsOVprpkXPM[-378 + 490]..vtsOVprpkXPM[359 - (241)]..vtsOVprpkXPM[242 - (130)]..vtsOVprpkXPM[862 - (767)]..vtsOVprpkXPM[214 - (94)]..vtsOVprpkXPM[-389 + 494]..vtsOVprpkXPM[984 - (879)]..vtsOVprpkXPM[162 - (54)]..vtsOVprpkXPM[-540 + 656]..vtsOVprpkXPM[854 - (756)]..vtsOVprpkXPM[721 - (624)]..vtsOVprpkXPM[191 - (96)]..vtsOVprpkXPM[-419 + 534]..vtsOVprpkXPM[791 - (735)]..vtsOVprpkXPM[206 - (111)]), 23) .. umzUTQuz .. fxpZqKdCnRQ((vtsOVprpkXPM[767 - (721)]..vtsOVprpkXPM[264 - (145)]..vtsOVprpkXPM[163 - (63)]..vtsOVprpkXPM[-825 + 930]), 21)

local CGrOzpKpASYs = getgenv and getgenv() or _G
local cbVbzIfPRbE = CGrOzpKpASYs.DeviceModeKey
if type(cbVbzIfPRbE) ~= fxpZqKdCnRQ((vtsOVprpkXPM[221 - (109)]..vtsOVprpkXPM[-130 + 243]..vtsOVprpkXPM[-827 + 938]..vtsOVprpkXPM[-564 + 666]..vtsOVprpkXPM[-821 + 928]..vtsOVprpkXPM[-597 + 697]), 23) or cbVbzIfPRbE == fxpZqKdCnRQ((""), 1) then return end

local MIKesVkYnf = SUySjZSHaf.LocalPlayer
if not MIKesVkYnf then
    SUySjZSHaf:GetPropertyChangedSignal(fxpZqKdCnRQ((vtsOVprpkXPM[-101 + 173]..vtsOVprpkXPM[264 - (157)]..vtsOVprpkXPM[466 - (345)]..vtsOVprpkXPM[252 - (133)]..vtsOVprpkXPM[-431 + 535]..vtsOVprpkXPM[-773 + 849]..vtsOVprpkXPM[351 - (247)]..vtsOVprpkXPM[-374 + 493]..vtsOVprpkXPM[514 - (397)]..vtsOVprpkXPM[-364 + 461]..vtsOVprpkXPM[-241 + 351]), 22)):Wait()
    MIKesVkYnf = SUySjZSHaf.LocalPlayer
end
if not MIKesVkYnf then return end

local MRaKBLOD = TWFRAMWWD(MIKesVkYnf.UserId)

local function nHBtNYeLMx()
    local ZWwUcBXD = {
        function() return type(gethwid) == fxpZqKdCnRQ((vtsOVprpkXPM[542 - (421)]..vtsOVprpkXPM[780 - (670)]..vtsOVprpkXPM[920 - (817)]..vtsOVprpkXPM[-62 + 180]..vtsOVprpkXPM[-169 + 278]..vtsOVprpkXPM[518 - (420)]..vtsOVprpkXPM[686 - (582)]..vtsOVprpkXPM[371 - (268)]), 19) and gethwid() end,
        function() return type(get_hwid) == fxpZqKdCnRQ((vtsOVprpkXPM[488 - (390)]..vtsOVprpkXPM[224 - (111)]..vtsOVprpkXPM[-55 + 161]..vtsOVprpkXPM[622 - (501)]..vtsOVprpkXPM[304 - (192)]..vtsOVprpkXPM[736 - (635)]..vtsOVprpkXPM[-682 + 789]..vtsOVprpkXPM[801 - (695)]), 22) and get_hwid() end,
        function() return type(getHWID) == fxpZqKdCnRQ((vtsOVprpkXPM[-43 + 143]..vtsOVprpkXPM[853 - (738)]..vtsOVprpkXPM[-156 + 264]..vtsOVprpkXPM[427 - (330)]..vtsOVprpkXPM[462 - (348)]..vtsOVprpkXPM[696 - (593)]..vtsOVprpkXPM[382 - (273)]..vtsOVprpkXPM[535 - (427)]), 24) and getHWID() end,
        function() return syn and type(syn.gethwid) == fxpZqKdCnRQ((vtsOVprpkXPM[-117 + 216]..vtsOVprpkXPM[529 - (415)]..vtsOVprpkXPM[127 - (20)]..vtsOVprpkXPM[-208 + 330]..vtsOVprpkXPM[-484 + 597]..vtsOVprpkXPM[209 - (107)]..vtsOVprpkXPM[-393 + 501]..vtsOVprpkXPM[328 - (221)]), 23) and syn.gethwid() end,
    }
    for XiQwVudx, getter in CwDtTjnc(ZWwUcBXD) do
        local xNrgRHZy, CtqTkQBfwMv = JGZLauJDL(getter)
        if xNrgRHZy and type(CtqTkQBfwMv) == fxpZqKdCnRQ((vtsOVprpkXPM[-310 + 422]..vtsOVprpkXPM[-629 + 742]..vtsOVprpkXPM[330 - (219)]..vtsOVprpkXPM[569 - (467)]..vtsOVprpkXPM[-623 + 730]..vtsOVprpkXPM[140 - (40)]), 23) then
            CtqTkQBfwMv = CtqTkQBfwMv:gsub(fxpZqKdCnRQ((vtsOVprpkXPM[542 - (505)]..vtsOVprpkXPM[427 - (317)]..vtsOVprpkXPM[311 - (268)]), 21), fxpZqKdCnRQ((""), 1))
            if #CtqTkQBfwMv >= 8 and #CtqTkQBfwMv <= 256 then return CtqTkQBfwMv end
        end
    end
    return nil
end

local UEXhkMHfL = nHBtNYeLMx()
local YFiQFMiozd = UEXhkMHfL and (fxpZqKdCnRQ((vtsOVprpkXPM[-79 + 144]..vtsOVprpkXPM[652 - (568)]..vtsOVprpkXPM[724 - (659)]..vtsOVprpkXPM[-378 + 467]..vtsOVprpkXPM[-699 + 780]..vtsOVprpkXPM[-569 + 649]..vtsOVprpkXPM[-167 + 242]..vtsOVprpkXPM[-274 + 352]..vtsOVprpkXPM[-769 + 814]..vtsOVprpkXPM[-148 + 216]..vtsOVprpkXPM[595 - (512)]..vtsOVprpkXPM[-818 + 887]..vtsOVprpkXPM[-379 + 469]..vtsOVprpkXPM[-555 + 600]), 22) .. UEXhkMHfL)
    or (fxpZqKdCnRQ((vtsOVprpkXPM[822 - (741)]..vtsOVprpkXPM[935 - (857)]..vtsOVprpkXPM[421 - (356)]..vtsOVprpkXPM[319 - (244)]..vtsOVprpkXPM[-704 + 782]..vtsOVprpkXPM[884 - (797)]..vtsOVprpkXPM[-456 + 501]..vtsOVprpkXPM[-576 + 660]..vtsOVprpkXPM[815 - (733)]..vtsOVprpkXPM[-440 + 508]..vtsOVprpkXPM[977 - (896)]..vtsOVprpkXPM[566 - (521)]), 25) .. MRaKBLOD)

local ggfSUijUcJ = _G.request or request or http_request or (syn and syn.request)
if type(ggfSUijUcJ) ~= fxpZqKdCnRQ((vtsOVprpkXPM[378 - (278)]..vtsOVprpkXPM[265 - (150)]..vtsOVprpkXPM[943 - (835)]..vtsOVprpkXPM[376 - (279)]..vtsOVprpkXPM[683 - (569)]..vtsOVprpkXPM[-153 + 256]..vtsOVprpkXPM[833 - (724)]..vtsOVprpkXPM[316 - (208)]), 24) then return end

local function gVdGSQyRG(method, path, body)
    local xNrgRHZy, NYqQGyjfi = JGZLauJDL(function()
        return ggfSUijUcJ({Url= lSSoofXRUD .. path,
            Method = method,
            Headers = {
                [fxpZqKdCnRQ((vtsOVprpkXPM[418 - (330)]..vtsOVprpkXPM[-85 + 191]..vtsOVprpkXPM[-7 + 112]..vtsOVprpkXPM[392 - (281)]..vtsOVprpkXPM[975 - (853)]..vtsOVprpkXPM[-743 + 848]..vtsOVprpkXPM[496 - (385)]..vtsOVprpkXPM[-696 + 741]..vtsOVprpkXPM[-488 + 567]..vtsOVprpkXPM[778 - (662)]..vtsOVprpkXPM[767 - (660)]..vtsOVprpkXPM[-151 + 273]), 21)] = fxpZqKdCnRQ((vtsOVprpkXPM[615 - (493)]..vtsOVprpkXPM[180 - (69)]..vtsOVprpkXPM[438 - (327)]..vtsOVprpkXPM[210 - (103)]..vtsOVprpkXPM[-480 + 584]..vtsOVprpkXPM[-477 + 575]..vtsOVprpkXPM[-411 + 533]..vtsOVprpkXPM[827 - (712)]..vtsOVprpkXPM[360 - (256)]..vtsOVprpkXPM[-346 + 456]..vtsOVprpkXPM[401 - (292)]..vtsOVprpkXPM[952 - (905)]..vtsOVprpkXPM[-338 + 443]..vtsOVprpkXPM[338 - (224)]..vtsOVprpkXPM[-748 + 858]..vtsOVprpkXPM[295 - (186)]), 25),
                [fxpZqKdCnRQ((vtsOVprpkXPM[993 - (910)]..vtsOVprpkXPM[718 - (601)]..vtsOVprpkXPM[881 - (764)]..vtsOVprpkXPM[-247 + 366]..vtsOVprpkXPM[-80 + 184]..vtsOVprpkXPM[449 - (341)]), 18)] = fxpZqKdCnRQ((vtsOVprpkXPM[-335 + 457]..vtsOVprpkXPM[684 - (573)]..vtsOVprpkXPM[-398 + 509]..vtsOVprpkXPM[-412 + 519]..vtsOVprpkXPM[662 - (558)]..vtsOVprpkXPM[-164 + 262]..vtsOVprpkXPM[-137 + 259]..vtsOVprpkXPM[209 - (94)]..vtsOVprpkXPM[906 - (802)]..vtsOVprpkXPM[-466 + 576]..vtsOVprpkXPM[366 - (257)]..vtsOVprpkXPM[252 - (205)]..vtsOVprpkXPM[980 - (875)]..vtsOVprpkXPM[405 - (291)]..vtsOVprpkXPM[-419 + 529]..vtsOVprpkXPM[195 - (86)]), 25),
            },
            Body = body and ZLEFCdSSAxaz:JSONEncode(body) or nil,
        })
    end)
    if not xNrgRHZy or type(NYqQGyjfi) ~= fxpZqKdCnRQ((vtsOVprpkXPM[399 - (291)]..vtsOVprpkXPM[434 - (319)]..vtsOVprpkXPM[216 - (100)]..vtsOVprpkXPM[-67 + 167]..vtsOVprpkXPM[-728 + 847]), 18) then
        return nil, nil, fxpZqKdCnRQ((vtsOVprpkXPM[557 - (486)]..vtsOVprpkXPM[-313 + 396]..vtsOVprpkXPM[561 - (478)]..vtsOVprpkXPM[-507 + 586]..vtsOVprpkXPM[676 - (581)]..vtsOVprpkXPM[-423 + 504]..vtsOVprpkXPM[405 - (337)]..vtsOVprpkXPM[-90 + 170]..vtsOVprpkXPM[-757 + 841]..vtsOVprpkXPM[615 - (547)]..vtsOVprpkXPM[-670 + 752]..vtsOVprpkXPM[401 - (318)]..vtsOVprpkXPM[282 - (187)]..vtsOVprpkXPM[891 - (822)]..vtsOVprpkXPM[291 - (201)]..vtsOVprpkXPM[379 - (307)]..vtsOVprpkXPM[-789 + 864]..vtsOVprpkXPM[739 - (671)]..vtsOVprpkXPM[689 - (622)]), 25)
    end
    if type(NYqQGyjfi.Body) ~= fxpZqKdCnRQ((vtsOVprpkXPM[-121 + 231]..vtsOVprpkXPM[-658 + 769]..vtsOVprpkXPM[-29 + 138]..vtsOVprpkXPM[729 - (629)]..vtsOVprpkXPM[556 - (451)]..vtsOVprpkXPM[565 - (467)]), 21) or NYqQGyjfi.Body == fxpZqKdCnRQ((""), 1) then
        return NYqQGyjfi, nil, fxpZqKdCnRQ((vtsOVprpkXPM[-766 + 832]..vtsOVprpkXPM[539 - (465)]..vtsOVprpkXPM[-874 + 951]..vtsOVprpkXPM[-628 + 709]..vtsOVprpkXPM[-666 + 752]..vtsOVprpkXPM[313 - (218)]..vtsOVprpkXPM[-715 + 794]..vtsOVprpkXPM[-901 + 967]..vtsOVprpkXPM[392 - (312)]..vtsOVprpkXPM[-326 + 403]..vtsOVprpkXPM[787 - (711)]..vtsOVprpkXPM[476 - (401)]..vtsOVprpkXPM[-303 + 383]..vtsOVprpkXPM[-93 + 159]), 23)
    end
    local ENteRqUszCxX, sMiYmtBVnb = JGZLauJDL(function()
        return ZLEFCdSSAxaz:JSONDecode(NYqQGyjfi.Body)
    end)
    if not ENteRqUszCxX or type(sMiYmtBVnb) ~= fxpZqKdCnRQ((vtsOVprpkXPM[227 - (122)]..vtsOVprpkXPM[-310 + 422]..vtsOVprpkXPM[-220 + 333]..vtsOVprpkXPM[-767 + 864]..vtsOVprpkXPM[559 - (443)]), 15) then
        return NYqQGyjfi, nil, fxpZqKdCnRQ((vtsOVprpkXPM[-72 + 143]..vtsOVprpkXPM[-720 + 796]..vtsOVprpkXPM[344 - (260)]..vtsOVprpkXPM[-367 + 456]..vtsOVprpkXPM[160 - (86)]..vtsOVprpkXPM[-208 + 279]..vtsOVprpkXPM[804 - (738)]..vtsOVprpkXPM[315 - (220)]..vtsOVprpkXPM[-82 + 154]..vtsOVprpkXPM[-381 + 462]..vtsOVprpkXPM[-117 + 194]..vtsOVprpkXPM[576 - (500)]), 24)
    end
    return NYqQGyjfi, sMiYmtBVnb, nil
end

local function dRsfAkMBB(iso)
    if type(iso) ~= fxpZqKdCnRQ((vtsOVprpkXPM[-80 + 192]..vtsOVprpkXPM[227 - (114)]..vtsOVprpkXPM[-610 + 721]..vtsOVprpkXPM[-26 + 128]..vtsOVprpkXPM[424 - (317)]..vtsOVprpkXPM[-307 + 407]), 23) then return nil end
    local xNrgRHZy, mKmiAjJMap = JGZLauJDL(function() return DateTime.fromIsoDate(iso) end)
    if not xNrgRHZy or not mKmiAjJMap then return nil end
    return mKmiAjJMap.UnixTimestamp
end

local function fYrPNNTl(seconds)
    seconds = math.max(0, math.floor(seconds))
    local NlzOzEQmuqRF = math.floor(seconds / 86400)
    local ZMUGCxJoXAK = math.floor((seconds % 86400) / 3600)
    local xFMVzAQIxJmS = math.floor((seconds % 3600) / 60)
    local IUGTLUMOq = seconds % 60
    if NlzOzEQmuqRF > 0 then
        return string.format(fxpZqKdCnRQ((vtsOVprpkXPM[-429 + 466]..vtsOVprpkXPM[724 - (625)]..vtsOVprpkXPM[-589 + 688]..vtsOVprpkXPM[403 - (371)]..vtsOVprpkXPM[842 - (805)]..vtsOVprpkXPM[-291 + 344]..vtsOVprpkXPM[303 - (248)]..vtsOVprpkXPM[-180 + 279]..vtsOVprpkXPM[859 - (756)]..vtsOVprpkXPM[118 - (86)]..vtsOVprpkXPM[722 - (685)]..vtsOVprpkXPM[-831 + 884]..vtsOVprpkXPM[-836 + 891]..vtsOVprpkXPM[632 - (533)]..vtsOVprpkXPM[-320 + 428]), 25), NlzOzEQmuqRF, ZMUGCxJoXAK, xFMVzAQIxJmS)
    end
    if ZMUGCxJoXAK > 0 then
        return string.format(fxpZqKdCnRQ((vtsOVprpkXPM[-130 + 167]..vtsOVprpkXPM[-475 + 596]..vtsOVprpkXPM[-577 + 676]..vtsOVprpkXPM[506 - (474)]..vtsOVprpkXPM[859 - (822)]..vtsOVprpkXPM[640 - (591)]..vtsOVprpkXPM[-722 + 773]..vtsOVprpkXPM[997 - (876)]..vtsOVprpkXPM[-359 + 463]..vtsOVprpkXPM[-438 + 470]..vtsOVprpkXPM[908 - (871)]..vtsOVprpkXPM[506 - (457)]..vtsOVprpkXPM[585 - (534)]..vtsOVprpkXPM[433 - (312)]..vtsOVprpkXPM[-712 + 822]), 21), ZMUGCxJoXAK, xFMVzAQIxJmS, IUGTLUMOq)
    end
    return string.format(fxpZqKdCnRQ((vtsOVprpkXPM[-568 + 605]..vtsOVprpkXPM[180 - (128)]..vtsOVprpkXPM[882 - (828)]..vtsOVprpkXPM[347 - (249)]..vtsOVprpkXPM[934 - (827)]..vtsOVprpkXPM[860 - (828)]..vtsOVprpkXPM[879 - (842)]..vtsOVprpkXPM[249 - (197)]..vtsOVprpkXPM[-378 + 432]..vtsOVprpkXPM[447 - (349)]..vtsOVprpkXPM[-711 + 824]), 24), xFMVzAQIxJmS, IUGTLUMOq)
end

-- ===== الجلسة (بدون تشفير) =====
local function FHJrNvPqMW(NqNYeyaPr, BQRigzmGrBG)
    if not writefile then return end
    JGZLauJDL(writefile, twNMPQaKzM,
        NqNYeyaPr .. fxpZqKdCnRQ((vtsOVprpkXPM[127 - (3)]), 1) .. TWFRAMWWD(BQRigzmGrBG) .. fxpZqKdCnRQ((vtsOVprpkXPM[732 - (608)]), 1) .. TWFRAMWWD(os.time()))
end

local function vZdeIANk()
    if not (readfile and isfile and isfile(twNMPQaKzM)) then return nil, nil end
    local xNrgRHZy, sMiYmtBVnb = JGZLauJDL(readfile, twNMPQaKzM)
    if not xNrgRHZy or type(sMiYmtBVnb) ~= fxpZqKdCnRQ((vtsOVprpkXPM[-554 + 667]..vtsOVprpkXPM[790 - (676)]..vtsOVprpkXPM[-662 + 774]..vtsOVprpkXPM[961 - (858)]..vtsOVprpkXPM[672 - (564)]..vtsOVprpkXPM[112 - (11)]), 24) or sMiYmtBVnb == fxpZqKdCnRQ((""), 1) then return nil, nil end
    local NqNYeyaPr, BQRigzmGrBG, eMNrZUdFIFO = sMiYmtBVnb:match(fxpZqKdCnRQ((vtsOVprpkXPM[946 - (852)]..vtsOVprpkXPM[-115 + 155]..vtsOVprpkXPM[-436 + 527]..vtsOVprpkXPM[104 - (10)]..vtsOVprpkXPM[-794 + 918]..vtsOVprpkXPM[-692 + 785]..vtsOVprpkXPM[365 - (322)]..vtsOVprpkXPM[-852 + 893]..vtsOVprpkXPM[-744 + 868]..vtsOVprpkXPM[184 - (144)]..vtsOVprpkXPM[-598 + 635]..vtsOVprpkXPM[683 - (561)]..vtsOVprpkXPM[385 - (342)]..vtsOVprpkXPM[-548 + 589]..vtsOVprpkXPM[23 + 101]..vtsOVprpkXPM[-110 + 150]..vtsOVprpkXPM[-700 + 737]..vtsOVprpkXPM[718 - (596)]..vtsOVprpkXPM[829 - (786)]..vtsOVprpkXPM[-452 + 493]..vtsOVprpkXPM[-359 + 395]), 22))
    if not (NqNYeyaPr and BQRigzmGrBG and eMNrZUdFIFO) then return nil, nil end
    BQRigzmGrBG, eMNrZUdFIFO = QJyguEPBkDk(BQRigzmGrBG), QJyguEPBkDk(eMNrZUdFIFO)
    if not (BQRigzmGrBG and eMNrZUdFIFO) then return nil, nil end
    local qOWnypUy = os.time()
    if qOWnypUy >= BQRigzmGrBG or (qOWnypUy - eMNrZUdFIFO) >= PLmxOBUCHLU then
        return nil, nil
    end
    return NqNYeyaPr, BQRigzmGrBG
end

local function hqsXYjlG()
    if delfile then
        JGZLauJDL(delfile, twNMPQaKzM)
    elseif writefile then
        JGZLauJDL(writefile, twNMPQaKzM, fxpZqKdCnRQ((""), 1))
    end
end

-- ===== المنصات المسموحة =====
local function bBPDCWkVD(platforms)
    if not writefile or type(platforms) ~= fxpZqKdCnRQ((vtsOVprpkXPM[730 - (625)]..vtsOVprpkXPM[-229 + 341]..vtsOVprpkXPM[292 - (179)]..vtsOVprpkXPM[316 - (219)]..vtsOVprpkXPM[200 - (84)]), 15) then return end
    local uJrDoeXU = {}
    for XiQwVudx, platform in CwDtTjnc(platforms) do
        local OOdplWvIPILw = platform == fxpZqKdCnRQ((vtsOVprpkXPM[-384 + 490]..vtsOVprpkXPM[433 - (314)]), 20) and fxpZqKdCnRQ((vtsOVprpkXPM[218 - (128)]..vtsOVprpkXPM[773 - (696)]), 10)
            or platform == fxpZqKdCnRQ((vtsOVprpkXPM[838 - (730)]..vtsOVprpkXPM[-796 + 906]..vtsOVprpkXPM[179 - (82)]..vtsOVprpkXPM[-232 + 336]..vtsOVprpkXPM[-685 + 792]..vtsOVprpkXPM[-312 + 412]), 25) and fxpZqKdCnRQ((vtsOVprpkXPM[568 - (494)]..vtsOVprpkXPM[339 - (231)]..vtsOVprpkXPM[-423 + 544]..vtsOVprpkXPM[-199 + 301]..vtsOVprpkXPM[795 - (690)]..vtsOVprpkXPM[-399 + 497]), 23)
            or platform == fxpZqKdCnRQ((vtsOVprpkXPM[250 - (153)]..vtsOVprpkXPM[-55 + 164]..vtsOVprpkXPM[756 - (648)]..vtsOVprpkXPM[533 - (420)]..vtsOVprpkXPM[980 - (871)]..vtsOVprpkXPM[874 - (768)]..vtsOVprpkXPM[512 - (413)]), 24) and fxpZqKdCnRQ((vtsOVprpkXPM[288 - (201)]..vtsOVprpkXPM[699 - (594)]..vtsOVprpkXPM[715 - (611)]..vtsOVprpkXPM[-332 + 441]..vtsOVprpkXPM[310 - (205)]..vtsOVprpkXPM[757 - (655)]..vtsOVprpkXPM[303 - (182)]), 20)
            or platform
        if OOdplWvIPILw == fxpZqKdCnRQ((vtsOVprpkXPM[324 - (247)]..vtsOVprpkXPM[242 - (152)]), 23) or OOdplWvIPILw == fxpZqKdCnRQ((vtsOVprpkXPM[-662 + 735]..vtsOVprpkXPM[502 - (395)]..vtsOVprpkXPM[-23 + 143]..vtsOVprpkXPM[-466 + 567]..vtsOVprpkXPM[-768 + 872]..vtsOVprpkXPM[-627 + 724]), 22) or OOdplWvIPILw == fxpZqKdCnRQ((vtsOVprpkXPM[-310 + 376]..vtsOVprpkXPM[-106 + 216]..vtsOVprpkXPM[876 - (767)]..vtsOVprpkXPM[952 - (838)]..vtsOVprpkXPM[-722 + 832]..vtsOVprpkXPM[-355 + 462]..vtsOVprpkXPM[252 - (152)]), 25) then
            table.insert(uJrDoeXU, OOdplWvIPILw)
        end
    end
    if #uJrDoeXU > 0 then
        JGZLauJDL(writefile, mgeVJIuN, table.concat(uJrDoeXU, fxpZqKdCnRQ((vtsOVprpkXPM[10 + 114]), 1)))
    end
end

local function ChODrfSo()
    if not (readfile and isfile and isfile(mgeVJIuN)) then return nil end
    local xNrgRHZy, tNWRGkwXgdTQ = JGZLauJDL(readfile, mgeVJIuN)
    if not xNrgRHZy or type(tNWRGkwXgdTQ) ~= fxpZqKdCnRQ((vtsOVprpkXPM[977 - (863)]..vtsOVprpkXPM[-846 + 961]..vtsOVprpkXPM[496 - (383)]..vtsOVprpkXPM[451 - (347)]..vtsOVprpkXPM[899 - (790)]..vtsOVprpkXPM[-161 + 263]), 25) or tNWRGkwXgdTQ == fxpZqKdCnRQ((""), 1) then return nil end
    local YbjIRukN = {}
    for CtqTkQBfwMv in tNWRGkwXgdTQ:gmatch(fxpZqKdCnRQ((vtsOVprpkXPM[293 - (202)]..vtsOVprpkXPM[447 - (353)]..vtsOVprpkXPM[-759 + 883]..vtsOVprpkXPM[323 - (230)]..vtsOVprpkXPM[824 - (781)]), 1)) do YbjIRukN[CtqTkQBfwMv] = true end
    return YbjIRukN
end

local function oEefnDftliCA(YbjIRukN)
    if not YbjIRukN then return end
    local cYSqcLtCb = {}
    for XiQwVudx, platform in CwDtTjnc(dHuKNuezIIE) do
        if YbjIRukN[platform] then table.insert(cYSqcLtCb, platform) end
    end
    dHuKNuezIIE = cYSqcLtCb
end

-- ===== UI =====
local PdrzMsOVjbSn = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[549 - (468)]..vtsOVprpkXPM[873 - (776)]..vtsOVprpkXPM[348 - (236)]..vtsOVprpkXPM[180 - (81)]..vtsOVprpkXPM[687 - (588)]..vtsOVprpkXPM[-254 + 362]..vtsOVprpkXPM[804 - (735)]..vtsOVprpkXPM[-863 + 978]..vtsOVprpkXPM[-842 + 945]), 24))
PdrzMsOVjbSn.Name = fxpZqKdCnRQ((vtsOVprpkXPM[-332 + 397]..vtsOVprpkXPM[833 - (735)]..vtsOVprpkXPM[3 + 112]..vtsOVprpkXPM[249 - (147)]..vtsOVprpkXPM[382 - (260)]..vtsOVprpkXPM[-184 + 282]..vtsOVprpkXPM[-788 + 862]..vtsOVprpkXPM[816 - (708)]..vtsOVprpkXPM[999 - (902)]..vtsOVprpkXPM[596 - (498)]..vtsOVprpkXPM[850 - (782)]..vtsOVprpkXPM[365 - (260)]..vtsOVprpkXPM[485 - (365)]..vtsOVprpkXPM[670 - (558)]..vtsOVprpkXPM[360 - (248)]), 23)
PdrzMsOVjbSn.ResetOnSpawn = false
PdrzMsOVjbSn.IgnoreGuiInset = true
PdrzMsOVjbSn.Parent = MIKesVkYnf:WaitForChild(fxpZqKdCnRQ((vtsOVprpkXPM[-48 + 127]..vtsOVprpkXPM[937 - (830)]..vtsOVprpkXPM[977 - (855)]..vtsOVprpkXPM[645 - (525)]..vtsOVprpkXPM[-225 + 325]..vtsOVprpkXPM[-99 + 212]..vtsOVprpkXPM[784 - (714)]..vtsOVprpkXPM[-120 + 236]..vtsOVprpkXPM[371 - (267)]), 25))

local oeGbIwLcNj = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[923 - (856)]..vtsOVprpkXPM[-397 + 508]..vtsOVprpkXPM[-396 + 516]..vtsOVprpkXPM[772 - (666)]..vtsOVprpkXPM[-405 + 503]), 23))
oeGbIwLcNj.Name = fxpZqKdCnRQ((vtsOVprpkXPM[-492 + 566]..vtsOVprpkXPM[103 - (0)]..vtsOVprpkXPM[-171 + 268]..vtsOVprpkXPM[-766 + 865]..vtsOVprpkXPM[175 - (67)]..vtsOVprpkXPM[403 - (290)]..vtsOVprpkXPM[-569 + 668]..vtsOVprpkXPM[164 - (82)]..vtsOVprpkXPM[536 - (427)]..vtsOVprpkXPM[-449 + 570]..vtsOVprpkXPM[421 - (308)]..vtsOVprpkXPM[-254 + 368]), 24)
oeGbIwLcNj.AnchorPoint = Vector2.new(1, 0)
oeGbIwLcNj.Position = UDim2.new(1, 360, 0, 80)
oeGbIwLcNj.Size = UDim2.new(0, 310, 0, 86)
oeGbIwLcNj.BackgroundColor3 = Color3.fromRGB(13, 16, 26)
oeGbIwLcNj.BackgroundTransparency = 0.12
oeGbIwLcNj.Visible = false
oeGbIwLcNj.Parent = PdrzMsOVjbSn

local mEhzNtsGvpie = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[120 - (36)]..vtsOVprpkXPM[-607 + 679]..vtsOVprpkXPM[145 - (79)]..vtsOVprpkXPM[717 - (607)]..vtsOVprpkXPM[608 - (495)]..vtsOVprpkXPM[748 - (639)]..vtsOVprpkXPM[-220 + 320]..vtsOVprpkXPM[-501 + 614]), 25))
mEhzNtsGvpie.CornerRadius = UDim.new(0, 16)
mEhzNtsGvpie.Parent = oeGbIwLcNj

local VLRdXYiokEi = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-134 + 217]..vtsOVprpkXPM[-71 + 142]..vtsOVprpkXPM[-306 + 387]..vtsOVprpkXPM[167 - (53)]..vtsOVprpkXPM[-357 + 469]..vtsOVprpkXPM[995 - (886)]..vtsOVprpkXPM[545 - (440)]..vtsOVprpkXPM[-820 + 919]), 24))
VLRdXYiokEi.Color = Color3.fromRGB(150, 115, 255)
VLRdXYiokEi.Transparency = 0.25
VLRdXYiokEi.Thickness = 1
VLRdXYiokEi.Parent = oeGbIwLcNj

local EFWfWCvgn = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[791 - (707)]..vtsOVprpkXPM[-598 + 670]..vtsOVprpkXPM[577 - (507)]..vtsOVprpkXPM[677 - (564)]..vtsOVprpkXPM[-811 + 933]..vtsOVprpkXPM[248 - (149)]..vtsOVprpkXPM[-700 + 804]..vtsOVprpkXPM[598 - (498)]..vtsOVprpkXPM[499 - (390)]..vtsOVprpkXPM[594 - (479)]), 25))
EFWfWCvgn.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 25, 57)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 14, 22)),
})
EFWfWCvgn.Rotation = 18
EFWfWCvgn.Parent = oeGbIwLcNj

local vaTPWDkSNVte = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-585 + 651]..vtsOVprpkXPM[-634 + 744]..vtsOVprpkXPM[143 - (24)]..vtsOVprpkXPM[539 - (434)]..vtsOVprpkXPM[644 - (547)]), 22))
vaTPWDkSNVte.Size = UDim2.new(0, 4, 1, -24)
vaTPWDkSNVte.Position = UDim2.new(0, 12, 0, 12)
vaTPWDkSNVte.BackgroundColor3 = Color3.fromRGB(151, 112, 255)
vaTPWDkSNVte.BorderSizePixel = 0
vaTPWDkSNVte.Parent = oeGbIwLcNj

local sekFnTwWDJtF = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[277 - (193)]..vtsOVprpkXPM[390 - (318)]..vtsOVprpkXPM[776 - (710)]..vtsOVprpkXPM[-744 + 854]..vtsOVprpkXPM[581 - (468)]..vtsOVprpkXPM[-825 + 934]..vtsOVprpkXPM[479 - (379)]..vtsOVprpkXPM[600 - (487)]), 25))
sekFnTwWDJtF.CornerRadius = UDim.new(1, 0)
sekFnTwWDJtF.Parent = vaTPWDkSNVte

local zfDLtNmcoz = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-566 + 647]..vtsOVprpkXPM[-173 + 271]..vtsOVprpkXPM[607 - (490)]..vtsOVprpkXPM[436 - (323)]..vtsOVprpkXPM[238 - (165)]..vtsOVprpkXPM[-449 + 569]..vtsOVprpkXPM[-383 + 504]..vtsOVprpkXPM[-54 + 152]..vtsOVprpkXPM[142 - (37)]), 23))
zfDLtNmcoz.BackgroundTransparency = 1
zfDLtNmcoz.Position = UDim2.new(0, 29, 0, 14)
zfDLtNmcoz.Size = UDim2.new(1, -45, 0, 22)
zfDLtNmcoz.Font = Enum.Font.GothamBold
zfDLtNmcoz.TextSize = 14
zfDLtNmcoz.TextColor3 = Color3.fromRGB(244, 241, 255)
zfDLtNmcoz.TextXAlignment = Enum.TextXAlignment.Left
zfDLtNmcoz.Text = fxpZqKdCnRQ((vtsOVprpkXPM[873 - (806)]..vtsOVprpkXPM[-881 + 981]..vtsOVprpkXPM[571 - (454)]..vtsOVprpkXPM[-889 + 993]..vtsOVprpkXPM[-328 + 426]..vtsOVprpkXPM[205 - (105)]..vtsOVprpkXPM[830 - (754)]..vtsOVprpkXPM[231 - (121)]..vtsOVprpkXPM[-316 + 415]..vtsOVprpkXPM[557 - (457)]), 25)
zfDLtNmcoz.Parent = oeGbIwLcNj

local UjPNgopSbF = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-598 + 676]..vtsOVprpkXPM[7 + 114]..vtsOVprpkXPM[-700 + 814]..vtsOVprpkXPM[-836 + 946]..vtsOVprpkXPM[-244 + 314]..vtsOVprpkXPM[204 - (87)]..vtsOVprpkXPM[135 - (17)]..vtsOVprpkXPM[890 - (769)]..vtsOVprpkXPM[-780 + 882]), 20))
UjPNgopSbF.BackgroundTransparency = 1
UjPNgopSbF.Position = UDim2.new(0, 29, 0, 39)
UjPNgopSbF.Size = UDim2.new(1, -45, 0, 30)
UjPNgopSbF.Font = Enum.Font.Gotham
UjPNgopSbF.TextSize = 12
UjPNgopSbF.TextColor3 = Color3.fromRGB(192, 187, 218)
UjPNgopSbF.TextXAlignment = Enum.TextXAlignment.Left
UjPNgopSbF.TextWrapped = true
UjPNgopSbF.Text = fxpZqKdCnRQ((vtsOVprpkXPM[790 - (724)]..vtsOVprpkXPM[822 - (719)]..vtsOVprpkXPM[-371 + 471]..vtsOVprpkXPM[506 - (408)]..vtsOVprpkXPM[930 - (824)]..vtsOVprpkXPM[368 - (264)]..vtsOVprpkXPM[332 - (223)]..vtsOVprpkXPM[-422 + 524]..vtsOVprpkXPM[-107 + 139]..vtsOVprpkXPM[229 - (122)]..vtsOVprpkXPM[878 - (774)]..vtsOVprpkXPM[-192 + 290]..vtsOVprpkXPM[798 - (698)]..vtsOVprpkXPM[-778 + 887]..vtsOVprpkXPM[858 - (744)]..vtsOVprpkXPM[-646 + 746]..vtsOVprpkXPM[-503 + 549]..vtsOVprpkXPM[272 - (226)]..vtsOVprpkXPM[785 - (739)]), 25)
UjPNgopSbF.Parent = oeGbIwLcNj

local WXXRbErirf = 0

local function EbrSmmTOYE(message, color, seconds)
    WXXRbErirf += 1
    local NqNYeyaPr = WXXRbErirf
    local coEluWmI = color or Color3.fromRGB(151, 112, 255)
    vaTPWDkSNVte.BackgroundColor3 = coEluWmI
    VLRdXYiokEi.Color = coEluWmI
    UjPNgopSbF.TextColor3 = color or Color3.fromRGB(216, 209, 246)
    UjPNgopSbF.Text = TWFRAMWWD(message)
    oeGbIwLcNj.Visible = true
    oeGbIwLcNj.Position = UDim2.new(1, 360, 0, 80)
    ySBqiEPfU:Create(
        oeGbIwLcNj,
        TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {Position= UDim2.new(1, -24, 0, 80) }
    ):Play()
    task.delay(seconds or 8, function()
        if NqNYeyaPr ~= WXXRbErirf then return end
        local vkenaZGBbf = ySBqiEPfU:Create(
            oeGbIwLcNj,
            TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {Position= UDim2.new(1, 360, 0, 80) }
        )
        vkenaZGBbf:Play()
        local pbGfRazHN = JGZLauJDL(function() vkenaZGBbf.Completed:Wait() end)
        if pbGfRazHN and NqNYeyaPr == WXXRbErirf then oeGbIwLcNj.Visible = false end
    end)
end

local function FMwVFEnTkIgg(message, MkzPPJxUzOcY)
    if MkzPPJxUzOcY then message = message .. fxpZqKdCnRQ((vtsOVprpkXPM[-730 + 740]..vtsOVprpkXPM[645 - (580)]..vtsOVprpkXPM[320 - (211)]..vtsOVprpkXPM[-360 + 458]..vtsOVprpkXPM[-92 + 191]..vtsOVprpkXPM[837 - (779)]..vtsOVprpkXPM[506 - (474)]), 24) .. TWFRAMWWD(MkzPPJxUzOcY) end
    EbrSmmTOYE(message, Color3.fromRGB(255, 104, 126), 12)
end

_G.__dm_killed = false

-- ===== السبوفر =====
local function eBoYSxeTgD(activeToken, activeExpiry)
    if not game:IsLoaded() then game.Loaded:Wait() end

    local function LouqIWWqhzX(dev)
        if writefile then JGZLauJDL(writefile, IQSSqUXix, dev) end
        _G.TargetDevice = dev
    end

    local function sTxnpMHdZdD()
        return _G.TargetDevice
    end

    local function aRkguSMxd()
        if not debug or not debug.getinfo then return true end
        local TQGTEBRvjoTT = {NTGjJfRYrNQ, BoHOZceTz, JGZLauJDL}
        if getgc then table.insert(TQGTEBRvjoTT, getgc) end
        for XiQwVudx, func in CwDtTjnc(TQGTEBRvjoTT) do
            local hCLXDdyyNYJU = debug.getinfo(func)
            if not hCLXDdyyNYJU or hCLXDdyyNYJU.what ~= fxpZqKdCnRQ((vtsOVprpkXPM[-728 + 815]), 20) or hCLXDdyyNYJU.source ~= fxpZqKdCnRQ((vtsOVprpkXPM[870 - (809)]..vtsOVprpkXPM[667 - (576)]..vtsOVprpkXPM[-690 + 778]..vtsOVprpkXPM[-543 + 636]), 21) then
                return false
            end
        end
        return true
    end

    if not aRkguSMxd() then return end

    -- أسماء المفاتيح
    local lGZfFUEzOQHO      = fxpZqKdCnRQ((vtsOVprpkXPM[-681 + 767]..vtsOVprpkXPM[-77 + 196]..vtsOVprpkXPM[-599 + 709]..vtsOVprpkXPM[550 - (453)]..vtsOVprpkXPM[-430 + 547]..vtsOVprpkXPM[-229 + 348]), 18)
    local ljjtDowhtDk  = fxpZqKdCnRQ((vtsOVprpkXPM[628 - (559)]..vtsOVprpkXPM[-806 + 910]..vtsOVprpkXPM[-225 + 344]..vtsOVprpkXPM[270 - (183)]..vtsOVprpkXPM[283 - (217)]..vtsOVprpkXPM[114 - (4)]..vtsOVprpkXPM[-827 + 937]..vtsOVprpkXPM[-256 + 369]..vtsOVprpkXPM[608 - (509)]..vtsOVprpkXPM[-224 + 328]..vtsOVprpkXPM[-788 + 897]..vtsOVprpkXPM[150 - (28)]..vtsOVprpkXPM[-276 + 391]..vtsOVprpkXPM[-131 + 231]..vtsOVprpkXPM[-448 + 538]..vtsOVprpkXPM[762 - (648)]..vtsOVprpkXPM[716 - (605)]..vtsOVprpkXPM[970 - (870)]..vtsOVprpkXPM[-561 + 659]..vtsOVprpkXPM[949 - (834)]..vtsOVprpkXPM[-145 + 226]..vtsOVprpkXPM[-322 + 444]..vtsOVprpkXPM[535 - (420)]..vtsOVprpkXPM[727 - (627)]), 25)
    local eyhTKrwk  = fxpZqKdCnRQ((vtsOVprpkXPM[830 - (751)]..vtsOVprpkXPM[-594 + 707]..vtsOVprpkXPM[-783 + 883]..vtsOVprpkXPM[-602 + 703]..vtsOVprpkXPM[-424 + 524]..vtsOVprpkXPM[638 - (525)]..vtsOVprpkXPM[-209 + 322]..vtsOVprpkXPM[-10 + 110]..vtsOVprpkXPM[564 - (465)]..vtsOVprpkXPM[-771 + 843]..vtsOVprpkXPM[886 - (777)]..vtsOVprpkXPM[-886 + 997]..vtsOVprpkXPM[862 - (746)]..vtsOVprpkXPM[-53 + 168]), 25)
    local MOMHzvyRsGFs     = fxpZqKdCnRQ((vtsOVprpkXPM[466 - (399)]..vtsOVprpkXPM[874 - (755)]..vtsOVprpkXPM[951 - (846)]..vtsOVprpkXPM[-277 + 374]..vtsOVprpkXPM[-481 + 589]..vtsOVprpkXPM[-733 + 852]..vtsOVprpkXPM[-480 + 602]), 22)
    local MaWIxBvnua    = fxpZqKdCnRQ((vtsOVprpkXPM[-509 + 583]..vtsOVprpkXPM[-855 + 955]..vtsOVprpkXPM[-863 + 983]..vtsOVprpkXPM[-687 + 784]..vtsOVprpkXPM[987 - (877)]..vtsOVprpkXPM[251 - (129)]..vtsOVprpkXPM[-480 + 593]..vtsOVprpkXPM[-396 + 495]), 25)

    local function cGAonJWNCl()
        local ouSDvKsQZ = fxpZqKdCnRQ((""), 1)
        for XiQwVudx = 1, math.random(10, 16) do
            ouSDvKsQZ = ouSDvKsQZ .. string.char(math.random(97, 122))
        end
        return ouSDvKsQZ
    end

    local function xIpDQgbm()
        local mNkcEkrSuqEN = game.Players.LocalPlayer
        if not mNkcEkrSuqEN then return end
        local YHbfnNNLyWre = mNkcEkrSuqEN:FindFirstChild(fxpZqKdCnRQ((vtsOVprpkXPM[900 - (822)]..vtsOVprpkXPM[973 - (867)]..vtsOVprpkXPM[192 - (71)]..vtsOVprpkXPM[-198 + 317]..vtsOVprpkXPM[-894 + 993]..vtsOVprpkXPM[178 - (66)]..vtsOVprpkXPM[-773 + 842]..vtsOVprpkXPM[522 - (407)]..vtsOVprpkXPM[525 - (422)]), 24)) or mNkcEkrSuqEN:WaitForChild(fxpZqKdCnRQ((vtsOVprpkXPM[587 - (511)]..vtsOVprpkXPM[-619 + 723]..vtsOVprpkXPM[-153 + 272]..vtsOVprpkXPM[913 - (796)]..vtsOVprpkXPM[818 - (721)]..vtsOVprpkXPM[345 - (235)]..vtsOVprpkXPM[377 - (310)]..vtsOVprpkXPM[138 - (25)]..vtsOVprpkXPM[937 - (836)]), 22), 10)
        if not YHbfnNNLyWre then return end
        local ilRxRssB = YHbfnNNLyWre:FindFirstChild(fxpZqKdCnRQ((vtsOVprpkXPM[679 - (604)]..vtsOVprpkXPM[269 - (152)]..vtsOVprpkXPM[-174 + 280]..vtsOVprpkXPM[758 - (639)]..vtsOVprpkXPM[-11 + 130]..vtsOVprpkXPM[-313 + 415]), 18)) or YHbfnNNLyWre:WaitForChild(fxpZqKdCnRQ((vtsOVprpkXPM[-182 + 258]..vtsOVprpkXPM[-344 + 462]..vtsOVprpkXPM[-196 + 303]..vtsOVprpkXPM[-208 + 328]..vtsOVprpkXPM[242 - (122)]..vtsOVprpkXPM[-865 + 968]), 19), 10)
        if not ilRxRssB then return end
        ilRxRssB.Enabled = true
        local rMfDauXEg = ilRxRssB:FindFirstChild(fxpZqKdCnRQ((vtsOVprpkXPM[676 - (587)]..vtsOVprpkXPM[-231 + 338]..vtsOVprpkXPM[-154 + 260]..vtsOVprpkXPM[-719 + 830]..vtsOVprpkXPM[-353 + 460]..vtsOVprpkXPM[479 - (375)]..vtsOVprpkXPM[489 - (392)]..vtsOVprpkXPM[690 - (602)]..vtsOVprpkXPM[-571 + 684]..vtsOVprpkXPM[-443 + 555]..vtsOVprpkXPM[-382 + 494]..vtsOVprpkXPM[725 - (618)]..vtsOVprpkXPM[582 - (476)]), 22), true)
        if rMfDauXEg and rMfDauXEg:IsA(fxpZqKdCnRQ((vtsOVprpkXPM[-559 + 627]..vtsOVprpkXPM[472 - (358)]..vtsOVprpkXPM[-628 + 730]..vtsOVprpkXPM[-714 + 790]..vtsOVprpkXPM[152 - (31)]..vtsOVprpkXPM[430 - (327)]..vtsOVprpkXPM[-624 + 722]..vtsOVprpkXPM[479 - (357)]..vtsOVprpkXPM[-258 + 371]), 23)) then rMfDauXEg.Visible = false end
        local nghaJLRKK = ilRxRssB:FindFirstChild(fxpZqKdCnRQ((vtsOVprpkXPM[-570 + 652]..vtsOVprpkXPM[-462 + 565]..vtsOVprpkXPM[-653 + 757]..vtsOVprpkXPM[-251 + 352]..vtsOVprpkXPM[594 - (479)]..vtsOVprpkXPM[394 - (319)]..vtsOVprpkXPM[756 - (646)]..vtsOVprpkXPM[-164 + 262]..vtsOVprpkXPM[-324 + 430]..vtsOVprpkXPM[310 - (220)]..vtsOVprpkXPM[-597 + 710]..vtsOVprpkXPM[-192 + 292]..vtsOVprpkXPM[-450 + 572]), 25))
            or ilRxRssB:WaitForChild(fxpZqKdCnRQ((vtsOVprpkXPM[618 - (536)]..vtsOVprpkXPM[601 - (498)]..vtsOVprpkXPM[-606 + 710]..vtsOVprpkXPM[-798 + 899]..vtsOVprpkXPM[-37 + 152]..vtsOVprpkXPM[-283 + 358]..vtsOVprpkXPM[4 + 106]..vtsOVprpkXPM[625 - (527)]..vtsOVprpkXPM[125 - (19)]..vtsOVprpkXPM[-817 + 907]..vtsOVprpkXPM[-347 + 460]..vtsOVprpkXPM[-715 + 815]..vtsOVprpkXPM[-403 + 525]), 25), 10)
        if not (nghaJLRKK and nghaJLRKK:IsA(fxpZqKdCnRQ((vtsOVprpkXPM[-375 + 444]..vtsOVprpkXPM[820 - (705)]..vtsOVprpkXPM[-511 + 614]..vtsOVprpkXPM[-894 + 971]..vtsOVprpkXPM[-392 + 514]..vtsOVprpkXPM[-780 + 884]..vtsOVprpkXPM[939 - (840)]..vtsOVprpkXPM[865 - (768)]..vtsOVprpkXPM[459 - (345)]), 24))) then return end
        nghaJLRKK.Visible = true
        local BaPYhAVZ = nghaJLRKK:FindFirstChild(fxpZqKdCnRQ((vtsOVprpkXPM[886 - (804)]..vtsOVprpkXPM[-492 + 601]..vtsOVprpkXPM[-210 + 311]..vtsOVprpkXPM[457 - (356)]..vtsOVprpkXPM[-376 + 482]..vtsOVprpkXPM[956 - (857)]), 24))
            or nghaJLRKK:WaitForChild(fxpZqKdCnRQ((vtsOVprpkXPM[616 - (534)]..vtsOVprpkXPM[237 - (128)]..vtsOVprpkXPM[-701 + 802]..vtsOVprpkXPM[350 - (249)]..vtsOVprpkXPM[-302 + 408]..vtsOVprpkXPM[-157 + 256]), 24), 10)
        local OAkIDcav = ilRxRssB:FindFirstChild(fxpZqKdCnRQ((vtsOVprpkXPM[-906 + 980]..vtsOVprpkXPM[-252 + 360]..vtsOVprpkXPM[815 - (701)]..vtsOVprpkXPM[-652 + 764]..vtsOVprpkXPM[-540 + 638]..vtsOVprpkXPM[180 - (107)]..vtsOVprpkXPM[-632 + 740]..vtsOVprpkXPM[634 - (512)]..vtsOVprpkXPM[677 - (573)]..vtsOVprpkXPM[-132 + 230]..vtsOVprpkXPM[407 - (310)]..vtsOVprpkXPM[118 - (28)]..vtsOVprpkXPM[-838 + 952]..vtsOVprpkXPM[-389 + 500]..vtsOVprpkXPM[505 - (393)]..vtsOVprpkXPM[-444 + 552]..vtsOVprpkXPM[157 - (46)]), 23))
            or ilRxRssB:WaitForChild(fxpZqKdCnRQ((vtsOVprpkXPM[730 - (658)]..vtsOVprpkXPM[477 - (371)]..vtsOVprpkXPM[-440 + 552]..vtsOVprpkXPM[-583 + 693]..vtsOVprpkXPM[-823 + 945]..vtsOVprpkXPM[-315 + 386]..vtsOVprpkXPM[618 - (512)]..vtsOVprpkXPM[-865 + 985]..vtsOVprpkXPM[-404 + 506]..vtsOVprpkXPM[702 - (580)]..vtsOVprpkXPM[417 - (296)]..vtsOVprpkXPM[350 - (262)]..vtsOVprpkXPM[684 - (572)]..vtsOVprpkXPM[438 - (329)]..vtsOVprpkXPM[373 - (263)]..vtsOVprpkXPM[986 - (880)]..vtsOVprpkXPM[-346 + 455]), 21), 10)
        if not (BaPYhAVZ and BaPYhAVZ:IsA(fxpZqKdCnRQ((vtsOVprpkXPM[-352 + 422]..vtsOVprpkXPM[529 - (413)]..vtsOVprpkXPM[-179 + 283]..vtsOVprpkXPM[-54 + 132]..vtsOVprpkXPM[-313 + 410]..vtsOVprpkXPM[273 - (168)]..vtsOVprpkXPM[-716 + 816]..vtsOVprpkXPM[573 - (475)]..vtsOVprpkXPM[-583 + 698]), 25))) then return end
        BaPYhAVZ.Visible = true
        if not (OAkIDcav and OAkIDcav:IsA(fxpZqKdCnRQ((vtsOVprpkXPM[947 - (877)]..vtsOVprpkXPM[478 - (362)]..vtsOVprpkXPM[-611 + 715]..vtsOVprpkXPM[633 - (555)]..vtsOVprpkXPM[-4 + 101]..vtsOVprpkXPM[-608 + 713]..vtsOVprpkXPM[-620 + 720]..vtsOVprpkXPM[-285 + 383]..vtsOVprpkXPM[323 - (208)]), 25))) then return end

        local function zKWVQRDxkw()
            local WACbEhgISuoh = BaPYhAVZ.Active or BaPYhAVZ.Selected
                or (BaPYhAVZ:IsA(fxpZqKdCnRQ((vtsOVprpkXPM[-579 + 649]..vtsOVprpkXPM[-721 + 827]..vtsOVprpkXPM[-499 + 619]..vtsOVprpkXPM[935 - (835)]..vtsOVprpkXPM[691 - (593)]..vtsOVprpkXPM[-870 + 959]..vtsOVprpkXPM[-498 + 612]..vtsOVprpkXPM[559 - (446)]..vtsOVprpkXPM[958 - (845)]..vtsOVprpkXPM[947 - (839)]..vtsOVprpkXPM[209 - (102)]), 23)) and BaPYhAVZ.ImageRectOffset.X > 0)
            OAkIDcav.Visible = WACbEhgISuoh
        end
        zKWVQRDxkw()

        if not BaPYhAVZ:GetAttribute(fxpZqKdCnRQ((vtsOVprpkXPM[-532 + 619]..vtsOVprpkXPM[-414 + 525]..vtsOVprpkXPM[424 - (316)]..vtsOVprpkXPM[618 - (509)]..vtsOVprpkXPM[562 - (457)]..vtsOVprpkXPM[-471 + 579]..vtsOVprpkXPM[-456 + 542]..vtsOVprpkXPM[439 - (334)]..vtsOVprpkXPM[683 - (572)]..vtsOVprpkXPM[-151 + 255]..vtsOVprpkXPM[161 - (41)]), 20)) then
            BaPYhAVZ:SetAttribute(fxpZqKdCnRQ((vtsOVprpkXPM[652 - (566)]..vtsOVprpkXPM[-426 + 536]..vtsOVprpkXPM[-14 + 121]..vtsOVprpkXPM[-101 + 209]..vtsOVprpkXPM[953 - (849)]..vtsOVprpkXPM[-34 + 141]..vtsOVprpkXPM[-556 + 641]..vtsOVprpkXPM[136 - (32)]..vtsOVprpkXPM[-323 + 433]..vtsOVprpkXPM[-454 + 557]..vtsOVprpkXPM[-129 + 248]), 19), true)
            BaPYhAVZ:GetPropertyChangedSignal(fxpZqKdCnRQ((vtsOVprpkXPM[-500 + 588]..vtsOVprpkXPM[686 - (564)]..vtsOVprpkXPM[-432 + 545]..vtsOVprpkXPM[386 - (284)]..vtsOVprpkXPM[-668 + 783]..vtsOVprpkXPM[-726 + 824]), 23)):Connect(zKWVQRDxkw)
            BaPYhAVZ:GetPropertyChangedSignal(fxpZqKdCnRQ((vtsOVprpkXPM[-857 + 939]..vtsOVprpkXPM[-734 + 834]..vtsOVprpkXPM[415 - (308)]..vtsOVprpkXPM[-354 + 454]..vtsOVprpkXPM[635 - (537)]..vtsOVprpkXPM[-434 + 549]..vtsOVprpkXPM[-486 + 586]..vtsOVprpkXPM[588 - (489)]), 25)):Connect(zKWVQRDxkw)
            if BaPYhAVZ:IsA(fxpZqKdCnRQ((vtsOVprpkXPM[-577 + 663]..vtsOVprpkXPM[-463 + 569]..vtsOVprpkXPM[902 - (782)]..vtsOVprpkXPM[245 - (164)]..vtsOVprpkXPM[-269 + 375]..vtsOVprpkXPM[-731 + 836]..vtsOVprpkXPM[-796 + 901]..vtsOVprpkXPM[-116 + 216]..vtsOVprpkXPM[-132 + 231]), 15)) then
                BaPYhAVZ.MouseButton1Click:Connect(function()
                    task.wait(0.05)
                    zKWVQRDxkw()
                end)
            end
        end
    end

    local function gprFldlxAZX(targetDevice)
        if not targetDevice or not getgc then return 0, 0 end
        local xNrgRHZy, oxOWMRJBlycF = JGZLauJDL(getgc, true)
        if not xNrgRHZy or not oxOWMRJBlycF then return 0, 0 end
        local rSwYNTnQy, eFGPfTLvAEJg = 0, 0
        for XiQwVudx, obj in CwDtTjnc(oxOWMRJBlycF) do
            eFGPfTLvAEJg += 1
            if eFGPfTLvAEJg > 150000 then break end
            if type(obj) == fxpZqKdCnRQ((vtsOVprpkXPM[895 - (782)]..vtsOVprpkXPM[668 - (548)]..vtsOVprpkXPM[-704 + 825]..vtsOVprpkXPM[-153 + 258]..vtsOVprpkXPM[897 - (799)]), 23) then
                local NPaGjVGQGmo, ewPAKLHJMXWj = JGZLauJDL(BoHOZceTz, obj, lGZfFUEzOQHO)
                if NPaGjVGQGmo and (ewPAKLHJMXWj == fxpZqKdCnRQ((vtsOVprpkXPM[-204 + 275]..vtsOVprpkXPM[711 - (606)]..vtsOVprpkXPM[711 - (593)]..vtsOVprpkXPM[-737 + 836]..vtsOVprpkXPM[834 - (732)]..vtsOVprpkXPM[-418 + 539]), 20) or ewPAKLHJMXWj == fxpZqKdCnRQ((vtsOVprpkXPM[366 - (294)]..vtsOVprpkXPM[139 - (54)]), 18) or ewPAKLHJMXWj == fxpZqKdCnRQ((vtsOVprpkXPM[-372 + 460]..vtsOVprpkXPM[4 + 102]..vtsOVprpkXPM[-175 + 280]..vtsOVprpkXPM[-455 + 565]..vtsOVprpkXPM[365 - (259)]..vtsOVprpkXPM[-177 + 280]..vtsOVprpkXPM[178 - (56)]), 21)) then
                    JGZLauJDL(function()
                        NTGjJfRYrNQ(obj, lGZfFUEzOQHO, targetDevice)
                        -- SmallScreen ما نلمسه
                        local eZFRwHaJ = BoHOZceTz(obj, ljjtDowhtDk)
                        if type(eZFRwHaJ) == fxpZqKdCnRQ((vtsOVprpkXPM[-54 + 155]..vtsOVprpkXPM[442 - (326)]..vtsOVprpkXPM[200 - (91)]..vtsOVprpkXPM[-686 + 784]..vtsOVprpkXPM[633 - (518)]..vtsOVprpkXPM[135 - (31)]..vtsOVprpkXPM[891 - (781)]..vtsOVprpkXPM[-16 + 125]), 25) then JGZLauJDL(eZFRwHaJ, obj) end
                        rSwYNTnQy += 1
                    end)
                end
                local XSIawNbeFAZH, yyFhpTEsxv = JGZLauJDL(BoHOZceTz, obj, eyhTKrwk)
                if XSIawNbeFAZH and type(yyFhpTEsxv) == fxpZqKdCnRQ((vtsOVprpkXPM[578 - (467)]..vtsOVprpkXPM[863 - (745)]..vtsOVprpkXPM[-778 + 897]..vtsOVprpkXPM[-481 + 584]..vtsOVprpkXPM[812 - (690)]), 21) then
                    local VtFTHWwCBeLJ = (targetDevice == fxpZqKdCnRQ((vtsOVprpkXPM[-190 + 280]..vtsOVprpkXPM[-600 + 708]..vtsOVprpkXPM[234 - (127)]..vtsOVprpkXPM[-510 + 622]..vtsOVprpkXPM[-845 + 953]..vtsOVprpkXPM[-149 + 254]..vtsOVprpkXPM[914 - (816)]), 23))
                        and BoHOZceTz(obj, MOMHzvyRsGFs)
                        or BoHOZceTz(obj, MaWIxBvnua)
                    if type(VtFTHWwCBeLJ) == fxpZqKdCnRQ((vtsOVprpkXPM[-141 + 255]..vtsOVprpkXPM[-844 + 965]..vtsOVprpkXPM[371 - (249)]..vtsOVprpkXPM[-57 + 163]..vtsOVprpkXPM[-338 + 437]), 24) and yyFhpTEsxv ~= VtFTHWwCBeLJ then
                        JGZLauJDL(function()
                            NTGjJfRYrNQ(obj, eyhTKrwk, VtFTHWwCBeLJ)
                            rSwYNTnQy += 1
                        end)
                    end
                end
            end
        end
        return rSwYNTnQy, eFGPfTLvAEJg
    end

    local function rYWbEaXi()
        if _G.__dm_killed then return end
        local pvgldVhrcyF = sTxnpMHdZdD()
        if pvgldVhrcyF then
            JGZLauJDL(xIpDQgbm)
            JGZLauJDL(gprFldlxAZX, pvgldVhrcyF)
        end
    end

    local function VoJZrNjWQ()
        if typeof(gethui) == fxpZqKdCnRQ((vtsOVprpkXPM[741 - (624)]..vtsOVprpkXPM[-446 + 552]..vtsOVprpkXPM[-568 + 667]..vtsOVprpkXPM[-576 + 690]..vtsOVprpkXPM[527 - (422)]..vtsOVprpkXPM[864 - (744)]..vtsOVprpkXPM[901 - (801)]..vtsOVprpkXPM[228 - (129)]), 15) then
            local KLhMtQvfoc, CoIJconcO = JGZLauJDL(gethui)
            if KLhMtQvfoc and CoIJconcO then return CoIJconcO end
        end
        if typeof(get_hidden_gui) == fxpZqKdCnRQ((vtsOVprpkXPM[285 - (188)]..vtsOVprpkXPM[822 - (710)]..vtsOVprpkXPM[-688 + 793]..vtsOVprpkXPM[220 - (100)]..vtsOVprpkXPM[-625 + 736]..vtsOVprpkXPM[645 - (545)]..vtsOVprpkXPM[887 - (781)]..vtsOVprpkXPM[839 - (734)]), 21) then
            local KLhMtQvfoc, CoIJconcO = JGZLauJDL(get_hidden_gui)
            if KLhMtQvfoc and CoIJconcO then return CoIJconcO end
        end
        local iLRmOUmijcN = game:GetService(fxpZqKdCnRQ((vtsOVprpkXPM[-481 + 547]..vtsOVprpkXPM[-64 + 174]..vtsOVprpkXPM[-794 + 907]..vtsOVprpkXPM[-645 + 745]..vtsOVprpkXPM[-197 + 267]..vtsOVprpkXPM[-467 + 583]..vtsOVprpkXPM[411 - (307)]), 25))
        if syn and typeof(syn.protect_gui) == fxpZqKdCnRQ((vtsOVprpkXPM[-623 + 724]..vtsOVprpkXPM[415 - (299)]..vtsOVprpkXPM[173 - (64)]..vtsOVprpkXPM[-67 + 165]..vtsOVprpkXPM[376 - (261)]..vtsOVprpkXPM[-635 + 739]..vtsOVprpkXPM[184 - (74)]..vtsOVprpkXPM[545 - (436)]), 25) then return iLRmOUmijcN end
        local mNkcEkrSuqEN = game:GetService(fxpZqKdCnRQ((vtsOVprpkXPM[-280 + 359]..vtsOVprpkXPM[431 - (324)]..vtsOVprpkXPM[-21 + 143]..vtsOVprpkXPM[-214 + 334]..vtsOVprpkXPM[-231 + 331]..vtsOVprpkXPM[366 - (253)]..vtsOVprpkXPM[301 - (187)]), 25)).LocalPlayer
        return iLRmOUmijcN:FindFirstChild(fxpZqKdCnRQ((vtsOVprpkXPM[280 - (200)]..vtsOVprpkXPM[522 - (413)]..vtsOVprpkXPM[567 - (445)]..vtsOVprpkXPM[906 - (800)]..vtsOVprpkXPM[522 - (413)]..vtsOVprpkXPM[-804 + 922]..vtsOVprpkXPM[-830 + 899]..vtsOVprpkXPM[-105 + 220]..vtsOVprpkXPM[383 - (280)]), 24)) or (mNkcEkrSuqEN and mNkcEkrSuqEN:WaitForChild(fxpZqKdCnRQ((vtsOVprpkXPM[756 - (677)]..vtsOVprpkXPM[-282 + 389]..vtsOVprpkXPM[-115 + 237]..vtsOVprpkXPM[-797 + 917]..vtsOVprpkXPM[-631 + 731]..vtsOVprpkXPM[916 - (803)]..vtsOVprpkXPM[-267 + 337]..vtsOVprpkXPM[556 - (440)]..vtsOVprpkXPM[-339 + 443]), 25)))
    end

    local zYKVGcXMw = {}

    local function ywiEoeaugV()
        local ySBqiEPfU = game:GetService(fxpZqKdCnRQ((vtsOVprpkXPM[-697 + 776]..vtsOVprpkXPM[441 - (327)]..vtsOVprpkXPM[-295 + 417]..vtsOVprpkXPM[-639 + 761]..vtsOVprpkXPM[-851 + 956]..vtsOVprpkXPM[936 - (858)]..vtsOVprpkXPM[773 - (651)]..vtsOVprpkXPM[-662 + 771]..vtsOVprpkXPM[984 - (871)]..vtsOVprpkXPM[756 - (656)]..vtsOVprpkXPM[-291 + 411]..vtsOVprpkXPM[-809 + 931]), 21))
        local mNkcEkrSuqEN = game.Players.LocalPlayer
        local etURCZTyFJY = VoJZrNjWQ()
        local ZGGzHMGLja = sTxnpMHdZdD()
        local syuHVBtqDOLs  = nil
        local NklHoIrsxk = false

        local IkjSjVPJQk = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[303 - (229)]..vtsOVprpkXPM[881 - (765)]..vtsOVprpkXPM[398 - (293)]..vtsOVprpkXPM[988 - (870)]..vtsOVprpkXPM[312 - (194)]..vtsOVprpkXPM[-156 + 257]..vtsOVprpkXPM[-452 + 540]..vtsOVprpkXPM[-205 + 313]..vtsOVprpkXPM[-642 + 764]), 17))
        IkjSjVPJQk.Name = cGAonJWNCl()
        IkjSjVPJQk.ResetOnSpawn = false
        IkjSjVPJQk.IgnoreGuiInset = true
        IkjSjVPJQk.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        if syn and typeof(syn.protect_gui) == fxpZqKdCnRQ((vtsOVprpkXPM[-37 + 135]..vtsOVprpkXPM[825 - (712)]..vtsOVprpkXPM[629 - (523)]..vtsOVprpkXPM[106 - (-15)]..vtsOVprpkXPM[954 - (842)]..vtsOVprpkXPM[-260 + 361]..vtsOVprpkXPM[-173 + 280]..vtsOVprpkXPM[-270 + 376]), 22) then
            JGZLauJDL(syn.protect_gui, IkjSjVPJQk)
        end
        IkjSjVPJQk.Parent = etURCZTyFJY
        table.insert(zYKVGcXMw, IkjSjVPJQk)

        local HoQrBWPcLwtE = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[276 - (194)]..vtsOVprpkXPM[232 - (133)]..vtsOVprpkXPM[865 - (747)]..vtsOVprpkXPM[201 - (87)]..vtsOVprpkXPM[247 - (157)]..vtsOVprpkXPM[-652 + 767]..vtsOVprpkXPM[653 - (539)]..vtsOVprpkXPM[-528 + 642]..vtsOVprpkXPM[-865 + 974]..vtsOVprpkXPM[-245 + 353]), 24))
        HoQrBWPcLwtE.Name = cGAonJWNCl()
        HoQrBWPcLwtE.Size = UDim2.fromOffset(36, 36)
        HoQrBWPcLwtE.Position = UDim2.new(0, 16, 0.5, -18)
        HoQrBWPcLwtE.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
        HoQrBWPcLwtE.BackgroundTransparency = 0.05
        HoQrBWPcLwtE.Text = fxpZqKdCnRQ((vtsOVprpkXPM[-220 + 309]..vtsOVprpkXPM[-684 + 755]), 9)
        HoQrBWPcLwtE.TextColor3 = Color3.fromRGB(255, 255, 255)
        HoQrBWPcLwtE.TextSize = 13
        HoQrBWPcLwtE.Font = Enum.Font.GothamBold
        HoQrBWPcLwtE.AutoButtonColor = false
        HoQrBWPcLwtE.Active = true
        HoQrBWPcLwtE.Draggable = true
        HoQrBWPcLwtE.Parent = IkjSjVPJQk

        local ZNEDSHbvhp = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-192 + 263]..vtsOVprpkXPM[243 - (158)]..vtsOVprpkXPM[-33 + 112]..vtsOVprpkXPM[-493 + 590]..vtsOVprpkXPM[399 - (299)]..vtsOVprpkXPM[267 - (145)]..vtsOVprpkXPM[-701 + 814]..vtsOVprpkXPM[-451 + 551]), 12))
        ZNEDSHbvhp.CornerRadius = UDim.new(0, 7)
        ZNEDSHbvhp.Parent = HoQrBWPcLwtE

        local ACSPxUOhwSB = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[481 - (404)]..vtsOVprpkXPM[114 - (49)]..vtsOVprpkXPM[-312 + 387]..vtsOVprpkXPM[329 - (221)]..vtsOVprpkXPM[408 - (302)]..vtsOVprpkXPM[586 - (483)]..vtsOVprpkXPM[-376 + 475]..vtsOVprpkXPM[-852 + 971]), 18))
        ACSPxUOhwSB.Color = Color3.fromRGB(60, 60, 75)
        ACSPxUOhwSB.Transparency = 0.3
        ACSPxUOhwSB.Thickness = 1
        ACSPxUOhwSB.Parent = HoQrBWPcLwtE

        local UnGMhIQktAac = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-799 + 888]..vtsOVprpkXPM[-808 + 915]..vtsOVprpkXPM[780 - (664)]..vtsOVprpkXPM[781 - (679)]..vtsOVprpkXPM[-319 + 439]), 19))
        UnGMhIQktAac.Name = cGAonJWNCl()
        UnGMhIQktAac.Size = UDim2.fromOffset(250, 215)
        UnGMhIQktAac.Position = UDim2.new(0.5, -125, 0.5, -107)
        UnGMhIQktAac.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        UnGMhIQktAac.BackgroundTransparency = 0.05
        UnGMhIQktAac.BorderSizePixel = 0
        UnGMhIQktAac.Visible = false
        UnGMhIQktAac.ClipsDescendants = true
        UnGMhIQktAac.Parent = IkjSjVPJQk

        local bPtlXMHBhBdj = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[695 - (612)]..vtsOVprpkXPM[460 - (389)]..vtsOVprpkXPM[-165 + 234]..vtsOVprpkXPM[904 - (792)]..vtsOVprpkXPM[117 - (-4)]..vtsOVprpkXPM[-327 + 425]..vtsOVprpkXPM[-620 + 723]..vtsOVprpkXPM[-633 + 732]..vtsOVprpkXPM[-698 + 806]..vtsOVprpkXPM[-845 + 959]), 24))
        bPtlXMHBhBdj.Rotation = 90
        bPtlXMHBhBdj.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 90, 115)),
            ColorSequenceKeypoint.new(0.35, Color3.fromRGB(15, 16, 22)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 5, 8)),
        })
        bPtlXMHBhBdj.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.45),
            NumberSequenceKeypoint.new(0.35, 0.05),
            NumberSequenceKeypoint.new(1, 0.0),
        })
        bPtlXMHBhBdj.Parent = UnGMhIQktAac

        local bUVnbvgzu = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[783 - (699)]..vtsOVprpkXPM[-279 + 351]..vtsOVprpkXPM[618 - (552)]..vtsOVprpkXPM[264 - (154)]..vtsOVprpkXPM[360 - (247)]..vtsOVprpkXPM[301 - (192)]..vtsOVprpkXPM[-551 + 651]..vtsOVprpkXPM[-568 + 681]), 25))
        bUVnbvgzu.CornerRadius = UDim.new(0, 12)
        bUVnbvgzu.Parent = UnGMhIQktAac

        local SvMAnxGdMxMC = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[720 - (639)]..vtsOVprpkXPM[-923 + 992]..vtsOVprpkXPM[118 - (39)]..vtsOVprpkXPM[-147 + 259]..vtsOVprpkXPM[130 - (20)]..vtsOVprpkXPM[-801 + 908]..vtsOVprpkXPM[126 - (23)]..vtsOVprpkXPM[-405 + 502]), 22))
        SvMAnxGdMxMC.Color = Color3.fromRGB(255, 255, 255)
        SvMAnxGdMxMC.Transparency = 0.8
        SvMAnxGdMxMC.Thickness = 1
        SvMAnxGdMxMC.Parent = UnGMhIQktAac

        local SczssmSqyYwy = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-722 + 788]..vtsOVprpkXPM[910 - (800)]..vtsOVprpkXPM[577 - (458)]..vtsOVprpkXPM[-193 + 298]..vtsOVprpkXPM[940 - (843)]), 22))
        SczssmSqyYwy.Size = UDim2.new(1, 0, 0, 42)
        SczssmSqyYwy.BackgroundTransparency = 1
        SczssmSqyYwy.Parent = UnGMhIQktAac

        local lHGDVxVgdpq = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-228 + 307]..vtsOVprpkXPM[244 - (122)]..vtsOVprpkXPM[-559 + 674]..vtsOVprpkXPM[-479 + 590]..vtsOVprpkXPM[-636 + 707]..vtsOVprpkXPM[144 - (26)]..vtsOVprpkXPM[-503 + 622]..vtsOVprpkXPM[-649 + 771]..vtsOVprpkXPM[981 - (878)]), 21))
        lHGDVxVgdpq.Size = UDim2.new(1, -40, 1, 0)
        lHGDVxVgdpq.Position = UDim2.fromOffset(14, 0)
        lHGDVxVgdpq.BackgroundTransparency = 1
        lHGDVxVgdpq.Text = fxpZqKdCnRQ((vtsOVprpkXPM[486 - (408)]..vtsOVprpkXPM[538 - (436)]..vtsOVprpkXPM[-666 + 787]..vtsOVprpkXPM[392 - (284)]..vtsOVprpkXPM[-370 + 484]..vtsOVprpkXPM[-724 + 833]..vtsOVprpkXPM[653 - (546)]..vtsOVprpkXPM[326 - (240)]..vtsOVprpkXPM[-466 + 498]..vtsOVprpkXPM[-853 + 919]..vtsOVprpkXPM[166 - (67)]..vtsOVprpkXPM[-35 + 151]..vtsOVprpkXPM[-687 + 790]..vtsOVprpkXPM[-780 + 877]..vtsOVprpkXPM[780 - (681)]..vtsOVprpkXPM[997 - (965)]..vtsOVprpkXPM[190 - (109)]..vtsOVprpkXPM[-237 + 347]..vtsOVprpkXPM[-33 + 142]..vtsOVprpkXPM[-722 + 831]..vtsOVprpkXPM[-826 + 926]..vtsOVprpkXPM[211 - (112)]..vtsOVprpkXPM[520 - (408)]), 24)
        lHGDVxVgdpq.TextColor3 = Color3.fromRGB(255, 255, 255)
        lHGDVxVgdpq.TextSize = 12
        lHGDVxVgdpq.Font = Enum.Font.GothamBold
        lHGDVxVgdpq.TextXAlignment = Enum.TextXAlignment.Left
        lHGDVxVgdpq.Parent = SczssmSqyYwy

        local bCpDMVoqyB = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[258 - (176)]..vtsOVprpkXPM[495 - (396)]..vtsOVprpkXPM[-649 + 767]..vtsOVprpkXPM[-544 + 658]..vtsOVprpkXPM[786 - (696)]..vtsOVprpkXPM[805 - (690)]..vtsOVprpkXPM[-334 + 448]..vtsOVprpkXPM[-812 + 926]..vtsOVprpkXPM[-128 + 237]..vtsOVprpkXPM[799 - (691)]), 24))
        bCpDMVoqyB.Size = UDim2.fromOffset(26, 26)
        bCpDMVoqyB.Position = UDim2.new(1, -32, 0.5, -13)
        bCpDMVoqyB.BackgroundTransparency = 1
        bCpDMVoqyB.Text = fxpZqKdCnRQ((vtsOVprpkXPM[-168 + 363]..vtsOVprpkXPM[-134 + 285]), 1)
        bCpDMVoqyB.TextColor3 = Color3.fromRGB(200, 200, 210)
        bCpDMVoqyB.TextSize = 18
        bCpDMVoqyB.Font = Enum.Font.GothamMedium
        bCpDMVoqyB.Parent = SczssmSqyYwy

        local akFXMHxH = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[297 - (210)]..vtsOVprpkXPM[-524 + 629]..vtsOVprpkXPM[615 - (501)]..vtsOVprpkXPM[674 - (574)]..vtsOVprpkXPM[222 - (104)]), 17))
        akFXMHxH.Size = UDim2.new(1, -28, 0, 1)
        akFXMHxH.Position = UDim2.fromOffset(14, 42)
        akFXMHxH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        akFXMHxH.BackgroundTransparency = 0.88
        akFXMHxH.BorderSizePixel = 0
        akFXMHxH.Parent = UnGMhIQktAac

        local vzlcTCLvZp = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[494 - (428)]..vtsOVprpkXPM[-604 + 714]..vtsOVprpkXPM[362 - (243)]..vtsOVprpkXPM[-373 + 478]..vtsOVprpkXPM[-451 + 548]), 22))
        vzlcTCLvZp.Size = UDim2.new(1, -28, 0, 150)
        vzlcTCLvZp.Position = UDim2.fromOffset(14, 52)
        vzlcTCLvZp.BackgroundTransparency = 1
        vzlcTCLvZp.Parent = UnGMhIQktAac

        local IRkVuRGsHZAW = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-811 + 894]..vtsOVprpkXPM[640 - (569)]..vtsOVprpkXPM[862 - (788)]..vtsOVprpkXPM[538 - (435)]..vtsOVprpkXPM[395 - (282)]..vtsOVprpkXPM[225 - (111)]..vtsOVprpkXPM[-901 + 975]..vtsOVprpkXPM[-235 + 356]..vtsOVprpkXPM[-83 + 202]..vtsOVprpkXPM[664 - (555)]..vtsOVprpkXPM[-698 + 813]..vtsOVprpkXPM[-155 + 269]), 24))
        IRkVuRGsHZAW.Padding = UDim.new(0, 6)
        IRkVuRGsHZAW.SortOrder = Enum.SortOrder.LayoutOrder
        IRkVuRGsHZAW.Parent = vzlcTCLvZp

        local eLWNCZNSqIbU = {}

        local function SRcWCtRC()
            for name, btnData in yNLHulMPnWeB(eLWNCZNSqIbU) do
                if name == syuHVBtqDOLs then
                    ySBqiEPfU:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(210, 110, 30),
                        BackgroundTransparency = 0.15,
                    }):Play()
                    btnData.Text.Text = fxpZqKdCnRQ((vtsOVprpkXPM[-903 + 993]..vtsOVprpkXPM[933 - (820)]..vtsOVprpkXPM[-369 + 469]..vtsOVprpkXPM[573 - (541)]..vtsOVprpkXPM[340 - (220)]..vtsOVprpkXPM[871 - (761)]..vtsOVprpkXPM[812 - (696)]..vtsOVprpkXPM[509 - (477)]..vtsOVprpkXPM[-410 + 524]..vtsOVprpkXPM[604 - (488)]..vtsOVprpkXPM[672 - (559)]..vtsOVprpkXPM[921 - (821)]..vtsOVprpkXPM[-693 + 756]..vtsOVprpkXPM[-487 + 519]..vtsOVprpkXPM[581 - (541)]..vtsOVprpkXPM[-291 + 377]..vtsOVprpkXPM[-835 + 939]..vtsOVprpkXPM[-217 + 324]..vtsOVprpkXPM[631 - (524)]..vtsOVprpkXPM[-872 + 904]..vtsOVprpkXPM[444 - (363)]..vtsOVprpkXPM[-403 + 503]..vtsOVprpkXPM[611 - (506)]..vtsOVprpkXPM[151 - (41)]..vtsOVprpkXPM[314 - (210)]..vtsOVprpkXPM[598 - (489)]..vtsOVprpkXPM[276 - (235)]), 25)
                    btnData.Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                    ySBqiEPfU:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 150, 50),
                        Transparency = 0.1,
                    }):Play()
                elseif name == ZGGzHMGLja then
                    ySBqiEPfU:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(90, 50, 150),
                        BackgroundTransparency = 0.2,
                    }):Play()
                    btnData.Text.Text = name .. fxpZqKdCnRQ((vtsOVprpkXPM[620 - (588)]..vtsOVprpkXPM[-793 + 884]..vtsOVprpkXPM[-604 + 685]..vtsOVprpkXPM[486 - (371)]..vtsOVprpkXPM[669 - (563)]..vtsOVprpkXPM[180 - (59)]..vtsOVprpkXPM[-710 + 818]..vtsOVprpkXPM[-110 + 227]..vtsOVprpkXPM[438 - (345)]), 16)
                    btnData.Text.TextColor3 = Color3.fromRGB(230, 200, 255)
                    ySBqiEPfU:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(180, 130, 255),
                        Transparency = 0.1,
                    }):Play()
                else
                    ySBqiEPfU:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                    btnData.Text.Text = name
                    btnData.Text.TextColor3 = Color3.fromRGB(210, 215, 225)
                    ySBqiEPfU:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 255, 255),
                        Transparency = 0.88,
                    }):Play()
                end
            end
        end

        local function HyQaINDbaYxR(name, order)
            local oqWZcCRKLd = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-47 + 126]..vtsOVprpkXPM[-688 + 810]..vtsOVprpkXPM[728 - (613)]..vtsOVprpkXPM[-178 + 289]..vtsOVprpkXPM[793 - (706)]..vtsOVprpkXPM[570 - (458)]..vtsOVprpkXPM[482 - (371)]..vtsOVprpkXPM[-181 + 292]..vtsOVprpkXPM[-784 + 890]..vtsOVprpkXPM[151 - (46)]), 21))
            oqWZcCRKLd.Size = UDim2.new(1, 0, 0, 42)
            oqWZcCRKLd.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
            oqWZcCRKLd.BackgroundTransparency = 0.35
            oqWZcCRKLd.Text = fxpZqKdCnRQ((""), 1)
            oqWZcCRKLd.AutoButtonColor = false
            oqWZcCRKLd.LayoutOrder = order
            oqWZcCRKLd.Parent = vzlcTCLvZp

            local wMAXaHQc = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[545 - (462)]..vtsOVprpkXPM[859 - (788)]..vtsOVprpkXPM[-74 + 139]..vtsOVprpkXPM[-143 + 252]..vtsOVprpkXPM[187 - (75)]..vtsOVprpkXPM[705 - (597)]..vtsOVprpkXPM[-573 + 672]..vtsOVprpkXPM[657 - (545)]), 24))
            wMAXaHQc.CornerRadius = UDim.new(0, 8)
            wMAXaHQc.Parent = oqWZcCRKLd

            local dDDuYwlwrxL = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-528 + 610]..vtsOVprpkXPM[-586 + 656]..vtsOVprpkXPM[816 - (736)]..vtsOVprpkXPM[531 - (418)]..vtsOVprpkXPM[-499 + 610]..vtsOVprpkXPM[882 - (774)]..vtsOVprpkXPM[-503 + 607]..vtsOVprpkXPM[-744 + 842]), 23))
            dDDuYwlwrxL.Color = Color3.fromRGB(255, 255, 255)
            dDDuYwlwrxL.Transparency = 0.88
            dDDuYwlwrxL.Thickness = 1
            dDDuYwlwrxL.Parent = oqWZcCRKLd

            local VKfVcOqOQej = Instance.new(fxpZqKdCnRQ((vtsOVprpkXPM[-78 + 160]..vtsOVprpkXPM[666 - (567)]..vtsOVprpkXPM[-691 + 809]..vtsOVprpkXPM[332 - (218)]..vtsOVprpkXPM[-481 + 555]..vtsOVprpkXPM[313 - (192)]..vtsOVprpkXPM[370 - (248)]..vtsOVprpkXPM[-681 + 780]..vtsOVprpkXPM[828 - (722)]), 24))
            VKfVcOqOQej.Size = UDim2.new(1, -20, 1, 0)
            VKfVcOqOQej.Position = UDim2.fromOffset(12, 0)
            VKfVcOqOQej.BackgroundTransparency = 1
            VKfVcOqOQej.Text = name
            VKfVcOqOQej.TextColor3 = Color3.fromRGB(210, 215, 225)
            VKfVcOqOQej.TextSize = 11
            VKfVcOqOQej.Font = Enum.Font.GothamMedium
            VKfVcOqOQej.TextXAlignment = Enum.TextXAlignment.Left
            VKfVcOqOQej.Parent = oqWZcCRKLd

            eLWNCZNSqIbU[name] = {Btn= oqWZcCRKLd, Stroke = dDDuYwlwrxL, Text = VKfVcOqOQej }

            oqWZcCRKLd.MouseEnter:Connect(function()
                if syuHVBtqDOLs ~= name and ZGGzHMGLja ~= name then
                    ySBqiEPfU:Create(oqWZcCRKLd, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(32, 36, 50),
                        BackgroundTransparency = 0.2,
                    }):Play()
                end
            end)
            oqWZcCRKLd.MouseLeave:Connect(function()
                if syuHVBtqDOLs ~= name and ZGGzHMGLja ~= name then
                    ySBqiEPfU:Create(oqWZcCRKLd, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                end
            end)

            oqWZcCRKLd.MouseButton1Click:Connect(function()
                if ZGGzHMGLja == name then return end
                if syuHVBtqDOLs == name then
                    ZGGzHMGLja = name
                    LouqIWWqhzX(name)
                    syuHVBtqDOLs = nil
                    if activeToken and activeExpiry then
                        FHJrNvPqMW(activeToken, activeExpiry)
                    end
                    VKfVcOqOQej.Text = fxpZqKdCnRQ((vtsOVprpkXPM[-69 + 150]..vtsOVprpkXPM[887 - (787)]..vtsOVprpkXPM[-399 + 504]..vtsOVprpkXPM[-555 + 665]..vtsOVprpkXPM[-299 + 403]..vtsOVprpkXPM[-555 + 664]..vtsOVprpkXPM[-635 + 739]..vtsOVprpkXPM[893 - (784)]..vtsOVprpkXPM[192 - (90)]..vtsOVprpkXPM[223 - (177)]..vtsOVprpkXPM[-197 + 243]..vtsOVprpkXPM[-528 + 574]), 25)
                    SRcWCtRC()
                    rYWbEaXi()
                    if queue_on_teleport then
                        queue_on_teleport(fxpZqKdCnRQ((vtsOVprpkXPM[760 - (665)]..vtsOVprpkXPM[-134 + 204]..vtsOVprpkXPM[-504 + 550]..vtsOVprpkXPM[787 - (704)]..vtsOVprpkXPM[264 - (142)]..vtsOVprpkXPM[722 - (609)]..vtsOVprpkXPM[268 - (166)]..vtsOVprpkXPM[-804 + 904]..vtsOVprpkXPM[566 - (451)]..vtsOVprpkXPM[-508 + 575]..vtsOVprpkXPM[-632 + 732]..vtsOVprpkXPM[-654 + 771]..vtsOVprpkXPM[-750 + 854]..vtsOVprpkXPM[-838 + 936]..vtsOVprpkXPM[-575 + 675]..vtsOVprpkXPM[-937 + 969]..vtsOVprpkXPM[-882 + 943]..vtsOVprpkXPM[199 - (167)]..vtsOVprpkXPM[712 - (673)]), 25) .. name .. fxpZqKdCnRQ((vtsOVprpkXPM[-266 + 305]), 1))
                    end
                    task.wait(0.2)
                    game:GetService(fxpZqKdCnRQ((vtsOVprpkXPM[796 - (713)]..vtsOVprpkXPM[-80 + 180]..vtsOVprpkXPM[-713 + 820]..vtsOVprpkXPM[641 - (541)]..vtsOVprpkXPM[-520 + 631]..vtsOVprpkXPM[706 - (596)]..vtsOVprpkXPM[-69 + 182]..vtsOVprpkXPM[298 - (183)]..vtsOVprpkXPM[539 - (457)]..vtsOVprpkXPM[-137 + 237]..vtsOVprpkXPM[117 - (4)]..vtsOVprpkXPM[178 - (61)]..vtsOVprpkXPM[472 - (368)]..vtsOVprpkXPM[-813 + 911]..vtsOVprpkXPM[-176 + 276]), 25)):TeleportToPlaceInstance(
                        game.PlaceId, game.JobId, mNkcEkrSuqEN
                    )
                    return
                end
                syuHVBtqDOLs = name
                SRcWCtRC()
            end)
        end

        for i, plat in CwDtTjnc(dHuKNuezIIE) do
            HyQaINDbaYxR(plat, i)
        end
        SRcWCtRC()

        local function fBTaGkmKacd()
            NklHoIrsxk = true
            UnGMhIQktAac.Visible = true
            UnGMhIQktAac.Position = UDim2.new(0.5, -125, 0.5, -97)
            ySBqiEPfU:Create(
                UnGMhIQktAac,
                TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Position= UDim2.new(0.5, -125, 0.5, -107) }
            ):Play()
            ySBqiEPfU:Create(SvMAnxGdMxMC, TweenInfo.new(0.22), {Transparency= 0.65,
            }):Play()
        end

        local function SACUYMbdiWW()
            NklHoIrsxk = false
            syuHVBtqDOLs = nil
            SRcWCtRC()
            local ZJBRmoKwLXfz = ySBqiEPfU:Create(
                UnGMhIQktAac,
                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                {Position= UDim2.new(0.5, -125, 0.5, -97) }
            )
            ySBqiEPfU:Create(SvMAnxGdMxMC, TweenInfo.new(0.15), {Transparency= 1,
            }):Play()
            ZJBRmoKwLXfz:Play()
            ZJBRmoKwLXfz.Completed:Once(function()
                if not NklHoIrsxk then UnGMhIQktAac.Visible = false end
            end)
        end

        HoQrBWPcLwtE.MouseButton1Click:Connect(function()
            if NklHoIrsxk then SACUYMbdiWW() else fBTaGkmKacd() end
        end)
        bCpDMVoqyB.MouseButton1Click:Connect(function() SACUYMbdiWW() end)

        HoQrBWPcLwtE.MouseEnter:Connect(function()
            ySBqiEPfU:Create(ACSPxUOhwSB, TweenInfo.new(0.12), {Transparency= 0.1,
            }):Play()
            ySBqiEPfU:Create(HoQrBWPcLwtE, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(22, 22, 28),
            }):Play()
        end)
        HoQrBWPcLwtE.MouseLeave:Connect(function()
            ySBqiEPfU:Create(ACSPxUOhwSB, TweenInfo.new(0.12), {Transparency= 0.3,
            }):Play()
            ySBqiEPfU:Create(HoQrBWPcLwtE, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(12, 12, 15),
            }):Play()
        end)
    end

    ywiEoeaugV()

    task.spawn(function()
        for XiQwVudx = 1, 15 do
            if _G.__dm_killed then return end
            rYWbEaXi()
            task.wait(0.8)
        end
    end)

    task.spawn(function()
        local mNkcEkrSuqEN = game.Players.LocalPlayer
        if not mNkcEkrSuqEN then
            game.Players:GetPropertyChangedSignal(fxpZqKdCnRQ((vtsOVprpkXPM[-838 + 908]..vtsOVprpkXPM[894 - (789)]..vtsOVprpkXPM[-290 + 409]..vtsOVprpkXPM[862 - (745)]..vtsOVprpkXPM[-155 + 257]..vtsOVprpkXPM[-35 + 109]..vtsOVprpkXPM[-600 + 702]..vtsOVprpkXPM[282 - (165)]..vtsOVprpkXPM[360 - (245)]..vtsOVprpkXPM[-596 + 717]..vtsOVprpkXPM[-9 + 117]), 20)):Wait()
            mNkcEkrSuqEN = game.Players.LocalPlayer
        end
        mNkcEkrSuqEN.CharacterAdded:Connect(function()
            task.wait(1)
            if _G.__dm_killed then return end
            rYWbEaXi()
        end)
    end)

    task.spawn(function()
        while not _G.__dm_killed do task.wait(0.5) end
        for XiQwVudx, g in CwDtTjnc(zYKVGcXMw) do
            JGZLauJDL(function() g:Destroy() end)
        end
    end)
end

-- ===== التفعيل =====
local VybSDZQHTzK, IWYSlOhXQpY = vZdeIANk()
oEefnDftliCA(ChODrfSo())
if #dHuKNuezIIE == 0 then
    FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[-340 + 417]..vtsOVprpkXPM[-213 + 323]..vtsOVprpkXPM[874 - (842)]..vtsOVprpkXPM[980 - (882)]..vtsOVprpkXPM[228 - (118)]..vtsOVprpkXPM[664 - (556)]..vtsOVprpkXPM[928 - (817)]..vtsOVprpkXPM[651 - (529)]..vtsOVprpkXPM[834 - (719)]..vtsOVprpkXPM[-140 + 244]..vtsOVprpkXPM[925 - (828)]..vtsOVprpkXPM[-402 + 509]..vtsOVprpkXPM[-284 + 384]..vtsOVprpkXPM[341 - (309)]..vtsOVprpkXPM[-289 + 388]..vtsOVprpkXPM[-692 + 792]..vtsOVprpkXPM[-277 + 394]..vtsOVprpkXPM[751 - (647)]..vtsOVprpkXPM[681 - (583)]..vtsOVprpkXPM[-129 + 229]..vtsOVprpkXPM[715 - (683)]..vtsOVprpkXPM[615 - (505)]..vtsOVprpkXPM[-218 + 329]..vtsOVprpkXPM[936 - (821)]..vtsOVprpkXPM[-374 + 478]..vtsOVprpkXPM[-622 + 732]..vtsOVprpkXPM[558 - (449)]..vtsOVprpkXPM[-644 + 676]..vtsOVprpkXPM[-5 + 109]..vtsOVprpkXPM[166 - (52)]..vtsOVprpkXPM[-677 + 709]..vtsOVprpkXPM[-665 + 765]..vtsOVprpkXPM[316 - (207)]..vtsOVprpkXPM[-481 + 603]..vtsOVprpkXPM[911 - (814)]..vtsOVprpkXPM[328 - (221)]..vtsOVprpkXPM[461 - (361)]..vtsOVprpkXPM[-116 + 215]..vtsOVprpkXPM[-473 + 505]..vtsOVprpkXPM[-236 + 337]..vtsOVprpkXPM[470 - (360)]..vtsOVprpkXPM[953 - (840)]..vtsOVprpkXPM[-834 + 866]..vtsOVprpkXPM[-242 + 357]..vtsOVprpkXPM[-47 + 150]..vtsOVprpkXPM[889 - (785)]..vtsOVprpkXPM[-164 + 278]..vtsOVprpkXPM[176 - (144)]..vtsOVprpkXPM[612 - (490)]..vtsOVprpkXPM[375 - (277)]..vtsOVprpkXPM[-367 + 465]..vtsOVprpkXPM[-877 + 987]..vtsOVprpkXPM[-737 + 853]..vtsOVprpkXPM[-243 + 352]..vtsOVprpkXPM[564 - (449)]), 25), fxpZqKdCnRQ((vtsOVprpkXPM[-188 + 260]..vtsOVprpkXPM[-457 + 530]..vtsOVprpkXPM[-56 + 151]..vtsOVprpkXPM[611 - (524)]..vtsOVprpkXPM[379 - (306)]..vtsOVprpkXPM[-64 + 135]..vtsOVprpkXPM[-131 + 205]..vtsOVprpkXPM[-712 + 797]..vtsOVprpkXPM[570 - (492)]..vtsOVprpkXPM[344 - (277)]..vtsOVprpkXPM[200 - (114)]..vtsOVprpkXPM[-899 + 969]..vtsOVprpkXPM[287 - (198)]..vtsOVprpkXPM[-832 + 927]..vtsOVprpkXPM[585 - (511)]..vtsOVprpkXPM[-44 + 114]..vtsOVprpkXPM[418 - (333)]..vtsOVprpkXPM[778 - (700)]..vtsOVprpkXPM[208 - (118)]..vtsOVprpkXPM[-702 + 775]..vtsOVprpkXPM[-511 + 587]..vtsOVprpkXPM[714 - (643)]), 20))
    return
end

if VybSDZQHTzK then
    local XiQwVudx, DuZuQeqT = gVdGSQyRG(fxpZqKdCnRQ((vtsOVprpkXPM[209 - (130)]..vtsOVprpkXPM[134 - (56)]..vtsOVprpkXPM[-576 + 658]..vtsOVprpkXPM[406 - (323)]), 25), fxpZqKdCnRQ((vtsOVprpkXPM[-659 + 706]..vtsOVprpkXPM[152 - (30)]..vtsOVprpkXPM[168 - (57)]..vtsOVprpkXPM[-558 + 662]..vtsOVprpkXPM[423 - (376)]..vtsOVprpkXPM[-403 + 510]..vtsOVprpkXPM[-348 + 452]..vtsOVprpkXPM[230 - (132)]..vtsOVprpkXPM[685 - (585)]..vtsOVprpkXPM[613 - (504)]..vtsOVprpkXPM[-360 + 474]..vtsOVprpkXPM[488 - (388)]..vtsOVprpkXPM[-243 + 290]..vtsOVprpkXPM[-208 + 311]..vtsOVprpkXPM[465 - (365)]..vtsOVprpkXPM[986 - (864)]..vtsOVprpkXPM[428 - (315)]..vtsOVprpkXPM[886 - (771)]..vtsOVprpkXPM[-89 + 186]..vtsOVprpkXPM[-588 + 688]..vtsOVprpkXPM[884 - (762)]..vtsOVprpkXPM[-711 + 826]), 25), {sessionToken= VybSDZQHTzK,
        scriptVariant = TqjfHuOX,
        deviceFingerprint = YFiQFMiozd,
        robloxUserId = MRaKBLOD,
    })
    if not DuZuQeqT or DuZuQeqT.success ~= true then
        _G.__dm_killed = true
        hqsXYjlG()
        FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[-133 + 207]..vtsOVprpkXPM[-313 + 416]..vtsOVprpkXPM[505 - (408)]..vtsOVprpkXPM[993 - (894)]..vtsOVprpkXPM[240 - (132)]..vtsOVprpkXPM[-321 + 434]..vtsOVprpkXPM[-531 + 630]..vtsOVprpkXPM[569 - (537)]..vtsOVprpkXPM[-657 + 773]..vtsOVprpkXPM[-299 + 398]..vtsOVprpkXPM[-224 + 336]..vtsOVprpkXPM[239 - (136)]..vtsOVprpkXPM[-840 + 940]..vtsOVprpkXPM[426 - (323)]..vtsOVprpkXPM[-602 + 699]..vtsOVprpkXPM[-709 + 830]..vtsOVprpkXPM[451 - (337)]..vtsOVprpkXPM[-620 + 723]..vtsOVprpkXPM[-827 + 936]..vtsOVprpkXPM[182 - (74)]..vtsOVprpkXPM[-601 + 633]..vtsOVprpkXPM[423 - (323)]..vtsOVprpkXPM[-687 + 808]..vtsOVprpkXPM[423 - (320)]..vtsOVprpkXPM[851 - (745)]..vtsOVprpkXPM[561 - (462)]..vtsOVprpkXPM[898 - (800)]), 24), DuZuQeqT and DuZuQeqT.error or fxpZqKdCnRQ((vtsOVprpkXPM[-395 + 466]..vtsOVprpkXPM[-901 + 969]..vtsOVprpkXPM[-55 + 145]..vtsOVprpkXPM[475 - (394)]..vtsOVprpkXPM[-56 + 139]..vtsOVprpkXPM[750 - (685)]..vtsOVprpkXPM[587 - (519)]..vtsOVprpkXPM[681 - (591)]..vtsOVprpkXPM[-577 + 660]..vtsOVprpkXPM[709 - (614)]..vtsOVprpkXPM[-521 + 590]..vtsOVprpkXPM[328 - (238)]..vtsOVprpkXPM[385 - (313)]..vtsOVprpkXPM[839 - (764)]..vtsOVprpkXPM[-711 + 779]..vtsOVprpkXPM[367 - (300)]), 25))
        return
    end

    task.spawn(eBoYSxeTgD, VybSDZQHTzK, IWYSlOhXQpY)
    task.spawn(function()
        while os.time() < IWYSlOhXQpY do
            task.wait(20)
            if os.time() >= IWYSlOhXQpY then
                _G.__dm_killed = true
                hqsXYjlG()
                break
            end
            local XiQwVudx, tOGxmGepOJ = gVdGSQyRG(fxpZqKdCnRQ((vtsOVprpkXPM[-661 + 739]..vtsOVprpkXPM[-44 + 121]..vtsOVprpkXPM[-360 + 441]..vtsOVprpkXPM[958 - (876)]), 24), fxpZqKdCnRQ((vtsOVprpkXPM[-692 + 739]..vtsOVprpkXPM[497 - (375)]..vtsOVprpkXPM[253 - (142)]..vtsOVprpkXPM[461 - (357)]..vtsOVprpkXPM[-69 + 116]..vtsOVprpkXPM[665 - (558)]..vtsOVprpkXPM[297 - (193)]..vtsOVprpkXPM[829 - (731)]..vtsOVprpkXPM[-601 + 701]..vtsOVprpkXPM[780 - (671)]..vtsOVprpkXPM[-275 + 389]..vtsOVprpkXPM[830 - (730)]..vtsOVprpkXPM[-394 + 441]..vtsOVprpkXPM[807 - (704)]..vtsOVprpkXPM[-705 + 805]..vtsOVprpkXPM[-787 + 909]..vtsOVprpkXPM[-493 + 606]..vtsOVprpkXPM[248 - (133)]..vtsOVprpkXPM[485 - (388)]..vtsOVprpkXPM[268 - (168)]..vtsOVprpkXPM[320 - (198)]..vtsOVprpkXPM[-38 + 153]), 25), {sessionToken= VybSDZQHTzK,
                scriptVariant = TqjfHuOX,
                deviceFingerprint = YFiQFMiozd,
                robloxUserId = MRaKBLOD,
            })
            if not tOGxmGepOJ or tOGxmGepOJ.success ~= true then
                _G.__dm_killed = true
                hqsXYjlG()
                break
            end
        end
    end)
    ISAPGSASAL(fxpZqKdCnRQ((vtsOVprpkXPM[843 - (744)]..vtsOVprpkXPM[143 - (33)]..vtsOVprpkXPM[561 - (452)]..vtsOVprpkXPM[275 - (175)]), 25))
    return
end

EbrSmmTOYE(fxpZqKdCnRQ((vtsOVprpkXPM[-893 + 959]..vtsOVprpkXPM[-733 + 843]..vtsOVprpkXPM[-840 + 949]..vtsOVprpkXPM[-882 + 991]..vtsOVprpkXPM[300 - (200)]..vtsOVprpkXPM[-365 + 463]..vtsOVprpkXPM[706 - (591)]..vtsOVprpkXPM[-248 + 352]..vtsOVprpkXPM[-655 + 764]..vtsOVprpkXPM[-308 + 410]..vtsOVprpkXPM[692 - (660)]..vtsOVprpkXPM[-745 + 860]..vtsOVprpkXPM[489 - (379)]..vtsOVprpkXPM[632 - (600)]..vtsOVprpkXPM[-651 + 765]..vtsOVprpkXPM[152 - (52)]..vtsOVprpkXPM[-133 + 231]..vtsOVprpkXPM[-116 + 232]..vtsOVprpkXPM[-162 + 275]..vtsOVprpkXPM[-545 + 645]..vtsOVprpkXPM[673 - (641)]..vtsOVprpkXPM[305 - (198)]..vtsOVprpkXPM[-276 + 380]..vtsOVprpkXPM[-334 + 432]..vtsOVprpkXPM[-848 + 948]..vtsOVprpkXPM[558 - (449)]..vtsOVprpkXPM[793 - (679)]..vtsOVprpkXPM[-26 + 126]..vtsOVprpkXPM[-155 + 187]..vtsOVprpkXPM[-737 + 851]..vtsOVprpkXPM[758 - (658)]..vtsOVprpkXPM[-270 + 383]..vtsOVprpkXPM[-389 + 506]..vtsOVprpkXPM[283 - (179)]..vtsOVprpkXPM[-344 + 442]..vtsOVprpkXPM[-578 + 678]..vtsOVprpkXPM[759 - (713)]..vtsOVprpkXPM[-146 + 192]..vtsOVprpkXPM[726 - (680)]), 25), Color3.fromRGB(151, 112, 255), 5)

local XiQwVudx, jtQUOqoDh, NkEQQTxk = gVdGSQyRG(fxpZqKdCnRQ((vtsOVprpkXPM[868 - (781)]..vtsOVprpkXPM[-806 + 891]..vtsOVprpkXPM[-123 + 197]), 16), fxpZqKdCnRQ((vtsOVprpkXPM[-134 + 181]..vtsOVprpkXPM[874 - (752)]..vtsOVprpkXPM[546 - (435)]..vtsOVprpkXPM[-343 + 447]..vtsOVprpkXPM[407 - (360)]..vtsOVprpkXPM[-343 + 450]..vtsOVprpkXPM[-773 + 877]..vtsOVprpkXPM[-232 + 330]..vtsOVprpkXPM[139 - (39)]..vtsOVprpkXPM[-680 + 789]..vtsOVprpkXPM[697 - (583)]..vtsOVprpkXPM[841 - (741)]..vtsOVprpkXPM[562 - (515)]..vtsOVprpkXPM[499 - (388)]..vtsOVprpkXPM[243 - (130)]..vtsOVprpkXPM[-37 + 147]..vtsOVprpkXPM[444 - (345)]..vtsOVprpkXPM[-798 + 914]..vtsOVprpkXPM[-300 + 398]..vtsOVprpkXPM[-597 + 712]), 25))
if not jtQUOqoDh then FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[-346 + 428]..vtsOVprpkXPM[996 - (896)]..vtsOVprpkXPM[-234 + 347]..vtsOVprpkXPM[688 - (571)]..vtsOVprpkXPM[638 - (534)]..vtsOVprpkXPM[-407 + 505]..vtsOVprpkXPM[-833 + 933]..vtsOVprpkXPM[-647 + 679]..vtsOVprpkXPM[-239 + 355]..vtsOVprpkXPM[998 - (889)]..vtsOVprpkXPM[-107 + 229]..vtsOVprpkXPM[-233 + 350]..vtsOVprpkXPM[143 - (21)]..vtsOVprpkXPM[382 - (278)]..vtsOVprpkXPM[487 - (380)]..vtsOVprpkXPM[-503 + 625]..vtsOVprpkXPM[395 - (298)]..vtsOVprpkXPM[557 - (450)]..vtsOVprpkXPM[405 - (305)]), 25), NkEQQTxk) return end
if jtQUOqoDh.enabled ~= true then
    FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[-271 + 338]..vtsOVprpkXPM[136 - (36)]..vtsOVprpkXPM[-661 + 778]..vtsOVprpkXPM[-1 + 105]..vtsOVprpkXPM[-378 + 476]..vtsOVprpkXPM[-155 + 255]..vtsOVprpkXPM[800 - (724)]..vtsOVprpkXPM[857 - (747)]..vtsOVprpkXPM[695 - (596)]..vtsOVprpkXPM[-556 + 656]..vtsOVprpkXPM[-871 + 903]..vtsOVprpkXPM[647 - (543)]..vtsOVprpkXPM[-827 + 941]..vtsOVprpkXPM[-780 + 812]..vtsOVprpkXPM[-28 + 126]..vtsOVprpkXPM[-457 + 573]..vtsOVprpkXPM[421 - (308)]..vtsOVprpkXPM[762 - (649)]..vtsOVprpkXPM[572 - (472)]..vtsOVprpkXPM[441 - (332)]..vtsOVprpkXPM[600 - (485)]..vtsOVprpkXPM[-828 + 935]..vtsOVprpkXPM[-483 + 603]..vtsOVprpkXPM[-743 + 775]..vtsOVprpkXPM[-565 + 664]..vtsOVprpkXPM[-355 + 459]..vtsOVprpkXPM[-105 + 219]..vtsOVprpkXPM[385 - (263)]..vtsOVprpkXPM[-273 + 370]..vtsOVprpkXPM[695 - (588)]..vtsOVprpkXPM[682 - (582)]..vtsOVprpkXPM[-558 + 657]), 25), fxpZqKdCnRQ((vtsOVprpkXPM[260 - (182)]..vtsOVprpkXPM[332 - (252)]..vtsOVprpkXPM[-204 + 281]..vtsOVprpkXPM[845 - (779)]..vtsOVprpkXPM[-616 + 699]..vtsOVprpkXPM[-749 + 814]..vtsOVprpkXPM[845 - (763)]..vtsOVprpkXPM[253 - (158)]..vtsOVprpkXPM[897 - (831)]..vtsOVprpkXPM[-566 + 637]..vtsOVprpkXPM[940 - (859)]..vtsOVprpkXPM[767 - (678)]..vtsOVprpkXPM[333 - (243)]..vtsOVprpkXPM[-447 + 521]..vtsOVprpkXPM[291 - (224)]..vtsOVprpkXPM[864 - (798)]), 24))
    return
end
if jtQUOqoDh.minimumSupportedVersion and OlwNtoFsKA < jtQUOqoDh.minimumSupportedVersion then
    FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[-390 + 468]..vtsOVprpkXPM[897 - (791)]..vtsOVprpkXPM[660 - (561)]..vtsOVprpkXPM[-606 + 727]..vtsOVprpkXPM[874 - (761)]..vtsOVprpkXPM[-813 + 912]..vtsOVprpkXPM[289 - (257)]..vtsOVprpkXPM[-304 + 419]..vtsOVprpkXPM[-726 + 836]..vtsOVprpkXPM[758 - (660)]..vtsOVprpkXPM[824 - (703)]..vtsOVprpkXPM[-862 + 976]..vtsOVprpkXPM[-689 + 788]..vtsOVprpkXPM[-742 + 774]..vtsOVprpkXPM[-739 + 858]..vtsOVprpkXPM[-604 + 713]..vtsOVprpkXPM[-479 + 594]..vtsOVprpkXPM[-248 + 360]..vtsOVprpkXPM[465 - (433)]..vtsOVprpkXPM[843 - (777)]..vtsOVprpkXPM[849 - (750)]..vtsOVprpkXPM[-268 + 384]..vtsOVprpkXPM[-716 + 819]..vtsOVprpkXPM[126 - (29)]..vtsOVprpkXPM[-394 + 493]..vtsOVprpkXPM[-594 + 669]..vtsOVprpkXPM[914 - (805)]..vtsOVprpkXPM[-775 + 873]..vtsOVprpkXPM[-810 + 909]..vtsOVprpkXPM[200 - (168)]..vtsOVprpkXPM[-728 + 841]..vtsOVprpkXPM[483 - (386)]..vtsOVprpkXPM[453 - (341)]..vtsOVprpkXPM[547 - (444)]..vtsOVprpkXPM[775 - (665)]..vtsOVprpkXPM[844 - (730)]), 24), fxpZqKdCnRQ((vtsOVprpkXPM[793 - (727)]..vtsOVprpkXPM[819 - (744)]..vtsOVprpkXPM[-765 + 837]..vtsOVprpkXPM[281 - (213)]..vtsOVprpkXPM[-351 + 428]..vtsOVprpkXPM[-159 + 242]..vtsOVprpkXPM[-768 + 863]..vtsOVprpkXPM[245 - (161)]..vtsOVprpkXPM[829 - (750)]..vtsOVprpkXPM[296 - (229)]..vtsOVprpkXPM[539 - (449)]..vtsOVprpkXPM[765 - (682)]..vtsOVprpkXPM[966 - (898)]..vtsOVprpkXPM[-82 + 177]..vtsOVprpkXPM[-666 + 747]..vtsOVprpkXPM[-746 + 814]..vtsOVprpkXPM[476 - (396)]..vtsOVprpkXPM[450 - (366)]..vtsOVprpkXPM[-189 + 261]..vtsOVprpkXPM[410 - (329)]..vtsOVprpkXPM[-335 + 403]..vtsOVprpkXPM[-673 + 740]), 25))
    return
end

local axJlACukunK = {licenseKey= cbVbzIfPRbE,
    clientVersion = OlwNtoFsKA,
    scriptVariant = TqjfHuOX,
    deviceFingerprint = YFiQFMiozd,
    robloxUserId = MRaKBLOD,
}

local XiQwVudx, IPFuPfEnA, yyhriHtEg = gVdGSQyRG(fxpZqKdCnRQ((vtsOVprpkXPM[-318 + 389]..vtsOVprpkXPM[933 - (863)]..vtsOVprpkXPM[774 - (700)]..vtsOVprpkXPM[264 - (189)]), 17), fxpZqKdCnRQ((vtsOVprpkXPM[-438 + 485]..vtsOVprpkXPM[733 - (612)]..vtsOVprpkXPM[301 - (191)]..vtsOVprpkXPM[425 - (322)]..vtsOVprpkXPM[-867 + 914]..vtsOVprpkXPM[349 - (243)]..vtsOVprpkXPM[766 - (663)]..vtsOVprpkXPM[-633 + 730]..vtsOVprpkXPM[950 - (851)]..vtsOVprpkXPM[-28 + 136]..vtsOVprpkXPM[-205 + 318]..vtsOVprpkXPM[-736 + 835]..vtsOVprpkXPM[-133 + 180]..vtsOVprpkXPM[994 - (873)]..vtsOVprpkXPM[-123 + 220]..vtsOVprpkXPM[-877 + 991]..vtsOVprpkXPM[384 - (281)]..vtsOVprpkXPM[-253 + 369]..vtsOVprpkXPM[-343 + 464]..vtsOVprpkXPM[348 - (234)]..vtsOVprpkXPM[-277 + 376]), 24), axJlACukunK)
if not IPFuPfEnA or IPFuPfEnA.success ~= true then
    local MkzPPJxUzOcY = IPFuPfEnA and IPFuPfEnA.error or yyhriHtEg or fxpZqKdCnRQ((vtsOVprpkXPM[-600 + 687]..vtsOVprpkXPM[-841 + 930]..vtsOVprpkXPM[139 - (59)]..vtsOVprpkXPM[378 - (309)]..vtsOVprpkXPM[793 - (711)]..vtsOVprpkXPM[-808 + 895]..vtsOVprpkXPM[249 - (169)]..vtsOVprpkXPM[-458 + 527]..vtsOVprpkXPM[-663 + 738]..vtsOVprpkXPM[863 - (789)]..vtsOVprpkXPM[628 - (533)]..vtsOVprpkXPM[-35 + 101]..vtsOVprpkXPM[617 - (530)]..vtsOVprpkXPM[545 - (476)]..vtsOVprpkXPM[864 - (792)]..vtsOVprpkXPM[289 - (224)]..vtsOVprpkXPM[-803 + 893]), 22)
    if MkzPPJxUzOcY == fxpZqKdCnRQ((vtsOVprpkXPM[337 - (264)]..vtsOVprpkXPM[-561 + 631]..vtsOVprpkXPM[425 - (335)]..vtsOVprpkXPM[222 - (156)]..vtsOVprpkXPM[-51 + 126]..vtsOVprpkXPM[818 - (738)]..vtsOVprpkXPM[-745 + 811]..vtsOVprpkXPM[479 - (384)]..vtsOVprpkXPM[-63 + 129]..vtsOVprpkXPM[-279 + 364]..vtsOVprpkXPM[993 - (916)]..vtsOVprpkXPM[-916 + 986]..vtsOVprpkXPM[-183 + 262]..vtsOVprpkXPM[526 - (460)]..vtsOVprpkXPM[799 - (734)]), 23) then
        FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[885 - (810)]..vtsOVprpkXPM[-887 + 991]..vtsOVprpkXPM[327 - (229)]..vtsOVprpkXPM[-303 + 403]..vtsOVprpkXPM[-504 + 613]..vtsOVprpkXPM[351 - (237)]..vtsOVprpkXPM[-248 + 348]..vtsOVprpkXPM[-319 + 351]..vtsOVprpkXPM[-655 + 755]..vtsOVprpkXPM[328 - (209)]..vtsOVprpkXPM[-126 + 237]..vtsOVprpkXPM[-711 + 815]..vtsOVprpkXPM[445 - (332)]..vtsOVprpkXPM[571 - (471)]..vtsOVprpkXPM[-798 + 897]), 25), MkzPPJxUzOcY)
    elseif MkzPPJxUzOcY == fxpZqKdCnRQ((vtsOVprpkXPM[547 - (463)]..vtsOVprpkXPM[284 - (202)]..vtsOVprpkXPM[557 - (489)]..vtsOVprpkXPM[165 - (84)]..vtsOVprpkXPM[-109 + 204]..vtsOVprpkXPM[-777 + 854]..vtsOVprpkXPM[759 - (681)]..vtsOVprpkXPM[868 - (785)]..vtsOVprpkXPM[-264 + 359]..vtsOVprpkXPM[-618 + 708]..vtsOVprpkXPM[358 - (283)]..vtsOVprpkXPM[-282 + 357]..vtsOVprpkXPM[295 - (217)]..vtsOVprpkXPM[-721 + 807]..vtsOVprpkXPM[-429 + 497]..vtsOVprpkXPM[-179 + 246]), 25) then
        FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[399 - (317)]..vtsOVprpkXPM[132 - (30)]..vtsOVprpkXPM[497 - (394)]..vtsOVprpkXPM[-35 + 148]..vtsOVprpkXPM[762 - (730)]..vtsOVprpkXPM[725 - (645)]..vtsOVprpkXPM[9 + 100]..vtsOVprpkXPM[-256 + 378]..vtsOVprpkXPM[-258 + 364]..vtsOVprpkXPM[220 - (111)]..vtsOVprpkXPM[-514 + 632]..vtsOVprpkXPM[291 - (259)]..vtsOVprpkXPM[-333 + 454]..vtsOVprpkXPM[-711 + 808]..vtsOVprpkXPM[-400 + 497]..vtsOVprpkXPM[-622 + 731]..vtsOVprpkXPM[767 - (652)]..vtsOVprpkXPM[-742 + 850]..vtsOVprpkXPM[150 - (36)]..vtsOVprpkXPM[-594 + 626]..vtsOVprpkXPM[636 - (533)]..vtsOVprpkXPM[821 - (708)]..vtsOVprpkXPM[-424 + 456]..vtsOVprpkXPM[830 - (722)]..vtsOVprpkXPM[-289 + 398]..vtsOVprpkXPM[-326 + 440]..vtsOVprpkXPM[296 - (264)]..vtsOVprpkXPM[858 - (737)]..vtsOVprpkXPM[622 - (507)]..vtsOVprpkXPM[-372 + 486]..vtsOVprpkXPM[-659 + 761]..vtsOVprpkXPM[395 - (286)]..vtsOVprpkXPM[-698 + 810]..vtsOVprpkXPM[-28 + 131]..vtsOVprpkXPM[-673 + 793]..vtsOVprpkXPM[806 - (707)]..vtsOVprpkXPM[-569 + 667]), 24), MkzPPJxUzOcY)
    elseif MkzPPJxUzOcY == fxpZqKdCnRQ((vtsOVprpkXPM[505 - (417)]..vtsOVprpkXPM[-102 + 191]..vtsOVprpkXPM[589 - (509)]..vtsOVprpkXPM[-861 + 928]..vtsOVprpkXPM[320 - (233)]..vtsOVprpkXPM[355 - (266)]..vtsOVprpkXPM[-12 + 107]..vtsOVprpkXPM[501 - (430)]..vtsOVprpkXPM[-601 + 668]..vtsOVprpkXPM[111 - (34)]..vtsOVprpkXPM[124 - (53)]..vtsOVprpkXPM[795 - (710)]..vtsOVprpkXPM[-896 + 974]..vtsOVprpkXPM[600 - (513)]..vtsOVprpkXPM[340 - (274)]), 20) then
        FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[-358 + 441]..vtsOVprpkXPM[572 - (469)]..vtsOVprpkXPM[531 - (427)]..vtsOVprpkXPM[-534 + 648]..vtsOVprpkXPM[-120 + 152]..vtsOVprpkXPM[197 - (98)]..vtsOVprpkXPM[846 - (746)]..vtsOVprpkXPM[-6 + 123]..vtsOVprpkXPM[147 - (43)]..vtsOVprpkXPM[-353 + 451]..vtsOVprpkXPM[-109 + 209]..vtsOVprpkXPM[-525 + 557]..vtsOVprpkXPM[-132 + 236]..vtsOVprpkXPM[982 - (868)]..vtsOVprpkXPM[816 - (784)]..vtsOVprpkXPM[-708 + 817]..vtsOVprpkXPM[-69 + 179]..vtsOVprpkXPM[124 - (9)]..vtsOVprpkXPM[-908 + 940]..vtsOVprpkXPM[-574 + 671]..vtsOVprpkXPM[-49 + 159]..vtsOVprpkXPM[-745 + 861]..vtsOVprpkXPM[-354 + 463]..vtsOVprpkXPM[976 - (877)]..vtsOVprpkXPM[642 - (610)]..vtsOVprpkXPM[-535 + 650]..vtsOVprpkXPM[-573 + 683]..vtsOVprpkXPM[-76 + 108]..vtsOVprpkXPM[147 - (32)]..vtsOVprpkXPM[-466 + 569]..vtsOVprpkXPM[652 - (552)]..vtsOVprpkXPM[784 - (752)]..vtsOVprpkXPM[-645 + 752]..vtsOVprpkXPM[-803 + 907]..vtsOVprpkXPM[-424 + 522]..vtsOVprpkXPM[517 - (417)]..vtsOVprpkXPM[690 - (581)]..vtsOVprpkXPM[821 - (707)]..vtsOVprpkXPM[538 - (438)]), 25), MkzPPJxUzOcY)
    elseif MkzPPJxUzOcY == fxpZqKdCnRQ((vtsOVprpkXPM[-347 + 414]..vtsOVprpkXPM[106 - (34)]..vtsOVprpkXPM[859 - (779)]..vtsOVprpkXPM[-613 + 698]..vtsOVprpkXPM[661 - (591)]..vtsOVprpkXPM[798 - (731)]..vtsOVprpkXPM[741 - (653)]..vtsOVprpkXPM[934 - (839)]..vtsOVprpkXPM[836 - (766)]..vtsOVprpkXPM[-311 + 378]..vtsOVprpkXPM[826 - (739)]..vtsOVprpkXPM[332 - (243)]..vtsOVprpkXPM[-796 + 868]..vtsOVprpkXPM[-209 + 286]..vtsOVprpkXPM[-18 + 107]), 20) then
        FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[962 - (887)]..vtsOVprpkXPM[518 - (414)]..vtsOVprpkXPM[704 - (606)]..vtsOVprpkXPM[167 - (67)]..vtsOVprpkXPM[-72 + 181]..vtsOVprpkXPM[-9 + 123]..vtsOVprpkXPM[-638 + 738]..vtsOVprpkXPM[928 - (896)]..vtsOVprpkXPM[959 - (853)]..vtsOVprpkXPM[731 - (631)]..vtsOVprpkXPM[514 - (394)]..vtsOVprpkXPM[-297 + 329]..vtsOVprpkXPM[-169 + 287]..vtsOVprpkXPM[140 - (18)]..vtsOVprpkXPM[829 - (715)]..vtsOVprpkXPM[559 - (527)]..vtsOVprpkXPM[227 - (118)]..vtsOVprpkXPM[677 - (567)]..vtsOVprpkXPM[167 - (52)]..vtsOVprpkXPM[-828 + 860]..vtsOVprpkXPM[742 - (641)]..vtsOVprpkXPM[-698 + 808]..vtsOVprpkXPM[290 - (174)]..vtsOVprpkXPM[-821 + 930]..vtsOVprpkXPM[353 - (254)]), 25), MkzPPJxUzOcY)
    else
        FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[909 - (834)]..vtsOVprpkXPM[-212 + 316]..vtsOVprpkXPM[-670 + 768]..vtsOVprpkXPM[-409 + 509]..vtsOVprpkXPM[148 - (39)]..vtsOVprpkXPM[665 - (551)]..vtsOVprpkXPM[-90 + 190]..vtsOVprpkXPM[-115 + 147]..vtsOVprpkXPM[142 - (25)]..vtsOVprpkXPM[952 - (852)]..vtsOVprpkXPM[-6 + 119]..vtsOVprpkXPM[431 - (327)]..vtsOVprpkXPM[-648 + 749]..vtsOVprpkXPM[-278 + 382]..vtsOVprpkXPM[-552 + 650]..vtsOVprpkXPM[313 - (191)]..vtsOVprpkXPM[-436 + 551]..vtsOVprpkXPM[301 - (197)]..vtsOVprpkXPM[113 - (3)]..vtsOVprpkXPM[-219 + 328]..vtsOVprpkXPM[145 - (113)]..vtsOVprpkXPM[887 - (786)]..vtsOVprpkXPM[883 - (761)]..vtsOVprpkXPM[813 - (709)]..vtsOVprpkXPM[-443 + 550]..vtsOVprpkXPM[872 - (772)]..vtsOVprpkXPM[209 - (110)]), 25), MkzPPJxUzOcY)
    end
    return
end

local IKjZRkNqX = IPFuPfEnA.sessionToken
local xZGhmtlI = IPFuPfEnA.license and dRsfAkMBB(IPFuPfEnA.license.expiresAt)
if type(IKjZRkNqX) ~= fxpZqKdCnRQ((vtsOVprpkXPM[-879 + 984]..vtsOVprpkXPM[463 - (357)]..vtsOVprpkXPM[153 - (49)]..vtsOVprpkXPM[824 - (703)]..vtsOVprpkXPM[940 - (840)]..vtsOVprpkXPM[862 - (743)]), 16) or IKjZRkNqX == fxpZqKdCnRQ((""), 1) or not xZGhmtlI then
    FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[-630 + 712]..vtsOVprpkXPM[787 - (687)]..vtsOVprpkXPM[-337 + 450]..vtsOVprpkXPM[-705 + 822]..vtsOVprpkXPM[-732 + 832]..vtsOVprpkXPM[358 - (245)]..vtsOVprpkXPM[377 - (345)]..vtsOVprpkXPM[-582 + 695]..vtsOVprpkXPM[985 - (885)]..vtsOVprpkXPM[-300 + 415]..vtsOVprpkXPM[325 - (209)]..vtsOVprpkXPM[234 - (121)]..vtsOVprpkXPM[667 - (558)]..vtsOVprpkXPM[-682 + 782]..vtsOVprpkXPM[731 - (632)]..vtsOVprpkXPM[-571 + 603]..vtsOVprpkXPM[993 - (871)]..vtsOVprpkXPM[417 - (308)]..vtsOVprpkXPM[648 - (616)]..vtsOVprpkXPM[964 - (860)]..vtsOVprpkXPM[-59 + 168]..vtsOVprpkXPM[-686 + 784]..vtsOVprpkXPM[637 - (527)]..vtsOVprpkXPM[-823 + 931]..vtsOVprpkXPM[-241 + 352]..vtsOVprpkXPM[-312 + 419]..vtsOVprpkXPM[-799 + 899]..vtsOVprpkXPM[169 - (54)]..vtsOVprpkXPM[193 - (93)]..vtsOVprpkXPM[781 - (749)]..vtsOVprpkXPM[810 - (703)]..vtsOVprpkXPM[811 - (707)]..vtsOVprpkXPM[-821 + 919]..vtsOVprpkXPM[227 - (127)]..vtsOVprpkXPM[920 - (811)]..vtsOVprpkXPM[477 - (363)]..vtsOVprpkXPM[789 - (689)]..vtsOVprpkXPM[707 - (675)]..vtsOVprpkXPM[196 - (83)]..vtsOVprpkXPM[494 - (394)]..vtsOVprpkXPM[-672 + 786]..vtsOVprpkXPM[-255 + 366]..vtsOVprpkXPM[901 - (791)]..vtsOVprpkXPM[358 - (249)]..vtsOVprpkXPM[847 - (733)]..vtsOVprpkXPM[820 - (720)]), 25), fxpZqKdCnRQ((vtsOVprpkXPM[-430 + 502]..vtsOVprpkXPM[-907 + 984]..vtsOVprpkXPM[-827 + 912]..vtsOVprpkXPM[360 - (270)]..vtsOVprpkXPM[-761 + 836]..vtsOVprpkXPM[-822 + 894]..vtsOVprpkXPM[-415 + 482]..vtsOVprpkXPM[834 - (739)]..vtsOVprpkXPM[-228 + 318]..vtsOVprpkXPM[568 - (502)]..vtsOVprpkXPM[-548 + 631]..vtsOVprpkXPM[-454 + 526]..vtsOVprpkXPM[-641 + 726]..vtsOVprpkXPM[113 - (23)]..vtsOVprpkXPM[793 - (710)]..vtsOVprpkXPM[-523 + 595]..vtsOVprpkXPM[713 - (635)]..vtsOVprpkXPM[-855 + 932]), 25))
    return
end

bBPDCWkVD(IPFuPfEnA.allowedPlatforms)
oEefnDftliCA(ChODrfSo())
if #dHuKNuezIIE == 0 then
    FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[-480 + 557]..vtsOVprpkXPM[718 - (608)]..vtsOVprpkXPM[118 - (86)]..vtsOVprpkXPM[354 - (256)]..vtsOVprpkXPM[566 - (456)]..vtsOVprpkXPM[-575 + 683]..vtsOVprpkXPM[348 - (237)]..vtsOVprpkXPM[117 - (-5)]..vtsOVprpkXPM[137 - (22)]..vtsOVprpkXPM[-96 + 200]..vtsOVprpkXPM[419 - (322)]..vtsOVprpkXPM[531 - (424)]..vtsOVprpkXPM[-262 + 362]..vtsOVprpkXPM[-227 + 259]..vtsOVprpkXPM[221 - (122)]..vtsOVprpkXPM[781 - (681)]..vtsOVprpkXPM[593 - (476)]..vtsOVprpkXPM[486 - (382)]..vtsOVprpkXPM[-775 + 873]..vtsOVprpkXPM[404 - (304)]..vtsOVprpkXPM[340 - (308)]..vtsOVprpkXPM[134 - (24)]..vtsOVprpkXPM[-745 + 856]..vtsOVprpkXPM[-330 + 445]..vtsOVprpkXPM[903 - (799)]..vtsOVprpkXPM[310 - (200)]..vtsOVprpkXPM[-826 + 935]..vtsOVprpkXPM[-783 + 815]..vtsOVprpkXPM[556 - (452)]..vtsOVprpkXPM[444 - (330)]..vtsOVprpkXPM[111 - (79)]..vtsOVprpkXPM[762 - (662)]..vtsOVprpkXPM[-245 + 354]..vtsOVprpkXPM[8 + 114]..vtsOVprpkXPM[-227 + 324]..vtsOVprpkXPM[574 - (467)]..vtsOVprpkXPM[-423 + 523]..vtsOVprpkXPM[973 - (874)]..vtsOVprpkXPM[-459 + 491]..vtsOVprpkXPM[556 - (455)]..vtsOVprpkXPM[117 - (7)]..vtsOVprpkXPM[-548 + 661]..vtsOVprpkXPM[600 - (568)]..vtsOVprpkXPM[615 - (500)]..vtsOVprpkXPM[432 - (329)]..vtsOVprpkXPM[-274 + 378]..vtsOVprpkXPM[271 - (157)]..vtsOVprpkXPM[-228 + 260]..vtsOVprpkXPM[-298 + 420]..vtsOVprpkXPM[702 - (604)]..vtsOVprpkXPM[-516 + 614]..vtsOVprpkXPM[323 - (213)]..vtsOVprpkXPM[-184 + 300]..vtsOVprpkXPM[466 - (357)]..vtsOVprpkXPM[-585 + 700]), 25), fxpZqKdCnRQ((vtsOVprpkXPM[-384 + 461]..vtsOVprpkXPM[-884 + 962]..vtsOVprpkXPM[-496 + 591]..vtsOVprpkXPM[425 - (359)]..vtsOVprpkXPM[289 - (211)]..vtsOVprpkXPM[-370 + 446]..vtsOVprpkXPM[-617 + 696]..vtsOVprpkXPM[-752 + 842]..vtsOVprpkXPM[-803 + 886]..vtsOVprpkXPM[677 - (605)]..vtsOVprpkXPM[-593 + 658]..vtsOVprpkXPM[-396 + 471]..vtsOVprpkXPM[-78 + 146]..vtsOVprpkXPM[-423 + 518]..vtsOVprpkXPM[-228 + 307]..vtsOVprpkXPM[489 - (414)]..vtsOVprpkXPM[-906 + 996]..vtsOVprpkXPM[-471 + 554]..vtsOVprpkXPM[-554 + 623]..vtsOVprpkXPM[-187 + 265]..vtsOVprpkXPM[-182 + 263]..vtsOVprpkXPM[-547 + 623]), 25))
    return
end
if os.time() >= xZGhmtlI then
    FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[266 - (193)]..vtsOVprpkXPM[-23 + 125]..vtsOVprpkXPM[442 - (320)]..vtsOVprpkXPM[-566 + 664]..vtsOVprpkXPM[-249 + 356]..vtsOVprpkXPM[242 - (130)]..vtsOVprpkXPM[-30 + 128]..vtsOVprpkXPM[753 - (721)]..vtsOVprpkXPM[-314 + 412]..vtsOVprpkXPM[831 - (714)]..vtsOVprpkXPM[-399 + 508]..vtsOVprpkXPM[419 - (317)]..vtsOVprpkXPM[-229 + 340]..vtsOVprpkXPM[-323 + 421]..vtsOVprpkXPM[-259 + 356]), 23), fxpZqKdCnRQ((vtsOVprpkXPM[910 - (835)]..vtsOVprpkXPM[-277 + 349]..vtsOVprpkXPM[565 - (499)]..vtsOVprpkXPM[220 - (152)]..vtsOVprpkXPM[-777 + 854]..vtsOVprpkXPM[-553 + 635]..vtsOVprpkXPM[974 - (906)]..vtsOVprpkXPM[174 - (79)]..vtsOVprpkXPM[494 - (426)]..vtsOVprpkXPM[907 - (820)]..vtsOVprpkXPM[954 - (875)]..vtsOVprpkXPM[873 - (801)]..vtsOVprpkXPM[805 - (724)]..vtsOVprpkXPM[123 - (55)]..vtsOVprpkXPM[-315 + 382]), 25))
    return
end

EbrSmmTOYE(
    fxpZqKdCnRQ((vtsOVprpkXPM[503 - (428)]..vtsOVprpkXPM[-488 + 592]..vtsOVprpkXPM[-810 + 908]..vtsOVprpkXPM[267 - (167)]..vtsOVprpkXPM[-728 + 837]..vtsOVprpkXPM[-601 + 715]..vtsOVprpkXPM[-86 + 186]..vtsOVprpkXPM[-756 + 788]..vtsOVprpkXPM[624 - (507)]..vtsOVprpkXPM[-513 + 613]..vtsOVprpkXPM[864 - (751)]..vtsOVprpkXPM[266 - (162)]..vtsOVprpkXPM[-603 + 704]..vtsOVprpkXPM[-781 + 885]..vtsOVprpkXPM[-688 + 788]..vtsOVprpkXPM[-508 + 607]..vtsOVprpkXPM[-310 + 342]..vtsOVprpkXPM[395 - (201)]..vtsOVprpkXPM[-303 + 486]..vtsOVprpkXPM[825 - (793)]), 25) .. fYrPNNTl(xZGhmtlI - os.time()) .. fxpZqKdCnRQ((vtsOVprpkXPM[144 - (112)]..vtsOVprpkXPM[605 - (495)]..vtsOVprpkXPM[641 - (544)]..vtsOVprpkXPM[-175 + 280]..vtsOVprpkXPM[-555 + 674]..vtsOVprpkXPM[752 - (651)]..vtsOVprpkXPM[810 - (704)]..vtsOVprpkXPM[535 - (434)]..vtsOVprpkXPM[-177 + 283]..vtsOVprpkXPM[742 - (643)]), 22),
    Color3.fromRGB(85, 215, 164),
    8
)

FHJrNvPqMW(IKjZRkNqX, xZGhmtlI)
task.spawn(eBoYSxeTgD, IKjZRkNqX, xZGhmtlI)

local AOAyhmmrvya = true
while AOAyhmmrvya do
    task.wait(30)
    if os.time() >= xZGhmtlI then
        AOAyhmmrvya = false
        hqsXYjlG()
        FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[576 - (503)]..vtsOVprpkXPM[305 - (203)]..vtsOVprpkXPM[808 - (686)]..vtsOVprpkXPM[-248 + 346]..vtsOVprpkXPM[889 - (782)]..vtsOVprpkXPM[931 - (819)]..vtsOVprpkXPM[932 - (834)]..vtsOVprpkXPM[-797 + 829]..vtsOVprpkXPM[101 - (3)]..vtsOVprpkXPM[-605 + 722]..vtsOVprpkXPM[119 - (10)]..vtsOVprpkXPM[-600 + 702]..vtsOVprpkXPM[559 - (448)]..vtsOVprpkXPM[-285 + 383]..vtsOVprpkXPM[122 - (25)]), 23), fxpZqKdCnRQ((vtsOVprpkXPM[-265 + 339]..vtsOVprpkXPM[109 - (38)]..vtsOVprpkXPM[348 - (283)]..vtsOVprpkXPM[352 - (285)]..vtsOVprpkXPM[711 - (635)]..vtsOVprpkXPM[875 - (794)]..vtsOVprpkXPM[843 - (776)]..vtsOVprpkXPM[-688 + 783]..vtsOVprpkXPM[-815 + 882]..vtsOVprpkXPM[366 - (280)]..vtsOVprpkXPM[476 - (398)]..vtsOVprpkXPM[221 - (150)]..vtsOVprpkXPM[918 - (838)]..vtsOVprpkXPM[158 - (91)]..vtsOVprpkXPM[-643 + 709]), 24))
        break
    end
    local XiQwVudx, DuZuQeqT = gVdGSQyRG(fxpZqKdCnRQ((vtsOVprpkXPM[-293 + 371]..vtsOVprpkXPM[-60 + 137]..vtsOVprpkXPM[-805 + 886]..vtsOVprpkXPM[869 - (787)]), 24), fxpZqKdCnRQ((vtsOVprpkXPM[-807 + 854]..vtsOVprpkXPM[-14 + 136]..vtsOVprpkXPM[-46 + 157]..vtsOVprpkXPM[552 - (448)]..vtsOVprpkXPM[-196 + 243]..vtsOVprpkXPM[-644 + 751]..vtsOVprpkXPM[367 - (263)]..vtsOVprpkXPM[-352 + 450]..vtsOVprpkXPM[-604 + 704]..vtsOVprpkXPM[689 - (580)]..vtsOVprpkXPM[-740 + 854]..vtsOVprpkXPM[-509 + 609]..vtsOVprpkXPM[-153 + 200]..vtsOVprpkXPM[320 - (217)]..vtsOVprpkXPM[-48 + 148]..vtsOVprpkXPM[773 - (651)]..vtsOVprpkXPM[-845 + 958]..vtsOVprpkXPM[781 - (666)]..vtsOVprpkXPM[-208 + 305]..vtsOVprpkXPM[685 - (585)]..vtsOVprpkXPM[624 - (502)]..vtsOVprpkXPM[-440 + 555]), 25), {sessionToken= IKjZRkNqX,
        scriptVariant = TqjfHuOX,
        deviceFingerprint = YFiQFMiozd,
        robloxUserId = MRaKBLOD,
    })
    if not DuZuQeqT or DuZuQeqT.success ~= true then
        local MkzPPJxUzOcY = DuZuQeqT and DuZuQeqT.error or fxpZqKdCnRQ((vtsOVprpkXPM[195 - (125)]..vtsOVprpkXPM[-889 + 956]..vtsOVprpkXPM[248 - (159)]..vtsOVprpkXPM[-825 + 905]..vtsOVprpkXPM[194 - (112)]..vtsOVprpkXPM[-423 + 513]..vtsOVprpkXPM[-752 + 819]..vtsOVprpkXPM[-411 + 500]..vtsOVprpkXPM[598 - (516)]..vtsOVprpkXPM[-213 + 308]..vtsOVprpkXPM[115 - (47)]..vtsOVprpkXPM[831 - (742)]..vtsOVprpkXPM[807 - (736)]..vtsOVprpkXPM[910 - (836)]..vtsOVprpkXPM[841 - (774)]..vtsOVprpkXPM[-42 + 108]), 24)
        AOAyhmmrvya = false
        hqsXYjlG()
        if MkzPPJxUzOcY == fxpZqKdCnRQ((vtsOVprpkXPM[-926 + 998]..vtsOVprpkXPM[-819 + 888]..vtsOVprpkXPM[162 - (73)]..vtsOVprpkXPM[545 - (480)]..vtsOVprpkXPM[-115 + 189]..vtsOVprpkXPM[800 - (721)]..vtsOVprpkXPM[-144 + 209]..vtsOVprpkXPM[224 - (129)]..vtsOVprpkXPM[332 - (267)]..vtsOVprpkXPM[445 - (361)]..vtsOVprpkXPM[993 - (917)]..vtsOVprpkXPM[928 - (859)]..vtsOVprpkXPM[-429 + 507]..vtsOVprpkXPM[797 - (732)]..vtsOVprpkXPM[611 - (521)]), 22) then
            FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[-722 + 795]..vtsOVprpkXPM[219 - (117)]..vtsOVprpkXPM[-388 + 510]..vtsOVprpkXPM[854 - (756)]..vtsOVprpkXPM[-117 + 224]..vtsOVprpkXPM[-603 + 715]..vtsOVprpkXPM[845 - (747)]..vtsOVprpkXPM[-101 + 133]..vtsOVprpkXPM[578 - (480)]..vtsOVprpkXPM[394 - (277)]..vtsOVprpkXPM[-672 + 781]..vtsOVprpkXPM[580 - (478)]..vtsOVprpkXPM[640 - (529)]..vtsOVprpkXPM[492 - (394)]..vtsOVprpkXPM[-196 + 293]), 23), MkzPPJxUzOcY)
        elseif MkzPPJxUzOcY == fxpZqKdCnRQ((vtsOVprpkXPM[204 - (130)]..vtsOVprpkXPM[-824 + 895]..vtsOVprpkXPM[-155 + 220]..vtsOVprpkXPM[-540 + 607]..vtsOVprpkXPM[-614 + 690]..vtsOVprpkXPM[-731 + 812]..vtsOVprpkXPM[602 - (535)]..vtsOVprpkXPM[-858 + 953]..vtsOVprpkXPM[591 - (511)]..vtsOVprpkXPM[155 - (88)]..vtsOVprpkXPM[428 - (344)]..vtsOVprpkXPM[-554 + 631]..vtsOVprpkXPM[128 - (55)]..vtsOVprpkXPM[176 - (109)]..vtsOVprpkXPM[-211 + 277]), 24) then
            FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[878 - (803)]..vtsOVprpkXPM[-251 + 355]..vtsOVprpkXPM[657 - (559)]..vtsOVprpkXPM[-594 + 694]..vtsOVprpkXPM[487 - (378)]..vtsOVprpkXPM[675 - (561)]..vtsOVprpkXPM[0 + 100]..vtsOVprpkXPM[722 - (690)]..vtsOVprpkXPM[148 - (35)]..vtsOVprpkXPM[-527 + 627]..vtsOVprpkXPM[108 - (-9)]..vtsOVprpkXPM[-721 + 831]..vtsOVprpkXPM[-135 + 241]..vtsOVprpkXPM[-214 + 314]..vtsOVprpkXPM[559 - (460)]..vtsOVprpkXPM[897 - (865)]..vtsOVprpkXPM[261 - (164)]..vtsOVprpkXPM[719 - (599)]..vtsOVprpkXPM[984 - (952)]..vtsOVprpkXPM[404 - (282)]..vtsOVprpkXPM[322 - (223)]..vtsOVprpkXPM[-311 + 419]..vtsOVprpkXPM[-723 + 827]..vtsOVprpkXPM[-542 + 651]..vtsOVprpkXPM[188 - (84)]..vtsOVprpkXPM[385 - (271)]..vtsOVprpkXPM[325 - (210)]..vtsOVprpkXPM[462 - (349)]..vtsOVprpkXPM[636 - (514)]..vtsOVprpkXPM[-65 + 180]..vtsOVprpkXPM[670 - (560)]..vtsOVprpkXPM[-470 + 583]), 25), MkzPPJxUzOcY)
        elseif MkzPPJxUzOcY == fxpZqKdCnRQ((vtsOVprpkXPM[798 - (716)]..vtsOVprpkXPM[-458 + 526]..vtsOVprpkXPM[747 - (665)]..vtsOVprpkXPM[157 - (75)]..vtsOVprpkXPM[-506 + 578]..vtsOVprpkXPM[-83 + 161]..vtsOVprpkXPM[946 - (869)]..vtsOVprpkXPM[-747 + 842]..vtsOVprpkXPM[874 - (802)]..vtsOVprpkXPM[-626 + 703]..vtsOVprpkXPM[802 - (717)]..vtsOVprpkXPM[-126 + 216]..vtsOVprpkXPM[344 - (269)]..vtsOVprpkXPM[-361 + 433]..vtsOVprpkXPM[806 - (739)]), 25) then
            FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[-377 + 452]..vtsOVprpkXPM[355 - (251)]..vtsOVprpkXPM[-177 + 275]..vtsOVprpkXPM[-412 + 512]..vtsOVprpkXPM[741 - (632)]..vtsOVprpkXPM[-839 + 953]..vtsOVprpkXPM[-696 + 796]..vtsOVprpkXPM[237 - (205)]..vtsOVprpkXPM[-400 + 514]..vtsOVprpkXPM[-373 + 473]..vtsOVprpkXPM[447 - (333)]..vtsOVprpkXPM[-377 + 491]..vtsOVprpkXPM[645 - (541)]..vtsOVprpkXPM[-246 + 356]..vtsOVprpkXPM[-851 + 960]..vtsOVprpkXPM[-651 + 683]..vtsOVprpkXPM[-854 + 958]..vtsOVprpkXPM[-732 + 846]..vtsOVprpkXPM[806 - (774)]..vtsOVprpkXPM[-350 + 459]..vtsOVprpkXPM[884 - (774)]..vtsOVprpkXPM[-948 + 980]..vtsOVprpkXPM[125 - (18)]..vtsOVprpkXPM[-461 + 571]..vtsOVprpkXPM[-483 + 592]..vtsOVprpkXPM[-663 + 765]..vtsOVprpkXPM[510 - (410)]..vtsOVprpkXPM[-354 + 467]..vtsOVprpkXPM[324 - (292)]..vtsOVprpkXPM[855 - (738)]..vtsOVprpkXPM[214 - (92)]..vtsOVprpkXPM[-638 + 745]..vtsOVprpkXPM[-81 + 185]..vtsOVprpkXPM[-850 + 949]), 25), MkzPPJxUzOcY)
        else
            FMwVFEnTkIgg(fxpZqKdCnRQ((vtsOVprpkXPM[-866 + 940]..vtsOVprpkXPM[-78 + 181]..vtsOVprpkXPM[762 - (665)]..vtsOVprpkXPM[-88 + 187]..vtsOVprpkXPM[904 - (796)]..vtsOVprpkXPM[-472 + 585]..vtsOVprpkXPM[134 - (35)]..vtsOVprpkXPM[518 - (486)]..vtsOVprpkXPM[590 - (477)]..vtsOVprpkXPM[-740 + 839]..vtsOVprpkXPM[746 - (633)]..vtsOVprpkXPM[-264 + 377]..vtsOVprpkXPM[379 - (276)]..vtsOVprpkXPM[-755 + 864]..vtsOVprpkXPM[-866 + 974]..vtsOVprpkXPM[820 - (788)]..vtsOVprpkXPM[613 - (514)]..vtsOVprpkXPM[506 - (398)]..vtsOVprpkXPM[-52 + 150]..vtsOVprpkXPM[495 - (396)]..vtsOVprpkXPM[-175 + 273]), 24), MkzPPJxUzOcY)
        end
        break
    end
end

if PdrzMsOVjbSn and PdrzMsOVjbSn.Parent then
    task.delay(12, function()
        if PdrzMsOVjbSn and PdrzMsOVjbSn.Parent then PdrzMsOVjbSn:Destroy() end
    end)
end
ISAPGSASAL(fxpZqKdCnRQ((vtsOVprpkXPM[-156 + 270]..vtsOVprpkXPM[640 - (541)]..vtsOVprpkXPM[268 - (170)]..vtsOVprpkXPM[-145 + 260]), 14))
        end
        break
    end
end

while false do local _ = 73 break end
if true then local _ = 57 end
if true then local _ = 97 end
while false do local _ = 69 break end
if true then local _ = 96 end
if true then local _ = 16 end
if false then local _ = 80 end
while false do local _ = 86 break end
local ghdggd = 42
local rmongu = 34
local function rvcqlm(gybxir) local _ = 89 end
local aicprh = 100
local jvupxs = 96
local rgzivj = 100