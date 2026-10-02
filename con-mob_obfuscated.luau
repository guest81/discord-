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
if true then local _ = 74 end
local ouiktw = 27
local gegxkt = 26
if true then local _ = 21 end
local function ysrigb(wvfued) local _ = 91 end
if false then local _ = 4 end
if false then local _ = 48 end
local mevgln = 9
local function fwheij(htrlea) local _ = 4 end
if true then local _ = 22 end
local wfcrcj = 98
local function unjuyq(mvyrym) local _ = 86 end
local gqdnme = 11
local function hvnnfc(bnraqo) local _ = 91 end
local thing = 2697;
local thing2 = 2697;
local counter = 0;
while thing == thing2 and counter < 1 do
    thing = thing + 1;
    counter = counter + 1;
    if thing == thing2 then
        local tbl = {1, 2, 3}; table.sort(tbl, function(a, b) return a > b end);
    else
        do
            do
    local _BFR,_MFR,T,E,Pa,GM,RG={["getmetatable"]=getmetatable,["pcall"]=pcall,["string.upper"]=string.upper,["type"]=type,["table.remove"]=table.remove,["string.format"]=string.format,["tonumber"]=tonumber,["error"]=error,["select"]=select,["os.time"]=os.time,["string.find"]=string.find,["tostring"]=tostring,["math.sqrt"]=math.sqrt,["math.cos"]=math.cos,["math.deg"]=math.deg,["math.max"]=math.max,["math.abs"]=math.abs,["xpcall"]=xpcall,["os.difftime"]=os.difftime,["math.ceil"]=math.ceil,["os.date"]=os.date,["os.clock"]=os.clock,["rawset"]=rawset,["math.tan"]=math.tan,["string.lower"]=string.lower,["string.sub"]=string.sub,["math.exp"]=math.exp,["string.len"]=string.len,["math.sin"]=math.sin,["math.acos"]=math.acos,["string.rep"]=string.rep,["math.floor"]=math.floor,["math.rad"]=math.rad,["math.modf"]=math.modf,["assert"]=assert,["next"]=next,["string.byte"]=string.byte,["string.char"]=string.char,["math.fmod"]=math.fmod,["rawequal"]=rawequal,["math.atan"]=math.atan,["setmetatable"]=setmetatable,["table.insert"]=table.insert,["string.gmatch"]=string.gmatch,["table.sort"]=table.sort,["rawget"]=rawget,["math.asin"]=math.asin,["string.reverse"]=string.reverse,["string.match"]=string.match,["string.gsub"]=string.gsub,["math.min"]=math.min,["table.concat"]=table.concat},{},type,error,pairs,getmetatable,rawget
    local DG={table=table,string=string,math=math,os=os}
    local function check()
        for n,ref in Pa(_BFR) do
            if ref==nil then
                E("Tamper Detected! Reason: Critical function removed: "..n)
                return
            end
            if T(ref)~="function" then
                E("Tamper Detected! Reason: Critical function type changed: "..n.." (was function, now "..T(ref)..")")
                return
            end
        end
        for tname in Pa(_MFR) do
            local parts={}
            for p in tname:gmatch("[^.]+") do parts[#parts+1]=p end
            local t=DG[(parts[1])]
            if t then
                local mt=GM(t)
                if mt then
                    local mf=RG(mt,parts[2])
                    if mf then
                        local expected=_MFR[tname]
                        if T(mf)~=expected then
                            E("Tamper Detected! Reason: Metamethod tampered: "..tname)
                            return
                        end
                    end
                end
            end
        end
        local d=debug
        if T(d)=="table" then
            local _DK={"info","traceback"}
            for _,k in Pa(_DK) do
                if T(d[k])~="function" then
                    E("Tamper Detected! Reason: Debug library incomplete")
                    return
                end
            end
        end
    end
    check()
end

local lMAdLSNB,qAAHXIFGcgOh,suRBumSGYTfw,ZedscHfPEOa,WlrrntdzdNNJ,NxnyHPam,lIeOcmjg,htNxMRiNe,JBZKRGiAr,pbiWCvmoWwB,SuhaIECGaLu,kjMaunLUkIUp,pcmcGCaLHmun,UCVzMkRYbA,aMhhSKUsXY,rsWgfulR,auQqpjtwSXE,JdOpjIEjccUy
lMAdLSNB=error;qAAHXIFGcgOh=ipairs;suRBumSGYTfw=pairs;ZedscHfPEOa=pcall;WlrrntdzdNNJ=print;NxnyHPam=rawget;lIeOcmjg=rawset;htNxMRiNe=select;JBZKRGiAr=tonumber;pbiWCvmoWwB=tostring;SuhaIECGaLu=math.floor;kjMaunLUkIUp=math.max;pcmcGCaLHmun=math.random;UCVzMkRYbA=string.char;aMhhSKUsXY=string.format;rsWgfulR=table.concat;auQqpjtwSXE=table.insert;JdOpjIEjccUy=os.time;
local ETZEwPwyBF = {[10]="\\010",[32]=" ",[36]="$",[37]="%",[39]="'",[40]="(",[41]=")",[43]="+",[45]="-",[46]=".",[47]="/",[48]="0",[49]="1",[50]="2",[51]="3",[53]="5",[54]="6",[55]="7",[56]="8",[58]=":",[61]="=",[63]="?",[65]="A",[66]="B",[67]="C",[68]="D",[69]="E",[70]="F",[71]="G",[72]="H",[73]="I",[74]="J",[75]="K",[76]="L",[77]="M",[78]="N",[79]="O",[80]="P",[81]="Q",[82]="R",[83]="S",[84]="T",[85]="U",[86]="V",[87]="W",[88]="X",[89]="Y",[90]="Z",[91]="[",[93]="]",[94]="^",[95]="_",[97]="a",[98]="b",[99]="c",[100]="d",[101]="e",[102]="f",[103]="g",[104]="h",[105]="i",[106]="j",[107]="k",[108]="l",[109]="m",[110]="n",[111]="o",[112]="p",[113]="q",[114]="r",[115]="s",[116]="t",[117]="u",[118]="v",[119]="w",[120]="x",[121]="y",[122]="z",[124]="|",[195]="\\195",[151]="\\151",[194]="\\194",[183]="\\183"}
local function rgxBGEnnnjhW(vmYZrHauSd)
    return (vmYZrHauSd >= 48 and vmYZrHauSd <= 57) or (vmYZrHauSd >= 65 and vmYZrHauSd <= 90) or (vmYZrHauSd >= 97 and vmYZrHauSd <= 122)
end

local function KASYeHPY(MXMzndQK, JCBXxCBngHL)
    local oqAJRwzkdTD = {}
    for i = 1, #MXMzndQK do
        local vmYZrHauSd = MXMzndQK:byte(i)
        if rgxBGEnnnjhW(vmYZrHauSd) then
            local iCszZaGQ            if vmYZrHauSd >= 48 and vmYZrHauSd <= 57 then
                iCszZaGQ = ((vmYZrHauSd - 48 - JCBXxCBngHL + 10) % 10) + 48
            elseif vmYZrHauSd >= 65 and vmYZrHauSd <= 90 then
                iCszZaGQ = ((vmYZrHauSd - 65 - JCBXxCBngHL + 26) % 26) + 65
            elseif vmYZrHauSd >= 97 and vmYZrHauSd <= 122 then
                iCszZaGQ = ((vmYZrHauSd - 97 - JCBXxCBngHL + 26) % 26) + 97
            end
            table.insert(oqAJRwzkdTD, string.char(iCszZaGQ))
        else
            table.insert(oqAJRwzkdTD, string.char(vmYZrHauSd))
        end
    end
    return table.concat(oqAJRwzkdTD)
end

local YCyAKNCnwCi = game:GetService(KASYeHPY((ETZEwPwyBF[142 - (72)]..ETZEwPwyBF[733 - (619)]..ETZEwPwyBF[397 - (283)]..ETZEwPwyBF[-407 + 517]..ETZEwPwyBF[-287 + 368]..ETZEwPwyBF[477 - (378)]..ETZEwPwyBF[689 - (577)]..ETZEwPwyBF[-488 + 604]..ETZEwPwyBF[907 - (804)]..ETZEwPwyBF[-623 + 720]..ETZEwPwyBF[711 - (612)]), 24))
local DwMvbyHHz = game:GetService(KASYeHPY((ETZEwPwyBF[434 - (357)]..ETZEwPwyBF[159 - (54)]..ETZEwPwyBF[-657 + 777]..ETZEwPwyBF[-344 + 462]..ETZEwPwyBF[574 - (476)]..ETZEwPwyBF[-298 + 409]..ETZEwPwyBF[316 - (204)]), 23))
local scTUcOxCi = game:GetService(KASYeHPY((ETZEwPwyBF[-424 + 506]..ETZEwPwyBF[-375 + 492]..ETZEwPwyBF[857 - (758)]..ETZEwPwyBF[-472 + 571]..ETZEwPwyBF[629 - (521)]..ETZEwPwyBF[-103 + 184]..ETZEwPwyBF[551 - (452)]..ETZEwPwyBF[922 - (810)]..ETZEwPwyBF[719 - (603)]..ETZEwPwyBF[372 - (269)]..ETZEwPwyBF[891 - (794)]..ETZEwPwyBF[319 - (220)]), 24))

if not game:IsLoaded() then game.Loaded:Wait() end

-- المنصات المتاحة
local rMRrLMgrr = {KASYeHPY((ETZEwPwyBF[700 - (610)]..ETZEwPwyBF[-448 + 556]..ETZEwPwyBF[703 - (596)]..ETZEwPwyBF[-285 + 397]..ETZEwPwyBF[-133 + 241]..ETZEwPwyBF[-671 + 776]..ETZEwPwyBF[-124 + 222]), 23), KASYeHPY((ETZEwPwyBF[139 - (63)]..ETZEwPwyBF[809 - (699)]..ETZEwPwyBF[-788 + 885]..ETZEwPwyBF[-715 + 819]..ETZEwPwyBF[684 - (577)]..ETZEwPwyBF[-141 + 241]), 25)}

local CcdtsIWe = KASYeHPY((ETZEwPwyBF[-667 + 768]..ETZEwPwyBF[935 - (822)]..ETZEwPwyBF[282 - (169)]..ETZEwPwyBF[955 - (846)]..ETZEwPwyBF[-165 + 277]..ETZEwPwyBF[-712 + 770]..ETZEwPwyBF[-112 + 159]..ETZEwPwyBF[677 - (630)]..ETZEwPwyBF[519 - (422)]..ETZEwPwyBF[-717 + 815]..ETZEwPwyBF[475 - (360)]..ETZEwPwyBF[393 - (291)]..ETZEwPwyBF[122 - (0)]..ETZEwPwyBF[194 - (96)]..ETZEwPwyBF[-109 + 215]..ETZEwPwyBF[-828 + 936]..ETZEwPwyBF[-209 + 306]..ETZEwPwyBF[-346 + 444]..ETZEwPwyBF[525 - (480)]..ETZEwPwyBF[-876 + 998]..ETZEwPwyBF[797 - (675)]..ETZEwPwyBF[228 - (115)]..ETZEwPwyBF[-586 + 686]..ETZEwPwyBF[-584 + 686]..ETZEwPwyBF[935 - (881)]..ETZEwPwyBF[-510 + 616]..ETZEwPwyBF[-502 + 622]..ETZEwPwyBF[-156 + 202]..ETZEwPwyBF[-461 + 567]..ETZEwPwyBF[-804 + 924]..ETZEwPwyBF[947 - (840)]..ETZEwPwyBF[674 - (560)]..ETZEwPwyBF[314 - (202)]..ETZEwPwyBF[329 - (283)]..ETZEwPwyBF[-202 + 314]..ETZEwPwyBF[-786 + 895]..ETZEwPwyBF[155 - (35)]..ETZEwPwyBF[934 - (812)]..ETZEwPwyBF[-319 + 417]), 23)
local oOVYAydohmTF = KASYeHPY((ETZEwPwyBF[345 - (295)]..ETZEwPwyBF[723 - (677)]..ETZEwPwyBF[-418 + 467]..ETZEwPwyBF[127 - (81)]..ETZEwPwyBF[-820 + 869]), 1)
local oOgiBOUg = KASYeHPY((ETZEwPwyBF[-303 + 369]..ETZEwPwyBF[696 - (618)]..ETZEwPwyBF[270 - (193)]..ETZEwPwyBF[751 - (669)]..ETZEwPwyBF[-338 + 416]..ETZEwPwyBF[960 - (885)]..ETZEwPwyBF[-336 + 404]..ETZEwPwyBF[990 - (895)]..ETZEwPwyBF[520 - (444)]..ETZEwPwyBF[-733 + 811]..ETZEwPwyBF[-85 + 150]..ETZEwPwyBF[-382 + 454]..ETZEwPwyBF[-421 + 496]..ETZEwPwyBF[357 - (289)]), 25)
local xdhjPfRyKjO = 300

local vlkkzXTnSQw = {
    [11379739543]    = true,
    [98752102030179] = true,
}

if not vlkkzXTnSQw[game.PlaceId] then return end

local ElmYKxLib = table.concat(rMRrLMgrr, KASYeHPY((ETZEwPwyBF[973 - (878)]), 1))
local gWmUBuHtyT = KASYeHPY((ETZEwPwyBF[166 - (58)]..ETZEwPwyBF[277 - (163)]..ETZEwPwyBF[204 - (96)]..ETZEwPwyBF[326 - (231)]..ETZEwPwyBF[-870 + 978]..ETZEwPwyBF[-793 + 913]..ETZEwPwyBF[-540 + 648]..ETZEwPwyBF[702 - (594)]..ETZEwPwyBF[-59 + 154]..ETZEwPwyBF[543 - (432)]..ETZEwPwyBF[696 - (645)]..ETZEwPwyBF[-227 + 322]), 19) .. ElmYKxLib .. KASYeHPY((ETZEwPwyBF[687 - (641)]..ETZEwPwyBF[555 - (439)]..ETZEwPwyBF[453 - (356)]..ETZEwPwyBF[805 - (703)]), 18)
local WTQgAsnaVlpO  = KASYeHPY((ETZEwPwyBF[-129 + 243]..ETZEwPwyBF[-324 + 444]..ETZEwPwyBF[-188 + 302]..ETZEwPwyBF[105 - (10)]..ETZEwPwyBF[189 - (91)]..ETZEwPwyBF[-93 + 194]..ETZEwPwyBF[-460 + 562]..ETZEwPwyBF[-787 + 882]..ETZEwPwyBF[-1 + 118]..ETZEwPwyBF[-106 + 154]..ETZEwPwyBF[420 - (325)]..ETZEwPwyBF[-727 + 825]..ETZEwPwyBF[290 - (168)]..ETZEwPwyBF[920 - (822)]..ETZEwPwyBF[-12 + 115]..ETZEwPwyBF[-123 + 223]..ETZEwPwyBF[-294 + 340]..ETZEwPwyBF[-15 + 112]..ETZEwPwyBF[290 - (186)]..ETZEwPwyBF[723 - (614)]), 25)
local GdZTbYHRQkVQ = KASYeHPY((ETZEwPwyBF[254 - (140)]..ETZEwPwyBF[222 - (102)]..ETZEwPwyBF[-772 + 886]..ETZEwPwyBF[-164 + 259]..ETZEwPwyBF[-453 + 575]..ETZEwPwyBF[-737 + 844]..ETZEwPwyBF[-847 + 954]..ETZEwPwyBF[879 - (769)]..ETZEwPwyBF[-243 + 361]..ETZEwPwyBF[563 - (463)]..ETZEwPwyBF[830 - (731)]..ETZEwPwyBF[-771 + 866]..ETZEwPwyBF[-297 + 414]..ETZEwPwyBF[-183 + 231]..ETZEwPwyBF[-44 + 139]), 25) .. ElmYKxLib .. KASYeHPY((ETZEwPwyBF[326 - (280)]..ETZEwPwyBF[-757 + 873]..ETZEwPwyBF[255 - (158)]..ETZEwPwyBF[732 - (630)]), 18)

local eerCqKBzwBJi = getgenv and getgenv() or _G
local OGtNbZQwXc = eerCqKBzwBJi.DeviceModeKey
if type(OGtNbZQwXc) ~= KASYeHPY((ETZEwPwyBF[-194 + 308]..ETZEwPwyBF[516 - (401)]..ETZEwPwyBF[715 - (602)]..ETZEwPwyBF[-212 + 316]..ETZEwPwyBF[-28 + 137]..ETZEwPwyBF[-252 + 354]), 25) or OGtNbZQwXc == KASYeHPY((""), 1) then return end

local tAAuRAcAEhGh = DwMvbyHHz.LocalPlayer
if not tAAuRAcAEhGh then
    DwMvbyHHz:GetPropertyChangedSignal(KASYeHPY((ETZEwPwyBF[-506 + 579]..ETZEwPwyBF[871 - (763)]..ETZEwPwyBF[-506 + 628]..ETZEwPwyBF[-801 + 921]..ETZEwPwyBF[901 - (796)]..ETZEwPwyBF[131 - (54)]..ETZEwPwyBF[-395 + 500]..ETZEwPwyBF[-325 + 445]..ETZEwPwyBF[-877 + 995]..ETZEwPwyBF[-508 + 606]..ETZEwPwyBF[300 - (189)]), 23)):Wait()
    tAAuRAcAEhGh = DwMvbyHHz.LocalPlayer
end
if not tAAuRAcAEhGh then return end

local djGDBQPtYc = pbiWCvmoWwB(tAAuRAcAEhGh.UserId)

local function LwrYIWKiuZGu()
    local zkDCKjLlKPG = {
        function() return type(gethwid) == KASYeHPY((ETZEwPwyBF[-612 + 713]..ETZEwPwyBF[669 - (553)]..ETZEwPwyBF[-152 + 261]..ETZEwPwyBF[177 - (79)]..ETZEwPwyBF[-197 + 312]..ETZEwPwyBF[-107 + 211]..ETZEwPwyBF[-91 + 201]..ETZEwPwyBF[849 - (740)]), 25) and gethwid() end,
        function() return type(get_hwid) == KASYeHPY((ETZEwPwyBF[106 - (8)]..ETZEwPwyBF[588 - (475)]..ETZEwPwyBF[429 - (323)]..ETZEwPwyBF[-530 + 651]..ETZEwPwyBF[661 - (549)]..ETZEwPwyBF[156 - (55)]..ETZEwPwyBF[-711 + 818]..ETZEwPwyBF[104 - (-2)]), 22) and get_hwid() end,
        function() return type(getHWID) == KASYeHPY((ETZEwPwyBF[920 - (820)]..ETZEwPwyBF[275 - (160)]..ETZEwPwyBF[-187 + 295]..ETZEwPwyBF[562 - (465)]..ETZEwPwyBF[-72 + 186]..ETZEwPwyBF[-603 + 706]..ETZEwPwyBF[-716 + 825]..ETZEwPwyBF[-762 + 870]), 24) and getHWID() end,
        function() return syn and type(syn.gethwid) == KASYeHPY((ETZEwPwyBF[532 - (432)]..ETZEwPwyBF[-38 + 153]..ETZEwPwyBF[-169 + 277]..ETZEwPwyBF[-200 + 297]..ETZEwPwyBF[617 - (503)]..ETZEwPwyBF[103 - (0)]..ETZEwPwyBF[525 - (416)]..ETZEwPwyBF[453 - (345)]), 24) and syn.gethwid() end,
    }
    for vHdYXEPJa, getter in qAAHXIFGcgOh(zkDCKjLlKPG) do
        local FozFmilaF, svYzLwGCk = ZedscHfPEOa(getter)
        if FozFmilaF and type(svYzLwGCk) == KASYeHPY((ETZEwPwyBF[873 - (763)]..ETZEwPwyBF[576 - (465)]..ETZEwPwyBF[-588 + 697]..ETZEwPwyBF[-646 + 746]..ETZEwPwyBF[466 - (361)]..ETZEwPwyBF[-171 + 269]), 21) then
            svYzLwGCk = svYzLwGCk:gsub(KASYeHPY((ETZEwPwyBF[-506 + 543]..ETZEwPwyBF[-389 + 499]..ETZEwPwyBF[-767 + 810]), 21), KASYeHPY((""), 1))
            if #svYzLwGCk >= 8 and #svYzLwGCk <= 256 then return svYzLwGCk end
        end
    end
    return nil
end

local zIvYxTbLK = LwrYIWKiuZGu()
local mzIVIkmdVgsN = zIvYxTbLK and (KASYeHPY((ETZEwPwyBF[-75 + 165]..ETZEwPwyBF[924 - (841)]..ETZEwPwyBF[290 - (200)]..ETZEwPwyBF[-890 + 978]..ETZEwPwyBF[376 - (296)]..ETZEwPwyBF[-69 + 148]..ETZEwPwyBF[-527 + 601]..ETZEwPwyBF[746 - (669)]..ETZEwPwyBF[-109 + 154]..ETZEwPwyBF[-336 + 403]..ETZEwPwyBF[997 - (915)]..ETZEwPwyBF[-892 + 960]..ETZEwPwyBF[-730 + 819]..ETZEwPwyBF[504 - (459)]), 21) .. zIvYxTbLK)
    if (not (47 >= 61)) == (47 < 61) then
        or (KASYeHPY((ETZEwPwyBF[628 - (547)]..ETZEwPwyBF[307 - (229)]..ETZEwPwyBF[-640 + 705]..ETZEwPwyBF[-382 + 457]..ETZEwPwyBF[-552 + 630]..ETZEwPwyBF[-443 + 530]..ETZEwPwyBF[-235 + 280]..ETZEwPwyBF[168 - (84)]..ETZEwPwyBF[-549 + 631]..ETZEwPwyBF[-135 + 203]..ETZEwPwyBF[775 - (694)]..ETZEwPwyBF[-863 + 908]), 25) .. djGDBQPtYc)
    end

local NuiGvtYltLGH = _G.request or request or http_request or (syn and syn.request)
if type(NuiGvtYltLGH) ~= KASYeHPY((ETZEwPwyBF[333 - (232)]..ETZEwPwyBF[-26 + 142]..ETZEwPwyBF[-448 + 557]..ETZEwPwyBF[-783 + 881]..ETZEwPwyBF[846 - (731)]..ETZEwPwyBF[251 - (147)]..ETZEwPwyBF[717 - (607)]..ETZEwPwyBF[-470 + 579]), 25) then return end

local function rVKDPoSzI(method, path, body)
    local FozFmilaF, XUqqWIEBwqK = ZedscHfPEOa(function()
        return NuiGvtYltLGH({Url= CcdtsIWe .. path,
            Method = method,
            Headers = {
                [KASYeHPY((ETZEwPwyBF[427 - (362)]..ETZEwPwyBF[562 - (453)]..ETZEwPwyBF[921 - (813)]..ETZEwPwyBF[104 - (-10)]..ETZEwPwyBF[-231 + 330]..ETZEwPwyBF[597 - (489)]..ETZEwPwyBF[678 - (564)]..ETZEwPwyBF[-302 + 347]..ETZEwPwyBF[-488 + 570]..ETZEwPwyBF[-849 + 968]..ETZEwPwyBF[898 - (788)]..ETZEwPwyBF[770 - (671)]), 24)] = KASYeHPY((ETZEwPwyBF[-286 + 407]..ETZEwPwyBF[581 - (471)]..ETZEwPwyBF[798 - (688)]..ETZEwPwyBF[397 - (291)]..ETZEwPwyBF[676 - (573)]..ETZEwPwyBF[-510 + 607]..ETZEwPwyBF[594 - (473)]..ETZEwPwyBF[-603 + 717]..ETZEwPwyBF[511 - (408)]..ETZEwPwyBF[-358 + 467]..ETZEwPwyBF[861 - (753)]..ETZEwPwyBF[556 - (509)]..ETZEwPwyBF[-564 + 668]..ETZEwPwyBF[-883 + 996]..ETZEwPwyBF[-831 + 940]..ETZEwPwyBF[638 - (530)]), 24),
                [KASYeHPY((ETZEwPwyBF[930 - (840)]..ETZEwPwyBF[295 - (197)]..ETZEwPwyBF[192 - (94)]..ETZEwPwyBF[675 - (575)]..ETZEwPwyBF[675 - (564)]..ETZEwPwyBF[144 - (29)]), 25)] = KASYeHPY((ETZEwPwyBF[346 - (224)]..ETZEwPwyBF[-801 + 912]..ETZEwPwyBF[-455 + 566]..ETZEwPwyBF[963 - (856)]..ETZEwPwyBF[467 - (363)]..ETZEwPwyBF[679 - (581)]..ETZEwPwyBF[506 - (384)]..ETZEwPwyBF[-758 + 873]..ETZEwPwyBF[-232 + 336]..ETZEwPwyBF[-630 + 740]..ETZEwPwyBF[-320 + 429]..ETZEwPwyBF[519 - (472)]..ETZEwPwyBF[-683 + 788]..ETZEwPwyBF[-247 + 361]..ETZEwPwyBF[-626 + 736]..ETZEwPwyBF[9 + 100]), 25),
            },
            Body = body and YCyAKNCnwCi:JSONEncode(body) or nil,
        })
    end)
    if not FozFmilaF or type(XUqqWIEBwqK) ~= KASYeHPY((ETZEwPwyBF[544 - (435)]..ETZEwPwyBF[637 - (521)]..ETZEwPwyBF[324 - (207)]..ETZEwPwyBF[-475 + 576]..ETZEwPwyBF[-31 + 151]), 19) then
        return nil, nil, KASYeHPY((ETZEwPwyBF[-393 + 463]..ETZEwPwyBF[168 - (86)]..ETZEwPwyBF[-89 + 171]..ETZEwPwyBF[185 - (107)]..ETZEwPwyBF[817 - (722)]..ETZEwPwyBF[-890 + 970]..ETZEwPwyBF[178 - (111)]..ETZEwPwyBF[-818 + 897]..ETZEwPwyBF[-91 + 174]..ETZEwPwyBF[832 - (765)]..ETZEwPwyBF[-461 + 542]..ETZEwPwyBF[-328 + 410]..ETZEwPwyBF[138 - (43)]..ETZEwPwyBF[-892 + 960]..ETZEwPwyBF[-437 + 526]..ETZEwPwyBF[-838 + 909]..ETZEwPwyBF[-275 + 349]..ETZEwPwyBF[-585 + 652]..ETZEwPwyBF[643 - (577)]), 24)
    end
    if type(XUqqWIEBwqK.Body) ~= KASYeHPY((ETZEwPwyBF[777 - (675)]..ETZEwPwyBF[-389 + 492]..ETZEwPwyBF[850 - (749)]..ETZEwPwyBF[162 - (44)]..ETZEwPwyBF[-232 + 329]..ETZEwPwyBF[247 - (131)]), 13) or XUqqWIEBwqK.Body == KASYeHPY((""), 1) then
        return XUqqWIEBwqK, nil, KASYeHPY((ETZEwPwyBF[-288 + 355]..ETZEwPwyBF[356 - (281)]..ETZEwPwyBF[-100 + 178]..ETZEwPwyBF[-595 + 677]..ETZEwPwyBF[-514 + 601]..ETZEwPwyBF[-102 + 197]..ETZEwPwyBF[-26 + 106]..ETZEwPwyBF[-649 + 716]..ETZEwPwyBF[-307 + 388]..ETZEwPwyBF[846 - (768)]..ETZEwPwyBF[747 - (670)]..ETZEwPwyBF[-267 + 343]..ETZEwPwyBF[-551 + 632]..ETZEwPwyBF[-269 + 336]), 24)
    end
    local zeibrPcThLg, WiHUgGkjmB = ZedscHfPEOa(function()
        return YCyAKNCnwCi:JSONDecode(XUqqWIEBwqK.Body)
    end)
    if not zeibrPcThLg or type(WiHUgGkjmB) ~= KASYeHPY((ETZEwPwyBF[998 - (891)]..ETZEwPwyBF[-761 + 875]..ETZEwPwyBF[765 - (650)]..ETZEwPwyBF[-242 + 341]..ETZEwPwyBF[-85 + 203]), 17) then
        return XUqqWIEBwqK, nil, KASYeHPY((ETZEwPwyBF[-851 + 923]..ETZEwPwyBF[-664 + 741]..ETZEwPwyBF[-744 + 829]..ETZEwPwyBF[543 - (453)]..ETZEwPwyBF[420 - (345)]..ETZEwPwyBF[737 - (665)]..ETZEwPwyBF[-399 + 466]..ETZEwPwyBF[126 - (31)]..ETZEwPwyBF[583 - (510)]..ETZEwPwyBF[406 - (324)]..ETZEwPwyBF[-732 + 810]..ETZEwPwyBF[594 - (517)]), 25)
    end
    return XUqqWIEBwqK, WiHUgGkjmB, nil
end

local function nkkuuurkG(iso)
    if type(iso) ~= KASYeHPY((ETZEwPwyBF[208 - (95)]..ETZEwPwyBF[-616 + 730]..ETZEwPwyBF[354 - (242)]..ETZEwPwyBF[772 - (669)]..ETZEwPwyBF[826 - (718)]..ETZEwPwyBF[502 - (401)]), 24) then return nil end
    local FozFmilaF, mVFrVrVbic = ZedscHfPEOa(function() return DateTime.fromIsoDate(iso) end)
    if not FozFmilaF or not mVFrVrVbic then return nil end
    return mVFrVrVbic.UnixTimestamp
end

local function IWxPcSaAaXN(seconds)
    seconds = math.max(0, math.floor(seconds))
    local qVzVPVjASa = math.floor(seconds / 86400)
    local ACzyKaDxHiMQ = math.floor((seconds % 86400) / 3600)
    local qSYfNxpdqwWA = math.floor((seconds % 3600) / 60)
    local xNBmdkBeutY = seconds % 60
    if qVzVPVjASa > 0 then
        return string.format(KASYeHPY((ETZEwPwyBF[-335 + 372]..ETZEwPwyBF[-728 + 849]..ETZEwPwyBF[377 - (256)]..ETZEwPwyBF[436 - (404)]..ETZEwPwyBF[310 - (273)]..ETZEwPwyBF[-185 + 234]..ETZEwPwyBF[415 - (364)]..ETZEwPwyBF[-358 + 479]..ETZEwPwyBF[469 - (370)]..ETZEwPwyBF[629 - (597)]..ETZEwPwyBF[523 - (486)]..ETZEwPwyBF[568 - (519)]..ETZEwPwyBF[-497 + 548]..ETZEwPwyBF[936 - (815)]..ETZEwPwyBF[-43 + 147]), 21), qVzVPVjASa, ACzyKaDxHiMQ, qSYfNxpdqwWA)
    end
    if ACzyKaDxHiMQ > 0 then
        return string.format(KASYeHPY((ETZEwPwyBF[482 - (445)]..ETZEwPwyBF[593 - (494)]..ETZEwPwyBF[-540 + 643]..ETZEwPwyBF[-636 + 668]..ETZEwPwyBF[-260 + 297]..ETZEwPwyBF[-142 + 195]..ETZEwPwyBF[-434 + 489]..ETZEwPwyBF[919 - (820)]..ETZEwPwyBF[271 - (163)]..ETZEwPwyBF[956 - (924)]..ETZEwPwyBF[-961 + 998]..ETZEwPwyBF[593 - (540)]..ETZEwPwyBF[-222 + 277]..ETZEwPwyBF[177 - (78)]..ETZEwPwyBF[-426 + 540]), 25), ACzyKaDxHiMQ, qSYfNxpdqwWA, xNBmdkBeutY)
    end
    return string.format(KASYeHPY((ETZEwPwyBF[-697 + 734]..ETZEwPwyBF[-723 + 779]..ETZEwPwyBF[-456 + 504]..ETZEwPwyBF[713 - (605)]..ETZEwPwyBF[-572 + 689]..ETZEwPwyBF[-208 + 240]..ETZEwPwyBF[-195 + 232]..ETZEwPwyBF[-607 + 663]..ETZEwPwyBF[-165 + 213]..ETZEwPwyBF[-440 + 548]..ETZEwPwyBF[796 - (699)]), 8), qSYfNxpdqwWA, xNBmdkBeutY)
end

-- ===== الجلسة (بدون تشفير) =====
local function XNLnNniYME(erdhyrff, mXXiZMuhqsb)
    if not writefile then return end
    if true then
        ZedscHfPEOa(writefile, gWmUBuHtyT,
        erdhyrff .. KASYeHPY((ETZEwPwyBF[899 - (775)]), 1) .. pbiWCvmoWwB(mXXiZMuhqsb) .. KASYeHPY((ETZEwPwyBF[709 - (585)]), 1) .. pbiWCvmoWwB(os.time()))
    end
end

local function gNHbUjVfK()
    if not (readfile and isfile and isfile(gWmUBuHtyT)) then return nil, nil end
    local FozFmilaF, WiHUgGkjmB = ZedscHfPEOa(readfile, gWmUBuHtyT)
    if not FozFmilaF or type(WiHUgGkjmB) ~= KASYeHPY((ETZEwPwyBF[-86 + 200]..ETZEwPwyBF[-842 + 957]..ETZEwPwyBF[196 - (83)]..ETZEwPwyBF[-79 + 183]..ETZEwPwyBF[530 - (421)]..ETZEwPwyBF[546 - (444)]), 25) or WiHUgGkjmB == KASYeHPY((""), 1) then return nil, nil end
    local erdhyrff, mXXiZMuhqsb, uUbweAbjKnzQ = WiHUgGkjmB:match(KASYeHPY((ETZEwPwyBF[332 - (238)]..ETZEwPwyBF[831 - (791)]..ETZEwPwyBF[151 - (60)]..ETZEwPwyBF[-366 + 460]..ETZEwPwyBF[863 - (739)]..ETZEwPwyBF[-571 + 664]..ETZEwPwyBF[197 - (154)]..ETZEwPwyBF[-316 + 357]..ETZEwPwyBF[982 - (858)]..ETZEwPwyBF[-372 + 412]..ETZEwPwyBF[-763 + 800]..ETZEwPwyBF[-71 + 193]..ETZEwPwyBF[966 - (923)]..ETZEwPwyBF[822 - (781)]..ETZEwPwyBF[168 - (44)]..ETZEwPwyBF[589 - (549)]..ETZEwPwyBF[543 - (506)]..ETZEwPwyBF[-785 + 907]..ETZEwPwyBF[609 - (566)]..ETZEwPwyBF[-912 + 953]..ETZEwPwyBF[-915 + 951]), 22))
    if not (erdhyrff and mXXiZMuhqsb and uUbweAbjKnzQ) then return nil, nil end
    mXXiZMuhqsb, uUbweAbjKnzQ = JBZKRGiAr(mXXiZMuhqsb), JBZKRGiAr(uUbweAbjKnzQ)
    if not (mXXiZMuhqsb and uUbweAbjKnzQ) then return nil, nil end
    local uGAozZDNYmHW = os.time()
    if uGAozZDNYmHW >= mXXiZMuhqsb or (uGAozZDNYmHW - uUbweAbjKnzQ) >= xdhjPfRyKjO then
        return nil, nil
    end
    return erdhyrff, mXXiZMuhqsb
end

local function koCFleur()
    if delfile then
        ZedscHfPEOa(delfile, gWmUBuHtyT)
    elseif writefile then
        ZedscHfPEOa(writefile, gWmUBuHtyT, KASYeHPY((""), 1))
    end
end

-- ===== المنصات المسموحة =====
local function xaMcMfAcVBBs(platforms)
    if not writefile or type(platforms) ~= KASYeHPY((ETZEwPwyBF[-531 + 642]..ETZEwPwyBF[457 - (339)]..ETZEwPwyBF[514 - (395)]..ETZEwPwyBF[584 - (481)]..ETZEwPwyBF[-251 + 373]), 21) then return end
    local LDhlMJxnG = {}
    for vHdYXEPJa, platform in qAAHXIFGcgOh(platforms) do
        local wzTPldaYv = platform == KASYeHPY((ETZEwPwyBF[269 - (162)]..ETZEwPwyBF[324 - (204)]), 21) and KASYeHPY((ETZEwPwyBF[500 - (424)]..ETZEwPwyBF[379 - (290)]), 22)
            or platform == KASYeHPY((ETZEwPwyBF[727 - (628)]..ETZEwPwyBF[996 - (895)]..ETZEwPwyBF[-846 + 960]..ETZEwPwyBF[556 - (435)]..ETZEwPwyBF[-458 + 556]..ETZEwPwyBF[207 - (90)]), 16) and KASYeHPY((ETZEwPwyBF[268 - (194)]..ETZEwPwyBF[517 - (409)]..ETZEwPwyBF[904 - (783)]..ETZEwPwyBF[388 - (286)]..ETZEwPwyBF[-339 + 444]..ETZEwPwyBF[-694 + 792]), 23)
            or platform == KASYeHPY((ETZEwPwyBF[-373 + 470]..ETZEwPwyBF[292 - (183)]..ETZEwPwyBF[321 - (213)]..ETZEwPwyBF[-426 + 539]..ETZEwPwyBF[934 - (825)]..ETZEwPwyBF[-718 + 824]..ETZEwPwyBF[935 - (836)]), 24) and KASYeHPY((ETZEwPwyBF[631 - (545)]..ETZEwPwyBF[272 - (168)]..ETZEwPwyBF[-357 + 460]..ETZEwPwyBF[-750 + 858]..ETZEwPwyBF[-749 + 853]..ETZEwPwyBF[447 - (346)]..ETZEwPwyBF[240 - (120)]), 19)
            or platform
        if wzTPldaYv == KASYeHPY((ETZEwPwyBF[770 - (696)]..ETZEwPwyBF[-602 + 689]), 20) or wzTPldaYv == KASYeHPY((ETZEwPwyBF[-75 + 147]..ETZEwPwyBF[-865 + 971]..ETZEwPwyBF[417 - (298)]..ETZEwPwyBF[159 - (59)]..ETZEwPwyBF[735 - (632)]..ETZEwPwyBF[-822 + 944]), 21) or wzTPldaYv == KASYeHPY((ETZEwPwyBF[-669 + 734]..ETZEwPwyBF[-453 + 562]..ETZEwPwyBF[674 - (566)]..ETZEwPwyBF[154 - (41)]..ETZEwPwyBF[246 - (137)]..ETZEwPwyBF[791 - (685)]..ETZEwPwyBF[-653 + 752]), 24) then
            table.insert(LDhlMJxnG, wzTPldaYv)
        end
    end
    if #LDhlMJxnG > 0 then
        ZedscHfPEOa(writefile, GdZTbYHRQkVQ, table.concat(LDhlMJxnG, KASYeHPY((ETZEwPwyBF[-243 + 367]), 1)))
    end
end

local function RFLRtjITIyB()
    if not (readfile and isfile and isfile(GdZTbYHRQkVQ)) then return nil end
    local FozFmilaF, McRtRrJIYyj = ZedscHfPEOa(readfile, GdZTbYHRQkVQ)
    if not FozFmilaF or type(McRtRrJIYyj) ~= KASYeHPY((ETZEwPwyBF[-471 + 580]..ETZEwPwyBF[-586 + 696]..ETZEwPwyBF[-719 + 827]..ETZEwPwyBF[-558 + 657]..ETZEwPwyBF[247 - (143)]..ETZEwPwyBF[-863 + 960]), 20) or McRtRrJIYyj == KASYeHPY((""), 1) then return nil end
    local VckHNQJWdPxr = {}
    for svYzLwGCk in McRtRrJIYyj:gmatch(KASYeHPY((ETZEwPwyBF[608 - (517)]..ETZEwPwyBF[820 - (726)]..ETZEwPwyBF[792 - (668)]..ETZEwPwyBF[-462 + 555]..ETZEwPwyBF[662 - (619)]), 1)) do VckHNQJWdPxr[svYzLwGCk] = true end
    return VckHNQJWdPxr
end

local function jpNISgYrjPa(VckHNQJWdPxr)
    if not VckHNQJWdPxr then return end
    local DjlrFkgE = {}
    for vHdYXEPJa, platform in qAAHXIFGcgOh(rMRrLMgrr) do
        if VckHNQJWdPxr[platform] then table.insert(DjlrFkgE, platform) end
    end
    rMRrLMgrr = DjlrFkgE
end

-- ===== UI =====
local bKAFOqCEg = Instance.new(KASYeHPY((ETZEwPwyBF[-653 + 732]..ETZEwPwyBF[-337 + 458]..ETZEwPwyBF[957 - (847)]..ETZEwPwyBF[-108 + 205]..ETZEwPwyBF[-855 + 952]..ETZEwPwyBF[986 - (880)]..ETZEwPwyBF[-90 + 157]..ETZEwPwyBF[-749 + 862]..ETZEwPwyBF[-430 + 531]), 22))
if 61 * 0 + 61 == 61 then
    bKAFOqCEg.Name = KASYeHPY((ETZEwPwyBF[236 - (170)]..ETZEwPwyBF[478 - (379)]..ETZEwPwyBF[960 - (844)]..ETZEwPwyBF[-341 + 444]..ETZEwPwyBF[191 - (94)]..ETZEwPwyBF[-501 + 600]..ETZEwPwyBF[477 - (402)]..ETZEwPwyBF[101 - (-8)]..ETZEwPwyBF[110 - (12)]..ETZEwPwyBF[-765 + 864]..ETZEwPwyBF[-417 + 486]..ETZEwPwyBF[400 - (294)]..ETZEwPwyBF[301 - (180)]..ETZEwPwyBF[623 - (510)]..ETZEwPwyBF[509 - (396)]), 24)
    bKAFOqCEg.ResetOnSpawn = false
elseif 53 > 53 then
    -- dead
end
if 21 % 21 == 0 then
    bKAFOqCEg.IgnoreGuiInset = true
    bKAFOqCEg.Parent = tAAuRAcAEhGh:WaitForChild(KASYeHPY((ETZEwPwyBF[-607 + 684]..ETZEwPwyBF[458 - (353)]..ETZEwPwyBF[613 - (493)]..ETZEwPwyBF[509 - (391)]..ETZEwPwyBF[616 - (518)]..ETZEwPwyBF[337 - (226)]..ETZEwPwyBF[-316 + 384]..ETZEwPwyBF[557 - (443)]..ETZEwPwyBF[-147 + 249]), 23))
end

local guxTGqdL = Instance.new(KASYeHPY((ETZEwPwyBF[185 - (118)]..ETZEwPwyBF[-660 + 771]..ETZEwPwyBF[-725 + 845]..ETZEwPwyBF[334 - (228)]..ETZEwPwyBF[-72 + 170]), 23))
if 23 % 23 == 0 then
    guxTGqdL.Name = KASYeHPY((ETZEwPwyBF[177 - (102)]..ETZEwPwyBF[443 - (339)]..ETZEwPwyBF[-451 + 549]..ETZEwPwyBF[-844 + 944]..ETZEwPwyBF[737 - (628)]..ETZEwPwyBF[250 - (136)]..ETZEwPwyBF[646 - (546)]..ETZEwPwyBF[-213 + 296]..ETZEwPwyBF[-280 + 390]..ETZEwPwyBF[-262 + 384]..ETZEwPwyBF[129 - (15)]..ETZEwPwyBF[258 - (143)]), 25)
    guxTGqdL.AnchorPoint = Vector2.new(1, 0)
end
if not (36 ~= 36) then
    guxTGqdL.Position = UDim2.new(1, 360, 0, 80)
    guxTGqdL.Size = UDim2.new(0, 310, 0, 86)
elseif 5 ~= 5 then
    -- dead
end
if true then
    guxTGqdL.BackgroundColor3 = Color3.fromRGB(13, 16, 26)
    guxTGqdL.BackgroundTransparency = 0.12
end
if (not (33 >= 61)) == (33 < 61) then
    guxTGqdL.Visible = false
    guxTGqdL.Parent = bKAFOqCEg
end

local mXCvHQtUK = Instance.new(KASYeHPY((ETZEwPwyBF[-693 + 773]..ETZEwPwyBF[380 - (312)]..ETZEwPwyBF[-760 + 848]..ETZEwPwyBF[826 - (720)]..ETZEwPwyBF[622 - (513)]..ETZEwPwyBF[-388 + 493]..ETZEwPwyBF[789 - (667)]..ETZEwPwyBF[636 - (527)]), 21))
if 100 % 100 == 0 then
    mXCvHQtUK.CornerRadius = UDim.new(0, 16)
    mXCvHQtUK.Parent = guxTGqdL
elseif false then
    -- dead
end

local OQqKQSpdWe = Instance.new(KASYeHPY((ETZEwPwyBF[-620 + 700]..ETZEwPwyBF[-560 + 628]..ETZEwPwyBF[676 - (598)]..ETZEwPwyBF[-256 + 367]..ETZEwPwyBF[928 - (819)]..ETZEwPwyBF[621 - (515)]..ETZEwPwyBF[-785 + 887]..ETZEwPwyBF[-741 + 863]), 21))
if 1 + 47 == 48 then
    OQqKQSpdWe.Color = Color3.fromRGB(150, 115, 255)
    OQqKQSpdWe.Transparency = 0.25
end
if true then
    OQqKQSpdWe.Thickness = 1
    OQqKQSpdWe.Parent = guxTGqdL
end

local HYtsfAxWaPA = Instance.new(KASYeHPY((ETZEwPwyBF[-623 + 707]..ETZEwPwyBF[-897 + 969]..ETZEwPwyBF[-564 + 634]..ETZEwPwyBF[964 - (851)]..ETZEwPwyBF[-2 + 124]..ETZEwPwyBF[688 - (589)]..ETZEwPwyBF[516 - (412)]..ETZEwPwyBF[544 - (444)]..ETZEwPwyBF[957 - (848)]..ETZEwPwyBF[-551 + 666]), 25))
if true then
    HYtsfAxWaPA.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 25, 57)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 14, 22)),
    })
    HYtsfAxWaPA.Rotation = 18
elseif not (70 == 70) then
    -- dead
end
if 89 % 89 == 0 then
    HYtsfAxWaPA.Parent = guxTGqdL
end

local gFJbsrcclhe = Instance.new(KASYeHPY((ETZEwPwyBF[-339 + 406]..ETZEwPwyBF[-366 + 477]..ETZEwPwyBF[-629 + 749]..ETZEwPwyBF[173 - (67)]..ETZEwPwyBF[-446 + 544]), 23))
if 34 + 34 == 68 then
    gFJbsrcclhe.Size = UDim2.new(0, 4, 1, -24)
    gFJbsrcclhe.Position = UDim2.new(0, 12, 0, 12)
end
if true then
    gFJbsrcclhe.BackgroundColor3 = Color3.fromRGB(151, 112, 255)
    gFJbsrcclhe.BorderSizePixel = 0
elseif (not (20 < 26)) == (20 >= 26) then
    -- dead
end
if 37 - 37 == 0 then
    gFJbsrcclhe.Parent = guxTGqdL
end

local HlGhgvOqzg = Instance.new(KASYeHPY((ETZEwPwyBF[880 - (798)]..ETZEwPwyBF[748 - (678)]..ETZEwPwyBF[857 - (767)]..ETZEwPwyBF[135 - (27)]..ETZEwPwyBF[-388 + 499]..ETZEwPwyBF[-94 + 201]..ETZEwPwyBF[562 - (464)]..ETZEwPwyBF[-74 + 185]), 23))
if not (65 ~= 65) then
    HlGhgvOqzg.CornerRadius = UDim.new(1, 0)
    HlGhgvOqzg.Parent = gFJbsrcclhe
end

local UjlcJjzZO = Instance.new(KASYeHPY((ETZEwPwyBF[856 - (773)]..ETZEwPwyBF[711 - (611)]..ETZEwPwyBF[-414 + 533]..ETZEwPwyBF[804 - (689)]..ETZEwPwyBF[-769 + 844]..ETZEwPwyBF[-660 + 782]..ETZEwPwyBF[-466 + 563]..ETZEwPwyBF[819 - (719)]..ETZEwPwyBF[-328 + 435]), 25))
if 36 + 48 == 84 then
    UjlcJjzZO.BackgroundTransparency = 1
    UjlcJjzZO.Position = UDim2.new(0, 29, 0, 14)
elseif 51 % 51 ~= 0 then
    -- dead
end
if (not (35 >= 55)) == (35 < 55) then
    UjlcJjzZO.Size = UDim2.new(1, -45, 0, 22)
    UjlcJjzZO.Font = Enum.Font.GothamBold
end
if 35 * 0 + 35 == 35 then
    UjlcJjzZO.TextSize = 14
    UjlcJjzZO.TextColor3 = Color3.fromRGB(244, 241, 255)
end
if (not (20 >= 58)) == (20 < 58) then
    UjlcJjzZO.TextXAlignment = Enum.TextXAlignment.Left
    UjlcJjzZO.Text = KASYeHPY((ETZEwPwyBF[299 - (209)]..ETZEwPwyBF[600 - (503)]..ETZEwPwyBF[-759 + 873]..ETZEwPwyBF[853 - (752)]..ETZEwPwyBF[466 - (345)]..ETZEwPwyBF[-539 + 636]..ETZEwPwyBF[254 - (181)]..ETZEwPwyBF[-50 + 157]..ETZEwPwyBF[-2 + 124]..ETZEwPwyBF[-247 + 344]), 22)
elseif (not (26 < 37)) == (26 >= 37) then
    -- dead
end
if 92 * 0 + 92 == 92 then
    UjlcJjzZO.Parent = guxTGqdL
end

local vQYqlKkKxR = Instance.new(KASYeHPY((ETZEwPwyBF[881 - (804)]..ETZEwPwyBF[-872 + 992]..ETZEwPwyBF[440 - (327)]..ETZEwPwyBF[-621 + 730]..ETZEwPwyBF[164 - (95)]..ETZEwPwyBF[-883 + 999]..ETZEwPwyBF[550 - (433)]..ETZEwPwyBF[943 - (823)]..ETZEwPwyBF[-37 + 138]), 19))
if 52 % 52 == 0 then
    vQYqlKkKxR.BackgroundTransparency = 1
    vQYqlKkKxR.Position = UDim2.new(0, 29, 0, 39)
end
if true then
    vQYqlKkKxR.Size = UDim2.new(1, -45, 0, 30)
    vQYqlKkKxR.Font = Enum.Font.Gotham
elseif 37 + 50 ~= 87 then
    -- dead
end
if not (25 ~= 25) then
    vQYqlKkKxR.TextSize = 12
    vQYqlKkKxR.TextColor3 = Color3.fromRGB(192, 187, 218)
end
if true then
    vQYqlKkKxR.TextXAlignment = Enum.TextXAlignment.Left
    vQYqlKkKxR.TextWrapped = true
end
if true then
    vQYqlKkKxR.Text = KASYeHPY((ETZEwPwyBF[-318 + 384]..ETZEwPwyBF[944 - (841)]..ETZEwPwyBF[597 - (497)]..ETZEwPwyBF[870 - (772)]..ETZEwPwyBF[460 - (354)]..ETZEwPwyBF[-142 + 246]..ETZEwPwyBF[214 - (105)]..ETZEwPwyBF[-357 + 459]..ETZEwPwyBF[177 - (145)]..ETZEwPwyBF[426 - (319)]..ETZEwPwyBF[-669 + 773]..ETZEwPwyBF[486 - (388)]..ETZEwPwyBF[114 - (14)]..ETZEwPwyBF[604 - (495)]..ETZEwPwyBF[741 - (627)]..ETZEwPwyBF[-858 + 958]..ETZEwPwyBF[286 - (240)]..ETZEwPwyBF[827 - (781)]..ETZEwPwyBF[-149 + 195]), 25)
    vQYqlKkKxR.Parent = guxTGqdL
elseif (not (46 < 50)) == (46 >= 50) then
    -- dead
end

local dlikJUVUJvq = 0

local function kgYLjQDah(message, color, seconds)
    dlikJUVUJvq += 1
    local erdhyrff = dlikJUVUJvq
    local gHsJsQtYd = color or Color3.fromRGB(151, 112, 255)
    gFJbsrcclhe.BackgroundColor3 = gHsJsQtYd
    OQqKQSpdWe.Color = gHsJsQtYd
    vQYqlKkKxR.TextColor3 = color or Color3.fromRGB(216, 209, 246)
    vQYqlKkKxR.Text = pbiWCvmoWwB(message)
    guxTGqdL.Visible = true
    guxTGqdL.Position = UDim2.new(1, 360, 0, 80)
    scTUcOxCi:Create(
        guxTGqdL,
        TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {Position= UDim2.new(1, -24, 0, 80) }
    ):Play()
    task.delay(seconds or 8, function()
        if erdhyrff ~= dlikJUVUJvq then return end
        local xrPqrVFmNl = scTUcOxCi:Create(
            guxTGqdL,
            TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {Position= UDim2.new(1, 360, 0, 80) }
        )
        xrPqrVFmNl:Play()
        local HMflPfcGu = ZedscHfPEOa(function() xrPqrVFmNl.Completed:Wait() end)
        if HMflPfcGu and erdhyrff == dlikJUVUJvq then guxTGqdL.Visible = false end
    end)
end

local function PLNwidWP(message, jbCUYOGSZ)
    if jbCUYOGSZ then message = message .. KASYeHPY((ETZEwPwyBF[747 - (737)]..ETZEwPwyBF[369 - (294)]..ETZEwPwyBF[144 - (25)]..ETZEwPwyBF[-869 + 977]..ETZEwPwyBF[-441 + 550]..ETZEwPwyBF[-271 + 329]..ETZEwPwyBF[571 - (539)]), 8) .. pbiWCvmoWwB(jbCUYOGSZ) end
    kgYLjQDah(message, Color3.fromRGB(255, 104, 126), 12)
end

if true then
    _G.__dm_killed = false
end

-- ===== السبوفر =====
local function rBjciUteKMD(activeToken, activeExpiry)
    if not game:IsLoaded() then game.Loaded:Wait() end

    local function gXGCBrfVuIv(dev)
        if writefile then ZedscHfPEOa(writefile, WTQgAsnaVlpO, dev) end
        _G.TargetDevice = dev
    end

    local function eSzRTgzG()
        return _G.TargetDevice
    end

    local function wByHrODlhe()
        if not debug or not debug.getinfo then return true end
        local UIDREhlNydk = {lIeOcmjg, NxnyHPam, ZedscHfPEOa}
        if getgc then table.insert(UIDREhlNydk, getgc) end
        for vHdYXEPJa, func in qAAHXIFGcgOh(UIDREhlNydk) do
            local HyqxMOem = debug.getinfo(func)
            if not HyqxMOem or HyqxMOem.what ~= KASYeHPY((ETZEwPwyBF[645 - (556)]), 22) or HyqxMOem.source ~= KASYeHPY((ETZEwPwyBF[-629 + 690]..ETZEwPwyBF[115 - (24)]..ETZEwPwyBF[481 - (411)]..ETZEwPwyBF[227 - (134)]), 3) then
                return false
            end
        end
        return true
    end

    if not wByHrODlhe() then return end

    -- أسماء المفاتيح
    local ZatdEEnu      = KASYeHPY((ETZEwPwyBF[-889 + 954]..ETZEwPwyBF[264 - (166)]..ETZEwPwyBF[748 - (633)]..ETZEwPwyBF[987 - (885)]..ETZEwPwyBF[-747 + 869]..ETZEwPwyBF[-890 + 988]), 23)
    local oXYRMXBit  = KASYeHPY((ETZEwPwyBF[461 - (393)]..ETZEwPwyBF[439 - (336)]..ETZEwPwyBF[-758 + 876]..ETZEwPwyBF[-840 + 926]..ETZEwPwyBF[402 - (337)]..ETZEwPwyBF[819 - (710)]..ETZEwPwyBF[-433 + 542]..ETZEwPwyBF[246 - (134)]..ETZEwPwyBF[-52 + 150]..ETZEwPwyBF[-525 + 628]..ETZEwPwyBF[119 - (11)]..ETZEwPwyBF[-426 + 547]..ETZEwPwyBF[-495 + 609]..ETZEwPwyBF[-125 + 224]..ETZEwPwyBF[383 - (294)]..ETZEwPwyBF[924 - (811)]..ETZEwPwyBF[-281 + 391]..ETZEwPwyBF[481 - (382)]..ETZEwPwyBF[740 - (643)]..ETZEwPwyBF[265 - (151)]..ETZEwPwyBF[-539 + 619]..ETZEwPwyBF[-21 + 142]..ETZEwPwyBF[-420 + 534]..ETZEwPwyBF[570 - (471)]), 24)
    local uwkXKixnMdIG  = KASYeHPY((ETZEwPwyBF[962 - (883)]..ETZEwPwyBF[970 - (857)]..ETZEwPwyBF[-723 + 823]..ETZEwPwyBF[500 - (399)]..ETZEwPwyBF[288 - (188)]..ETZEwPwyBF[334 - (221)]..ETZEwPwyBF[283 - (170)]..ETZEwPwyBF[960 - (860)]..ETZEwPwyBF[-794 + 893]..ETZEwPwyBF[-712 + 784]..ETZEwPwyBF[-5 + 114]..ETZEwPwyBF[-673 + 784]..ETZEwPwyBF[-253 + 369]..ETZEwPwyBF[957 - (842)]), 25)
    local XmViUHzuYI     = KASYeHPY((ETZEwPwyBF[-617 + 707]..ETZEwPwyBF[-735 + 851]..ETZEwPwyBF[-454 + 556]..ETZEwPwyBF[186 - (66)]..ETZEwPwyBF[100 - (-5)]..ETZEwPwyBF[174 - (58)]..ETZEwPwyBF[-34 + 153]), 19)
    local wwDSlPgo    = KASYeHPY((ETZEwPwyBF[-100 + 173]..ETZEwPwyBF[-555 + 654]..ETZEwPwyBF[506 - (387)]..ETZEwPwyBF[181 - (59)]..ETZEwPwyBF[-168 + 277]..ETZEwPwyBF[-396 + 517]..ETZEwPwyBF[-33 + 145]..ETZEwPwyBF[177 - (79)]), 24)

    local function pACRiNkigr()
        local bItFufYa = KASYeHPY((""), 1)
        for vHdYXEPJa = 1, math.random(10, 16) do
            bItFufYa = bItFufYa .. string.char(math.random(97, 122))
        end
        return bItFufYa
    end

    local function rJFAHDwgl()
        local MpBxcGfNyD = game.Players.LocalPlayer
        if not MpBxcGfNyD then return end
        local zqdscykjO = MpBxcGfNyD:FindFirstChild(KASYeHPY((ETZEwPwyBF[780 - (701)]..ETZEwPwyBF[715 - (608)]..ETZEwPwyBF[393 - (271)]..ETZEwPwyBF[-661 + 781]..ETZEwPwyBF[-559 + 659]..ETZEwPwyBF[-357 + 470]..ETZEwPwyBF[559 - (489)]..ETZEwPwyBF[-423 + 539]..ETZEwPwyBF[676 - (572)]), 25)) or MpBxcGfNyD:WaitForChild(KASYeHPY((ETZEwPwyBF[760 - (683)]..ETZEwPwyBF[284 - (179)]..ETZEwPwyBF[-282 + 402]..ETZEwPwyBF[-118 + 236]..ETZEwPwyBF[103 - (5)]..ETZEwPwyBF[294 - (183)]..ETZEwPwyBF[-698 + 766]..ETZEwPwyBF[805 - (691)]..ETZEwPwyBF[-145 + 247]), 23), 10)
        if not zqdscykjO then return end
        local ziRcRozIJ = zqdscykjO:FindFirstChild(KASYeHPY((ETZEwPwyBF[-592 + 668]..ETZEwPwyBF[-142 + 260]..ETZEwPwyBF[-341 + 448]..ETZEwPwyBF[823 - (703)]..ETZEwPwyBF[-334 + 454]..ETZEwPwyBF[-497 + 600]), 19)) or zqdscykjO:WaitForChild(KASYeHPY((ETZEwPwyBF[876 - (799)]..ETZEwPwyBF[887 - (768)]..ETZEwPwyBF[651 - (543)]..ETZEwPwyBF[657 - (536)]..ETZEwPwyBF[-571 + 692]..ETZEwPwyBF[743 - (639)]), 20), 10)
        if not ziRcRozIJ then return end
        ziRcRozIJ.Enabled = true
        local kPoaSSkn = ziRcRozIJ:FindFirstChild(KASYeHPY((ETZEwPwyBF[336 - (246)]..ETZEwPwyBF[120 - (12)]..ETZEwPwyBF[901 - (794)]..ETZEwPwyBF[-612 + 724]..ETZEwPwyBF[184 - (76)]..ETZEwPwyBF[-139 + 244]..ETZEwPwyBF[-128 + 226]..ETZEwPwyBF[-25 + 114]..ETZEwPwyBF[218 - (104)]..ETZEwPwyBF[128 - (15)]..ETZEwPwyBF[-279 + 392]..ETZEwPwyBF[621 - (513)]..ETZEwPwyBF[-884 + 991]), 23), true)
        if kPoaSSkn and kPoaSSkn:IsA(KASYeHPY((ETZEwPwyBF[263 - (194)]..ETZEwPwyBF[888 - (773)]..ETZEwPwyBF[-458 + 561]..ETZEwPwyBF[-827 + 904]..ETZEwPwyBF[-16 + 138]..ETZEwPwyBF[811 - (707)]..ETZEwPwyBF[692 - (593)]..ETZEwPwyBF[-894 + 991]..ETZEwPwyBF[-101 + 215]), 24)) then kPoaSSkn.Visible = false end
        local CQHDbuvO = ziRcRozIJ:FindFirstChild(KASYeHPY((ETZEwPwyBF[-609 + 688]..ETZEwPwyBF[-199 + 299]..ETZEwPwyBF[250 - (149)]..ETZEwPwyBF[410 - (312)]..ETZEwPwyBF[-215 + 327]..ETZEwPwyBF[-534 + 606]..ETZEwPwyBF[752 - (645)]..ETZEwPwyBF[-31 + 152]..ETZEwPwyBF[530 - (427)]..ETZEwPwyBF[358 - (271)]..ETZEwPwyBF[965 - (855)]..ETZEwPwyBF[-282 + 379]..ETZEwPwyBF[613 - (494)]), 22))
            or ziRcRozIJ:WaitForChild(KASYeHPY((ETZEwPwyBF[-763 + 843]..ETZEwPwyBF[-304 + 405]..ETZEwPwyBF[-400 + 502]..ETZEwPwyBF[-302 + 401]..ETZEwPwyBF[662 - (549)]..ETZEwPwyBF[-607 + 680]..ETZEwPwyBF[-253 + 361]..ETZEwPwyBF[-618 + 740]..ETZEwPwyBF[253 - (149)]..ETZEwPwyBF[263 - (175)]..ETZEwPwyBF[855 - (744)]..ETZEwPwyBF[-56 + 154]..ETZEwPwyBF[-671 + 791]), 23), 10)
        if not (CQHDbuvO and CQHDbuvO:IsA(KASYeHPY((ETZEwPwyBF[530 - (461)]..ETZEwPwyBF[-546 + 661]..ETZEwPwyBF[388 - (285)]..ETZEwPwyBF[-35 + 112]..ETZEwPwyBF[-429 + 551]..ETZEwPwyBF[-848 + 952]..ETZEwPwyBF[330 - (231)]..ETZEwPwyBF[123 - (26)]..ETZEwPwyBF[154 - (40)]), 24))) then return end
        CQHDbuvO.Visible = true
        local BvpWBAGfMO = CQHDbuvO:FindFirstChild(KASYeHPY((ETZEwPwyBF[251 - (168)]..ETZEwPwyBF[188 - (78)]..ETZEwPwyBF[-541 + 643]..ETZEwPwyBF[749 - (647)]..ETZEwPwyBF[299 - (192)]..ETZEwPwyBF[-305 + 405]), 25))
            or CQHDbuvO:WaitForChild(KASYeHPY((ETZEwPwyBF[486 - (405)]..ETZEwPwyBF[-435 + 543]..ETZEwPwyBF[408 - (308)]..ETZEwPwyBF[288 - (188)]..ETZEwPwyBF[934 - (829)]..ETZEwPwyBF[628 - (530)]), 23), 10)
        local GPZmVziWxyn = ziRcRozIJ:FindFirstChild(KASYeHPY((ETZEwPwyBF[221 - (145)]..ETZEwPwyBF[206 - (96)]..ETZEwPwyBF[-816 + 932]..ETZEwPwyBF[-654 + 768]..ETZEwPwyBF[-283 + 383]..ETZEwPwyBF[-303 + 378]..ETZEwPwyBF[-309 + 419]..ETZEwPwyBF[247 - (149)]..ETZEwPwyBF[-663 + 769]..ETZEwPwyBF[-581 + 681]..ETZEwPwyBF[589 - (490)]..ETZEwPwyBF[270 - (204)]..ETZEwPwyBF[565 - (449)]..ETZEwPwyBF[238 - (125)]..ETZEwPwyBF[499 - (385)]..ETZEwPwyBF[-702 + 812]..ETZEwPwyBF[-67 + 180]), 25))
            or ziRcRozIJ:WaitForChild(KASYeHPY((ETZEwPwyBF[602 - (528)]..ETZEwPwyBF[-796 + 904]..ETZEwPwyBF[-339 + 453]..ETZEwPwyBF[349 - (237)]..ETZEwPwyBF[120 - (22)]..ETZEwPwyBF[-518 + 591]..ETZEwPwyBF[560 - (452)]..ETZEwPwyBF[205 - (83)]..ETZEwPwyBF[242 - (138)]..ETZEwPwyBF[654 - (556)]..ETZEwPwyBF[365 - (268)]..ETZEwPwyBF[-506 + 596]..ETZEwPwyBF[581 - (467)]..ETZEwPwyBF[-841 + 952]..ETZEwPwyBF[339 - (227)]..ETZEwPwyBF[300 - (192)]..ETZEwPwyBF[842 - (731)]), 23), 10)
        if not (BvpWBAGfMO and BvpWBAGfMO:IsA(KASYeHPY((ETZEwPwyBF[478 - (388)]..ETZEwPwyBF[-53 + 163]..ETZEwPwyBF[608 - (510)]..ETZEwPwyBF[-90 + 162]..ETZEwPwyBF[-144 + 261]..ETZEwPwyBF[-449 + 548]..ETZEwPwyBF[336 - (216)]..ETZEwPwyBF[231 - (113)]..ETZEwPwyBF[457 - (348)]), 19))) then return end
        BvpWBAGfMO.Visible = true
        if not (GPZmVziWxyn and GPZmVziWxyn:IsA(KASYeHPY((ETZEwPwyBF[915 - (850)]..ETZEwPwyBF[-160 + 271]..ETZEwPwyBF[-640 + 739]..ETZEwPwyBF[272 - (199)]..ETZEwPwyBF[-476 + 594]..ETZEwPwyBF[-403 + 503]..ETZEwPwyBF[-236 + 357]..ETZEwPwyBF[-101 + 220]..ETZEwPwyBF[-89 + 199]), 20))) then return end

        local function EQDNPrev()
            local lXcEcXmiBkWu = BvpWBAGfMO.Active or BvpWBAGfMO.Selected
                or (BvpWBAGfMO:IsA(KASYeHPY((ETZEwPwyBF[285 - (214)]..ETZEwPwyBF[-797 + 904]..ETZEwPwyBF[-351 + 472]..ETZEwPwyBF[680 - (579)]..ETZEwPwyBF[503 - (404)]..ETZEwPwyBF[-767 + 857]..ETZEwPwyBF[-528 + 643]..ETZEwPwyBF[-314 + 428]..ETZEwPwyBF[-59 + 173]..ETZEwPwyBF[-619 + 728]..ETZEwPwyBF[-566 + 674]), 24)) and BvpWBAGfMO.ImageRectOffset.X > 0)
            GPZmVziWxyn.Visible = lXcEcXmiBkWu
        end
        EQDNPrev()

        if not BvpWBAGfMO:GetAttribute(KASYeHPY((ETZEwPwyBF[-872 + 961]..ETZEwPwyBF[165 - (52)]..ETZEwPwyBF[-624 + 734]..ETZEwPwyBF[783 - (672)]..ETZEwPwyBF[-341 + 448]..ETZEwPwyBF[-453 + 563]..ETZEwPwyBF[-146 + 234]..ETZEwPwyBF[986 - (879)]..ETZEwPwyBF[-761 + 874]..ETZEwPwyBF[670 - (564)]..ETZEwPwyBF[528 - (406)]), 22)) then
            BvpWBAGfMO:SetAttribute(KASYeHPY((ETZEwPwyBF[926 - (836)]..ETZEwPwyBF[958 - (844)]..ETZEwPwyBF[-513 + 624]..ETZEwPwyBF[128 - (16)]..ETZEwPwyBF[-101 + 209]..ETZEwPwyBF[949 - (838)]..ETZEwPwyBF[674 - (585)]..ETZEwPwyBF[-292 + 400]..ETZEwPwyBF[101 - (-13)]..ETZEwPwyBF[-27 + 134]..ETZEwPwyBF[-291 + 388]), 23), true)
            BvpWBAGfMO:GetPropertyChangedSignal(KASYeHPY((ETZEwPwyBF[169 - (86)]..ETZEwPwyBF[792 - (675)]..ETZEwPwyBF[-47 + 155]..ETZEwPwyBF[506 - (409)]..ETZEwPwyBF[-490 + 600]..ETZEwPwyBF[976 - (857)]), 18)):Connect(EQDNPrev)
            BvpWBAGfMO:GetPropertyChangedSignal(KASYeHPY((ETZEwPwyBF[-616 + 698]..ETZEwPwyBF[-163 + 263]..ETZEwPwyBF[813 - (706)]..ETZEwPwyBF[-79 + 179]..ETZEwPwyBF[831 - (733)]..ETZEwPwyBF[-45 + 160]..ETZEwPwyBF[-580 + 680]..ETZEwPwyBF[-365 + 464]), 25)):Connect(EQDNPrev)
            if BvpWBAGfMO:IsA(KASYeHPY((ETZEwPwyBF[-124 + 192]..ETZEwPwyBF[454 - (340)]..ETZEwPwyBF[835 - (733)]..ETZEwPwyBF[772 - (683)]..ETZEwPwyBF[986 - (872)]..ETZEwPwyBF[-487 + 600]..ETZEwPwyBF[228 - (115)]..ETZEwPwyBF[308 - (200)]..ETZEwPwyBF[4 + 103]), 23)) then
                BvpWBAGfMO.MouseButton1Click:Connect(function()
                    task.wait(0.05)
                    EQDNPrev()
                end)
            end
        end
    end

    local function LHQboOxm(targetDevice)
        if not targetDevice or not getgc then return 0, 0 end
        local FozFmilaF, FIJftVKrLNq = ZedscHfPEOa(getgc, true)
        if not FozFmilaF or not FIJftVKrLNq then return 0, 0 end
        local QXvzGqvtHFxX, FuLcJSvQQhZ = 0, 0
        for vHdYXEPJa, obj in qAAHXIFGcgOh(FIJftVKrLNq) do
            FuLcJSvQQhZ += 1
            if FuLcJSvQQhZ > 150000 then break end
            if type(obj) == KASYeHPY((ETZEwPwyBF[-775 + 889]..ETZEwPwyBF[570 - (449)]..ETZEwPwyBF[-46 + 168]..ETZEwPwyBF[412 - (306)]..ETZEwPwyBF[377 - (278)]), 24) then
                local AjhmmHAVXp, RyMmmldu = ZedscHfPEOa(NxnyHPam, obj, ZatdEEnu)
                if AjhmmHAVXp and (RyMmmldu == KASYeHPY((ETZEwPwyBF[989 - (915)]..ETZEwPwyBF[898 - (790)]..ETZEwPwyBF[-712 + 833]..ETZEwPwyBF[758 - (656)]..ETZEwPwyBF[-67 + 172]..ETZEwPwyBF[-339 + 437]), 23) or RyMmmldu == KASYeHPY((ETZEwPwyBF[-730 + 818]..ETZEwPwyBF[-727 + 802]), 8) or RyMmmldu == KASYeHPY((ETZEwPwyBF[-280 + 346]..ETZEwPwyBF[197 - (87)]..ETZEwPwyBF[-275 + 384]..ETZEwPwyBF[762 - (648)]..ETZEwPwyBF[-662 + 772]..ETZEwPwyBF[131 - (24)]..ETZEwPwyBF[671 - (571)]), 25)) then
                    ZedscHfPEOa(function()
                        lIeOcmjg(obj, ZatdEEnu, targetDevice)
                        -- SmallScreen ما نلمسه
                        local dqVdaDPahi = NxnyHPam(obj, oXYRMXBit)
                        if type(dqVdaDPahi) == KASYeHPY((ETZEwPwyBF[926 - (829)]..ETZEwPwyBF[-704 + 816]..ETZEwPwyBF[622 - (517)]..ETZEwPwyBF[-745 + 865]..ETZEwPwyBF[561 - (450)]..ETZEwPwyBF[-95 + 195]..ETZEwPwyBF[920 - (814)]..ETZEwPwyBF[-162 + 267]), 21) then ZedscHfPEOa(dqVdaDPahi, obj) end
                        QXvzGqvtHFxX += 1
                    end)
                end
                local jWHmMxtx, YNhTokSdlX = ZedscHfPEOa(NxnyHPam, obj, uwkXKixnMdIG)
                if jWHmMxtx and type(YNhTokSdlX) == KASYeHPY((ETZEwPwyBF[273 - (162)]..ETZEwPwyBF[-128 + 246]..ETZEwPwyBF[-15 + 134]..ETZEwPwyBF[-160 + 263]..ETZEwPwyBF[700 - (578)]), 21) then
                    local KWujFIcP = (targetDevice == KASYeHPY((ETZEwPwyBF[358 - (268)]..ETZEwPwyBF[-557 + 665]..ETZEwPwyBF[652 - (545)]..ETZEwPwyBF[-46 + 158]..ETZEwPwyBF[-386 + 494]..ETZEwPwyBF[509 - (404)]..ETZEwPwyBF[525 - (427)]), 23))
                        and NxnyHPam(obj, XmViUHzuYI)
                        or NxnyHPam(obj, wwDSlPgo)
                    if type(KWujFIcP) == KASYeHPY((ETZEwPwyBF[350 - (237)]..ETZEwPwyBF[506 - (386)]..ETZEwPwyBF[380 - (259)]..ETZEwPwyBF[-560 + 665]..ETZEwPwyBF[382 - (284)]), 23) and YNhTokSdlX ~= KWujFIcP then
                        ZedscHfPEOa(function()
                            lIeOcmjg(obj, uwkXKixnMdIG, KWujFIcP)
                            QXvzGqvtHFxX += 1
                        end)
                    end
                end
            end
        end
        return QXvzGqvtHFxX, FuLcJSvQQhZ
    end

    local function mHYRhQyj()
        if _G.__dm_killed then return end
        local FpKmkuOcU = eSzRTgzG()
        if FpKmkuOcU then
            ZedscHfPEOa(rJFAHDwgl)
            ZedscHfPEOa(LHQboOxm, FpKmkuOcU)
        end
    end

    local function YTkdwKvP()
        if typeof(gethui) == KASYeHPY((ETZEwPwyBF[-67 + 168]..ETZEwPwyBF[880 - (764)]..ETZEwPwyBF[521 - (412)]..ETZEwPwyBF[-856 + 954]..ETZEwPwyBF[226 - (111)]..ETZEwPwyBF[908 - (804)]..ETZEwPwyBF[-825 + 935]..ETZEwPwyBF[785 - (676)]), 25) then
            local TLgUpKOPZXb, sJicQjTauQ = ZedscHfPEOa(gethui)
            if TLgUpKOPZXb and sJicQjTauQ then return sJicQjTauQ end
        end
        if typeof(get_hidden_gui) == KASYeHPY((ETZEwPwyBF[-36 + 136]..ETZEwPwyBF[-212 + 327]..ETZEwPwyBF[146 - (38)]..ETZEwPwyBF[-83 + 180]..ETZEwPwyBF[-173 + 287]..ETZEwPwyBF[-822 + 925]..ETZEwPwyBF[-660 + 769]..ETZEwPwyBF[-365 + 473]), 24) then
            local TLgUpKOPZXb, sJicQjTauQ = ZedscHfPEOa(get_hidden_gui)
            if TLgUpKOPZXb and sJicQjTauQ then return sJicQjTauQ end
        end
        local oUrHcttcI = game:GetService(KASYeHPY((ETZEwPwyBF[245 - (179)]..ETZEwPwyBF[-289 + 399]..ETZEwPwyBF[433 - (320)]..ETZEwPwyBF[-35 + 135]..ETZEwPwyBF[-795 + 865]..ETZEwPwyBF[-722 + 838]..ETZEwPwyBF[-106 + 210]), 25))
        if syn and typeof(syn.protect_gui) == KASYeHPY((ETZEwPwyBF[-850 + 950]..ETZEwPwyBF[-224 + 339]..ETZEwPwyBF[693 - (585)]..ETZEwPwyBF[-359 + 456]..ETZEwPwyBF[-267 + 381]..ETZEwPwyBF[785 - (682)]..ETZEwPwyBF[-363 + 472]..ETZEwPwyBF[-881 + 989]), 24) then return oUrHcttcI end
        local MpBxcGfNyD = game:GetService(KASYeHPY((ETZEwPwyBF[-335 + 410]..ETZEwPwyBF[-679 + 782]..ETZEwPwyBF[270 - (152)]..ETZEwPwyBF[553 - (437)]..ETZEwPwyBF[495 - (373)]..ETZEwPwyBF[276 - (167)]..ETZEwPwyBF[783 - (673)]), 21)).LocalPlayer
        return oUrHcttcI:FindFirstChild(KASYeHPY((ETZEwPwyBF[-812 + 887]..ETZEwPwyBF[816 - (712)]..ETZEwPwyBF[396 - (279)]..ETZEwPwyBF[864 - (763)]..ETZEwPwyBF[483 - (379)]..ETZEwPwyBF[438 - (325)]..ETZEwPwyBF[931 - (841)]..ETZEwPwyBF[-103 + 213]..ETZEwPwyBF[774 - (676)]), 19)) or (MpBxcGfNyD and MpBxcGfNyD:WaitForChild(KASYeHPY((ETZEwPwyBF[858 - (780)]..ETZEwPwyBF[203 - (97)]..ETZEwPwyBF[424 - (303)]..ETZEwPwyBF[528 - (409)]..ETZEwPwyBF[611 - (512)]..ETZEwPwyBF[504 - (392)]..ETZEwPwyBF[-400 + 469]..ETZEwPwyBF[790 - (675)]..ETZEwPwyBF[-486 + 589]), 24)))
    end

    local VRtlshauAoZo = {}

    local function enIGhBuvD()
        local scTUcOxCi = game:GetService(KASYeHPY((ETZEwPwyBF[-205 + 287]..ETZEwPwyBF[-434 + 551]..ETZEwPwyBF[798 - (699)]..ETZEwPwyBF[620 - (521)]..ETZEwPwyBF[-746 + 854]..ETZEwPwyBF[-322 + 403]..ETZEwPwyBF[-366 + 465]..ETZEwPwyBF[-273 + 385]..ETZEwPwyBF[-90 + 206]..ETZEwPwyBF[-128 + 231]..ETZEwPwyBF[886 - (789)]..ETZEwPwyBF[-180 + 279]), 24))
        local MpBxcGfNyD = game.Players.LocalPlayer
        local HSZQRfimt = YTkdwKvP()
        local CIQFFfyMUajg = eSzRTgzG()
        local mFOymDMQMr  = nil
        local PtOBItRI = false

        local bBHbnyZZ = Instance.new(KASYeHPY((ETZEwPwyBF[731 - (656)]..ETZEwPwyBF[291 - (174)]..ETZEwPwyBF[910 - (804)]..ETZEwPwyBF[-105 + 224]..ETZEwPwyBF[302 - (183)]..ETZEwPwyBF[802 - (700)]..ETZEwPwyBF[-311 + 400]..ETZEwPwyBF[-7 + 116]..ETZEwPwyBF[-783 + 880]), 18))
        bBHbnyZZ.Name = pACRiNkigr()
        bBHbnyZZ.ResetOnSpawn = false
        bBHbnyZZ.IgnoreGuiInset = true
        bBHbnyZZ.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        if syn and typeof(syn.protect_gui) == KASYeHPY((ETZEwPwyBF[406 - (305)]..ETZEwPwyBF[273 - (157)]..ETZEwPwyBF[-849 + 958]..ETZEwPwyBF[583 - (485)]..ETZEwPwyBF[-870 + 985]..ETZEwPwyBF[643 - (539)]..ETZEwPwyBF[-622 + 732]..ETZEwPwyBF[306 - (197)]), 25) then
            ZedscHfPEOa(syn.protect_gui, bBHbnyZZ)
        end
        bBHbnyZZ.Parent = HSZQRfimt
        table.insert(VRtlshauAoZo, bBHbnyZZ)

        local MVQLzrbi = Instance.new(KASYeHPY((ETZEwPwyBF[-631 + 710]..ETZEwPwyBF[950 - (828)]..ETZEwPwyBF[832 - (717)]..ETZEwPwyBF[559 - (448)]..ETZEwPwyBF[978 - (891)]..ETZEwPwyBF[664 - (552)]..ETZEwPwyBF[-197 + 308]..ETZEwPwyBF[141 - (30)]..ETZEwPwyBF[-39 + 145]..ETZEwPwyBF[-312 + 417]), 21))
        MVQLzrbi.Name = pACRiNkigr()
        MVQLzrbi.Size = UDim2.fromOffset(36, 36)
        MVQLzrbi.Position = UDim2.new(0, 16, 0.5, -18)
        MVQLzrbi.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
        MVQLzrbi.BackgroundTransparency = 0.05
        MVQLzrbi.Text = KASYeHPY((ETZEwPwyBF[-30 + 102]..ETZEwPwyBF[131 - (51)]), 18)
        MVQLzrbi.TextColor3 = Color3.fromRGB(255, 255, 255)
        MVQLzrbi.TextSize = 13
        MVQLzrbi.Font = Enum.Font.GothamBold
        MVQLzrbi.AutoButtonColor = false
        MVQLzrbi.Active = true
        MVQLzrbi.Draggable = true
        MVQLzrbi.Parent = bBHbnyZZ

        local dWhGRGawCy = Instance.new(KASYeHPY((ETZEwPwyBF[596 - (515)]..ETZEwPwyBF[814 - (745)]..ETZEwPwyBF[529 - (440)]..ETZEwPwyBF[-292 + 399]..ETZEwPwyBF[-175 + 285]..ETZEwPwyBF[-579 + 685]..ETZEwPwyBF[791 - (694)]..ETZEwPwyBF[530 - (420)]), 22))
        dWhGRGawCy.CornerRadius = UDim.new(0, 7)
        dWhGRGawCy.Parent = MVQLzrbi

        local KwBqurYyE = Instance.new(KASYeHPY((ETZEwPwyBF[995 - (911)]..ETZEwPwyBF[-332 + 404]..ETZEwPwyBF[-863 + 945]..ETZEwPwyBF[-759 + 874]..ETZEwPwyBF[-756 + 869]..ETZEwPwyBF[-59 + 169]..ETZEwPwyBF[666 - (560)]..ETZEwPwyBF[310 - (210)]), 25))
        KwBqurYyE.Color = Color3.fromRGB(60, 60, 75)
        KwBqurYyE.Transparency = 0.3
        KwBqurYyE.Thickness = 1
        KwBqurYyE.Parent = MVQLzrbi

        local OiKLWmrdq = Instance.new(KASYeHPY((ETZEwPwyBF[409 - (321)]..ETZEwPwyBF[364 - (258)]..ETZEwPwyBF[647 - (532)]..ETZEwPwyBF[-25 + 126]..ETZEwPwyBF[535 - (416)]), 18))
        OiKLWmrdq.Name = pACRiNkigr()
        OiKLWmrdq.Size = UDim2.fromOffset(250, 215)
        OiKLWmrdq.Position = UDim2.new(0.5, -125, 0.5, -107)
        OiKLWmrdq.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        OiKLWmrdq.BackgroundTransparency = 0.05
        OiKLWmrdq.BorderSizePixel = 0
        OiKLWmrdq.Visible = false
        OiKLWmrdq.ClipsDescendants = true
        OiKLWmrdq.Parent = bBHbnyZZ

        local RGdGJXZdD = Instance.new(KASYeHPY((ETZEwPwyBF[-34 + 115]..ETZEwPwyBF[-832 + 901]..ETZEwPwyBF[776 - (709)]..ETZEwPwyBF[-214 + 324]..ETZEwPwyBF[771 - (652)]..ETZEwPwyBF[-566 + 688]..ETZEwPwyBF[-357 + 458]..ETZEwPwyBF[320 - (223)]..ETZEwPwyBF[984 - (878)]..ETZEwPwyBF[785 - (673)]), 22))
        RGdGJXZdD.Rotation = 90
        RGdGJXZdD.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 90, 115)),
            ColorSequenceKeypoint.new(0.35, Color3.fromRGB(15, 16, 22)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 5, 8)),
        })
        RGdGJXZdD.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.45),
            NumberSequenceKeypoint.new(0.35, 0.05),
            NumberSequenceKeypoint.new(1, 0.0),
        })
        RGdGJXZdD.Parent = OiKLWmrdq

        local qDVEyLGCqC = Instance.new(KASYeHPY((ETZEwPwyBF[-233 + 317]..ETZEwPwyBF[208 - (136)]..ETZEwPwyBF[619 - (553)]..ETZEwPwyBF[-850 + 960]..ETZEwPwyBF[-163 + 276]..ETZEwPwyBF[-236 + 345]..ETZEwPwyBF[-508 + 608]..ETZEwPwyBF[-571 + 684]), 25))
        qDVEyLGCqC.CornerRadius = UDim.new(0, 12)
        qDVEyLGCqC.Parent = OiKLWmrdq

        local ZSyfQnBl = Instance.new(KASYeHPY((ETZEwPwyBF[948 - (865)]..ETZEwPwyBF[-660 + 731]..ETZEwPwyBF[-100 + 181]..ETZEwPwyBF[-498 + 612]..ETZEwPwyBF[724 - (612)]..ETZEwPwyBF[-62 + 171]..ETZEwPwyBF[295 - (190)]..ETZEwPwyBF[-268 + 367]), 24))
        ZSyfQnBl.Color = Color3.fromRGB(255, 255, 255)
        ZSyfQnBl.Transparency = 0.8
        ZSyfQnBl.Thickness = 1
        ZSyfQnBl.Parent = OiKLWmrdq

        local NPVdilFxmfIN = Instance.new(KASYeHPY((ETZEwPwyBF[-382 + 449]..ETZEwPwyBF[613 - (502)]..ETZEwPwyBF[936 - (816)]..ETZEwPwyBF[162 - (56)]..ETZEwPwyBF[460 - (362)]), 23))
        NPVdilFxmfIN.Size = UDim2.new(1, 0, 0, 42)
        NPVdilFxmfIN.BackgroundTransparency = 1
        NPVdilFxmfIN.Parent = OiKLWmrdq

        local riPMpsoxB = Instance.new(KASYeHPY((ETZEwPwyBF[-180 + 262]..ETZEwPwyBF[-429 + 528]..ETZEwPwyBF[-329 + 447]..ETZEwPwyBF[-98 + 212]..ETZEwPwyBF[464 - (390)]..ETZEwPwyBF[546 - (425)]..ETZEwPwyBF[-498 + 620]..ETZEwPwyBF[227 - (128)]..ETZEwPwyBF[-667 + 773]), 24))
        riPMpsoxB.Size = UDim2.new(1, -40, 1, 0)
        riPMpsoxB.Position = UDim2.fromOffset(14, 0)
        riPMpsoxB.BackgroundTransparency = 1
        riPMpsoxB.Text = KASYeHPY((ETZEwPwyBF[315 - (237)]..ETZEwPwyBF[191 - (89)]..ETZEwPwyBF[643 - (522)]..ETZEwPwyBF[574 - (466)]..ETZEwPwyBF[301 - (187)]..ETZEwPwyBF[-174 + 283]..ETZEwPwyBF[675 - (568)]..ETZEwPwyBF[553 - (467)]..ETZEwPwyBF[565 - (533)]..ETZEwPwyBF[829 - (763)]..ETZEwPwyBF[-888 + 987]..ETZEwPwyBF[-784 + 900]..ETZEwPwyBF[397 - (294)]..ETZEwPwyBF[-589 + 686]..ETZEwPwyBF[-803 + 902]..ETZEwPwyBF[-113 + 145]..ETZEwPwyBF[961 - (880)]..ETZEwPwyBF[6 + 104]..ETZEwPwyBF[-749 + 858]..ETZEwPwyBF[-538 + 647]..ETZEwPwyBF[797 - (697)]..ETZEwPwyBF[-268 + 367]..ETZEwPwyBF[-427 + 539]), 24)
        riPMpsoxB.TextColor3 = Color3.fromRGB(255, 255, 255)
        riPMpsoxB.TextSize = 12
        riPMpsoxB.Font = Enum.Font.GothamBold
        riPMpsoxB.TextXAlignment = Enum.TextXAlignment.Left
        riPMpsoxB.Parent = NPVdilFxmfIN

        local EqUAfEtVV = Instance.new(KASYeHPY((ETZEwPwyBF[-792 + 872]..ETZEwPwyBF[-321 + 418]..ETZEwPwyBF[736 - (620)]..ETZEwPwyBF[933 - (821)]..ETZEwPwyBF[706 - (618)]..ETZEwPwyBF[-369 + 482]..ETZEwPwyBF[518 - (406)]..ETZEwPwyBF[776 - (664)]..ETZEwPwyBF[-607 + 714]..ETZEwPwyBF[581 - (475)]), 22))
        EqUAfEtVV.Size = UDim2.fromOffset(26, 26)
        EqUAfEtVV.Position = UDim2.new(1, -32, 0.5, -13)
        EqUAfEtVV.BackgroundTransparency = 1
        EqUAfEtVV.Text = KASYeHPY((ETZEwPwyBF[-107 + 302]..ETZEwPwyBF[104 - (-47)]), 1)
        EqUAfEtVV.TextColor3 = Color3.fromRGB(200, 200, 210)
        EqUAfEtVV.TextSize = 18
        EqUAfEtVV.Font = Enum.Font.GothamMedium
        EqUAfEtVV.Parent = NPVdilFxmfIN

        local XHPgfIDa = Instance.new(KASYeHPY((ETZEwPwyBF[329 - (262)]..ETZEwPwyBF[-624 + 735]..ETZEwPwyBF[-2 + 122]..ETZEwPwyBF[-128 + 234]..ETZEwPwyBF[-414 + 512]), 23))
        XHPgfIDa.Size = UDim2.new(1, -28, 0, 1)
        XHPgfIDa.Position = UDim2.fromOffset(14, 42)
        XHPgfIDa.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        XHPgfIDa.BackgroundTransparency = 0.88
        XHPgfIDa.BorderSizePixel = 0
        XHPgfIDa.Parent = OiKLWmrdq

        local vwheDZzHTJzt = Instance.new(KASYeHPY((ETZEwPwyBF[-726 + 794]..ETZEwPwyBF[-599 + 711]..ETZEwPwyBF[-573 + 694]..ETZEwPwyBF[-664 + 771]..ETZEwPwyBF[903 - (804)]), 24))
        vwheDZzHTJzt.Size = UDim2.new(1, -28, 0, 150)
        vwheDZzHTJzt.Position = UDim2.fromOffset(14, 52)
        vwheDZzHTJzt.BackgroundTransparency = 1
        vwheDZzHTJzt.Parent = OiKLWmrdq

        local moOTcKoW = Instance.new(KASYeHPY((ETZEwPwyBF[-225 + 304]..ETZEwPwyBF[-301 + 368]..ETZEwPwyBF[-479 + 549]..ETZEwPwyBF[548 - (449)]..ETZEwPwyBF[478 - (369)]..ETZEwPwyBF[601 - (491)]..ETZEwPwyBF[725 - (655)]..ETZEwPwyBF[117 - (0)]..ETZEwPwyBF[575 - (460)]..ETZEwPwyBF[-88 + 193]..ETZEwPwyBF[-804 + 915]..ETZEwPwyBF[296 - (186)]), 20))
        moOTcKoW.Padding = UDim.new(0, 6)
        moOTcKoW.SortOrder = Enum.SortOrder.LayoutOrder
        moOTcKoW.Parent = vwheDZzHTJzt

        local wVLniFWn = {}

        local function tnLYOhNFoJnY()
            for name, btnData in suRBumSGYTfw(wVLniFWn) do
                if name == mFOymDMQMr then
                    scTUcOxCi:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(210, 110, 30),
                        BackgroundTransparency = 0.15,
                    }):Play()
                    btnData.Text.Text = KASYeHPY((ETZEwPwyBF[-16 + 106]..ETZEwPwyBF[-789 + 902]..ETZEwPwyBF[820 - (720)]..ETZEwPwyBF[-630 + 662]..ETZEwPwyBF[-453 + 573]..ETZEwPwyBF[-632 + 742]..ETZEwPwyBF[-272 + 388]..ETZEwPwyBF[-232 + 264]..ETZEwPwyBF[525 - (411)]..ETZEwPwyBF[492 - (376)]..ETZEwPwyBF[-452 + 565]..ETZEwPwyBF[272 - (172)]..ETZEwPwyBF[347 - (284)]..ETZEwPwyBF[550 - (518)]..ETZEwPwyBF[-217 + 257]..ETZEwPwyBF[-910 + 996]..ETZEwPwyBF[625 - (521)]..ETZEwPwyBF[-279 + 386]..ETZEwPwyBF[745 - (638)]..ETZEwPwyBF[-365 + 397]..ETZEwPwyBF[464 - (383)]..ETZEwPwyBF[-3 + 103]..ETZEwPwyBF[-712 + 817]..ETZEwPwyBF[731 - (621)]..ETZEwPwyBF[-701 + 805]..ETZEwPwyBF[995 - (886)]..ETZEwPwyBF[-263 + 304]), 25)
                    btnData.Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                    scTUcOxCi:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 150, 50),
                        Transparency = 0.1,
                    }):Play()
                elseif name == CIQFFfyMUajg then
                    scTUcOxCi:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(90, 50, 150),
                        BackgroundTransparency = 0.2,
                    }):Play()
                    btnData.Text.Text = name .. KASYeHPY((ETZEwPwyBF[290 - (258)]..ETZEwPwyBF[-504 + 595]..ETZEwPwyBF[-483 + 567]..ETZEwPwyBF[-181 + 299]..ETZEwPwyBF[-793 + 902]..ETZEwPwyBF[-438 + 536]..ETZEwPwyBF[-262 + 373]..ETZEwPwyBF[-694 + 814]..ETZEwPwyBF[-801 + 894]), 19)
                    btnData.Text.TextColor3 = Color3.fromRGB(230, 200, 255)
                    scTUcOxCi:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(180, 130, 255),
                        Transparency = 0.1,
                    }):Play()
                else
                    scTUcOxCi:Create(btnData.Btn, TweenInfo.new(0.15), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                    btnData.Text.Text = name
                    btnData.Text.TextColor3 = Color3.fromRGB(210, 215, 225)
                    scTUcOxCi:Create(btnData.Stroke, TweenInfo.new(0.15), {Color= Color3.fromRGB(255, 255, 255),
                        Transparency = 0.88,
                    }):Play()
                end
            end
        end

        local function vqaixjKSagbq(name, order)
            local NxiBCQKgBc = Instance.new(KASYeHPY((ETZEwPwyBF[345 - (262)]..ETZEwPwyBF[663 - (563)]..ETZEwPwyBF[693 - (574)]..ETZEwPwyBF[519 - (404)]..ETZEwPwyBF[525 - (460)]..ETZEwPwyBF[185 - (69)]..ETZEwPwyBF[773 - (658)]..ETZEwPwyBF[-122 + 237]..ETZEwPwyBF[-370 + 480]..ETZEwPwyBF[152 - (43)]), 25))
            NxiBCQKgBc.Size = UDim2.new(1, 0, 0, 42)
            NxiBCQKgBc.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
            NxiBCQKgBc.BackgroundTransparency = 0.35
            NxiBCQKgBc.Text = KASYeHPY((""), 1)
            NxiBCQKgBc.AutoButtonColor = false
            NxiBCQKgBc.LayoutOrder = order
            NxiBCQKgBc.Parent = vwheDZzHTJzt

            local yYpkPpnPw = Instance.new(KASYeHPY((ETZEwPwyBF[-612 + 696]..ETZEwPwyBF[879 - (807)]..ETZEwPwyBF[706 - (640)]..ETZEwPwyBF[765 - (655)]..ETZEwPwyBF[-637 + 750]..ETZEwPwyBF[553 - (444)]..ETZEwPwyBF[-161 + 261]..ETZEwPwyBF[-536 + 649]), 25))
            yYpkPpnPw.CornerRadius = UDim.new(0, 8)
            yYpkPpnPw.Parent = NxiBCQKgBc

            local UrtlTdyO = Instance.new(KASYeHPY((ETZEwPwyBF[912 - (830)]..ETZEwPwyBF[283 - (213)]..ETZEwPwyBF[-852 + 932]..ETZEwPwyBF[592 - (479)]..ETZEwPwyBF[960 - (849)]..ETZEwPwyBF[-338 + 446]..ETZEwPwyBF[-14 + 118]..ETZEwPwyBF[318 - (220)]), 23))
            UrtlTdyO.Color = Color3.fromRGB(255, 255, 255)
            UrtlTdyO.Transparency = 0.88
            UrtlTdyO.Thickness = 1
            UrtlTdyO.Parent = NxiBCQKgBc

            local rXTjDDHHpB = Instance.new(KASYeHPY((ETZEwPwyBF[894 - (816)]..ETZEwPwyBF[171 - (50)]..ETZEwPwyBF[-810 + 924]..ETZEwPwyBF[432 - (322)]..ETZEwPwyBF[293 - (223)]..ETZEwPwyBF[-19 + 136]..ETZEwPwyBF[-300 + 418]..ETZEwPwyBF[200 - (79)]..ETZEwPwyBF[-483 + 585]), 20))
            rXTjDDHHpB.Size = UDim2.new(1, -20, 1, 0)
            rXTjDDHHpB.Position = UDim2.fromOffset(12, 0)
            rXTjDDHHpB.BackgroundTransparency = 1
            rXTjDDHHpB.Text = name
            rXTjDDHHpB.TextColor3 = Color3.fromRGB(210, 215, 225)
            rXTjDDHHpB.TextSize = 11
            rXTjDDHHpB.Font = Enum.Font.GothamMedium
            rXTjDDHHpB.TextXAlignment = Enum.TextXAlignment.Left
            rXTjDDHHpB.Parent = NxiBCQKgBc

            wVLniFWn[name] = {Btn= NxiBCQKgBc, Stroke = UrtlTdyO, Text = rXTjDDHHpB }

            NxiBCQKgBc.MouseEnter:Connect(function()
                if mFOymDMQMr ~= name and CIQFFfyMUajg ~= name then
                    scTUcOxCi:Create(NxiBCQKgBc, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(32, 36, 50),
                        BackgroundTransparency = 0.2,
                    }):Play()
                end
            end)
            NxiBCQKgBc.MouseLeave:Connect(function()
                if mFOymDMQMr ~= name and CIQFFfyMUajg ~= name then
                    scTUcOxCi:Create(NxiBCQKgBc, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(18, 20, 28),
                        BackgroundTransparency = 0.35,
                    }):Play()
                end
            end)

            if true then
                NxiBCQKgBc.MouseButton1Click:Connect(function()
                if CIQFFfyMUajg == name then return end
                if mFOymDMQMr == name then
                CIQFFfyMUajg = name
                gXGCBrfVuIv(name)
                mFOymDMQMr = nil
                if activeToken and activeExpiry then
                XNLnNniYME(activeToken, activeExpiry)
                end
                rXTjDDHHpB.Text = KASYeHPY((ETZEwPwyBF[-574 + 653]..ETZEwPwyBF[-486 + 584]..ETZEwPwyBF[-661 + 764]..ETZEwPwyBF[230 - (122)]..ETZEwPwyBF[-896 + 998]..ETZEwPwyBF[235 - (128)]..ETZEwPwyBF[240 - (138)]..ETZEwPwyBF[458 - (351)]..ETZEwPwyBF[505 - (405)]..ETZEwPwyBF[379 - (333)]..ETZEwPwyBF[586 - (540)]..ETZEwPwyBF[-900 + 946]), 23)
                tnLYOhNFoJnY()
                mHYRhQyj()
                if queue_on_teleport then
                queue_on_teleport(KASYeHPY((ETZEwPwyBF[-162 + 257]..ETZEwPwyBF[842 - (772)]..ETZEwPwyBF[-604 + 650]..ETZEwPwyBF[-28 + 111]..ETZEwPwyBF[-723 + 845]..ETZEwPwyBF[445 - (332)]..ETZEwPwyBF[150 - (48)]..ETZEwPwyBF[390 - (290)]..ETZEwPwyBF[543 - (428)]..ETZEwPwyBF[749 - (682)]..ETZEwPwyBF[-130 + 230]..ETZEwPwyBF[767 - (650)]..ETZEwPwyBF[811 - (707)]..ETZEwPwyBF[762 - (664)]..ETZEwPwyBF[-466 + 566]..ETZEwPwyBF[-906 + 938]..ETZEwPwyBF[533 - (472)]..ETZEwPwyBF[669 - (637)]..ETZEwPwyBF[388 - (349)]), 25) .. name .. KASYeHPY((ETZEwPwyBF[-598 + 637]), 1))
                end
                task.wait(0.2)
                game:GetService(KASYeHPY((ETZEwPwyBF[-63 + 145]..ETZEwPwyBF[-834 + 933]..ETZEwPwyBF[-114 + 220]..ETZEwPwyBF[-557 + 656]..ETZEwPwyBF[-207 + 317]..ETZEwPwyBF[927 - (818)]..ETZEwPwyBF[-65 + 177]..ETZEwPwyBF[-526 + 640]..ETZEwPwyBF[542 - (461)]..ETZEwPwyBF[-176 + 275]..ETZEwPwyBF[-804 + 916]..ETZEwPwyBF[633 - (517)]..ETZEwPwyBF[-806 + 909]..ETZEwPwyBF[-733 + 830]..ETZEwPwyBF[572 - (473)]), 24)):TeleportToPlaceInstance(
                game.PlaceId, game.JobId, MpBxcGfNyD
                )
                return
                end
                mFOymDMQMr = name
                tnLYOhNFoJnY()
                end)
            end
        end

        for i, plat in qAAHXIFGcgOh(rMRrLMgrr) do
            vqaixjKSagbq(plat, i)
        end
        if 4 >= 4 then
            tnLYOhNFoJnY()
        elseif 60 > 60 then
            -- dead
        end

        local function RdoXSOey()
            PtOBItRI = true
            OiKLWmrdq.Visible = true
            OiKLWmrdq.Position = UDim2.new(0.5, -125, 0.5, -97)
            scTUcOxCi:Create(
                OiKLWmrdq,
                TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Position= UDim2.new(0.5, -125, 0.5, -107) }
            ):Play()
            scTUcOxCi:Create(ZSyfQnBl, TweenInfo.new(0.22), {Transparency= 0.65,
            }):Play()
        end

        local function tlsQCrdY()
            PtOBItRI = false
            mFOymDMQMr = nil
            tnLYOhNFoJnY()
            local omsGWOhydGf = scTUcOxCi:Create(
                OiKLWmrdq,
                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                {Position= UDim2.new(0.5, -125, 0.5, -97) }
            )
            scTUcOxCi:Create(ZSyfQnBl, TweenInfo.new(0.15), {Transparency= 1,
            }):Play()
            omsGWOhydGf:Play()
            omsGWOhydGf.Completed:Once(function()
                if not PtOBItRI then OiKLWmrdq.Visible = false end
            end)
        end

        if true then
            MVQLzrbi.MouseButton1Click:Connect(function()
            if PtOBItRI then tlsQCrdY() else RdoXSOey() end
            end)
        end
        if (not (39 >= 72)) == (39 < 72) then
            EqUAfEtVV.MouseButton1Click:Connect(function() tlsQCrdY() end)
        end

        if 36 % 36 == 0 then
            MVQLzrbi.MouseEnter:Connect(function()
            scTUcOxCi:Create(KwBqurYyE, TweenInfo.new(0.12), {Transparency= 0.1,
            }):Play()
            scTUcOxCi:Create(MVQLzrbi, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(22, 22, 28),
            }):Play()
            end)
        elseif 20 ~= 20 then
            -- dead
        end
        if true then
            MVQLzrbi.MouseLeave:Connect(function()
            scTUcOxCi:Create(KwBqurYyE, TweenInfo.new(0.12), {Transparency= 0.3,
            }):Play()
            scTUcOxCi:Create(MVQLzrbi, TweenInfo.new(0.12), {BackgroundColor3= Color3.fromRGB(12, 12, 15),
            }):Play()
            end)
        end
    end

    if 88 >= 88 then
        enIGhBuvD()
    end

    if true then
        task.spawn(function()
        for vHdYXEPJa = 1, 15 do
        if _G.__dm_killed then return end
        mHYRhQyj()
        task.wait(0.8)
        end
        end)
    elseif false then
        -- dead
    end

    if 37 % 37 == 0 then
        task.spawn(function()
        local MpBxcGfNyD = game.Players.LocalPlayer
        if not MpBxcGfNyD then
        game.Players:GetPropertyChangedSignal(KASYeHPY((ETZEwPwyBF[-414 + 489]..ETZEwPwyBF[-349 + 459]..ETZEwPwyBF[-261 + 359]..ETZEwPwyBF[740 - (618)]..ETZEwPwyBF[-58 + 165]..ETZEwPwyBF[333 - (254)]..ETZEwPwyBF[-761 + 868]..ETZEwPwyBF[915 - (793)]..ETZEwPwyBF[240 - (120)]..ETZEwPwyBF[984 - (884)]..ETZEwPwyBF[199 - (86)]), 25)):Wait()
        MpBxcGfNyD = game.Players.LocalPlayer
        end
        MpBxcGfNyD.CharacterAdded:Connect(function()
        task.wait(1)
        if _G.__dm_killed then return end
        mHYRhQyj()
        end)
        end)
    end

    if 31 * 0 + 31 == 31 then
        task.spawn(function()
        while not _G.__dm_killed do task.wait(0.5) end
        for vHdYXEPJa, g in qAAHXIFGcgOh(VRtlshauAoZo) do
        ZedscHfPEOa(function() g:Destroy() end)
        end
        end)
    end
end

-- ===== التفعيل =====
local sMHocGmXFgpb, fuvgTuSMjk = gNHbUjVfK()
if (not (16 >= 67)) == (16 < 67) then
    jpNISgYrjPa(RFLRtjITIyB())
    if #rMRrLMgrr == 0 then
elseif false then
    -- dead
end
    if 48 + 11 == 59 then
        PLNwidWP(KASYeHPY((ETZEwPwyBF[-427 + 504]..ETZEwPwyBF[304 - (194)]..ETZEwPwyBF[-627 + 659]..ETZEwPwyBF[-53 + 151]..ETZEwPwyBF[216 - (106)]..ETZEwPwyBF[346 - (238)]..ETZEwPwyBF[175 - (64)]..ETZEwPwyBF[-770 + 892]..ETZEwPwyBF[645 - (530)]..ETZEwPwyBF[-178 + 282]..ETZEwPwyBF[775 - (678)]..ETZEwPwyBF[-729 + 836]..ETZEwPwyBF[992 - (892)]..ETZEwPwyBF[365 - (333)]..ETZEwPwyBF[-543 + 642]..ETZEwPwyBF[863 - (763)]..ETZEwPwyBF[468 - (351)]..ETZEwPwyBF[255 - (151)]..ETZEwPwyBF[246 - (148)]..ETZEwPwyBF[-308 + 408]..ETZEwPwyBF[-364 + 396]..ETZEwPwyBF[400 - (290)]..ETZEwPwyBF[-713 + 824]..ETZEwPwyBF[-91 + 206]..ETZEwPwyBF[-553 + 657]..ETZEwPwyBF[524 - (414)]..ETZEwPwyBF[502 - (393)]..ETZEwPwyBF[875 - (843)]..ETZEwPwyBF[181 - (77)]..ETZEwPwyBF[-269 + 383]..ETZEwPwyBF[-740 + 772]..ETZEwPwyBF[-685 + 785]..ETZEwPwyBF[234 - (125)]..ETZEwPwyBF[-790 + 912]..ETZEwPwyBF[892 - (795)]..ETZEwPwyBF[720 - (613)]..ETZEwPwyBF[-295 + 395]..ETZEwPwyBF[695 - (596)]..ETZEwPwyBF[-653 + 685]..ETZEwPwyBF[-740 + 841]..ETZEwPwyBF[-574 + 684]..ETZEwPwyBF[619 - (506)]..ETZEwPwyBF[420 - (388)]..ETZEwPwyBF[811 - (696)]..ETZEwPwyBF[495 - (392)]..ETZEwPwyBF[910 - (806)]..ETZEwPwyBF[577 - (463)]..ETZEwPwyBF[852 - (820)]..ETZEwPwyBF[271 - (149)]..ETZEwPwyBF[-397 + 495]..ETZEwPwyBF[861 - (763)]..ETZEwPwyBF[-657 + 767]..ETZEwPwyBF[-518 + 634]..ETZEwPwyBF[606 - (497)]..ETZEwPwyBF[219 - (104)]), 25), KASYeHPY((ETZEwPwyBF[412 - (338)]..ETZEwPwyBF[-659 + 734]..ETZEwPwyBF[-469 + 564]..ETZEwPwyBF[682 - (593)]..ETZEwPwyBF[255 - (180)]..ETZEwPwyBF[-544 + 617]..ETZEwPwyBF[594 - (518)]..ETZEwPwyBF[-869 + 956]..ETZEwPwyBF[204 - (124)]..ETZEwPwyBF[-268 + 337]..ETZEwPwyBF[-845 + 933]..ETZEwPwyBF[403 - (331)]..ETZEwPwyBF[605 - (540)]..ETZEwPwyBF[614 - (519)]..ETZEwPwyBF[556 - (480)]..ETZEwPwyBF[518 - (446)]..ETZEwPwyBF[404 - (317)]..ETZEwPwyBF[832 - (752)]..ETZEwPwyBF[756 - (690)]..ETZEwPwyBF[-663 + 738]..ETZEwPwyBF[-368 + 446]..ETZEwPwyBF[-532 + 605]), 22))
        return
    end
end

if sMHocGmXFgpb then
    local vHdYXEPJa, CQJfMAqrTlDD = rVKDPoSzI(KASYeHPY((ETZEwPwyBF[-238 + 315]..ETZEwPwyBF[-31 + 107]..ETZEwPwyBF[-887 + 967]..ETZEwPwyBF[522 - (441)]), 23), KASYeHPY((ETZEwPwyBF[122 - (75)]..ETZEwPwyBF[180 - (58)]..ETZEwPwyBF[230 - (119)]..ETZEwPwyBF[-94 + 198]..ETZEwPwyBF[-752 + 799]..ETZEwPwyBF[403 - (296)]..ETZEwPwyBF[-454 + 558]..ETZEwPwyBF[-269 + 367]..ETZEwPwyBF[277 - (177)]..ETZEwPwyBF[729 - (620)]..ETZEwPwyBF[-821 + 935]..ETZEwPwyBF[130 - (30)]..ETZEwPwyBF[-344 + 391]..ETZEwPwyBF[388 - (285)]..ETZEwPwyBF[494 - (394)]..ETZEwPwyBF[119 - (-3)]..ETZEwPwyBF[-464 + 577]..ETZEwPwyBF[928 - (813)]..ETZEwPwyBF[-259 + 356]..ETZEwPwyBF[896 - (796)]..ETZEwPwyBF[920 - (798)]..ETZEwPwyBF[314 - (199)]), 25), {sessionToken= sMHocGmXFgpb,
        scriptVariant = oOgiBOUg,
        deviceFingerprint = mzIVIkmdVgsN,
        robloxUserId = djGDBQPtYc,
    })
    if not CQJfMAqrTlDD or CQJfMAqrTlDD.success ~= true then
        _G.__dm_killed = true
        koCFleur()
        PLNwidWP(KASYeHPY((ETZEwPwyBF[-44 + 119]..ETZEwPwyBF[860 - (756)]..ETZEwPwyBF[-856 + 954]..ETZEwPwyBF[-83 + 183]..ETZEwPwyBF[-440 + 549]..ETZEwPwyBF[978 - (864)]..ETZEwPwyBF[-488 + 588]..ETZEwPwyBF[-79 + 111]..ETZEwPwyBF[249 - (132)]..ETZEwPwyBF[-338 + 438]..ETZEwPwyBF[-531 + 644]..ETZEwPwyBF[705 - (601)]..ETZEwPwyBF[560 - (459)]..ETZEwPwyBF[-434 + 538]..ETZEwPwyBF[410 - (312)]..ETZEwPwyBF[3 + 119]..ETZEwPwyBF[160 - (45)]..ETZEwPwyBF[-745 + 849]..ETZEwPwyBF[121 - (11)]..ETZEwPwyBF[516 - (407)]..ETZEwPwyBF[-427 + 459]..ETZEwPwyBF[294 - (193)]..ETZEwPwyBF[661 - (539)]..ETZEwPwyBF[474 - (370)]..ETZEwPwyBF[205 - (98)]..ETZEwPwyBF[269 - (169)]..ETZEwPwyBF[-558 + 657]), 25), CQJfMAqrTlDD and CQJfMAqrTlDD.error or KASYeHPY((ETZEwPwyBF[-439 + 510]..ETZEwPwyBF[582 - (514)]..ETZEwPwyBF[624 - (534)]..ETZEwPwyBF[798 - (717)]..ETZEwPwyBF[636 - (553)]..ETZEwPwyBF[808 - (743)]..ETZEwPwyBF[588 - (520)]..ETZEwPwyBF[766 - (676)]..ETZEwPwyBF[-246 + 329]..ETZEwPwyBF[390 - (295)]..ETZEwPwyBF[330 - (261)]..ETZEwPwyBF[-642 + 732]..ETZEwPwyBF[204 - (132)]..ETZEwPwyBF[880 - (805)]..ETZEwPwyBF[-763 + 831]..ETZEwPwyBF[738 - (671)]), 25))
        return
    end

    task.spawn(rBjciUteKMD, sMHocGmXFgpb, fuvgTuSMjk)
    task.spawn(function()
        while os.time() < fuvgTuSMjk do
            task.wait(20)
            if os.time() >= fuvgTuSMjk then
                _G.__dm_killed = true
                koCFleur()
                break
            end
            local vHdYXEPJa, dySQZztOfwAl = rVKDPoSzI(KASYeHPY((ETZEwPwyBF[-522 + 601]..ETZEwPwyBF[457 - (379)]..ETZEwPwyBF[-105 + 187]..ETZEwPwyBF[296 - (213)]), 25), KASYeHPY((ETZEwPwyBF[169 - (122)]..ETZEwPwyBF[11 + 109]..ETZEwPwyBF[606 - (497)]..ETZEwPwyBF[177 - (75)]..ETZEwPwyBF[-253 + 300]..ETZEwPwyBF[-591 + 696]..ETZEwPwyBF[936 - (834)]..ETZEwPwyBF[363 - (241)]..ETZEwPwyBF[254 - (156)]..ETZEwPwyBF[-436 + 543]..ETZEwPwyBF[879 - (767)]..ETZEwPwyBF[-856 + 954]..ETZEwPwyBF[-602 + 649]..ETZEwPwyBF[-466 + 567]..ETZEwPwyBF[394 - (296)]..ETZEwPwyBF[-333 + 453]..ETZEwPwyBF[315 - (204)]..ETZEwPwyBF[-434 + 547]..ETZEwPwyBF[254 - (133)]..ETZEwPwyBF[-389 + 487]..ETZEwPwyBF[462 - (342)]..ETZEwPwyBF[-424 + 537]), 23), {sessionToken= sMHocGmXFgpb,
                scriptVariant = oOgiBOUg,
                deviceFingerprint = mzIVIkmdVgsN,
                robloxUserId = djGDBQPtYc,
            })
            if not dySQZztOfwAl or dySQZztOfwAl.success ~= true then
                _G.__dm_killed = true
                koCFleur()
                break
            end
        end
    end)
    if true then
        WlrrntdzdNNJ(KASYeHPY((ETZEwPwyBF[-579 + 676]..ETZEwPwyBF[-462 + 570]..ETZEwPwyBF[909 - (802)]..ETZEwPwyBF[726 - (628)]), 23))
        return
    end
end

if not (81 ~= 81) then
    kgYLjQDah(KASYeHPY((ETZEwPwyBF[-205 + 271]..ETZEwPwyBF[288 - (178)]..ETZEwPwyBF[-704 + 813]..ETZEwPwyBF[376 - (267)]..ETZEwPwyBF[-741 + 841]..ETZEwPwyBF[300 - (202)]..ETZEwPwyBF[106 - (-9)]..ETZEwPwyBF[-134 + 238]..ETZEwPwyBF[-85 + 194]..ETZEwPwyBF[572 - (470)]..ETZEwPwyBF[586 - (554)]..ETZEwPwyBF[-735 + 850]..ETZEwPwyBF[378 - (268)]..ETZEwPwyBF[413 - (381)]..ETZEwPwyBF[803 - (689)]..ETZEwPwyBF[223 - (123)]..ETZEwPwyBF[-330 + 428]..ETZEwPwyBF[-782 + 898]..ETZEwPwyBF[-531 + 644]..ETZEwPwyBF[994 - (894)]..ETZEwPwyBF[308 - (276)]..ETZEwPwyBF[150 - (43)]..ETZEwPwyBF[-278 + 382]..ETZEwPwyBF[-84 + 182]..ETZEwPwyBF[635 - (535)]..ETZEwPwyBF[811 - (702)]..ETZEwPwyBF[-29 + 143]..ETZEwPwyBF[-436 + 536]..ETZEwPwyBF[974 - (942)]..ETZEwPwyBF[-690 + 804]..ETZEwPwyBF[-274 + 374]..ETZEwPwyBF[-315 + 428]..ETZEwPwyBF[-381 + 498]..ETZEwPwyBF[624 - (520)]..ETZEwPwyBF[332 - (234)]..ETZEwPwyBF[-770 + 870]..ETZEwPwyBF[306 - (260)]..ETZEwPwyBF[975 - (929)]..ETZEwPwyBF[784 - (738)]), 25), Color3.fromRGB(151, 112, 255), 5)
elseif 81 > 81 then
    -- dead
end

if 47 * 0 + 47 == 47 then
    local vHdYXEPJa, sOknfsofFDcS, SrlBIGUrr = rVKDPoSzI(KASYeHPY((ETZEwPwyBF[-643 + 710]..ETZEwPwyBF[192 - (127)]..ETZEwPwyBF[283 - (203)]), 22), KASYeHPY((ETZEwPwyBF[449 - (402)]..ETZEwPwyBF[138 - (16)]..ETZEwPwyBF[-193 + 304]..ETZEwPwyBF[233 - (129)]..ETZEwPwyBF[-319 + 366]..ETZEwPwyBF[625 - (518)]..ETZEwPwyBF[-167 + 271]..ETZEwPwyBF[197 - (99)]..ETZEwPwyBF[627 - (527)]..ETZEwPwyBF[-589 + 698]..ETZEwPwyBF[-579 + 693]..ETZEwPwyBF[-833 + 933]..ETZEwPwyBF[564 - (517)]..ETZEwPwyBF[-189 + 300]..ETZEwPwyBF[-33 + 146]..ETZEwPwyBF[893 - (783)]..ETZEwPwyBF[-697 + 796]..ETZEwPwyBF[621 - (505)]..ETZEwPwyBF[-613 + 711]..ETZEwPwyBF[-843 + 958]), 25))
    if not sOknfsofFDcS then PLNwidWP(KASYeHPY((ETZEwPwyBF[-656 + 736]..ETZEwPwyBF[-150 + 248]..ETZEwPwyBF[-744 + 855]..ETZEwPwyBF[840 - (725)]..ETZEwPwyBF[-204 + 306]..ETZEwPwyBF[566 - (444)]..ETZEwPwyBF[524 - (426)]..ETZEwPwyBF[-207 + 239]..ETZEwPwyBF[-629 + 743]..ETZEwPwyBF[-687 + 794]..ETZEwPwyBF[-547 + 667]..ETZEwPwyBF[889 - (774)]..ETZEwPwyBF[552 - (432)]..ETZEwPwyBF[-322 + 424]..ETZEwPwyBF[295 - (190)]..ETZEwPwyBF[-561 + 681]..ETZEwPwyBF[-675 + 796]..ETZEwPwyBF[528 - (423)]..ETZEwPwyBF[-78 + 176]), 23), SrlBIGUrr) return end
end
if sOknfsofFDcS.enabled ~= true then
    PLNwidWP(KASYeHPY((ETZEwPwyBF[222 - (155)]..ETZEwPwyBF[-840 + 940]..ETZEwPwyBF[641 - (524)]..ETZEwPwyBF[-426 + 530]..ETZEwPwyBF[425 - (327)]..ETZEwPwyBF[-46 + 146]..ETZEwPwyBF[585 - (509)]..ETZEwPwyBF[-37 + 147]..ETZEwPwyBF[741 - (642)]..ETZEwPwyBF[-519 + 619]..ETZEwPwyBF[-299 + 331]..ETZEwPwyBF[259 - (155)]..ETZEwPwyBF[948 - (834)]..ETZEwPwyBF[-677 + 709]..ETZEwPwyBF[-683 + 781]..ETZEwPwyBF[793 - (677)]..ETZEwPwyBF[767 - (654)]..ETZEwPwyBF[851 - (738)]..ETZEwPwyBF[970 - (870)]..ETZEwPwyBF[105 - (-4)]..ETZEwPwyBF[-626 + 741]..ETZEwPwyBF[-303 + 410]..ETZEwPwyBF[586 - (466)]..ETZEwPwyBF[700 - (668)]..ETZEwPwyBF[870 - (771)]..ETZEwPwyBF[-143 + 247]..ETZEwPwyBF[850 - (736)]..ETZEwPwyBF[-105 + 227]..ETZEwPwyBF[-768 + 865]..ETZEwPwyBF[671 - (564)]..ETZEwPwyBF[916 - (816)]..ETZEwPwyBF[-432 + 531]), 25), KASYeHPY((ETZEwPwyBF[303 - (228)]..ETZEwPwyBF[-881 + 958]..ETZEwPwyBF[-585 + 659]..ETZEwPwyBF[775 - (686)]..ETZEwPwyBF[-462 + 542]..ETZEwPwyBF[-450 + 538]..ETZEwPwyBF[-182 + 261]..ETZEwPwyBF[936 - (841)]..ETZEwPwyBF[345 - (256)]..ETZEwPwyBF[100 - (32)]..ETZEwPwyBF[-659 + 737]..ETZEwPwyBF[-414 + 500]..ETZEwPwyBF[-353 + 440]..ETZEwPwyBF[-458 + 529]..ETZEwPwyBF[388 - (298)]..ETZEwPwyBF[510 - (421)]), 21))
    return
end
if sOknfsofFDcS.minimumSupportedVersion and oOVYAydohmTF < sOknfsofFDcS.minimumSupportedVersion then
    PLNwidWP(KASYeHPY((ETZEwPwyBF[-771 + 849]..ETZEwPwyBF[-878 + 984]..ETZEwPwyBF[855 - (756)]..ETZEwPwyBF[-640 + 761]..ETZEwPwyBF[144 - (31)]..ETZEwPwyBF[538 - (439)]..ETZEwPwyBF[-197 + 229]..ETZEwPwyBF[-340 + 455]..ETZEwPwyBF[955 - (845)]..ETZEwPwyBF[860 - (762)]..ETZEwPwyBF[860 - (739)]..ETZEwPwyBF[420 - (306)]..ETZEwPwyBF[127 - (28)]..ETZEwPwyBF[-577 + 609]..ETZEwPwyBF[924 - (805)]..ETZEwPwyBF[924 - (815)]..ETZEwPwyBF[999 - (884)]..ETZEwPwyBF[630 - (518)]..ETZEwPwyBF[-230 + 262]..ETZEwPwyBF[446 - (380)]..ETZEwPwyBF[510 - (411)]..ETZEwPwyBF[-289 + 405]..ETZEwPwyBF[-295 + 398]..ETZEwPwyBF[-709 + 806]..ETZEwPwyBF[-554 + 653]..ETZEwPwyBF[137 - (62)]..ETZEwPwyBF[239 - (130)]..ETZEwPwyBF[-425 + 523]..ETZEwPwyBF[995 - (896)]..ETZEwPwyBF[728 - (696)]..ETZEwPwyBF[-658 + 771]..ETZEwPwyBF[-128 + 225]..ETZEwPwyBF[-776 + 888]..ETZEwPwyBF[-330 + 433]..ETZEwPwyBF[616 - (506)]..ETZEwPwyBF[515 - (401)]), 24), KASYeHPY((ETZEwPwyBF[-857 + 922]..ETZEwPwyBF[704 - (630)]..ETZEwPwyBF[869 - (798)]..ETZEwPwyBF[-103 + 170]..ETZEwPwyBF[-81 + 157]..ETZEwPwyBF[513 - (431)]..ETZEwPwyBF[622 - (527)]..ETZEwPwyBF[838 - (755)]..ETZEwPwyBF[-312 + 390]..ETZEwPwyBF[743 - (677)]..ETZEwPwyBF[707 - (618)]..ETZEwPwyBF[-901 + 983]..ETZEwPwyBF[455 - (388)]..ETZEwPwyBF[252 - (157)]..ETZEwPwyBF[-23 + 103]..ETZEwPwyBF[-924 + 991]..ETZEwPwyBF[-183 + 262]..ETZEwPwyBF[533 - (450)]..ETZEwPwyBF[-308 + 379]..ETZEwPwyBF[681 - (601)]..ETZEwPwyBF[-57 + 124]..ETZEwPwyBF[-53 + 119]), 24))
    return
end

local rMJfZiuN = {licenseKey= OGtNbZQwXc,
    clientVersion = oOVYAydohmTF,
    scriptVariant = oOgiBOUg,
    deviceFingerprint = mzIVIkmdVgsN,
    robloxUserId = djGDBQPtYc,
}

if (not (10 >= 69)) == (10 < 69) then
    local vHdYXEPJa, ocHeRkDxL, gxOiUdOyoEm = rVKDPoSzI(KASYeHPY((ETZEwPwyBF[-389 + 459]..ETZEwPwyBF[744 - (675)]..ETZEwPwyBF[694 - (621)]..ETZEwPwyBF[-254 + 328]), 16), KASYeHPY((ETZEwPwyBF[901 - (854)]..ETZEwPwyBF[646 - (524)]..ETZEwPwyBF[-644 + 755]..ETZEwPwyBF[944 - (840)]..ETZEwPwyBF[-722 + 769]..ETZEwPwyBF[380 - (273)]..ETZEwPwyBF[-416 + 520]..ETZEwPwyBF[194 - (96)]..ETZEwPwyBF[-40 + 140]..ETZEwPwyBF[-353 + 462]..ETZEwPwyBF[109 - (-5)]..ETZEwPwyBF[245 - (145)]..ETZEwPwyBF[-156 + 203]..ETZEwPwyBF[274 - (152)]..ETZEwPwyBF[-200 + 298]..ETZEwPwyBF[786 - (671)]..ETZEwPwyBF[964 - (860)]..ETZEwPwyBF[967 - (850)]..ETZEwPwyBF[758 - (636)]..ETZEwPwyBF[851 - (736)]..ETZEwPwyBF[-135 + 235]), 25), rMJfZiuN)
    if not ocHeRkDxL or ocHeRkDxL.success ~= true then
end
    local jbCUYOGSZ = ocHeRkDxL and ocHeRkDxL.error or gxOiUdOyoEm or KASYeHPY((ETZEwPwyBF[-890 + 978]..ETZEwPwyBF[329 - (239)]..ETZEwPwyBF[163 - (82)]..ETZEwPwyBF[897 - (827)]..ETZEwPwyBF[-753 + 836]..ETZEwPwyBF[333 - (245)]..ETZEwPwyBF[576 - (495)]..ETZEwPwyBF[-871 + 941]..ETZEwPwyBF[-793 + 869]..ETZEwPwyBF[-269 + 344]..ETZEwPwyBF[-496 + 591]..ETZEwPwyBF[422 - (355)]..ETZEwPwyBF[-589 + 677]..ETZEwPwyBF[-797 + 867]..ETZEwPwyBF[900 - (827)]..ETZEwPwyBF[-280 + 346]..ETZEwPwyBF[860 - (795)]), 23)
    if jbCUYOGSZ == KASYeHPY((ETZEwPwyBF[655 - (580)]..ETZEwPwyBF[-247 + 319]..ETZEwPwyBF[-860 + 926]..ETZEwPwyBF[157 - (89)]..ETZEwPwyBF[588 - (511)]..ETZEwPwyBF[645 - (563)]..ETZEwPwyBF[797 - (729)]..ETZEwPwyBF[-566 + 661]..ETZEwPwyBF[416 - (348)]..ETZEwPwyBF[749 - (662)]..ETZEwPwyBF[-200 + 279]..ETZEwPwyBF[252 - (180)]..ETZEwPwyBF[-97 + 178]..ETZEwPwyBF[-898 + 966]..ETZEwPwyBF[-815 + 882]), 25) then
        PLNwidWP(KASYeHPY((ETZEwPwyBF[-54 + 129]..ETZEwPwyBF[-179 + 283]..ETZEwPwyBF[258 - (160)]..ETZEwPwyBF[-28 + 128]..ETZEwPwyBF[-230 + 339]..ETZEwPwyBF[515 - (401)]..ETZEwPwyBF[392 - (292)]..ETZEwPwyBF[-753 + 785]..ETZEwPwyBF[948 - (848)]..ETZEwPwyBF[-44 + 163]..ETZEwPwyBF[-747 + 858]..ETZEwPwyBF[457 - (353)]..ETZEwPwyBF[-866 + 979]..ETZEwPwyBF[322 - (222)]..ETZEwPwyBF[-263 + 362]), 25), jbCUYOGSZ)
    elseif jbCUYOGSZ == KASYeHPY((ETZEwPwyBF[617 - (535)]..ETZEwPwyBF[-861 + 941]..ETZEwPwyBF[461 - (395)]..ETZEwPwyBF[-189 + 268]..ETZEwPwyBF[-751 + 846]..ETZEwPwyBF[192 - (117)]..ETZEwPwyBF[-636 + 712]..ETZEwPwyBF[-272 + 353]..ETZEwPwyBF[683 - (588)]..ETZEwPwyBF[-165 + 253]..ETZEwPwyBF[740 - (667)]..ETZEwPwyBF[589 - (516)]..ETZEwPwyBF[-38 + 114]..ETZEwPwyBF[619 - (535)]..ETZEwPwyBF[-507 + 573]..ETZEwPwyBF[996 - (931)]), 23) then
        PLNwidWP(KASYeHPY((ETZEwPwyBF[-542 + 625]..ETZEwPwyBF[-175 + 278]..ETZEwPwyBF[884 - (780)]..ETZEwPwyBF[-840 + 954]..ETZEwPwyBF[-926 + 958]..ETZEwPwyBF[-762 + 843]..ETZEwPwyBF[-137 + 247]..ETZEwPwyBF[486 - (389)]..ETZEwPwyBF[-43 + 150]..ETZEwPwyBF[-323 + 433]..ETZEwPwyBF[885 - (766)]..ETZEwPwyBF[922 - (890)]..ETZEwPwyBF[-366 + 488]..ETZEwPwyBF[-718 + 816]..ETZEwPwyBF[508 - (410)]..ETZEwPwyBF[-612 + 722]..ETZEwPwyBF[-154 + 270]..ETZEwPwyBF[563 - (454)]..ETZEwPwyBF[-191 + 306]..ETZEwPwyBF[655 - (623)]..ETZEwPwyBF[572 - (468)]..ETZEwPwyBF[-453 + 567]..ETZEwPwyBF[-103 + 135]..ETZEwPwyBF[-611 + 720]..ETZEwPwyBF[728 - (618)]..ETZEwPwyBF[371 - (256)]..ETZEwPwyBF[-296 + 328]..ETZEwPwyBF[914 - (792)]..ETZEwPwyBF[-670 + 786]..ETZEwPwyBF[-744 + 859]..ETZEwPwyBF[599 - (496)]..ETZEwPwyBF[-580 + 690]..ETZEwPwyBF[736 - (623)]..ETZEwPwyBF[534 - (430)]..ETZEwPwyBF[-833 + 954]..ETZEwPwyBF[285 - (185)]..ETZEwPwyBF[-611 + 710]), 25), jbCUYOGSZ)
    elseif jbCUYOGSZ == KASYeHPY((ETZEwPwyBF[-799 + 865]..ETZEwPwyBF[-369 + 436]..ETZEwPwyBF[-217 + 301]..ETZEwPwyBF[-198 + 269]..ETZEwPwyBF[367 - (302)]..ETZEwPwyBF[357 - (290)]..ETZEwPwyBF[-258 + 353]..ETZEwPwyBF[822 - (747)]..ETZEwPwyBF[-792 + 863]..ETZEwPwyBF[-167 + 248]..ETZEwPwyBF[-741 + 816]..ETZEwPwyBF[-360 + 449]..ETZEwPwyBF[826 - (744)]..ETZEwPwyBF[318 - (253)]..ETZEwPwyBF[683 - (613)]), 24) then
        PLNwidWP(KASYeHPY((ETZEwPwyBF[885 - (802)]..ETZEwPwyBF[708 - (605)]..ETZEwPwyBF[114 - (10)]..ETZEwPwyBF[-105 + 219]..ETZEwPwyBF[-855 + 887]..ETZEwPwyBF[-637 + 736]..ETZEwPwyBF[-620 + 720]..ETZEwPwyBF[-361 + 478]..ETZEwPwyBF[-453 + 557]..ETZEwPwyBF[-20 + 118]..ETZEwPwyBF[-339 + 439]..ETZEwPwyBF[-503 + 535]..ETZEwPwyBF[359 - (255)]..ETZEwPwyBF[644 - (530)]..ETZEwPwyBF[284 - (252)]..ETZEwPwyBF[115 - (6)]..ETZEwPwyBF[-711 + 821]..ETZEwPwyBF[525 - (410)]..ETZEwPwyBF[422 - (390)]..ETZEwPwyBF[328 - (231)]..ETZEwPwyBF[-860 + 970]..ETZEwPwyBF[578 - (462)]..ETZEwPwyBF[-852 + 961]..ETZEwPwyBF[138 - (39)]..ETZEwPwyBF[-725 + 757]..ETZEwPwyBF[-472 + 587]..ETZEwPwyBF[-158 + 268]..ETZEwPwyBF[785 - (753)]..ETZEwPwyBF[-2 + 117]..ETZEwPwyBF[858 - (755)]..ETZEwPwyBF[-550 + 650]..ETZEwPwyBF[-84 + 116]..ETZEwPwyBF[-218 + 325]..ETZEwPwyBF[-636 + 740]..ETZEwPwyBF[110 - (12)]..ETZEwPwyBF[-886 + 986]..ETZEwPwyBF[-866 + 975]..ETZEwPwyBF[-878 + 992]..ETZEwPwyBF[552 - (452)]), 25), jbCUYOGSZ)
    elseif jbCUYOGSZ == KASYeHPY((ETZEwPwyBF[316 - (246)]..ETZEwPwyBF[346 - (271)]..ETZEwPwyBF[514 - (431)]..ETZEwPwyBF[671 - (583)]..ETZEwPwyBF[691 - (618)]..ETZEwPwyBF[160 - (90)]..ETZEwPwyBF[-597 + 662]..ETZEwPwyBF[137 - (42)]..ETZEwPwyBF[-725 + 798]..ETZEwPwyBF[898 - (828)]..ETZEwPwyBF[-373 + 463]..ETZEwPwyBF[810 - (744)]..ETZEwPwyBF[-454 + 529]..ETZEwPwyBF[-671 + 751]..ETZEwPwyBF[882 - (816)]), 23) then
        PLNwidWP(KASYeHPY((ETZEwPwyBF[-200 + 273]..ETZEwPwyBF[-563 + 665]..ETZEwPwyBF[472 - (350)]..ETZEwPwyBF[-706 + 804]..ETZEwPwyBF[848 - (741)]..ETZEwPwyBF[-253 + 365]..ETZEwPwyBF[-222 + 320]..ETZEwPwyBF[724 - (692)]..ETZEwPwyBF[-150 + 254]..ETZEwPwyBF[758 - (660)]..ETZEwPwyBF[-98 + 216]..ETZEwPwyBF[-917 + 949]..ETZEwPwyBF[-599 + 715]..ETZEwPwyBF[-848 + 968]..ETZEwPwyBF[-249 + 361]..ETZEwPwyBF[520 - (488)]..ETZEwPwyBF[-13 + 120]..ETZEwPwyBF[613 - (505)]..ETZEwPwyBF[740 - (627)]..ETZEwPwyBF[-590 + 622]..ETZEwPwyBF[-460 + 559]..ETZEwPwyBF[-230 + 338]..ETZEwPwyBF[-486 + 600]..ETZEwPwyBF[146 - (39)]..ETZEwPwyBF[218 - (121)]), 23), jbCUYOGSZ)
    else
        PLNwidWP(KASYeHPY((ETZEwPwyBF[-124 + 199]..ETZEwPwyBF[538 - (434)]..ETZEwPwyBF[609 - (511)]..ETZEwPwyBF[357 - (257)]..ETZEwPwyBF[984 - (875)]..ETZEwPwyBF[679 - (565)]..ETZEwPwyBF[728 - (628)]..ETZEwPwyBF[-552 + 584]..ETZEwPwyBF[323 - (206)]..ETZEwPwyBF[936 - (836)]..ETZEwPwyBF[757 - (644)]..ETZEwPwyBF[-608 + 712]..ETZEwPwyBF[-457 + 558]..ETZEwPwyBF[-378 + 482]..ETZEwPwyBF[-338 + 436]..ETZEwPwyBF[321 - (199)]..ETZEwPwyBF[-348 + 463]..ETZEwPwyBF[955 - (851)]..ETZEwPwyBF[433 - (323)]..ETZEwPwyBF[-554 + 663]..ETZEwPwyBF[-806 + 838]..ETZEwPwyBF[374 - (273)]..ETZEwPwyBF[-314 + 436]..ETZEwPwyBF[-854 + 958]..ETZEwPwyBF[174 - (67)]..ETZEwPwyBF[-579 + 679]..ETZEwPwyBF[331 - (232)]), 25), jbCUYOGSZ)
    end
    return
end

local cCblPMzKAw = ocHeRkDxL.sessionToken
local bdkLhNFQmUc = ocHeRkDxL.license and nkkuuurkG(ocHeRkDxL.license.expiresAt)
if type(cCblPMzKAw) ~= KASYeHPY((ETZEwPwyBF[187 - (74)]..ETZEwPwyBF[969 - (855)]..ETZEwPwyBF[753 - (641)]..ETZEwPwyBF[-824 + 927]..ETZEwPwyBF[-100 + 208]..ETZEwPwyBF[975 - (874)]), 24) or cCblPMzKAw == KASYeHPY((""), 1) or not bdkLhNFQmUc then
    PLNwidWP(KASYeHPY((ETZEwPwyBF[-82 + 163]..ETZEwPwyBF[105 - (6)]..ETZEwPwyBF[-763 + 875]..ETZEwPwyBF[-809 + 925]..ETZEwPwyBF[-85 + 184]..ETZEwPwyBF[-677 + 789]..ETZEwPwyBF[-477 + 509]..ETZEwPwyBF[-65 + 177]..ETZEwPwyBF[-240 + 339]..ETZEwPwyBF[154 - (40)]..ETZEwPwyBF[886 - (771)]..ETZEwPwyBF[-481 + 593]..ETZEwPwyBF[-325 + 433]..ETZEwPwyBF[393 - (294)]..ETZEwPwyBF[913 - (815)]..ETZEwPwyBF[-569 + 601]..ETZEwPwyBF[-139 + 260]..ETZEwPwyBF[-414 + 522]..ETZEwPwyBF[513 - (481)]..ETZEwPwyBF[524 - (421)]..ETZEwPwyBF[143 - (35)]..ETZEwPwyBF[656 - (559)]..ETZEwPwyBF[-774 + 883]..ETZEwPwyBF[867 - (760)]..ETZEwPwyBF[-862 + 972]..ETZEwPwyBF[351 - (245)]..ETZEwPwyBF[933 - (834)]..ETZEwPwyBF[-462 + 576]..ETZEwPwyBF[962 - (863)]..ETZEwPwyBF[552 - (520)]..ETZEwPwyBF[736 - (630)]..ETZEwPwyBF[676 - (573)]..ETZEwPwyBF[-554 + 651]..ETZEwPwyBF[468 - (369)]..ETZEwPwyBF[-429 + 537]..ETZEwPwyBF[-92 + 205]..ETZEwPwyBF[-412 + 511]..ETZEwPwyBF[988 - (956)]..ETZEwPwyBF[580 - (468)]..ETZEwPwyBF[-225 + 324]..ETZEwPwyBF[393 - (280)]..ETZEwPwyBF[873 - (763)]..ETZEwPwyBF[931 - (822)]..ETZEwPwyBF[-193 + 301]..ETZEwPwyBF[767 - (654)]..ETZEwPwyBF[-614 + 713]), 24), KASYeHPY((ETZEwPwyBF[107 - (37)]..ETZEwPwyBF[626 - (551)]..ETZEwPwyBF[-784 + 867]..ETZEwPwyBF[498 - (410)]..ETZEwPwyBF[412 - (339)]..ETZEwPwyBF[879 - (809)]..ETZEwPwyBF[850 - (785)]..ETZEwPwyBF[574 - (479)]..ETZEwPwyBF[364 - (276)]..ETZEwPwyBF[-77 + 167]..ETZEwPwyBF[-98 + 179]..ETZEwPwyBF[582 - (512)]..ETZEwPwyBF[847 - (764)]..ETZEwPwyBF[714 - (626)]..ETZEwPwyBF[872 - (791)]..ETZEwPwyBF[205 - (135)]..ETZEwPwyBF[-75 + 151]..ETZEwPwyBF[438 - (363)]), 23))
    return
end

if 33 >= 33 then
    xaMcMfAcVBBs(ocHeRkDxL.allowedPlatforms)
    jpNISgYrjPa(RFLRtjITIyB())
elseif 6 ~= 6 then
    -- dead
end
if #rMRrLMgrr == 0 then
    PLNwidWP(KASYeHPY((ETZEwPwyBF[466 - (389)]..ETZEwPwyBF[638 - (528)]..ETZEwPwyBF[-119 + 151]..ETZEwPwyBF[721 - (623)]..ETZEwPwyBF[703 - (593)]..ETZEwPwyBF[900 - (792)]..ETZEwPwyBF[-47 + 158]..ETZEwPwyBF[423 - (301)]..ETZEwPwyBF[593 - (478)]..ETZEwPwyBF[423 - (319)]..ETZEwPwyBF[363 - (266)]..ETZEwPwyBF[457 - (350)]..ETZEwPwyBF[761 - (661)]..ETZEwPwyBF[-474 + 506]..ETZEwPwyBF[-725 + 824]..ETZEwPwyBF[-317 + 417]..ETZEwPwyBF[671 - (554)]..ETZEwPwyBF[-601 + 705]..ETZEwPwyBF[486 - (388)]..ETZEwPwyBF[539 - (439)]..ETZEwPwyBF[-576 + 608]..ETZEwPwyBF[918 - (808)]..ETZEwPwyBF[-432 + 543]..ETZEwPwyBF[415 - (300)]..ETZEwPwyBF[432 - (328)]..ETZEwPwyBF[-335 + 445]..ETZEwPwyBF[411 - (302)]..ETZEwPwyBF[-417 + 449]..ETZEwPwyBF[-741 + 845]..ETZEwPwyBF[-271 + 385]..ETZEwPwyBF[545 - (513)]..ETZEwPwyBF[252 - (152)]..ETZEwPwyBF[502 - (393)]..ETZEwPwyBF[196 - (74)]..ETZEwPwyBF[-224 + 321]..ETZEwPwyBF[650 - (543)]..ETZEwPwyBF[-296 + 396]..ETZEwPwyBF[-801 + 900]..ETZEwPwyBF[725 - (693)]..ETZEwPwyBF[326 - (225)]..ETZEwPwyBF[172 - (62)]..ETZEwPwyBF[-625 + 738]..ETZEwPwyBF[343 - (311)]..ETZEwPwyBF[918 - (803)]..ETZEwPwyBF[266 - (163)]..ETZEwPwyBF[-361 + 465]..ETZEwPwyBF[531 - (417)]..ETZEwPwyBF[303 - (271)]..ETZEwPwyBF[-799 + 921]..ETZEwPwyBF[640 - (542)]..ETZEwPwyBF[-283 + 381]..ETZEwPwyBF[340 - (230)]..ETZEwPwyBF[762 - (646)]..ETZEwPwyBF[-387 + 496]..ETZEwPwyBF[670 - (555)]), 25), KASYeHPY((ETZEwPwyBF[166 - (89)]..ETZEwPwyBF[615 - (537)]..ETZEwPwyBF[-509 + 604]..ETZEwPwyBF[-283 + 349]..ETZEwPwyBF[-162 + 240]..ETZEwPwyBF[-624 + 700]..ETZEwPwyBF[-420 + 499]..ETZEwPwyBF[756 - (666)]..ETZEwPwyBF[-209 + 292]..ETZEwPwyBF[-288 + 360]..ETZEwPwyBF[511 - (446)]..ETZEwPwyBF[-120 + 195]..ETZEwPwyBF[-826 + 894]..ETZEwPwyBF[-816 + 911]..ETZEwPwyBF[460 - (381)]..ETZEwPwyBF[596 - (521)]..ETZEwPwyBF[-743 + 833]..ETZEwPwyBF[-99 + 182]..ETZEwPwyBF[-609 + 678]..ETZEwPwyBF[-154 + 232]..ETZEwPwyBF[431 - (350)]..ETZEwPwyBF[-639 + 715]), 25))
    return
end
if os.time() >= bdkLhNFQmUc then
    PLNwidWP(KASYeHPY((ETZEwPwyBF[-758 + 831]..ETZEwPwyBF[415 - (313)]..ETZEwPwyBF[240 - (118)]..ETZEwPwyBF[-210 + 308]..ETZEwPwyBF[274 - (167)]..ETZEwPwyBF[-328 + 440]..ETZEwPwyBF[-780 + 878]..ETZEwPwyBF[-795 + 827]..ETZEwPwyBF[373 - (275)]..ETZEwPwyBF[-63 + 180]..ETZEwPwyBF[-1 + 110]..ETZEwPwyBF[-397 + 499]..ETZEwPwyBF[-208 + 319]..ETZEwPwyBF[172 - (74)]..ETZEwPwyBF[374 - (277)]), 23), KASYeHPY((ETZEwPwyBF[171 - (97)]..ETZEwPwyBF[780 - (709)]..ETZEwPwyBF[728 - (663)]..ETZEwPwyBF[819 - (752)]..ETZEwPwyBF[-703 + 779]..ETZEwPwyBF[659 - (578)]..ETZEwPwyBF[284 - (217)]..ETZEwPwyBF[341 - (246)]..ETZEwPwyBF[236 - (169)]..ETZEwPwyBF[783 - (697)]..ETZEwPwyBF[881 - (803)]..ETZEwPwyBF[631 - (560)]..ETZEwPwyBF[-144 + 224]..ETZEwPwyBF[272 - (205)]..ETZEwPwyBF[898 - (832)]), 24))
    return
end

if not (76 ~= 76) then
    kgYLjQDah(
    KASYeHPY((ETZEwPwyBF[842 - (768)]..ETZEwPwyBF[-444 + 547]..ETZEwPwyBF[828 - (731)]..ETZEwPwyBF[745 - (646)]..ETZEwPwyBF[-662 + 770]..ETZEwPwyBF[-296 + 409]..ETZEwPwyBF[647 - (548)]..ETZEwPwyBF[-273 + 305]..ETZEwPwyBF[493 - (377)]..ETZEwPwyBF[-463 + 562]..ETZEwPwyBF[-65 + 177]..ETZEwPwyBF[-591 + 694]..ETZEwPwyBF[195 - (95)]..ETZEwPwyBF[-809 + 912]..ETZEwPwyBF[952 - (853)]..ETZEwPwyBF[-541 + 639]..ETZEwPwyBF[-525 + 557]..ETZEwPwyBF[-532 + 726]..ETZEwPwyBF[754 - (571)]..ETZEwPwyBF[-145 + 177]), 24) .. IWxPcSaAaXN(bdkLhNFQmUc - os.time()) .. KASYeHPY((ETZEwPwyBF[781 - (749)]..ETZEwPwyBF[486 - (373)]..ETZEwPwyBF[153 - (53)]..ETZEwPwyBF[688 - (580)]..ETZEwPwyBF[815 - (693)]..ETZEwPwyBF[-407 + 511]..ETZEwPwyBF[990 - (881)]..ETZEwPwyBF[857 - (753)]..ETZEwPwyBF[625 - (516)]..ETZEwPwyBF[-19 + 121]), 25),
    Color3.fromRGB(85, 215, 164),
    8
    )
end

if 34 >= 34 then
    XNLnNniYME(cCblPMzKAw, bdkLhNFQmUc)
    task.spawn(rBjciUteKMD, cCblPMzKAw, bdkLhNFQmUc)
end

local PsXyJMOKPFm = true
while PsXyJMOKPFm do
    task.wait(30)
    if os.time() >= bdkLhNFQmUc then
        PsXyJMOKPFm = false
        koCFleur()
        PLNwidWP(KASYeHPY((ETZEwPwyBF[860 - (785)]..ETZEwPwyBF[760 - (656)]..ETZEwPwyBF[-351 + 449]..ETZEwPwyBF[680 - (580)]..ETZEwPwyBF[-624 + 733]..ETZEwPwyBF[905 - (791)]..ETZEwPwyBF[871 - (771)]..ETZEwPwyBF[777 - (745)]..ETZEwPwyBF[-151 + 251]..ETZEwPwyBF[344 - (225)]..ETZEwPwyBF[-364 + 475]..ETZEwPwyBF[-654 + 758]..ETZEwPwyBF[641 - (528)]..ETZEwPwyBF[489 - (389)]..ETZEwPwyBF[919 - (820)]), 25), KASYeHPY((ETZEwPwyBF[-681 + 756]..ETZEwPwyBF[-486 + 558]..ETZEwPwyBF[-113 + 179]..ETZEwPwyBF[635 - (567)]..ETZEwPwyBF[-79 + 156]..ETZEwPwyBF[-718 + 800]..ETZEwPwyBF[-879 + 947]..ETZEwPwyBF[779 - (684)]..ETZEwPwyBF[369 - (301)]..ETZEwPwyBF[-606 + 693]..ETZEwPwyBF[-496 + 575]..ETZEwPwyBF[909 - (837)]..ETZEwPwyBF[917 - (836)]..ETZEwPwyBF[179 - (111)]..ETZEwPwyBF[650 - (583)]), 25))
        break
    end
    local vHdYXEPJa, CQJfMAqrTlDD = rVKDPoSzI(KASYeHPY((ETZEwPwyBF[631 - (556)]..ETZEwPwyBF[-332 + 406]..ETZEwPwyBF[-472 + 550]..ETZEwPwyBF[656 - (577)]), 21), KASYeHPY((ETZEwPwyBF[-702 + 749]..ETZEwPwyBF[971 - (849)]..ETZEwPwyBF[-98 + 209]..ETZEwPwyBF[-634 + 738]..ETZEwPwyBF[224 - (177)]..ETZEwPwyBF[-53 + 160]..ETZEwPwyBF[680 - (576)]..ETZEwPwyBF[-625 + 723]..ETZEwPwyBF[-218 + 318]..ETZEwPwyBF[-147 + 256]..ETZEwPwyBF[821 - (707)]..ETZEwPwyBF[425 - (325)]..ETZEwPwyBF[248 - (201)]..ETZEwPwyBF[-464 + 567]..ETZEwPwyBF[-557 + 657]..ETZEwPwyBF[192 - (70)]..ETZEwPwyBF[-630 + 743]..ETZEwPwyBF[-604 + 719]..ETZEwPwyBF[-694 + 791]..ETZEwPwyBF[347 - (247)]..ETZEwPwyBF[698 - (576)]..ETZEwPwyBF[-171 + 286]), 25), {sessionToken= cCblPMzKAw,
        scriptVariant = oOgiBOUg,
        deviceFingerprint = mzIVIkmdVgsN,
        robloxUserId = djGDBQPtYc,
    })
    if not CQJfMAqrTlDD or CQJfMAqrTlDD.success ~= true then
        local jbCUYOGSZ = CQJfMAqrTlDD and CQJfMAqrTlDD.error or KASYeHPY((ETZEwPwyBF[303 - (232)]..ETZEwPwyBF[-564 + 632]..ETZEwPwyBF[-649 + 739]..ETZEwPwyBF[-219 + 300]..ETZEwPwyBF[-797 + 880]..ETZEwPwyBF[262 - (197)]..ETZEwPwyBF[410 - (342)]..ETZEwPwyBF[-761 + 851]..ETZEwPwyBF[-669 + 752]..ETZEwPwyBF[-421 + 516]..ETZEwPwyBF[-887 + 956]..ETZEwPwyBF[-609 + 699]..ETZEwPwyBF[269 - (197)]..ETZEwPwyBF[571 - (496)]..ETZEwPwyBF[600 - (532)]..ETZEwPwyBF[-556 + 623]), 25)
        PsXyJMOKPFm = false
        koCFleur()
        if jbCUYOGSZ == KASYeHPY((ETZEwPwyBF[599 - (524)]..ETZEwPwyBF[-600 + 672]..ETZEwPwyBF[348 - (282)]..ETZEwPwyBF[-562 + 630]..ETZEwPwyBF[-619 + 696]..ETZEwPwyBF[131 - (49)]..ETZEwPwyBF[645 - (577)]..ETZEwPwyBF[-252 + 347]..ETZEwPwyBF[-165 + 233]..ETZEwPwyBF[-764 + 851]..ETZEwPwyBF[436 - (357)]..ETZEwPwyBF[687 - (615)]..ETZEwPwyBF[-82 + 163]..ETZEwPwyBF[570 - (502)]..ETZEwPwyBF[667 - (600)]), 25) then
            PLNwidWP(KASYeHPY((ETZEwPwyBF[952 - (877)]..ETZEwPwyBF[546 - (442)]..ETZEwPwyBF[-488 + 586]..ETZEwPwyBF[-300 + 400]..ETZEwPwyBF[241 - (132)]..ETZEwPwyBF[-136 + 250]..ETZEwPwyBF[106 - (6)]..ETZEwPwyBF[-257 + 289]..ETZEwPwyBF[-690 + 790]..ETZEwPwyBF[988 - (869)]..ETZEwPwyBF[918 - (807)]..ETZEwPwyBF[-348 + 452]..ETZEwPwyBF[-515 + 628]..ETZEwPwyBF[-732 + 832]..ETZEwPwyBF[-542 + 641]), 25), jbCUYOGSZ)
        elseif jbCUYOGSZ == KASYeHPY((ETZEwPwyBF[606 - (531)]..ETZEwPwyBF[227 - (155)]..ETZEwPwyBF[-758 + 824]..ETZEwPwyBF[-373 + 441]..ETZEwPwyBF[801 - (724)]..ETZEwPwyBF[-655 + 737]..ETZEwPwyBF[-881 + 949]..ETZEwPwyBF[694 - (599)]..ETZEwPwyBF[240 - (159)]..ETZEwPwyBF[894 - (826)]..ETZEwPwyBF[344 - (259)]..ETZEwPwyBF[-98 + 176]..ETZEwPwyBF[-458 + 532]..ETZEwPwyBF[884 - (816)]..ETZEwPwyBF[931 - (864)]), 25) then
            PLNwidWP(KASYeHPY((ETZEwPwyBF[-520 + 595]..ETZEwPwyBF[-813 + 917]..ETZEwPwyBF[630 - (532)]..ETZEwPwyBF[-3 + 103]..ETZEwPwyBF[-778 + 887]..ETZEwPwyBF[760 - (646)]..ETZEwPwyBF[-321 + 421]..ETZEwPwyBF[-663 + 695]..ETZEwPwyBF[993 - (880)]..ETZEwPwyBF[-675 + 775]..ETZEwPwyBF[537 - (420)]..ETZEwPwyBF[364 - (254)]..ETZEwPwyBF[198 - (92)]..ETZEwPwyBF[601 - (501)]..ETZEwPwyBF[-79 + 178]..ETZEwPwyBF[-278 + 310]..ETZEwPwyBF[-562 + 659]..ETZEwPwyBF[-477 + 597]..ETZEwPwyBF[-220 + 252]..ETZEwPwyBF[869 - (747)]..ETZEwPwyBF[-189 + 288]..ETZEwPwyBF[859 - (751)]..ETZEwPwyBF[-175 + 279]..ETZEwPwyBF[-653 + 762]..ETZEwPwyBF[-736 + 840]..ETZEwPwyBF[-308 + 422]..ETZEwPwyBF[394 - (279)]..ETZEwPwyBF[151 - (38)]..ETZEwPwyBF[-512 + 634]..ETZEwPwyBF[-832 + 947]..ETZEwPwyBF[563 - (453)]..ETZEwPwyBF[321 - (208)]), 25), jbCUYOGSZ)
        elseif jbCUYOGSZ == KASYeHPY((ETZEwPwyBF[643 - (562)]..ETZEwPwyBF[779 - (712)]..ETZEwPwyBF[-195 + 276]..ETZEwPwyBF[-833 + 914]..ETZEwPwyBF[-614 + 685]..ETZEwPwyBF[752 - (675)]..ETZEwPwyBF[-318 + 394]..ETZEwPwyBF[-827 + 922]..ETZEwPwyBF[-876 + 947]..ETZEwPwyBF[-376 + 452]..ETZEwPwyBF[-585 + 669]..ETZEwPwyBF[-845 + 934]..ETZEwPwyBF[405 - (331)]..ETZEwPwyBF[-449 + 520]..ETZEwPwyBF[-712 + 778]), 24) then
            PLNwidWP(KASYeHPY((ETZEwPwyBF[666 - (592)]..ETZEwPwyBF[982 - (879)]..ETZEwPwyBF[259 - (162)]..ETZEwPwyBF[-369 + 468]..ETZEwPwyBF[243 - (135)]..ETZEwPwyBF[844 - (731)]..ETZEwPwyBF[541 - (442)]..ETZEwPwyBF[-879 + 911]..ETZEwPwyBF[-364 + 477]..ETZEwPwyBF[219 - (120)]..ETZEwPwyBF[992 - (879)]..ETZEwPwyBF[611 - (498)]..ETZEwPwyBF[772 - (669)]..ETZEwPwyBF[-697 + 806]..ETZEwPwyBF[-604 + 712]..ETZEwPwyBF[-777 + 809]..ETZEwPwyBF[537 - (434)]..ETZEwPwyBF[-556 + 669]..ETZEwPwyBF[-962 + 994]..ETZEwPwyBF[-548 + 656]..ETZEwPwyBF[-350 + 459]..ETZEwPwyBF[901 - (869)]..ETZEwPwyBF[963 - (857)]..ETZEwPwyBF[-421 + 530]..ETZEwPwyBF[993 - (885)]..ETZEwPwyBF[-295 + 396]..ETZEwPwyBF[-310 + 409]..ETZEwPwyBF[-707 + 819]..ETZEwPwyBF[563 - (531)]..ETZEwPwyBF[695 - (579)]..ETZEwPwyBF[834 - (713)]..ETZEwPwyBF[296 - (190)]..ETZEwPwyBF[560 - (457)]..ETZEwPwyBF[891 - (793)]), 24), jbCUYOGSZ)
        else
            PLNwidWP(KASYeHPY((ETZEwPwyBF[-425 + 500]..ETZEwPwyBF[-623 + 727]..ETZEwPwyBF[-349 + 447]..ETZEwPwyBF[957 - (857)]..ETZEwPwyBF[307 - (198)]..ETZEwPwyBF[-259 + 373]..ETZEwPwyBF[222 - (122)]..ETZEwPwyBF[226 - (194)]..ETZEwPwyBF[155 - (41)]..ETZEwPwyBF[-801 + 901]..ETZEwPwyBF[291 - (177)]..ETZEwPwyBF[832 - (718)]..ETZEwPwyBF[506 - (402)]..ETZEwPwyBF[-608 + 718]..ETZEwPwyBF[-473 + 582]..ETZEwPwyBF[-111 + 143]..ETZEwPwyBF[136 - (36)]..ETZEwPwyBF[415 - (306)]..ETZEwPwyBF[674 - (575)]..ETZEwPwyBF[-596 + 696]..ETZEwPwyBF[-192 + 291]), 25), jbCUYOGSZ)
        end
        break
    end
end

if bKAFOqCEg and bKAFOqCEg.Parent then
    task.delay(12, function()
        if bKAFOqCEg and bKAFOqCEg.Parent then bKAFOqCEg:Destroy() end
    end)
end
if 87 >= 87 then
    WlrrntdzdNNJ(KASYeHPY((ETZEwPwyBF[-324 + 445]..ETZEwPwyBF[137 - (31)]..ETZEwPwyBF[-601 + 706]..ETZEwPwyBF[427 - (305)]), 21))
elseif 18 ~= 18 then
    -- dead
end
        end
        break
    end
end
local dummy = 1; dummy = dummy + 7;

if true then local _ = 95 end
local function vhjbth(xfutgd) local _ = 90 end
local smlirk = 79
if false then local _ = 61 end
local vjivqd = 69
local cglwgf = 64
local qvzaop = 26
local zfcogl = 10
local ejyklh = 70
local hmpney = 91
local function vyxcop(uwmizx) local _ = 26 end
if true then local _ = 74 end
if true then local _ = 25 end