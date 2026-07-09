local v0={Players=game:GetService("Players"),RS=game:GetService("ReplicatedStorage"),Http=game:GetService("HttpService"),CoreGui=game:GetService("CoreGui"),CS=game:GetService("CollectionService"),UIS=game:GetService("UserInputService")}
local v1=v0.Players
local v2=v0.RS
local v3=v0.Http
local v4=v0.CoreGui
local v5=v0.CS
local v6=v0.UIS
local v7=v1.LocalPlayer
local v8=v7:WaitForChild("Backpack")
local v9=v7.Character or v7.CharacterAdded:Wait()
v7.CharacterAdded:Connect(function(v268) v9=v268
end)
local v10=require(v2.Modules.DataService)
local v11={Pets=v2:WaitForChild("GameEvents"):WaitForChild("PetsService"),Boost=v2:WaitForChild("GameEvents"):WaitForChild("PetBoostService")}
local v12=v11.Pets
local v13=v11.Boost
local v14=loadstring(game:HttpGet("https://raw.githubusercontent.com/Punpunzero02/updater/refs/heads/main/HydraMainLibrary.lua",true))()
local v15={BG=Color3.fromRGB(18,18,31),PANEL=Color3.fromRGB(12,12,20),BTN=Color3.fromRGB(26,26,46),SIDEBAR=Color3.fromRGB(14,14,24),STROKE=Color3.fromRGB(58,58,92),ACCENT=Color3.fromRGB(127,119,221),TEXT=Color3.fromRGB(220,220,235),DIM=Color3.fromRGB(100,100,130),SEL_BG=Color3.fromRGB(127,119,221),SEL_TXT=Color3.fromRGB(255,255,255),SUCCESS=Color3.fromRGB(80,210,100),ERROR=Color3.fromRGB(215,70,70),TOGGLE_ON=Color3.fromRGB(127,119,221),TOGGLE_OFF=Color3.fromRGB(35,35,55),ACTIVE_BG=Color3.fromRGB(20,20,50),ACTIVE_TXT=Color3.fromRGB(160,150,255),DARK_CARD=Color3.fromRGB(10,10,18),PHASE2=Color3.fromRGB(180,120,255)}
local v16=v14.new(v15)
if not v14.buildPetList then v14.buildPetList=function(v2360,v2361,v2362,v2363,v2364,v2365,v2366,v2367,v2368,v2369) local v2370=v2360.T
        for v3013,v3014 in ipairs(v2361:GetChildren()) do if v3014:IsA("GuiObject") then v3014:Destroy()
            end end local v2371=string.lower(v2365 or "" )
    local v2372=v2367()
    local v2373={}
    for v3015 in pairs(v2372) do table.insert(v2373,v3015)
    end table.sort(v2373,function(v3016,v3017) local v3018=(v2362[v3016] and 1) or 0
    local v3019=(v2362[v3017] and 1) or 0
    if (v3018~=v3019) then return v3018>v3019
    end return v2366(v3016)>v2366(v3017)
end)
for v3020,v3021 in ipairs(v2373) do local v3022=v2372[v3021]
if not v3022 then continue
end local v3023=v3022.PetType or "?"
if ((v2371~="") and not v3023:lower():find(v2371,1,true)) then continue
end local v3024=v2362[v3021]
local v3025=v2363[v3021]==true
local v3026=(v3022.PetData and (v3022.PetData.Level or 0)) or 0
local v3027=v2366(v3021)
local v3028=(v3022.PetData and (v3022.PetData.BaseWeight or 0)) or 0
local v3029=(v2368(v3021) and " ❤") or ""
local v3030=(v3024 and " (active)") or ""
local v3031=string.format("%s%s%s | Age %d | %.2f KG | Base %.2f",v3023,v3030,v3029,v3026,v3027,v3028)
local v3032=v2360:button(v2361,v3031,UDim2.new(1,0,0,26),nil,(v3025 and v2370.SEL_BG) or (v3024 and v2370.ACTIVE_BG) or Color3.fromRGB(13,13,13) ,(v3025 and v2370.SEL_TXT) or (v3024 and v2370.ACTIVE_TXT) or v2370.TEXT ,9)
v3032.LayoutOrder=v3020
v3032:SetAttribute("uuid",v3021)
v3032.TextXAlignment=Enum.TextXAlignment.Left
v2360:pad(v3032,0,8,4,0)
v2360:stroke(v3032,(v3025 and v2370.ACCENT) or v2370.STROKE ,1)
v3032.MouseButton1Click:Connect(function() v2364(v3021,v3032,v2363)
end)
end end
end local v17=v3:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/wardz25/updater/refs/heads/main/pets.json"))
local v18={}
task.spawn(function() local v269,v270=pcall(function() return v3:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/wardz25/updater/refs/heads/main/PetAssetId.json"))
    end)
if (v269 and v270) then v18=v270
end end)
local v19=v3:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/wardz25/updater/refs/heads/main/mutation.json"))
local v20="PET_UUID"
local v21="d"
local v22="HydraX.json"
local v23=CFrame.new( -22.884647369384766,0.13552331924438477,55.001434326171875)
local v24={EQUIP_DELAY=0.08,UNEQUIP_DELAY=0.05,UNEQUIP_BUFFER=0.01,AH_EQUIP_DELAY=0.15,AH_UNEQUIP_DELAY=0.1,AH_POST_UNEQUIP_BUFFER=0.5,AH_KOI_SAFE_DELAY=1,AH_KOI_POST_HATCH=1.5,AH_SEAL_SAFE_DELAY=1,AH_SEAL_POST_SELL=2,POLL_RATE=3}
local v25=false
if (v271 and v272) then _HT=v272
    _HT.init({username=v7.Name,userId=tostring(v7.UserId),secret=v26,endpoint=v27})
end end)
local function v29(v273,v274) if not _HT then return
end pcall(function() _HT.track(v273,v274)
end)
end local v30={EQUIP_WAIT=0.1,FIRE_WAIT=0.1,UNEQUIP_WAIT=0.05,APPLY_DELAY=0.5,TEAM_CHECK=3}
local v31={{name="Small Toy",size="Small",btype="Toy"},{name="Medium Toy",size="Medium",btype="Toy"},{name="Large Toy",size="Large",btype="Toy"},{name="Small Treat",size="Small",btype="Treat"},{name="Medium Treat",size="Medium",btype="Treat"}}
local function v32(v275) for v1332,v1333 in ipairs(v31) do if (v1333.name==v275) then return v1333.size,v1333.btype
        end end return "Small","Toy"
end local v33={petTeams={},elephant={levelingTeam=nil,elephantTeam=nil,targetWeight=3.5,levelThreshold=50,phase2Team=nil,phase2Enabled=false,phase2Threshold=50,levelTo100=true,gardenSlots=1,gardenMode="A",useExtraPets=false,extraPets={},useExtraElePets=false,extraElePets={}},targets={},pickplace={petTimer=0,pickDelay=0.2,placeDelay=0.1,selPets={},selUUIDs={},modeB=false},petboost={mode1={boostOptions={},selPets={}},mode2={pairs={},boostOptions={}}},toggles={autoKG=false,pickplace=false,mode1boost=false,mode2boost=false,autoCollect=false,hidePlants=false,autoRefresh=false,autoTradeWorld=false},misc={rsInterval=19},webhook={url="",continueSession=false},leveling={mainTeam=nil,optTeam=nil,optEnabled=false,optThreshold=50,targets={}},autoCollect={interval=0.1,sellAfter=false,selFruits={},selVariants={},stopWhenFull=false,maxInv=200},autoHatch={eggName="Paradise Egg",eggCount=13,eggSpacing=7,teamCD=nil,teamKoi=nil,teamSeal=nil,teamBronto=nil,brontoEnabled=true,brontoThresh=4,sellPets={},sellThresh=0,favDelay=0.1,espEnabled=true,running=false,autoSellWhenFull=false,petInvMax=200},autoTrade={targetPlayer=nil,selPets={},kgMode="Above",kgVal=0,ageMode="Above",ageVal=0,autoAccept=false,autoGift=false}}
local v34="Small Toy"
local v35={}
v35.save=function() if not writefile then return
    end pcall(function() writefile(v22,v3:JSONEncode(v33))
end)
end
local v37=v35.save
local v38={{name="7 Mimic + 1 Bald Eagle",desc="Max passive Mimic, 1 Eagle filler",slots={{petType="Mimic Octopus",count=7},{petType="Bald Eagle",count=1}}},{name="Koi Max Passive",desc="Max hatch rate bonus, highest KG + mutation",slots={{petType="Koi",count=8}}},{name="Seal Max Passive",desc="Max sell return chance, always 8 Seal",slots={{petType="Seal",count=8}}},{name="Bronto Max Passive",desc="Max hatch size bonus (~30%), rest filled with Koi",slots={{petType="Brontosaurus",count=8},{petType="Koi",count=8}}},{name="Magpie Method",desc="1 Mimic, 3 Magpie, 1 Cockatrice, 3 filler priority",slots={{petType="Mimic Octopus",count=1},{petType="Magpie",count=3},{petType="Cockatrice",count=1}},priorityFiller={"Giant Ant","Red Giant Ant","Silver Monkey","Cape Buffalo"},fillerCount=3}}
local function v39(v276) if not v276 then return {}
    end for v1334,v1335 in ipairs(v38) do if (v1335.name==v276) then local v3036=(function() local v3562=v10:GetData()
            return (v3562 and v3562.PetsData and v3562.PetsData.PetInventory.Data) or {}
        end)()
    local v3037={}
    for v3563,v3564 in pairs(v3036) do local v3565=v3564.PetType or ""
        if not v3037[v3565] then v3037[v3565]={}
        end table.insert(v3037[v3565],v3563)
end local v3038={a=0,b=0.1,c=0.2,d=0.3,g=0.5,s=0.05,z=0.08,A=0.22,J=0.01,K=0.03,L=0.045,M=0.06,N=0.07,O=0.07,P=0.3,V=0.2,X=0.3,Y=0.3,Z=0.3,["@"]=0.23,EV=0.3,RJ=0.25}
local function v3039(v3566) local v3567=v3036[v3566]
if ( not v3567 or not v3567.PetData) then return 0
end local v3568=v3567.PetData.BaseWeight or 0
local v3569=v3567.PetData.MutationType or "m"
return v3568 * (1 + (v3038[v3569] or 0))
end local function v3040(v3570) local v3571=v3036[v3570]
if ( not v3571 or not v3571.PetData) then return 0
end local v3572=v3571.PetData.BaseWeight or 0
local v3573=v3571.PetData.MutationType or "m"
return (5.35 + (v3572 * 0.1)) * (1 + (v3038[v3573] or 0))
end for v3574,v3575 in pairs(v3037) do table.sort(v3575,function(v3914,v3915) return v3039(v3914)>v3039(v3915)
end)
end if (v1335.name=="Magpie Method") then local v3916={}
for v4138,v4139 in ipairs(v1335.slots) do local v4140=v3037[v4139.petType] or {}
    local v4141=0
    for v4258,v4259 in ipairs(v4140) do if ( #v3916>=8) then break
        end if (v4141>=v4139.count) then break
    end table.insert(v3916,v4259)
v4141=v4141 + 1
end end local v3917=0
local v3918=v1335.fillerCount or 3
local v3919={}
for v4142,v4143 in ipairs(v1335.priorityFiller or {} ) do for v4260,v4261 in ipairs(v3037[v4143] or {} ) do local v4262=false
        for v4361,v4362 in ipairs(v3916) do if (v4362==v4261) then v4262=true
                break
            end end if not v4262 then table.insert(v3919,v4261)
    end end end table.sort(v3919,function(v4144,v4145) return v3039(v4144)>v3039(v4145)
end)
for v4146,v4147 in ipairs(v3919) do if ( #v3916>=8) then break
end if (v3917>=v3918) then break
end table.insert(v3916,v4147)
v3917=v3917 + 1
end return v3916
end if (v1335.name=="Bronto Max Passive") then local v3920={}
local v3921=0
local v3922=v3037['Brontosaurus'] or {}
table.sort(v3922,function(v4148,v4149) return v3040(v4148)>v3040(v4149)
end)
for v4150,v4151 in ipairs(v3922) do if ( #v3920>=8) then break
end if (v3921>=30) then break
end table.insert(v3920,v4151)
v3921=v3921 + v3040(v4151)
end local v3923=v3037['Koi'] or {}
for v4152,v4153 in ipairs(v3923) do if ( #v3920>=8) then break
end table.insert(v3920,v4153)
end return v3920
end local v3041={}
for v3576,v3577 in ipairs(v1335.slots) do local v3578=v3037[v3577.petType] or {}
local v3579=0
for v3924,v3925 in ipairs(v3578) do if ( #v3041>=8) then break
    end if (v3579>=v3577.count) then break
end table.insert(v3041,v3925)
v3579=v3579 + 1
end end if ( #v3041<8) then for v4154,v4155 in ipairs(v1335.slots) do local v4156=v3037[v4155.petType] or {}
for v4263,v4264 in ipairs(v4156) do if ( #v3041>=8) then break
    end local v4265=false
for v4363,v4364 in ipairs(v3041) do if (v4364==v4264) then v4265=true
        break
    end end if not v4265 then table.insert(v3041,v4264)
end end end end return v3041
end end return (v33.petTeams[v276] and v33.petTeams[v276].uuids) or {}
end local function v40(v277,v278,v279,v280,v281,v282) for v1336,v1337 in ipairs(v277:GetChildren()) do if v1337:IsA("GuiObject") then v1337:Destroy()
    end end local v283={}
if _G._NH_BUILTIN_TEAMS then for v3042,v3043 in ipairs(_G._NH_BUILTIN_TEAMS) do table.insert(v283,v3043.name)
end end for v1338 in pairs(v281.petTeams) do table.insert(v283,v1338)
end table.sort(v283)
if ( #v283==0) then local v2374=v280:label(v277," (save a team first)",UDim2.new(1,0,0,22),nil,v282.DIM,9)
v2374.LayoutOrder=1
return 1
end for v1339,v1340 in ipairs(v283) do local v1341=v279==v1340
local v1342=false
if _G._NH_BUILTIN_TEAMS then for v3580,v3581 in ipairs(_G._NH_BUILTIN_TEAMS) do if (v3581.name==v1340) then v1342=true
            break
        end end end local v1343=(v1342 and Color3.fromRGB(40,20,80)) or Color3.fromRGB(14,14,14)
local v1344=(v1342 and Color3.fromRGB(180,160,255)) or v282.TEXT
local v1345=(v1342 and Color3.fromRGB(80,60,160)) or v282.STROKE
if v1341 then v1343=(v1342 and Color3.fromRGB(80,50,160)) or v282.SEL_BG
    v1344=v282.SEL_TXT
    v1345=(v1342 and Color3.fromRGB(160,120,255)) or v282.ACCENT
end local v1346=v280:button(v277,v1340,UDim2.new(1,0,0,22),nil,v1343,v1344,9)
v1346.LayoutOrder=v1339
v1346.TextXAlignment=Enum.TextXAlignment.Left
v280:pad(v1346,0,8,0,0)
v280:stroke(v1346,v1345,1)
if v1342 then local v3045=Instance.new("ImageLabel",v1346)
    v3045.Size=UDim2.new(0,16,0,16)
    v3045.Position=UDim2.new(1, -20,0.5, -8)
    v3045.BackgroundTransparency=1
    v3045.Image="rbxthumb://type=Asset&id=5669312251&w=150&h=150"
    v3045.ScaleType=Enum.ScaleType.Fit
    v3045.ZIndex=v1346.ZIndex + 1
end v1346.MouseButton1Click:Connect(function() v278(v1340)
end)
end return #v283
end local function v41() if ( not readfile or not isfile or not isfile(v22)) then return
end local v284,v285=pcall(function() return v3:JSONDecode(readfile(v22))
end)
if ( not v284 or not v285) then return
end if v285.petTeams then v33.petTeams=v285.petTeams
end if v285.elephant then for v3053,v3054 in pairs(v285.elephant) do v33.elephant[v3053]=v3054
end end if v285.targets then v33.targets=v285.targets
end if v285.pickplace then for v3056,v3057 in pairs(v285.pickplace) do v33.pickplace[v3056]=v3057
end end if (v33.pickplace.selUUIDs==nil) then v33.pickplace.selUUIDs={}
end if (v33.pickplace.modeB==nil) then v33.pickplace.modeB=false
end if v285.petboost then if v285.petboost.mode1 then if (type(v285.petboost.mode1.boostOptions)=="table") then v33.petboost.mode1.boostOptions=v285.petboost.mode1.boostOptions
    elseif v285.petboost.mode1.boostOption then v33.petboost.mode1.boostOptions={[v285.petboost.mode1.boostOption]=true}
    end if v285.petboost.mode1.selPets then v33.petboost.mode1.selPets=v285.petboost.mode1.selPets
end end if v285.petboost.mode2 then for v3926,v3927 in pairs(v285.petboost.mode2) do v33.petboost.mode2[v3926]=v3927
end end end if v285.toggles then for v3059,v3060 in pairs(v285.toggles) do v33.toggles[v3059]=v3060
end end if v285.misc then for v3062,v3063 in pairs(v285.misc) do v33.misc[v3062]=v3063
end end if v285.webhook then for v3065,v3066 in pairs(v285.webhook) do v33.webhook[v3065]=v3066
end end if (v33.webhook.continueSession==nil) then v33.webhook.continueSession=false
end if v285.leveling then for v3068,v3069 in pairs(v285.leveling) do v33.leveling[v3068]=v3069
end end if v285.autoHatch then for v3071,v3072 in pairs(v285.autoHatch) do v33.autoHatch[v3071]=v3072
end end if v285.autoTrade then for v3074,v3075 in pairs(v285.autoTrade) do v33.autoTrade[v3074]=v3075
end end if v285.autoNM then if not v33.autoNM then v33.autoNM={lvTeam=nil,hsTeam=nil,lvThresh=30,targets={}}
end for v3077,v3078 in pairs(v285.autoNM) do v33.autoNM[v3077]=v3078
end end if v285.autoEV then if not v33.autoEV then v33.autoEV={pvTeam=nil,lvTeam=nil,levelTo100=false,autoCleanseFirst=false,targets={}}
end for v3080,v3081 in pairs(v285.autoEV) do v33.autoEV[v3080]=v3081
end end if v285.autoAgeBreaker then if not v33.autoAgeBreaker then v33.autoAgeBreaker={targets={},tumbalKgMax=2,tumbalAgeMax=99,skipEnabled=false}
end local v2383=v285.autoAgeBreaker
if (type(v2383.targets)=="table") then v33.autoAgeBreaker.targets=v2383.targets
end if (v2383.tumbalKgMax~=nil) then v33.autoAgeBreaker.tumbalKgMax=v2383.tumbalKgMax
end if (v2383.tumbalAgeMax~=nil) then v33.autoAgeBreaker.tumbalAgeMax=v2383.tumbalAgeMax
end if (v2383.skipEnabled~=nil) then v33.autoAgeBreaker.skipEnabled=v2383.skipEnabled
end if (v2383.maxLevel~=nil) then v33.autoAgeBreaker.maxLevel=v2383.maxLevel
end if (v2383.autoStart~=nil) then v33.autoAgeBreaker.autoStart=v2383.autoStart
end end if (v33.autoAgeBreaker and (v33.autoAgeBreaker.skipEnabled==nil)) then v33.autoAgeBreaker.skipEnabled=false
end if (v33.autoAgeBreaker and (v33.autoAgeBreaker.maxLevel==nil)) then v33.autoAgeBreaker.maxLevel=125
end if (v33.autoAgeBreaker and (v33.autoAgeBreaker.autoStart==nil)) then v33.autoAgeBreaker.autoStart=false
end if v285.autoMutMachine then if not v33.autoMutMachine then v33.autoMutMachine={targets={},targetMut="Golden",cdTeam=nil,claimTeam=nil,lvTeam=nil,lvThresh=50}
end for v3083,v3084 in pairs(v285.autoMutMachine) do v33.autoMutMachine[v3083]=v3084
end end if v285.autoCollect then if (type(v285.autoCollect.selFruits)=="table") then v33.autoCollect.selFruits=v285.autoCollect.selFruits
end if (type(v285.autoCollect.selVariants)=="table") then v33.autoCollect.selVariants=v285.autoCollect.selVariants
end if (v285.autoCollect.interval~=nil) then v33.autoCollect.interval=v285.autoCollect.interval
end if (v285.autoCollect.sellAfter~=nil) then v33.autoCollect.sellAfter=v285.autoCollect.sellAfter
end if (v285.autoCollect.stopWhenFull~=nil) then v33.autoCollect.stopWhenFull=v285.autoCollect.stopWhenFull
end if (v285.autoCollect.maxInv~=nil) then v33.autoCollect.maxInv=v285.autoCollect.maxInv
end end v33.autoHatch.brontoEnabled=true
if (v33.elephant.levelTo100==nil) then v33.elephant.levelTo100=true
end if (v33.elephant.phase2Enabled==nil) then v33.elephant.phase2Enabled=false
end if (v33.elephant.phase2Threshold==nil) then v33.elephant.phase2Threshold=50
end if (v33.elephant.gardenSlots==nil) then v33.elephant.gardenSlots=1
end if (v33.elephant.gardenMode==nil) then v33.elephant.gardenMode="A"
end if (v33.elephant.useExtraPets==nil) then v33.elephant.useExtraPets=false
end if (v33.elephant.extraPets==nil) then v33.elephant.extraPets={}
end if (v33.elephant.useExtraElePets==nil) then v33.elephant.useExtraElePets=false
end if (v33.elephant.extraElePets==nil) then v33.elephant.extraElePets={}
end if ( not v33.petboost.mode1.boostOptions or not next(v33.petboost.mode1.boostOptions)) then v33.petboost.mode1.boostOptions={["Small Toy"]=true}
end if (v33.leveling.optThreshold==nil) then v33.leveling.optThreshold=50
end if (v33.leveling.optEnabled==nil) then v33.leveling.optEnabled=false
end if (type(v33.leveling.targets)~="table") then v33.leveling.targets={}
end if (v285.autoHatch and v285.autoHatch.specialBronto) then if not v33.autoHatch.specialBronto then v33.autoHatch.specialBronto={enabled=true,pets={}}
end if (v285.autoHatch.specialBronto.enabled~=nil) then v33.autoHatch.specialBronto.enabled=v285.autoHatch.specialBronto.enabled
end if (type(v285.autoHatch.specialBronto.pets)=="table") then v33.autoHatch.specialBronto.pets=v285.autoHatch.specialBronto.pets
end end local v287={eggName="Paradise Egg",eggCount=13,eggSpacing=7,teamCD=nil,teamKoi=nil,teamSeal=nil,teamBronto=nil,brontoEnabled=true,brontoThresh=4,sellPets={},sellThresh=0,favDelay=0.1,espEnabled=true,running=false,ahUnequipDelay=0.1,ahEquipDelay=0.15,autoSellWhenFull=false,petInvMax=200,postUnequipBuffer=0.5,koiSafeDelay=1,koiPostHatch=1.5,sealSafeDelay=1,sealPostSell=2}
for v1350,v1351 in pairs(v287) do if (v33.autoHatch[v1350]==nil) then v33.autoHatch[v1350]=v1351
end end end v41()
if v33.autoHatch.ahEquipDelay then v24.AH_EQUIP_DELAY=v33.autoHatch.ahEquipDelay
end if v33.autoHatch.ahUnequipDelay then v24.AH_UNEQUIP_DELAY=v33.autoHatch.ahUnequipDelay
end if v33.autoHatch.postUnequipBuffer then v24.AH_POST_UNEQUIP_BUFFER=v33.autoHatch.postUnequipBuffer
end if v33.autoHatch.koiSafeDelay then v24.AH_KOI_SAFE_DELAY=v33.autoHatch.koiSafeDelay
end if v33.autoHatch.koiPostHatch then v24.AH_KOI_POST_HATCH=v33.autoHatch.koiPostHatch
end if v33.autoHatch.sealSafeDelay then v24.AH_SEAL_SAFE_DELAY=v33.autoHatch.sealSafeDelay
end if v33.autoHatch.sealPostSell then v24.AH_SEAL_POST_SELL=v33.autoHatch.sealPostSell
end local v42="HydraX_Session.json"
local v43={startTime=0,cycleCount=0,totalHatched=0,eggBefore=0,eggCurrent=0,koiProc=0,sealProc=0,koiLastCycle=0,sealLastCycle=0,petTypes={},specials={huge={count=0,pets={}},titan={count=0,pets={}},godly={count=0,pets={}}}}
local v44={}
v44.save=function() if not writefile then return
    end pcall(function() writefile(v42,v3:JSONEncode({AH={startTime=v43.startTime,cycleCount=v43.cycleCount,totalHatched=v43.totalHatched,eggBefore=v43.eggBefore,eggCurrent=v43.eggCurrent,koiProc=v43.koiProc,sealProc=v43.sealProc,koiLastCycle=v43.koiLastCycle,sealLastCycle=v43.sealLastCycle,petTypes=v43.petTypes,specials=v43.specials},KG={startTime=0,doneCount=0,totalPets=0}}))
end)
end
v44.load=function() if ( not readfile or not isfile or not isfile(v42)) then return nil
end local v288,v289=pcall(function() return v3:JSONDecode(readfile(v42))
end)
if ( not v288 or not v289) then return nil
end return v289
end
v44.delete=function() if ( not isfile or not isfile(v42)) then return
end pcall(function() if delfile then delfile(v42)
end end)
end
local v48=v44.save
local v49=v44.load
local v50=v44.delete
if (type(v33.petboost.mode1.selPets)~="table") then v33.petboost.mode1.selPets={}
end local v51={}
v51.getInv=function() local v290=v10:GetData()
return (v290 and v290.PetsData and v290.PetsData.PetInventory.Data) or {}
end
v51.getKG=function(v291) for v1367,v1368 in ipairs({v8,v9}) do for v2400,v2401 in ipairs(v1368:GetChildren()) do if (v2401:IsA("Tool") and (v2401:GetAttribute(v20)==v291)) then local v3615=v2401:GetAttribute("KG")
            if v3615 then return v3615
            end local v3616=v2401.Name:match("%[(%d+%.?%d*)%s*KG%]")
        if v3616 then return tonumber(v3616)
        end end end end local v292=v51.getInv()
return (v292[v291] and (v292[v291].PetData.BaseWeight or 0)) or 0
end
v51.getAge=function(v293) local v294=v51.getInv()
return (v294[v293] and (v294[v293].PetData.Level or 0)) or 0
end
v51.getBase=function(v295) local v296=v51.getInv()
return (v296[v295] and (v296[v295].PetData.BaseWeight or 0)) or 0
end
v51.getPType=function(v297) local v298=v51.getInv()
return (v298[v297] and (v298[v297].PetType or "Unknown")) or "Unknown"
end
v51.isFav=function(v299) for v1369,v1370 in ipairs({v8,v9}) do for v2402,v2403 in ipairs(v1370:GetChildren()) do if (v2403:IsA("Tool") and (v2403:GetAttribute(v20)==v299)) then return v2403:GetAttribute(v21)==true
        end end end return false
end
v51.findPetTool=function(v300) for v1371,v1372 in ipairs({v8,v9}) do for v2404,v2405 in ipairs(v1372:GetChildren()) do if (v2405:IsA("Tool") and (v2405:GetAttribute(v20)==v300)) then return v2405
        end end end return nil
end
v51.getMutName=function(v301) local v302=v51.getInv()
local v303=v302[v301]
if ( not v303 or not v303.PetData) then return ""
end local v304=v303.PetData.MutationType or ""
if ((v304=="") or (v304=="m")) then return ""
end return v19[v304] or v304
end
local v60=v51.getInv
local v61=v51.getKG
local v62=v51.getAge
local v63=v51.getBase
local v64=v51.getPType
local v65=v51.isFav
local v66=v51.findPetTool
local v67=v51.getMutName
local function v68(v305) if not v305 then return nil
    end local v306=tostring(v305):match("%d+")
if not v306 then return nil
end local v307,v308=pcall(function() return v3:JSONDecode(game:HttpGet("https://thumbnails.roblox.com/v1/assets?assetIds=" .. v306 .. "&size=150x150&format=Png&isCircular=false" ))
end)
if (v307 and v308 and v308.data and v308.data[1] and v308.data[1].imageUrl) then return v308.data[1].imageUrl
end return nil
end local function v69(v309) local v310=v33.webhook.url
if ( not v310 or (v310=="")) then return
end if ( not string.match(v310,"^https://discord") and not string.match(v310,"^https://ptb.discord") and not string.match(v310,"^https://canary.discord")) then return
end task.spawn(function() local v1373,v1374=pcall(function() local v2406=v309 and v309[1] and v309[1].title and v309[1].title:find("Special Pet")
    local v2407=v3:JSONEncode({username=v7.Name,avatar_url="https://raw.githubusercontent.com/Punpunzero02/updater/main/HydraX.png",content=(v2406 and "@everyone") or nil ,embeds=v309})
    local v2408=(syn and syn.request) or (http and http.request) or request
    if v2408 then v2408({Url=v310,Method="POST",Headers={["Content-Type"]="application/json"},Body=v2407})
    else v3:PostAsync(v310,v2407,Enum.HttpContentType.ApplicationJson,false)
end end)
if not v1373 then warn("[VoidHub Webhook]",v1374)
end end)
end local v70={}
local function v71(v311,v312,v313,v314,v315,v316,v317,v318,v319) local v320=math.min((v313/v314) * 100 ,100)
local v321=math.floor(v320/10 )
local v322=string.rep("█",v321) .. string.rep("░",10 -v321 )
if v319 then if not v70[v319] then v70[v319]={times={},gains={}}
    end local v2409=v70[v319]
table.insert(v2409.times,v315)
table.insert(v2409.gains,v313-v312 )
if ( #v2409.times>5) then table.remove(v2409.times,1)
end if ( #v2409.gains>5) then table.remove(v2409.gains,1)
end end local v323,v324=v315,v313-v312
if (v319 and v70[v319]) then local v2410=v70[v319]
local v2411,v2412=0,0
for v3087,v3088 in ipairs(v2410.times) do v2411=v2411 + v3088
end for v3089,v3090 in ipairs(v2410.gains) do v2412=v2412 + v3090
end v323=v2411/ #v2410.times
v324=v2412/ #v2410.gains
end local v325=math.max(v314-v313 ,0)
local v326=((v324>0) and math.ceil(v325/v324 )) or 0
local v327=v326 * v323
local v328=((v326>0) and string.format("~%d cycle lagi (~%s)",v326,v14.fmtTime(v327))) or "Almost done!"
local function v329(v1375) local v1376=string.format("%.3f",v1375)
    v1376=v1376:gsub("%.?0+$","")
    return v1376
end v69({{title="🔄 Cycle Complete",color=5793266,description=string.format("**%s** | Queue `%d / %d`\n\n`%s` **%.1f%%**",v311,v317 or 0 ,v318 or 0 ,v322,v320),fields={{name="⚖️ Weight",value=string.format("%s → **%s** kg",v329(v312),v329(v313)),inline=true},{name="🎯 Target",value=string.format("%s kg",v329(v314)),inline=true},{name="🔁 Phase",value=v316 or "?" ,inline=true},{name="⏱️ Cycle",value=v14.fmtTime(v315),inline=true},{name="📈 Gain",value=string.format("+%s kg",v329(v313-v312 )),inline=true},{name="🔮 Est. Done",value=v328,inline=true}},footer={text="Hydra Hub • " .. os.date("%d/%m/%Y %H:%M:%S") },thumbnail={url="https://raw.githubusercontent.com/Punpunzero02/updater/main/HydraX.png"}}})
end local function v72(v330,v331,v332,v333,v334,v335) local v336=math.min(math.floor(v331/1 ),5)
local v337=string.rep("⭐",v336) .. string.rep("✩",5 -v336 )
v69({{title="✅ Pet Finished!",color=5763719,description=string.format("**%s** has reached **Level 100**!\n%s",v330,v337),fields={{name="⚖️ Final Base",value=string.format("**%.3f** kg",v331),inline=true},{name="🎯 Queue",value=string.format("%d / %d done",v334 or 0 ,v335 or 0 ),inline=true},{name="🏁 Total Time",value=v14.fmtTime(v332),inline=false},{name="⚡ Phase 2 Time",value=v14.fmtTime(v333),inline=true},{name="🐢 Phase 1 Time",value=v14.fmtTime(v332-v333 ),inline=true}},footer={text="Hydra Hub 🐉 • " .. os.date("%d/%m/%Y %H:%M:%S") },thumbnail={url="https://raw.githubusercontent.com/Punpunzero02/updater/main/HydraX.png"}}})
end local function v73() v69({{title=" Hydra Hub — Connection Test",color=5793266,description="Webhook Connected!",fields={{name="✅ Status",value="Online",inline=true},{name="🕐 Time",value=os.date("%H:%M:%S"),inline=true},{name="👤 Player",value=v7.Name,inline=true}},footer={text=" Hydra Hub • vX"}}})
end local function v74(v338,v339,v340,v341,v342) local v343=v33.webhook.url
if ( not v343 or (v343=="")) then return
end local v344=""
if (v340>=9) then v344="Godly"
elseif (v340>=7) then v344="Titan"
elseif (v340>=5) then v344="Huge"
end local v345=v18[v338]
if not v345 then local v2413,v2414=pcall(function() return v3:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/wardz25/updater/refs/heads/main/PetAssetId.json"))
end)
if (v2413 and v2414) then v345=v2414[v338]
end end local v346=v68(v345)
v346=v346 or "https://raw.githubusercontent.com/Punpunzero02/updater/main/HydraX.png"
local v347=v338
local v348=((v344~="") and v344) or "Normal"
local v349=5793266
if (v344=="Godly") then v349=16766720
elseif (v344=="Titan") then v349=12632256
elseif (v344=="Huge") then v349=5763719
end v69({{title="🐾 Special Pet Found — " .. v347 ,color=v349,fields={{name="🐾 Pet Info",value=">>> " .. v347 .. "\nWeight: " .. string.format("%.2f KG",v339) .. "\nBronto: " .. string.format("%.2f KG",v340) .. "\nAge: Age " .. tostring(v341 or 0 ) ,inline=false},{name="🥚 Egg Info",value=">>> Egg: " .. (v342 or "?") .. "\nTier: " .. v348 ,inline=false},{name="🔀 Info",value=">>> Player: ||" .. v7.Name .. "||" .. "\nTime: " .. os.date("%d/%m/%Y %H:%M:%S") ,inline=false}},thumbnail={url=v346},footer={text="Hydra Hub • " .. os.date("%d/%m/%Y %H:%M:%S") }}})
end local function v75(v350) if (v350>=9) then return "godly"
end if (v350>=7) then return "titan"
end if (v350>=5) then return "huge"
end return nil
end local function v76() local v351=v10:GetData()
if ( not v351 or not v351.PetsData) then return {}
end local v352={}
for v1377 in pairs(v351.PetsData.PetInventory.Data or {} ) do v352[v1377]=true
end return v352
end local function v77(v353) local v354=v10:GetData()
if ( not v354 or not v354.PetsData) then return {}
end local v355=v354.PetsData.PetInventory.Data or {}
local v356={}
for v1379,v1380 in pairs(v355) do if not v353[v1379] then table.insert(v356,{uuid=v1379,data=v1380})
    end end return v356
end local function v78(v357) for v1381,v1382 in ipairs(v357) do local v1383=v1382.data
    if ( not v1383 or not v1383.PetData) then continue
    end local v1384=v1383.PetType or "Unknown"
local v1385=v1383.PetData.BaseWeight or 0
v43.totalHatched=v43.totalHatched + 1
if not v43.petTypes[v1384] then v43.petTypes[v1384]={count=0,totalKG=0,minKG=math.huge,maxKG=0}
end local v1387=v43.petTypes[v1384]
v1387.count=v1387.count + 1
v1387.totalKG=v1387.totalKG + v1385
v1387.minKG=math.min(v1387.minKG,v1385)
v1387.maxKG=math.max(v1387.maxKG,v1385)
local v1392=v33.autoHatch.specialBronto
if (v1392 and v1392.enabled and v1392.pets[v1384]) then task.spawn(function() task.wait(1)
        local v3619=v66(v1382.uuid)
        if (v3619 and (v3619:GetAttribute(v21)~=true)) then pcall(function() FavRemote:FireServer(v3619)
            end)
        task.wait(0.3)
    end local v3620=(v1382.data.PetData and (v1382.data.PetData.Level or 0)) or 0
local v3621=v33.autoHatch.eggName or "?"
task.wait(1)
local v3622=v1385
local v3623=v66(v1382.uuid)
if v3623 then local v4161=v3623:GetAttribute("KG")
    if v4161 then v3622=v4161
    else local v4366=v3623.Name:match("%[(%d+%.?%d*)%s*KG%]")
    if v4366 then v3622=tonumber(v4366) or v1385
    end end end v74(v1384,v1385,v3622,v3620,v3621)
end)
end local v1393=v75(v1385)
if v1393 then local v3092=v43.specials[v1393]
v3092.count=v3092.count + 1
table.insert(v3092.pets,string.format("%s (%.2fkg)",v1384,v1385))
end local v1394=v33.autoHatch.brontoThresh or 4
if (v1385>=v1394) then local v3094=(v1382.data.PetData and (v1382.data.PetData.Level or 0)) or 0
local v3095=v33.autoHatch.eggName or "?"
task.spawn(function() task.wait(2)
    local v3624=v1385
    local v3625=v66(v1382.uuid)
    if v3625 then local v4162=v3625:GetAttribute("KG")
        if v4162 then v3624=v4162
        else local v4367=v3625.Name:match("%[(%d+%.?%d*)%s*KG%]")
        if v4367 then v3624=tonumber(v4367) or v1385
        end end end v74(v1384,v1385,v3624,v3094,v3095)
end)
end end end local function v79(v358) if not v358 then return "None"
end local v359=v39(v358)
if ( #v359==0) then return "None"
end local v360=v60()
local v361={}
for v1395,v1396 in ipairs(v359) do local v1397=v360[v1396]
    if not v1397 then continue
    end local v1398=v1397.PetType or "?"
local v1399=(v1397.PetData and (v1397.PetData.MutationType or "")) or ""
local v1400=((v1399~="") and (v1399~="m") and (v19[v1399] or v1399)) or ""
local v1401=((v1400~="") and (v1400 .. " " .. v1398)) or v1398
v361[v1401]=(v361[v1401] or 0) + 1
end local v362={}
for v1403,v1404 in pairs(v361) do table.insert(v362,v1404 .. " " .. v1403 )
end table.sort(v362)
return table.concat(v362,", ")
end local function v80() local v363=os.time() -v43.startTime
local v364=v363/math.max(v43.cycleCount,1)
local v365=v43.eggCurrent-v43.eggBefore
local v366=((v365>=0) and ("+" .. v365)) or tostring(v365)
local v367=((v43.cycleCount>0) and (v43.totalHatched/v43.cycleCount)) or 0
local v368=((v367>0) and string.format("%.2f%%",(v43.koiLastCycle/v367) * 100 )) or "0.00%"
local v369=((v367>0) and string.format("%.2f%%",(v43.sealLastCycle/v367) * 100 )) or "0.00%"
local v370={}
local v371={}
for v1405,v1406 in pairs(v43.petTypes) do table.insert(v371,{name=v1405,data=v1406})
end table.sort(v371,function(v1407,v1408) return v1407.data.count>v1408.data.count
end)
for v1409,v1410 in ipairs(v371) do local v1411=v1410.data
table.insert(v370,string.format("• %s x%d (%.2f-%.2fkg)",v1410.name,v1411.count,v1411.minKG,v1411.maxKG))
end v69({{title="🥚 Hatch Cycle #" .. v43.cycleCount ,color=15121980,fields={{name="👤 Profile",value="**Username:** ||" .. v7.Name .. "||" ,inline=false},{name="🐾 Teams",value=table.concat({string.format("**Core:** %s",v79(v33.autoHatch.teamCD)),string.format("**Hatch:** %s",v79(v33.autoHatch.teamKoi)),string.format("**Special:** %s",v79(v33.autoHatch.teamBronto)),string.format("**Sell:** %s",v79(v33.autoHatch.teamSeal))},"\n"),inline=false},{name="⚜️ Special Statistics",value=table.concat({string.format("⭐ Special: %d",v43.specials.huge.count + v43.specials.titan.count + v43.specials.godly.count ),((v43.specials.godly.count>0) and string.format(" Godly x%d",v43.specials.godly.count)) or "💛 Godly" ,((v43.specials.titan.count>0) and string.format(" Titan x%d",v43.specials.titan.count)) or "🥈 Titan" ,((v43.specials.huge.count>0) and string.format(" Huge x%d",v43.specials.huge.count)) or "🌟 Huge" },"\n"),inline=false},{name="💎 Overall Statistics",value=(( #v370>0) and table.concat(v370,"\n")) or "No pets hatched" ,inline=false},{name="🥚 Egg Statistics",value=table.concat({string.format("🥚 Egg Before: %d",v43.eggBefore),string.format("📦 Current Egg: %d",v43.eggCurrent),string.format("📊 Net Result: %s",v366),string.format(""),string.format("🍀 Koi Cashback: %d (%s)",v43.koiLastCycle,v368),string.format("🤝 Seal Cashback: %d (%s)",v43.sealLastCycle,v369),string.format("✨ Total Cashback: %d",v43.koiLastCycle + v43.sealLastCycle )},"\n"),inline=false},{name="📈 Hatch Statistics",value=table.concat({string.format("🔄 Hatch Cycles: %d",v43.cycleCount),string.format("🐾 Total Hatched: %d",v43.totalHatched),string.format("🪺 Overall Pet Sell: %d",v43.totalHatched-(v43.koiProc + v43.sealProc) ),string.format(""),string.format("⏱️ Cycle Duration: %s",v14.fmtTime(math.floor(v364))),string.format("🕐 All Time Duration: %s",v14.fmtTime(math.floor(v363)))},"\n"),inline=false}},footer={text="Hydra Hub • " .. os.date("%d/%m/%Y %H:%M:%S") },thumbnail={url="https://raw.githubusercontent.com/Punpunzero02/updater/main/HydraX.png"}}})
end local v81=nil
local function v82() if not v81 then local v2415,v2416=pcall(function() local v3096=require(v2.Modules.ReplicationClass).new("ActivePetsService_Replicator")
        v3096:YieldUntilData()
        return v3096
    end)
if v2415 then v81=v2416
end end return v81
end local function v83() local v372=v82()
if not v372 then return {}
end local v373,v374=pcall(function() return v372:YieldUntilData().Table
end)
if ( not v373 or not v374) then return {}
end local v375=v374.ActivePetStates
local v376=v375[v7.Name] or v375[tonumber(v7.Name)] or {}
local v377={}
for v1412 in pairs(v376) do table.insert(v377,v1412)
end return v377
end local v84={IsEquipping=false,PP_Processing={},GlobalBoostApplying=false}
local v85={}
v85.unequipAll=function() v84.IsEquipping=true
    for v1413,v1414 in ipairs(v83()) do pcall(function() v12:FireServer("UnequipPet",v1414)
        end)
    task.wait(v24.UNEQUIP_DELAY)
end task.wait(v24.UNEQUIP_BUFFER)
v84.IsEquipping=false
end
v85.getFarmCF=function() local v379=workspace:FindFirstChild("Farm")
if v379 then local v2417=v379:FindFirstChild(v7.Name)
    if v2417 then local v3626=v2417:FindFirstChild("Important")
        if v3626 then local v4163=v3626:FindFirstChild("Plant_Locations")
            if v4163 then local v4368=v4163:GetChildren()
                if ( #v4368>0) then return v4368[1]:GetPivot()
                end end end end end end
v85.equipList=function(v380) v84.IsEquipping=true
local v382=v85.getFarmCF()
for v1415,v1416 in ipairs(v380) do pcall(function() v12:FireServer("EquipPet",v1416,v382)
    end)
task.wait(v24.EQUIP_DELAY)
end v84.IsEquipping=false
end
v85.waitUntilEquipped=function(v383,v384) v384=v384 or 8
local v385=os.clock()
while (os.clock() -v385)=8) then break
end if (v1421~=v386) then table.insert(v388,v1421)
end end return v388
end
local v91,v92,v93,v94,v95=v85.unequipAll,v85.getFarmCF,v85.equipList,v85.waitUntilEquipped,v85.buildEquip
local v96=false
local v97=nil
local v98={}
local v99={}
local function v100() v96=true
    task.spawn(function() while v96 do task.wait(v30.TEAM_CHECK)
            if (v84.IsEquipping or not v25) then continue
            end if not next(v99) then continue
        end local v2423=v83()
    local v2424,v2425={},{}
    for v3097 in pairs(v99) do local v3098=false
        for v3627,v3628 in ipairs(v2423) do if (v3628==v3097) then v3098=true
                break
            end end if not v3098 then table.insert(v2424,v3097)
    end end for v3099,v3100 in ipairs(v2423) do if not v99[v3100] then table.insert(v2425,v3100)
end end if (( #v2425>0) or ( #v2424>0)) then v84.IsEquipping=true
for v3929,v3930 in ipairs(v2425) do pcall(function() v12:FireServer("UnequipPet",v3930)
end)
task.wait(v24.UNEQUIP_DELAY)
end local v3630=v92()
for v3931,v3932 in ipairs(v2424) do pcall(function() v12:FireServer("EquipPet",v3932,v3630)
end)
task.wait(v24.EQUIP_DELAY)
end v84.IsEquipping=false
end end end)
end local function v101() v96=false
table.clear(v99)
v98={}
v97=nil
end local function v102(v389,v390) table.clear(v99)
for v1422,v1423 in ipairs(v389) do v99[v1423]=true
end for v1425,v1426 in ipairs(v390) do v99[v1426]=true
end end local function v103(v391,v392) local v393=v60()
local v394={}
local v395=0
for v1428 in pairs(v33.elephant.extraPets) do v395=v395 + 1
end print("[FILLER DEBUG] extraPets count:",v395,"maxCount:",v392)
for v1429 in pairs(v33.elephant.extraPets) do local v1430=v393[v1429]~=nil
local v1431=v391[v1429]~=nil
print("[FILLER DEBUG] uuid:",v1429,"inInv:",v1430,"excluded:",v1431)
if ( not v1431 and v1430) then table.insert(v394,v1429)
end end table.sort(v394,function(v1432,v1433) return v61(v1432)>v61(v1433)
end)
print("[FILLER DEBUG] candidates after filter:", #v394)
local v396={}
for v1434=1,math.min(v392, #v394) do table.insert(v396,v394[v1434])
end print("[FILLER DEBUG] returning:", #v396,"fillers")
return v396
end local function v104(v397,v398) local v399=v60()
local v400={}
for v1435 in pairs(v33.elephant.extraElePets) do if ( not v397[v1435] and v399[v1435]) then table.insert(v400,v1435)
    end end table.sort(v400,function(v1436,v1437) return v61(v1436)>v61(v1437)
end)
local v401={}
for v1438=1,math.min(v398, #v400) do table.insert(v401,v400[v1438])
end return v401
end local v105=require(v2.Data.PetRegistry.PetBoostRegistry)
local function v106(v402,v403,v404) local v405,v406=pcall(function() return v10:GetData()
end)
if ( not v405 or not v406) then return false
end local v407=v406.PetsData and v406.PetsData.PetInventory and v406.PetsData.PetInventory.Data
if ( not v407 or not v407[v402]) then return false
end local v408=v407[v402].PetData and v407[v402].PetData.Boosts
if ( not v408 or not next(v408)) then return false
end local v409={}
for v1439,v1440 in pairs(v408) do local v1441=v1440.BoostType or v1440.Type
local v1442=v1440.BoostAmount or v1440.Amount
local v1443=v105.BoostTypeStatData and v105.BoostTypeStatData[v1441]
if (v1443 and v1443.Amount) then local v3101=v105.BoostTypeToPetModelName[v1441]
    for v3631,v3632 in pairs(v1443.Amount) do if (v3632==v1442) then v409[v3631 .. " " .. v3101 ]=true
        end end end end return v409[v403 .. " " .. v404 ]==true
end local function v107(v410,v411) for v1444,v1445 in ipairs(v8:GetChildren()) do if (v1445:IsA("Tool") and v5:HasTag(v1445,"PetBoost") and string.find(v1445.Name,v410) and string.find(v1445.Name,v411)) then return v1445
    end end return nil
end local function v108(v412,v413,v414) if v84.GlobalBoostApplying then return false
end if v106(v412,v413,v414) then return false
end local v415=v107(v413,v414)
if not v415 then return false
end v84.GlobalBoostApplying=true
for v1446,v1447 in ipairs(v9:GetChildren()) do if v1447:IsA("Tool") then v1447.Parent=v8
end end task.wait(v30.UNEQUIP_WAIT)
pcall(function() v415.Parent=v9
end)
task.wait(v30.EQUIP_WAIT)
pcall(function() v13:FireServer("ApplyBoost",v412)
end)
task.wait(v30.FIRE_WAIT)
pcall(function() local v1449=v9:FindFirstChildWhichIsA("Tool")
    if (v1449 and v5:HasTag(v1449,"PetBoost")) then v1449.Parent=v8
    end end)
task.wait(0.5)
local v417=v106(v412,v413,v414)
v84.GlobalBoostApplying=false
return v417
end pcall(function() v4:FindFirstChild("HydraHubUI"):Destroy()
end)
local v109=Instance.new("ScreenGui")
v109.Name="HydraHubUI"
v109.ResetOnSpawn=false
v109.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
v109.IgnoreGuiInset=true
v109.Parent=v4
local v116=workspace.CurrentCamera.ViewportSize
local v117=game:GetService("UserInputService")
local v118=v117.TouchEnabled and not v117.KeyboardEnabled
local v119,v120=420,320
local v121=1
if v118 then local v1450=v116.X/420
    v121=math.clamp(v1450 * 0.72 ,0.65,1.4)
end local v122=v16:frame(v109,UDim2.new(0,v119,0,v120),UDim2.new(0.5, -math.floor(v119/2 ),0.5, -math.floor(v120/2 )),v15.BG)
v122.Active=true
v16:corner(v122,8)
v16:stroke(v122,v15.ACCENT,1)
if (v118 and (v121~=1)) then local v1451=Instance.new("UIScale",v122)
    v1451.Scale=v121
end local v124=v16:frame(v122,UDim2.new(1,0,0,30),nil,v15.PANEL)
v16:corner(v124,8)
v16:stroke(v124,v15.STROKE,1)
local v125=Instance.new("ImageLabel",v124)
v125.Size=UDim2.new(0,16,0,16)
v125.Position=UDim2.new(0,6,0.5, -8)
v125.BackgroundTransparency=1
v125.Image="rbxthumb://type=Asset&id=5669312251&w=150&h=150"
v125.ScaleType=Enum.ScaleType.Fit
v16:label(v124,"|",UDim2.new(0,8,1,0),UDim2.new(0,24,0,0),v15.DIM,13,Enum.TextXAlignment.Center)
v16:label(v124,"HYDRA HUB",UDim2.new(1, -80,1,0),UDim2.new(0,34,0,0),v15.TEXT,12)
local v132=v16:button(v124,"X",UDim2.new(0,24,0,22),UDim2.new(1, -28,0.5, -11),v15.ERROR,v15.TEXT,10)
v16:stroke(v132,v15.ERROR,1)
local v133=v16:button(v124,"-",UDim2.new(0,24,0,22),UDim2.new(1, -56,0.5, -11),v15.BTN,v15.TEXT,16)
v16:stroke(v133,v15.STROKE,1)
v132.MouseButton1Click:Connect(function() v25=false
    v109:Destroy()
end)
do local v418,v419,v420,v421=false,nil,nil,nil
v124.InputBegan:Connect(function(v1453) if ((v1453.UserInputType==Enum.UserInputType.MouseButton1) or (v1453.UserInputType==Enum.UserInputType.Touch)) then v418=true
        v419=v1453
        v420=v1453.Position
        v421=v122.Position
        v1453.Changed:Connect(function() if (v1453.UserInputState==Enum.UserInputState.End) then v418=false
            end end)
end end)
v124.InputChanged:Connect(function(v1454) if ((v1454.UserInputType==Enum.UserInputType.MouseMovement) or (v1454.UserInputType==Enum.UserInputType.Touch)) then v419=v1454
end end)
v6.InputChanged:Connect(function(v1455) if ( not v418 or (v1455~=v419)) then return
end local v1456=v1455.Position-v420
v122.Position=UDim2.new(v421.X.Scale,v421.X.Offset + v1456.X ,v421.Y.Scale,v421.Y.Offset + v1456.Y )
end)
end local v134=v16:frame(v122,UDim2.new(1,0,0,28),UDim2.new(0,0,0,30),v15.PANEL)
v16:stroke(v134,v15.STROKE,1)
local v135={"MAIN","AUTOMATION","COMING SOON","COMING SOON"}
local v136={}
local v137={}
local v138=v16:frame(v122,UDim2.new(1,0,1, -58),UDim2.new(0,0,0,58),v15.BG,1)
for v422=1,4 do local v423=v16:frame(v138,UDim2.new(1,0,1,0),nil,v15.BG,1)
    v423.Visible=v422==1
    v137[v422]=v423
end local v139=math.floor(420/4 )
for v426,v427 in ipairs(v135) do local v428=v16:button(v134,v427,UDim2.new(0,v139-2 ,0,22),UDim2.new(0,((v426-1) * v139) + 1 ,0.5, -11),((v426==1) and Color3.fromRGB(20,20,20)) or v15.BTN ,((v426==1) and v15.ACCENT) or v15.DIM ,8)
v16:stroke(v428,v15.STROKE,1)
v136[v426]=v428
v428.MouseButton1Click:Connect(function() for v2426,v2427 in ipairs(v137) do v2427.Visible=v2426==v426
        v136[v2426].BackgroundColor3=((v2426==v426) and Color3.fromRGB(20,20,20)) or v15.BTN
        v136[v2426].TextColor3=((v2426==v426) and v15.ACCENT) or v15.DIM
    end end)
end for v430,v431 in ipairs({3,4}) do v16:label(v137[v431],"🔒 COMING SOON",UDim2.new(1,0,0,20),UDim2.new(0,0,0.5, -10),v15.DIM,13,Enum.TextXAlignment.Center)
end local function v140() local v432=v137[2]
local v433=v16:frame(v432,UDim2.new(0,52,1,0),nil,v15.SIDEBAR)
v16:stroke(v433,Color3.fromRGB(18,18,18),1)
local v434=v16:sidebar(v433)
local v435=v16:iconBtn(v434,"🍎","FRUIT")
v16:sidebarDivider(v434)
local v436=v16:iconBtn(v434,"🛒","SHOP")
v16:sidebarDivider(v434)
local v437=v16:iconBtn(v434,"🎟️","TRADE")
local v438=v16:frame(v432,UDim2.new(1, -56,1, -2),UDim2.new(0,54,0,1),v15.BG,1)
local v439=v16:frame(v438,UDim2.new(1,0,1,0),nil,v15.BG,1)
v439.Visible=true
do local v1458=v16:scroll(v439,UDim2.new(1,0,1,0))
    v1458.ScrollingDirection=Enum.ScrollingDirection.Y
    v1458.AutomaticCanvasSize=Enum.AutomaticSize.Y
    v1458.ScrollBarThickness=3
    v1458.ScrollBarImageColor3=v15.ACCENT
    local v1466=Instance.new("Frame",v1458)
    v1466.Size=UDim2.new(1,0,0,0)
    v1466.BackgroundTransparency=1
    v1466.AutomaticSize=Enum.AutomaticSize.Y
    v16:list(v1466,6)
    v16:pad(v1466,6,6,6,20)
    local v1470=false
    local v1471=v33.autoCollect.selFruits
    local v1472=v33.autoCollect.selVariants
    local v1473=v33.autoCollect.sellAfter
    local v1474=v33.autoCollect.interval
    local v1475={"Normal","Gold","Rainbow","Silver","Diamond","Jelly"}
    local v1476={SellInv=v2:WaitForChild("GameEvents"):WaitForChild("Sell_Inventory"),Teleport=v2:WaitForChild("GameEvents"):WaitForChild("PlayerTeleportTriggered"),_collect=nil}
    local v1477=v1476.SellInv
    local v1478=v1476.Teleport
    local v1479=game:GetService("CollectionService")
    local function v1480() if v1476._collect then return v1476._collect
        end local v2431,v2432=pcall(function() return v2:WaitForChild("GameEvents"):WaitForChild("Crops"):WaitForChild("Collect",5)
    end)
if (v2431 and v2432) then v1476._collect=v2432
end return v1476._collect
end local function v1481() local v2433=workspace:FindFirstChild("Farm")
if not v2433 then return nil
end for v3106,v3107 in ipairs(v2433:GetChildren()) do local v3108=v3107:FindFirstChild("Important")
if v3108 then local v3933=v3108:FindFirstChild("Data")
    if v3933 then local v4266=v3933:FindFirstChild("Owner")
        if (v4266 and (v4266.Value==v7.Name)) then return v3107
        end end end end return nil
end local function v1482(v2434) local v2435=v2434:GetAttribute("DoneGrowTime")
if not v2435 then return false
end if (workspace:GetServerTimeNow()0) and not v1471[v2436]) then return false
end local v2438=0
for v3110 in pairs(v1472) do v2438=v2438 + 1
end if (v2438>0) then local v3634=v2434:FindFirstChild("Variant")
local v3635=(v3634 and tostring(v3634.Value)) or "Normal"
if not v1472[v3635] then return false
end end return true
end local function v1483() local v2439=v7.Character
if not v2439 then return
end local v2440,v2441=pcall(function() return workspace.Tutorial_Points.Tutorial_Point_2.CFrame
end)
if ( not v2440 or not v2441) then return
end v2439:PivotTo(v2441)
task.wait(0.1)
pcall(function() v1478:FireServer("Sell Shop")
end)
task.wait(1)
pcall(function() v1477:FireServer()
end)
task.wait(0.5)
end local function v1484() while v1473 do task.wait(3)
    local v3111=v10:GetData()
    local v3112=0
    if (v3111 and v3111.InventoryData) then for v4165,v4166 in pairs(v3111.InventoryData) do if (v4166.ItemType=="Holdable") then v3112=v3112 + 1
            end end end if (v3112>=200) then v1483()
end end end local v1485=v33.autoCollect.stopWhenFull
local v1486=v33.autoCollect.maxInv
local function v1487() local v2442=v10:GetData()
    if ( not v2442 or not v2442.InventoryData) then return 0
    end local v2443=0
for v3113,v3114 in pairs(v2442.InventoryData) do if (v3114.ItemType=="Holdable") then v2443=v2443 + 1
    end end return v2443
end local function v1488() while v1470 do if (v1485 and (v1487()>=v1486)) then task.wait(1)
        continue
    end local v3115=v1481()
if v3115 then local v3934={}
    local v3935={}
    for v4167,v4168 in ipairs(v3115:GetDescendants()) do if (v1479:HasTag(v4168,"Harvestable") and v1482(v4168) and not v3935[v4168]) then v3935[v4168]=true
            table.insert(v3934,v4168)
        end end for v4169,v4170 in ipairs(v3934) do if not v1470 then break
    end if (v1485 and (v1487()>=v1486)) then break
end local v4171=v1480()
if v4171 then pcall(function() v4171:FireServer({v4170})
end)
end if (v1474>0) then task.wait(v1474)
end end end task.wait(((v1474>0) and v1474) or 0.1 )
end end local v1489=v16:accordion(v1466,"🍎 AUTO COLLECT",1,true)
local v1490=v1489.Inner
local v1491=v16:frame(v1490,UDim2.new(1,0,0,26),nil,v15.BTN)
v1491.LayoutOrder=0
v16:corner(v1491,5)
v16:stroke(v1491,v15.STROKE,1)
v16:label(v1491,"Interval (sec)",UDim2.new(1, -80,1,0),UDim2.new(0,6,0,0),v15.DIM,9).Font=Enum.Font.Gotham
local v1495=v16:input(v1491,v1474,"",UDim2.new(0,64,0,20),UDim2.new(1, -68,0.5, -10))
v1495.FocusLost:Connect(function() local v2444=tonumber(v1495.Text)
    if (v2444 and (v2444>=0)) then v1474=v2444
        v33.autoCollect.interval=v2444
        v37()
    else v1495.Text=tostring(v1474)
end end)
local v1496=v16:frame(v1490,UDim2.new(1,0,0,26),nil,v15.BTN)
v1496.LayoutOrder=1
v16:corner(v1496,5)
v16:stroke(v1496,v15.STROKE,1)
local v1498=v16:label(v1496,"Fruit: ALL",UDim2.new(1, -96,1,0),UDim2.new(0,6,0,0),v15.DIM,9)
v1498.Font=Enum.Font.Gotham
local v1500=v16:button(v1496,"Select >",UDim2.new(0,84,0,20),UDim2.new(1, -88,0.5, -10),v15.BTN,v15.ACCENT,9)
v16:stroke(v1500,v15.STROKE,1)
local function v1501() local v2445=0
    for v3116 in pairs(v1471) do v2445=v2445 + 1
    end if (v2445==0) then v1498.Text="Fruit: ALL"
    v1498.TextColor3=v15.DIM
else v1498.Text="Fruit: " .. v2445 .. " selected"
v1498.TextColor3=v15.ACCENT
end end v1501()
local v1502=v16:frame(v1490,UDim2.new(1,0,0,26),nil,v15.BTN)
v1502.LayoutOrder=2
v16:corner(v1502,5)
v16:stroke(v1502,v15.STROKE,1)
local v1504=v16:label(v1502,"Variant: ALL",UDim2.new(1, -96,1,0),UDim2.new(0,6,0,0),v15.DIM,9)
v1504.Font=Enum.Font.Gotham
local v1506=v16:button(v1502,"Select >",UDim2.new(0,84,0,20),UDim2.new(1, -88,0.5, -10),v15.BTN,v15.ACCENT,9)
v16:stroke(v1506,v15.STROKE,1)
local function v1507() local v2446=0
    for v3117 in pairs(v1472) do v2446=v2446 + 1
    end if (v2446==0) then v1504.Text="Variant: ALL"
    v1504.TextColor3=v15.DIM
else v1504.Text="Variant: " .. v2446 .. " selected"
v1504.TextColor3=v15.ACCENT
end end v1507()
local v1508=v16:frame(v1490,UDim2.new(1,0,0,26),nil,v15.BTN)
v1508.LayoutOrder=25
v16:corner(v1508,5)
v16:stroke(v1508,v15.STROKE,1)
v16:label(v1508,"Stop Collect When Full",UDim2.new(1, -100,1,0),UDim2.new(0,6,0,0),v15.TEXT,9).Font=Enum.Font.GothamBold
local v1512=v16:input(v1508,v1486,"",UDim2.new(0,40,0,20),UDim2.new(1, -94,0.5, -10))
v1512.FocusLost:Connect(function() local v2447=tonumber(v1512.Text)
    if (v2447 and (v2447>=1)) then v1486=v2447
        v33.autoCollect.maxInv=v2447
        v37()
    else v1512.Text=tostring(v1486)
end end)
v16:toggle(v1508,UDim2.new(1, -52,0.5, -11),v33.autoCollect.stopWhenFull,function(v2448) v1485=v2448
v33.autoCollect.stopWhenFull=v2448
v37()
end)
local v1513=v16:frame(v1490,UDim2.new(1,0,0,26),nil,v15.BTN)
v1513.LayoutOrder=3
v16:corner(v1513,5)
v16:stroke(v1513,v15.STROKE,1)
v16:label(v1513,"Auto Sell All (Inventory Full)",UDim2.new(1, -52,1,0),UDim2.new(0,6,0,0),v15.TEXT,9).Font=Enum.Font.GothamBold
v16:toggle(v1513,UDim2.new(1, -52,0.5, -11),v1473,function(v2450) v1473=v2450
    v33.autoCollect.sellAfter=v2450
    v37()
    if v2450 then task.spawn(v1484)
    end end)
local v1516=v16:frame(v1490,UDim2.new(1,0,0,26),nil,v15.BTN)
v1516.LayoutOrder=5
v16:corner(v1516,5)
v16:stroke(v1516,v15.STROKE,1)
v16:label(v1516,"AUTO COLLECT",UDim2.new(1, -100,1,0),UDim2.new(0,6,0,0),v15.TEXT,9).Font=Enum.Font.GothamBold
local v1519=v16:label(v1516,"● IDLE",UDim2.new(0,60,1,0),UDim2.new(1, -108,0,0),v15.DIM,8)
v1519.Font=Enum.Font.Gotham
v16:toggle(v1516,UDim2.new(1, -52,0.5, -11),v33.toggles.autoCollect,function(v2452) v1470=v2452
    v33.toggles.autoCollect=v2452
    v37()
    v1519.Text=(v2452 and "● ON") or "● IDLE"
    v1519.TextColor3=(v2452 and v15.SUCCESS) or v15.DIM
    if v2452 then task.spawn(v1488)
    end end)
if v33.toggles.autoCollect then v1470=true
task.defer(function() task.spawn(v1488)
end)
end local v1521=v16:frame(v439,UDim2.new(1,0,1,0),nil,v15.BG)
v1521.Visible=false
v1521.ZIndex=25
local v1524=v16:frame(v1521,UDim2.new(1,0,0,26),nil,v15.PANEL)
v16:stroke(v1524,v15.STROKE,1)
v16:label(v1524,"Select Fruits to Collect",UDim2.new(1, -96,1,0),UDim2.new(0,8,0,0),v15.ACCENT,10)
local v1525=v16:button(v1524,"Select All",UDim2.new(0,64,0,20),UDim2.new(1, -92,0.5, -10),v15.BTN,v15.ACCENT,8)
v16:stroke(v1525,v15.STROKE,1)
local v1526=v16:button(v1524,"X",UDim2.new(0,24,0,20),UDim2.new(1, -28,0.5, -10),v15.ERROR,v15.TEXT,10)
v16:stroke(v1526,v15.ERROR,1)
v1526.MouseButton1Click:Connect(function() v1521.Visible=false
    v1501()
end)
local v1527=v16:input(v1521,"","Search fruit...",UDim2.new(1, -8,0,22),UDim2.new(0,4,0,28))
v1527.TextColor3=v15.TEXT
v1527.Font=Enum.Font.Gotham
local v1531=v16:scroll(v1521,UDim2.new(1,0,1, -56),UDim2.new(0,0,0,54))
v16:list(v1531,3)
v16:pad(v1531,3,4,4,3)
local v1532={}
do local v2457={}
    local v2458,v2459=pcall(function() return game:HttpGet("https://raw.githubusercontent.com/Punpunzero02/updater/refs/heads/main/fruits.json")
    end)
if (v2458 and v2459) then local v3652,v3653=pcall(function() return v3:JSONDecode(v2459)
    end)
if (v3652 and v3653) then for v4267,v4268 in ipairs(v3653) do if not v2457[v4268] then v2457[v4268]=true
            table.insert(v1532,v4268)
        end end end end end table.sort(v1532)
local function v1533() for v3118,v3119 in ipairs(v1531:GetChildren()) do if v3119:IsA("GuiObject") then v3119:Destroy()
end end local v2460=string.lower(v1527.Text)
local v2461={}
for v3120,v3121 in ipairs(v1532) do if ((v2460=="") or v3121:lower():find(v2460,1,true)) then table.insert(v2461,v3121)
    end end local v2462= #v2461>0
for v3122,v3123 in ipairs(v2461) do if not v1471[v3123] then v2462=false
    break
end end v1525.Text=(( #v2461==0) and "Select All") or (v2462 and "Unselect All") or "Select All"
v1525.TextColor3=(v2462 and v15.SEL_TXT) or v15.ACCENT
v1525.BackgroundColor3=(v2462 and v15.SEL_BG) or v15.BTN
for v3124,v3125 in ipairs(v2461) do local v3126=v1471[v3125]==true
    local v3127=v16:button(v1531,v3125,UDim2.new(1,0,0,24),nil,(v3126 and v15.SEL_BG) or Color3.fromRGB(13,13,13) ,(v3126 and v15.SEL_TXT) or v15.TEXT ,9)
    v3127.LayoutOrder=v3124
    v3127.TextXAlignment=Enum.TextXAlignment.Left
    v16:pad(v3127,0,8,4,0)
    v16:corner(v3127,4)
    v16:stroke(v3127,(v3126 and v15.ACCENT) or v15.STROKE ,1)
    v3127.MouseButton1Click:Connect(function() if v1471[v3125] then v1471[v3125]=nil
        else v1471[v3125]=true
    end v33.autoCollect.selFruits=v1471
v37()
v1501()
v16:updateRowVisual(v3127,v1471[v3125]==true ,v15.SEL_BG,v15.SEL_TXT,Color3.fromRGB(13,13,13),v15.TEXT,v15.ACCENT,v15.STROKE)
end)
end end v1525.MouseButton1Click:Connect(function() local v2466=string.lower(v1527.Text)
local v2467={}
for v3131,v3132 in ipairs(v1532) do if ((v2466=="") or v3132:lower():find(v2466,1,true)) then table.insert(v2467,v3132)
    end end local v2468= #v2467>0
for v3133,v3134 in ipairs(v2467) do if not v1471[v3134] then v2468=false
    break
end end if v2468 then for v3936,v3937 in ipairs(v2467) do v1471[v3937]=nil
end else for v3939,v3940 in ipairs(v2467) do v1471[v3940]=true
end end v33.autoCollect.selFruits=v1471
v37()
v1501()
v1533()
end)
v1527:GetPropertyChangedSignal("Text"):Connect(v1533)
v1500.MouseButton1Click:Connect(function() v1521.Visible=true
    v1533()
end)
local v1534=v16:frame(v439,UDim2.new(1,0,1,0),nil,v15.BG)
v1534.Visible=false
v1534.ZIndex=25
local v1537=v16:frame(v1534,UDim2.new(1,0,0,26),nil,v15.PANEL)
v16:stroke(v1537,v15.STROKE,1)
v16:label(v1537,"Select Variants to Collect",UDim2.new(1, -36,1,0),UDim2.new(0,8,0,0),v15.ACCENT,10)
local v1538=v16:button(v1537,"X",UDim2.new(0,24,0,20),UDim2.new(1, -28,0.5, -10),v15.ERROR,v15.TEXT,10)
v16:stroke(v1538,v15.ERROR,1)
v1538.MouseButton1Click:Connect(function() v1534.Visible=false
    v1507()
end)
local v1539=v16:scroll(v1534,UDim2.new(1,0,1, -32),UDim2.new(0,0,0,32))
v16:list(v1539,4)
v16:pad(v1539,4,4,4,4)
local function v1540() for v3135,v3136 in ipairs(v1539:GetChildren()) do if v3136:IsA("GuiObject") then v3136:Destroy()
        end end for v3137,v3138 in ipairs(v1475) do local v3139=v1472[v3138]==true
    local v3140=v16:button(v1539,v3138,UDim2.new(1,0,0,28),nil,(v3139 and v15.SEL_BG) or Color3.fromRGB(13,13,13) ,(v3139 and v15.SEL_TXT) or v15.TEXT ,10)
    v3140.LayoutOrder=v3137
    v3140.TextXAlignment=Enum.TextXAlignment.Left
    v16:pad(v3140,0,8,0,0)
    v16:corner(v3140,5)
    v16:stroke(v3140,(v3139 and v15.ACCENT) or v15.STROKE ,1)
    v3140.MouseButton1Click:Connect(function() if v1472[v3138] then v1472[v3138]=nil
        else v1472[v3138]=true
    end v33.autoCollect.selVariants=v1472
v37()
v1507()
v16:updateRowVisual(v3140,v1472[v3138]==true ,v15.SEL_BG,v15.SEL_TXT,Color3.fromRGB(13,13,13),v15.TEXT,v15.ACCENT,v15.STROKE)
end)
end end v1506.MouseButton1Click:Connect(function() v1534.Visible=true
v1540()
end)
local v1541=false
local v1542=1
local v1543=v2:WaitForChild("GameEvents"):WaitForChild("Plant_RE")
local function v1544() for v3144,v3145 in ipairs(v9:GetChildren()) do if (v3145:IsA("Tool") and (v3145:GetAttribute("Seed")~=nil)) then return v3145:GetAttribute("Seed"),v3145
        end end return nil,nil
end local function v1545(v2473) local v2474={}
local v2475=v2473 and v2473:FindFirstChild("Important")
if not v2475 then return v2474
end local v2476=v2475:FindFirstChild("Plant_Locations")
if not v2476 then return v2474
end for v3146,v3147 in ipairs(v2476:GetChildren()) do if v3147:IsA("BasePart") then table.insert(v2474,v3147)
end end return v2474
end local function v1546(v2477,v2478,v2479) local v2480=v1545(v2477)
if ( #v2480==0) then return {}
end local v2481={}
for v3148,v3149 in ipairs(v2480) do if ( #v2481>=v2478) then break
end local v3150=v3149.CFrame
local v3151=v3149.Size.X
local v3152=v3149.Size.Z
local v3153=3
local v3154=math.max(1,math.floor((v3151-(v3153 * 2))/v2479 ))
local v3155=math.max(1,math.floor((v3152-(v3153 * 2))/v2479 ))
local v3156=( -(v3154-1) * v2479)/2
local v3157=( -(v3155-1) * v2479)/2
for v3656=0,v3155-1 do for v3942=0,v3154-1 do if ( #v2481>=v2478) then break
        end local v3943=(v3150 * CFrame.new(v3156 + (v3942 * v2479) ,0,v3157 + (v3656 * v2479) )).Position
    table.insert(v2481,Vector3.new(v3943.X,0.135,v3943.Z))
end if ( #v2481>=v2478) then break
end end end return v2481
end local function v1547() while v1541 do local v3158=v1481()
    if v3158 then local v3944,v3945=v1544()
        if (v3944 and v3945) then local v4269=v1546(v3158,200,3)
            for v4370,v4371 in ipairs(v4269) do if not v1541 then break
                end local v4372,v4370=v1544()
            if not v4372 then break
            end pcall(function() v1543:FireServer(Vector3.new(v4371.X,v4371.Y,v4371.Z),v4372)
        end)
    task.wait(0.1)
end end end task.wait(v1542)
end end local v1548=v16:accordion(v1466,"🌱 AUTO PLANT",3,false)
local v1549=v1548.Inner
local v1550=v16:frame(v1549,UDim2.new(1,0,0,26),nil,v15.BTN)
v1550.LayoutOrder=0
v16:corner(v1550,5)
v16:stroke(v1550,v15.STROKE,1)
v16:label(v1550,"Interval (sec)",UDim2.new(1, -80,1,0),UDim2.new(0,6,0,0),v15.DIM,9).Font=Enum.Font.Gotham
local v1553=v16:input(v1550,v1542,"",UDim2.new(0,64,0,20),UDim2.new(1, -68,0.5, -10))
v1553.FocusLost:Connect(function() local v2482=tonumber(v1553.Text)
    if (v2482 and (v2482>0)) then v1542=v2482
        v33.autoCollect.interval=v2482
        v37()
    else v1553.Text=tostring(v1542)
end end)
local v1554=v16:frame(v1549,UDim2.new(1,0,0,26),nil,v15.BTN)
v1554.LayoutOrder=2
v16:corner(v1554,5)
v16:stroke(v1554,v15.STROKE,1)
v16:label(v1554,"AUTO PLANT",UDim2.new(1, -100,1,0),UDim2.new(0,6,0,0),v15.TEXT,9).Font=Enum.Font.GothamBold
local v1557=v16:label(v1554,"● IDLE",UDim2.new(0,60,1,0),UDim2.new(1, -108,0,0),v15.DIM,8)
v1557.Font=Enum.Font.Gotham
v16:toggle(v1554,UDim2.new(1, -52,0.5, -11),false,function(v2483) v1541=v2483
    v1557.Text=(v2483 and "● ON") or "● IDLE"
    v1557.TextColor3=(v2483 and v15.SUCCESS) or v15.DIM
    if v2483 then task.spawn(v1547)
    end end)
end local v441=v16:frame(v438,UDim2.new(1,0,1,0),nil,v15.BG,1)
v441.Visible=false
do local v1559=v16:scroll(v441,UDim2.new(1,0,1,0))
    v1559.ScrollingDirection=Enum.ScrollingDirection.Y
    v1559.AutomaticCanvasSize=Enum.AutomaticSize.Y
    v1559.ScrollBarThickness=3
    v1559.ScrollBarImageColor3=v15.ACCENT
    local v1567=Instance.new("Frame",v1559)
    v1567.Size=UDim2.new(1,0,0,0)
    v1567.BackgroundTransparency=1
    v1567.AutomaticSize=Enum.AutomaticSize.Y
    v16:list(v1567,6)
    v16:pad(v1567,6,6,6,20)
    v16:label(v1567,"🚧 Coming Soon",UDim2.new(1,0,0,20),nil,v15.DIM,10,Enum.TextXAlignment.Center).LayoutOrder=1
end local v443=v16:frame(v438,UDim2.new(1,0,1,0),nil,v15.BG,1)
v443.Visible=false
do local v1572=v2:WaitForChild("GameEvents"):WaitForChild("GiftPet")
    local v1573=v2:WaitForChild("GameEvents"):WaitForChild("AcceptPetGift")
    local v1574=v2:WaitForChild("GameEvents"):WaitForChild("PetGiftingService",10)
    if not v1574 then warn("[AutoGift] PetGiftingService not found!")
    end local v1575=v33.autoTrade.autoGift
local v1576=v33.autoTrade.autoAccept
local v1577=v33.autoTrade.targetPlayer
local v1578=v33.autoTrade.selPets
local v1579=nil
local v1580=v16:scroll(v443,UDim2.new(1,0,1,0))
v1580.ScrollingDirection=Enum.ScrollingDirection.Y
v1580.AutomaticCanvasSize=Enum.AutomaticSize.Y
v1580.ScrollBarThickness=3
v1580.ScrollBarImageColor3=v15.ACCENT
local v1588=Instance.new("Frame",v1580)
v1588.Size=UDim2.new(1,0,0,0)
v1588.BackgroundTransparency=1
v1588.AutomaticSize=Enum.AutomaticSize.Y
v16:list(v1588,6)
v16:pad(v1588,6,6,6,20)
local v1592=v16:accordion(v1588,"AUTO ACCEPT GIFT",1,true)
local v1593=v1592.Inner
local v1594=v16:frame(v1593,UDim2.new(1,0,0,26),nil,v15.BTN)
v1594.LayoutOrder=1
v16:corner(v1594,5)
v16:stroke(v1594,v15.STROKE,1)
v16:label(v1594,"AUTO ACCEPT ALL",UDim2.new(1, -100,1,0),UDim2.new(0,6,0,0),v15.TEXT,9).Font=Enum.Font.GothamBold
local v1598=v16:label(v1594,"● IDLE",UDim2.new(0,60,1,0),UDim2.new(1, -108,0,0),v15.DIM,8)
v1598.Font=Enum.Font.Gotham
if v1576 then v1598.Text="● ON"
    v1598.TextColor3=v15.SUCCESS
    v1579=v1572.OnClientEvent:Connect(function(v3659,v3660,v3661) if not v1576 then return
        end task.wait(0.1)
    v29("trade_gift_accept",{sender_username=tostring(v3661 or "?" ),pet_name=(v3660 and v3660.PetType and tostring(v3660.PetType)) or "?" ,pet_kg=(v3660 and v3660.PetData and v3660.PetData.BaseWeight and v3660.PetData.BaseWeight) or 0 ,pet_uuid=tostring(v3659 or "?" )})
    pcall(function() v1573:FireServer(true,v3659)
    end)
end)
end v16:toggle(v1594,UDim2.new(1, -52,0.5, -11),v1576,function(v2486) v1576=v2486
v33.autoTrade.autoAccept=v2486
v37()
v1598.Text=(v2486 and "● ON") or "● IDLE"
v1598.TextColor3=(v2486 and v15.SUCCESS) or v15.DIM
if v2486 then v1579=v1572.OnClientEvent:Connect(function(v3946,v3947,v3948) if not v1576 then return
        end task.wait(0.1)
    v29("trade_gift_accept",{sender_username=tostring(v3948 or "?" ),pet_name=(v3947 and v3947.PetType and tostring(v3947.PetType)) or "?" ,pet_kg=(v3947 and v3947.PetData and v3947.PetData.BaseWeight and v3947.PetData.BaseWeight) or 0 ,pet_uuid=tostring(v3946 or "?" )})
    pcall(function() local v4176=v7.PlayerGui:FindFirstChild("Gift_Notification")
        if not v4176 then return
        end local v4177=v4176:FindFirstChild("Frame")
    if not v4177 then return
    end for v4270,v4271 in ipairs(v4177:GetChildren()) do if v4271:IsA("GuiObject") then v4271:Destroy()
    end end end)
pcall(function() v1573:FireServer(true,v3946)
end)
end)
elseif v1579 then v1579:Disconnect()
    v1579=nil
end end)
local v1601=v16:accordion(v1588," AUTO GIFT PET",3,false)
local v1602=v1601.Inner
local v1603=v16:frame(v1602,UDim2.new(1,0,0,13),nil,v15.BG,1)
v1603.LayoutOrder=0
v16:label(v1603,"TARGET PLAYER",UDim2.new(1,0,1,0),nil,v15.DIM,8).Font=Enum.Font.Gotham
local v1606=v16:frame(v1602,UDim2.new(1,0,0,26),nil,v15.BG,1)
v1606.LayoutOrder=1
local v1608=v16:button(v1606,v1577 or "None selected" ,UDim2.new(1, -56,1,0),nil,v15.BTN,v15.TEXT,9)
v1608.TextXAlignment=Enum.TextXAlignment.Left
v16:pad(v1608,0,8,8,0)
v16:stroke(v1608,v15.STROKE,1)
v16:label(v1606,"v",UDim2.new(0,16,1,0),UDim2.new(1, -76,0,0),v15.DIM,9,Enum.TextXAlignment.Center)
local v1611=Instance.new("ImageButton",v1606)
v1611.Size=UDim2.new(0,24,0,24)
v1611.Position=UDim2.new(1, -28,0.5, -12)
v1611.BackgroundColor3=v15.BTN
v1611.BorderSizePixel=0
v1611.Image="rbxthumb://type=Asset&id=98916802076487&w=150&h=150"
v1611.ScaleType=Enum.ScaleType.Fit
v16:corner(v1611,5)
v16:stroke(v1611,v15.ACCENT,1)
local v1620=v16:frame(v1602,UDim2.new(1,0,0,0),nil,Color3.fromRGB(10,10,10))
v1620.LayoutOrder=2
v1620.Visible=false
v16:corner(v1620,5)
v16:stroke(v1620,v15.STROKE,1)
local v1623=v16:scroll(v1620)
v16:list(v1623,2)
v16:pad(v1623,2,2,2,2)
local v1624=false
local function v1625() for v3162,v3163 in ipairs(v1623:GetChildren()) do if v3163:IsA("GuiObject") then v3163:Destroy()
        end end local v2490=game:GetService("Players"):GetPlayers()
local v2491=0
for v3164,v3165 in ipairs(v2490) do if (v3165.Name==v7.Name) then continue
    end v2491=v2491 + 1
local v3166=v1577==v3165.Name
local v3167=v16:button(v1623,v3165.Name,UDim2.new(1,0,0,22),nil,(v3166 and v15.SEL_BG) or Color3.fromRGB(14,14,14) ,(v3166 and v15.SEL_TXT) or v15.TEXT ,9)
v3167.LayoutOrder=v2491
v3167.TextXAlignment=Enum.TextXAlignment.Left
v16:pad(v3167,0,8,0,0)
v16:stroke(v3167,(v3166 and v15.ACCENT) or v15.STROKE ,1)
v3167.MouseButton1Click:Connect(function() v1577=v3165.Name
    v33.autoTrade.targetPlayer=v3165.Name
    v37()
    v1608.Text=v3165.Name
    v1620.Visible=false
    v1624=false
end)
end if (v2491==0) then local v3666=v16:label(v1623," (no other players)",UDim2.new(1,0,0,22),nil,v15.DIM,9)
v3666.LayoutOrder=1
v2491=1
end v1620.Size=UDim2.new(1,0,0,math.min((v2491 * 24) + 6 ,100))
end v1608.MouseButton1Click:Connect(function() v1624= not v1624
v1620.Visible=v1624
if v1624 then v1625()
end end)
v1611.MouseButton1Click:Connect(function() if v1624 then v1625()
end end)
v16:divider(v1602,3)
local v1626=v16:frame(v1602,UDim2.new(1,0,0,26),nil,v15.BG,1)
v1626.LayoutOrder=4
local v1628=v16:label(v1626,"Pets: NONE",UDim2.new(1, -96,1,0),UDim2.new(0,4,0,0),v15.DIM,9)
v1628.Font=Enum.Font.Gotham
local v1630=v16:button(v1626,"Select pets >",UDim2.new(0,84,0,20),UDim2.new(1, -88,0.5, -10),v15.BTN,v15.ACCENT,9)
v16:stroke(v1630,v15.STROKE,1)
local function v1631() local v2494=0
    for v3171 in pairs(v1578) do v2494=v2494 + 1
    end if (v2494==0) then v1628.Text="Pets: NONE"
    v1628.TextColor3=v15.DIM
else v1628.Text="Pets: " .. v2494 .. " selected"
v1628.TextColor3=v15.ACCENT
end end v1631()
local function v1632(v2495,v2496,v2497,v2498) local v2499=v16:frame(v1602,UDim2.new(1,0,0,26),nil,v15.BTN)
v2499.LayoutOrder=v2496
v16:corner(v2499,5)
v16:stroke(v2499,v15.STROKE,1)
v16:label(v2499,v2495,UDim2.new(0,30,1,0),UDim2.new(0,6,0,0),v15.DIM,9).Font=Enum.Font.Gotham
local v2503=v33.autoTrade[v2497] or "Above"
local v2504=v16:button(v2499,v2503,UDim2.new(0,46,0,20),UDim2.new(0,38,0.5, -10),v15.PANEL,v15.ACCENT,8)
v16:stroke(v2504,v15.STROKE,1)
local v2505=v33.autoTrade[v2498] or 0
local v2506=v16:input(v2499,tostring(v2505),"",UDim2.new(0,50,0,20),UDim2.new(1, -54,0.5, -10))
local v2507=v2503
v2504.MouseButton1Click:Connect(function() v2507=((v2507=="Above") and "Below") or "Above"
    v2504.Text=v2507
    v33.autoTrade[v2497]=v2507
    v37()
end)
v2506.FocusLost:Connect(function() local v3174=tonumber(v2506.Text)
if (v3174 and (v3174>=0)) then v33.autoTrade[v2498]=v3174
    v37()
else v2506.Text=tostring(v33.autoTrade[v2498] or 0 )
end end)
return v2506,function() return v2507
end,function() return tonumber(v2506.Text) or 0
end
end local v1633,v1634,v1635=v1632("KG",5,"kgMode","kgVal")
local v1636,v1637,v1638=v1632("Age",6,"ageMode","ageVal")
if (v33.autoTrade.forceGiftFav==nil) then v33.autoTrade.forceGiftFav=false
end local v1639=v16:frame(v1602,UDim2.new(1,0,0,26),nil,v15.BTN)
v1639.LayoutOrder=7
v16:corner(v1639,5)
v16:stroke(v1639,v15.STROKE,1)
v16:label(v1639,"Force Gift Favorited (UnFavorite Before Gift)",UDim2.new(1, -52,1,0),UDim2.new(0,6,0,0),v15.TEXT,9).Font=Enum.Font.GothamBold
v16:toggle(v1639,UDim2.new(1, -52,0.5, -11),v33.autoTrade.forceGiftFav,function(v2508) v33.autoTrade.forceGiftFav=v2508
    v37()
end)
local v1642=v16:frame(v1602,UDim2.new(1,0,0,28),nil,v15.PANEL)
v1642.LayoutOrder=8
v16:stroke(v1642,v15.STROKE,1)
v16:label(v1642,"AUTO GIFT",UDim2.new(1, -100,1,0),UDim2.new(0,6,0,0),v15.TEXT,9).Font=Enum.Font.GothamBold
local v1645=v16:label(v1642,"● IDLE",UDim2.new(0,60,1,0),UDim2.new(1, -108,0,0),v15.DIM,8)
v1645.Font=Enum.Font.Gotham
local function v1647(v2510) local v2511=v60()
    local v2512=v2511[v2510]
    if not v2512 then return false
    end local v2513=v63(v2510)
local v2514=(v2512.PetData and (v2512.PetData.Level or 0)) or 0
local v2515=v1635()
local v2516=v1638()
local v2517=(v2515==0) or ((v1634()=="Above") and (v2513>=v2515)) or ((v1634()=="Below") and (v2513<=v2515))
local v2518=(v2516==0) or ((v1637()=="Above") and (v2514>=v2516)) or ((v1637()=="Below") and (v2514<=v2516))
return v2517 and v2518
end local function v1648() while v1575 do if not v1577 then v1645.Text="No target!"
        v1645.TextColor3=v15.ERROR
        task.wait(1)
        continue
    end local v3176=game:GetService("Players"):FindFirstChild(v1577)
if not v3176 then v1645.Text="Player offline"
    v1645.TextColor3=v15.DIM
    task.wait(2)
    continue
end local v3177=v60()
local v3178={}
local v3179=0
for v3674 in pairs(v1578) do v3179=v3179 + 1
end if (v3179==0) then v1645.Text="No pets selected!"
v1645.TextColor3=v15.ERROR
task.wait(2)
continue
end for v3675 in pairs(v3177) do local v3676=v3177[v3675]
if not v3676 then continue
end local v3677=v3676.PetType or ""
local v3678=v1578[v3677]
if (v3678 and v1647(v3675)) then table.insert(v3178,v3675)
end end if ( #v3178==0) then v1645.Text="No matching pets"
v1645.TextColor3=v15.DIM
task.wait(2)
continue
end for v3679,v3680 in ipairs(v3178) do if not v1575 then break
end for v3963,v3964 in ipairs(v9:GetChildren()) do if v3964:IsA("Tool") then v3964.Parent=v8
end end task.wait(0.3)
local v3681=v66(v3680)
if not v3681 then v1645.Text="Skip-no tool: " .. v64(v3680)
    v1645.TextColor3=v15.ERROR
    continue
end local v3682=v66(v3680)
if (v3682 and (v3682:GetAttribute(v21)==true)) then if v33.autoTrade.forceGiftFav then v1645.Text="Unfav: " .. v64(v3680)
    v1645.TextColor3=v15.DIM
    local v4376=v2:WaitForChild("GameEvents"):WaitForChild("Favorite_Item")
    v4376:FireServer(v3682)
    local v4377=os.clock()
    repeat task.wait(0.1)
    until (v66(v3680)==nil) or (v66(v3680) and (v66(v3680):GetAttribute(v21)~=true)) or ((os.clock() -v4377)>3) task.wait(0.5)
v3681=v66(v3680)
if not v3681 then continue
end if (v3681:GetAttribute(v21)==true) then v1645.Text="Still fav, skip: " .. v64(v3680)
v1645.TextColor3=v15.ERROR
continue
end else v1645.Text="Skip-fav: " .. v64(v3680)
v1645.TextColor3=v15.DIM
continue
end end _G.VoidHub_GiftingActive=true
v3681.Parent=v9
task.wait(1)
v1645.Text="Gifting " .. v64(v3680)
v1645.TextColor3=v15.SUCCESS
local v3687=v2:FindFirstChild("GameEvents")
local v3688=v3687 and v3687:FindFirstChild("PetGiftingService")
if v3688 then pcall(function() v3688:FireServer("GivePet",v3176)
    end)
v29("trade_gift_send",{target_username=v1577 or "?" ,pet_name=v64(v3680),pet_kg=v63(v3680),pet_age=v62(v3680),pet_mut=v67(v3680)})
else v1645.Text="Remote not found!"
v1645.TextColor3=v15.ERROR
end task.wait(1.5)
_G.VoidHub_GiftingActive=false
end task.wait(1)
end v1645.Text="● IDLE"
v1645.TextColor3=v15.DIM
end v16:toggle(v1642,UDim2.new(1, -52,0.5, -11),v1575,function(v2522) v1575=v2522
v33.autoTrade.autoGift=v2522
v37()
v1645.Text=(v2522 and "● ON") or "● IDLE"
v1645.TextColor3=(v2522 and v15.SUCCESS) or v15.DIM
if not v2522 then _G.VoidHub_GiftingActive=false
end if v2522 then task.spawn(v1648)
end end)
if v1575 then task.defer(function() task.spawn(v1648)
end)
end local v1649=v16:frame(v443,UDim2.new(1,0,1,0),nil,v15.BG)
v1649.Visible=false
v1649.ZIndex=25
local v1652=v16:frame(v1649,UDim2.new(1,0,0,26),nil,v15.PANEL)
v16:stroke(v1652,v15.STROKE,1)
v16:label(v1652,"Select Pets to Gift",UDim2.new(1, -96,1,0),UDim2.new(0,8,0,0),v15.ACCENT,10)
local v1653=v16:button(v1652,"Select All",UDim2.new(0,64,0,20),UDim2.new(1, -92,0.5, -10),v15.BTN,v15.ACCENT,8)
v16:stroke(v1653,v15.STROKE,1)
local v1654=v16:button(v1652,"X",UDim2.new(0,24,0,20),UDim2.new(1, -28,0.5, -10),v15.ERROR,v15.TEXT,10)
v16:stroke(v1654,v15.ERROR,1)
v1654.MouseButton1Click:Connect(function() v1649.Visible=false
    v1631()
end)
local v1655=v16:input(v1649,"","Search pet...",UDim2.new(1, -8,0,22),UDim2.new(0,4,0,28))
v1655.TextColor3=v15.TEXT
v1655.Font=Enum.Font.Gotham
local v1659=v16:scroll(v1649,UDim2.new(1,0,1, -56),UDim2.new(0,0,0,54))
v16:list(v1659,3)
v16:pad(v1659,3,4,4,3)
local function v1660() for v3180,v3181 in ipairs(v1659:GetChildren()) do if v3181:IsA("GuiObject") then v3181:Destroy()
        end end local v2527=string.lower(v1655.Text)
local v2528={}
local v2529={}
for v3182,v3183 in ipairs(v17) do if not v2528[v3183.name] then v2528[v3183.name]=true
        if ((v2527=="") or v3183.name:lower():find(v2527,1,true)) then table.insert(v2529,v3183)
        end end end local v2530= #v2529>0
for v3184,v3185 in ipairs(v2529) do if not v1578[v3185.name] then v2530=false
    break
end end v1653.Text=(( #v2529==0) and "Select All") or (v2530 and "Unselect All") or "Select All"
v1653.TextColor3=(v2530 and v15.SEL_TXT) or v15.ACCENT
v1653.BackgroundColor3=(v2530 and v15.SEL_BG) or v15.BTN
for v3186,v3187 in ipairs(v2529) do local v3188=v1578[v3187.name]==true
    local v3189=v16:button(v1659,v3187.name,UDim2.new(1,0,0,30),nil,(v3188 and v15.SEL_BG) or Color3.fromRGB(13,13,13) ,(v3188 and v15.SEL_TXT) or v15.TEXT ,9)
    v3189.LayoutOrder=v3186
    v3189.TextXAlignment=Enum.TextXAlignment.Left
    v16:pad(v3189,0,8,4,0)
    v16:corner(v3189,5)
    v16:stroke(v3189,(v3188 and v15.ACCENT) or v15.STROKE ,1)
    v16:label(v3189,v3187.egg,UDim2.new(1, -8,0,12),UDim2.new(0,8,1, -13),(v3188 and Color3.fromRGB(60,40,0)) or v15.DIM ,8).Font=Enum.Font.Gotham
    v3189.MouseButton1Click:Connect(function() if v1578[v3187.name] then v1578[v3187.name]=nil
        else v1578[v3187.name]=true
    end v33.autoTrade.selPets=v1578
v37()
v1631()
v16:updateRowVisual(v3189,v1578[v3187.name]==true ,v15.SEL_BG,v15.SEL_TXT,Color3.fromRGB(13,13,13),v15.TEXT,v15.ACCENT,v15.STROKE)
end)
end end v1653.MouseButton1Click:Connect(function() local v2534=string.lower(v1655.Text)
local v2535={}
local v2536={}
for v3195,v3196 in ipairs(v17) do if not v2536[v3196.name] then v2536[v3196.name]=true
        if ((v2534=="") or v3196.name:lower():find(v2534,1,true)) then table.insert(v2535,v3196)
        end end end local v2537= #v2535>0
for v3197,v3198 in ipairs(v2535) do if not v1578[v3198.name] then v2537=false
    break
end end if v2537 then for v3967,v3968 in ipairs(v2535) do v1578[v3968.name]=nil
end else for v3970,v3971 in ipairs(v2535) do v1578[v3971.name]=true
end end v33.autoTrade.selPets=v1578
v37()
v1631()
v1660()
end)
v1655:GetPropertyChangedSignal("Text"):Connect(v1660)
v1630.MouseButton1Click:Connect(function() v1649.Visible=true
    v1660()
end)
end local v445={{v435,"fruit"},{v436,"shop"},{v437,"trade"}}
local function v446(v1661) v439.Visible=v1661=="fruit"
v441.Visible=v1661=="shop"
v443.Visible=v1661=="trade"
for v2540,v2541 in ipairs(v445) do v2541[1].SetActive(v2541[2]==v1661 )
end end v435.Button.MouseButton1Click:Connect(function() v446("fruit")
end)
v436.Button.MouseButton1Click:Connect(function() v446("shop")
end)
v437.Button.MouseButton1Click:Connect(function() v446("trade")
end)
v446("fruit")
end v140()
local v141=v137[1]
local v142=v16:frame(v141,UDim2.new(0,52,1,0),nil,v15.SIDEBAR)
v16:stroke(v142,Color3.fromRGB(18,18,18),1)
local v143=Instance.new("ScrollingFrame",v142)
v143.Size=UDim2.new(1,0,1,0)
v143.BackgroundTransparency=1
v143.BorderSizePixel=0
v143.ScrollBarThickness=0
v143.ScrollingDirection=Enum.ScrollingDirection.Y
v143.AutomaticCanvasSize=Enum.AutomaticSize.Y
v143.CanvasSize=UDim2.new(0,0,0,0)
local v153=Instance.new("Frame",v143)
v153.Size=UDim2.new(1,0,0,0)
v153.BackgroundTransparency=1
v153.AutomaticSize=Enum.AutomaticSize.Y
local v157=Instance.new("UIListLayout",v153)
v157.Padding=UDim.new(0,2)
v157.SortOrder=Enum.SortOrder.LayoutOrder
v157.HorizontalAlignment=Enum.HorizontalAlignment.Center
local v163=Instance.new("UIPadding",v153)
v163.PaddingTop=UDim.new(0,6)
v163.PaddingBottom=UDim.new(0,6)
local v166=0
local function v167() v166=v166 + 1
    local v447=Instance.new("Frame",v153)
    v447.Size=UDim2.new(0,30,0,1)
    v447.BackgroundColor3=Color3.fromRGB(28,28,40)
    v447.BorderSizePixel=0
    v447.LayoutOrder=v166 * 100
end local v168=0
local function v169(v452,v453) v168=v168 + 1
local v454=Instance.new("TextButton",v153)
v454.Size=UDim2.new(1, -8,0,38)
v454.LayoutOrder=(v168 * 100) -50
v454.BackgroundColor3=v15.BTN
v454.BackgroundTransparency=1
v454.BorderSizePixel=0
v454.Text=""
v454.AutoButtonColor=false
v16:corner(v454,7)
local v463=Instance.new("Frame",v454)
v463.Size=UDim2.new(0,2,0,20)
v463.Position=UDim2.new(0,0,0.5, -10)
v463.BackgroundColor3=v15.ACCENT
v463.BorderSizePixel=0
v463.Visible=false
v16:corner(v463,2)
local v470=Instance.new("TextLabel",v454)
v470.Size=UDim2.new(1,0,0,20)
v470.Position=UDim2.new(0,0,0,5)
v470.BackgroundTransparency=1
v470.Text=v452
v470.TextColor3=v15.DIM
v470.Font=Enum.Font.GothamBold
v470.TextSize=14
v470.TextXAlignment=Enum.TextXAlignment.Center
local v482=Instance.new("TextLabel",v454)
v482.Size=UDim2.new(1,0,0,10)
v482.Position=UDim2.new(0,0,0,25)
v482.BackgroundTransparency=1
v482.Text=v453
v482.TextColor3=v15.DIM
v482.Font=Enum.Font.Gotham
v482.TextSize=7
v482.TextXAlignment=Enum.TextXAlignment.Center
v454.MouseEnter:Connect(function() if (v463.Visible==false) then v454.BackgroundTransparency=0.85
        v454.BackgroundColor3=v15.ACCENT
        v470.TextColor3=Color3.fromRGB(160,150,220)
        v482.TextColor3=Color3.fromRGB(160,150,220)
    end end)
v454.MouseLeave:Connect(function() if (v463.Visible==false) then v454.BackgroundTransparency=1
    v454.BackgroundColor3=v15.BTN
    v470.TextColor3=v15.DIM
    v482.TextColor3=v15.DIM
end end)
local function v492(v1665) v463.Visible=v1665
if v1665 then v454.BackgroundColor3=Color3.fromRGB(20,20,50)
    v454.BackgroundTransparency=0
    v470.TextColor3=v15.ACCENT
    v482.TextColor3=v15.ACCENT
else v454.BackgroundColor3=v15.BTN
v454.BackgroundTransparency=1
v470.TextColor3=v15.DIM
v482.TextColor3=v15.DIM
end end return {Button=v454,SetActive=v492}
end local v170=v169("🥚","HATCH")
local v171=v169("🐘","ELEPHANT")
local v172=v169("⬆","LEVELING")
v167()
local v173=v169("👥","TEAMS")
local v174=v169("👆","PnP")
local v175=v169("⚡","BOOST")
v167()
local v176=v169("🔗","WEBHOOK")
v167()
local v177=v169("⚙️","MISC")
local v178=v16:frame(v141,UDim2.new(1, -56,1, -2),UDim2.new(0,54,0,1),v15.BG,1)
local v179=v16:frame(v178,UDim2.new(1,0,1,0),nil,v15.BG,1)
v179.Visible=true
local v181=v16:frame(v178,UDim2.new(1,0,1,0),nil,v15.BG,1)
v181.Visible=false
local v183=v2:WaitForChild("GameEvents"):WaitForChild("Favorite_Item")
local v184=v2:WaitForChild("GameEvents"):WaitForChild("SellAllPets_RE")
local v185=v2:WaitForChild("GameEvents"):WaitForChild("PetEggService")
local function v186() local v493,v494=pcall(require,v2.Modules.GetFarm)
    if (v493 and v494) then local v2542,v2543=pcall(function() return v494(v7)
        end)
    if (v2542 and v2543) then return v2543
    end end local v495=workspace:FindFirstChild("Farm")
if not v495 then return nil
end for v1667,v1668 in ipairs(v495:GetChildren()) do local v1669=v1668:FindFirstChild("Important")
if v1669 then local v3221=v1669:FindFirstChild("Data")
    if v3221 then local v3973=v3221:FindFirstChild("Owner")
        if (v3973 and (v3973.Value==v7.Name)) then return v1668
        end end end end return nil
end local function v187(v496) local v497={}
local v498=v496 and v496:FindFirstChild("Important")
if not v498 then return v497
end local v499=v498:FindFirstChild("Plant_Locations")
if not v499 then return v497
end for v1670,v1671 in ipairs(v499:GetChildren()) do if v1671:IsA("BasePart") then table.insert(v497,v1671)
end end return v497
end local function v188(v500,v501,v502) local v503=v187(v500)
if ( #v503==0) then return {}
end local v504={}
for v1672,v1673 in ipairs(v503) do if ( #v504>=v501) then break
end local v1674=v1673.CFrame
local v1675=v1673.Size.X
local v1676=v1673.Size.Z
local v1677=3
local v1678=math.max(1,math.floor((v1675-(v1677 * 2))/v502 ))
local v1679=math.max(1,math.floor((v1676-(v1677 * 2))/v502 ))
local v1680=( -(v1678-1) * v502)/2
local v1681=( -(v1679-1) * v502)/2
for v2544=0,v1679-1 do for v3222=0,v1678-1 do if ( #v504>=v501) then break
        end local v3223=(v1674 * CFrame.new(v1680 + (v3222 * v502) ,0,v1681 + (v2544 * v502) )).Position
    table.insert(v504,Vector3.new(v3223.X,0.135,v3223.Z))
end if ( #v504>=v501) then break
end end end return v504
end local function v189() local v505=0
for v1682,v1683 in ipairs(v5:GetTagged("PetEggServer")) do if (v1683:GetAttribute("OWNER")==v7.Name) then v505=v505 + 1
    end end return v505
end local function v190(v506) for v1684,v1685 in ipairs(v8:GetChildren()) do if (v1685:IsA("Tool") and v5:HasTag(v1685,"PetEggTool")) then if (v1685:GetAttribute("h")==v506) then return v1685
        end end end return nil
end local function v191() local v507=v60()
local v508=0
for v1686 in pairs(v507) do v508=v508 + 1
end return v508
end local v192={}
local v193={}
local function v194(v509) if (v509<=0) then return "READY!"
    end local v510=math.floor(v509/3600 )
local v511=math.floor((v509%3600)/60 )
local v512=v509%60
if (v510>0) then return string.format("%dh %dm %ds",v510,v511,v512)
elseif (v511>0) then return string.format("%dm %ds",v511,v512)
else return string.format("%ds",v512)
end end local function v195(v513) local v514=v513:GetAttribute("OBJECT_UUID")
if not v514 then return nil
end local v515,v516=pcall(function() return v10:GetData()
end)
if ( not v515 or not v516 or not v516.SaveSlots) then return nil
end for v1687,v1688 in pairs(v516.SaveSlots.AllSlots) do local v1689=(v1688.SavedObjects or {})[v514]
if (v1689 and (type(v1689)=="table") and (v1689.ObjectType=="PetEgg") and v1689.Data) then return v1689.Data
end end return nil
end local function v196(v517) local v518=v517:FindFirstChild("AH_EggESP")
if v518 then v518:Destroy()
end local v519=Instance.new("BillboardGui")
v519.Name="AH_EggESP"
v519.AlwaysOnTop=true
v519.Size=UDim2.new(0,220,0,90)
v519.StudsOffset=Vector3.new(0,5,0)
v519.Parent=v517
local v525=Instance.new("Frame",v519)
v525.Size=UDim2.fromScale(1,1)
v525.BackgroundTransparency=1
local function v528(v1690,v1691,v1692) local v1693=Instance.new("TextLabel",v525)
    v1693.Size=UDim2.new(1,0,0,22)
    v1693.Position=UDim2.new(0,0,0,v1690)
    v1693.BackgroundTransparency=1
    v1693.TextColor3=v1691
    v1693.TextStrokeTransparency=0
    v1693.TextSize=v1692 or 13
    v1693.Font=Enum.Font.GothamBold
    return v1693
end local v529=v528(0,Color3.fromRGB(255,220,50),14)
local v530=v528(23,Color3.fromRGB(100,255,100),13)
local v531=v528(46,Color3.fromRGB(100,200,255),13)
local v532=v528(69,Color3.fromRGB(255,255,255),13)
v529.Text=v517:GetAttribute("EggName") or "?"
v530.Text="🐾 ..."
v531.Text=""
v532.Text=v194(v517:GetAttribute("TimeToHatch") or 0 )
return v532,v530,v531
end local function v197(v537) if (v537:GetAttribute("OWNER")~=v7.Name) then return
end if v192[v537] then return
end local v538,v539,v540
if v33.autoHatch.espEnabled then v538,v539,v540=v196(v537)
else v538={Text="",TextColor3=Color3.new()}
v539={Text=""}
v540={Text=""}
end local v541={timeLbl=v538,petLbl=v539,wgtLbl=v540,loaded=false}
v192[v537]=v541
v193[v537]={weight=0,petType="?",ready=(v537:GetAttribute("TimeToHatch") or 0)<=0 ,eggName=v537:GetAttribute("EggName") or "" }
v537:GetAttributeChangedSignal("TimeToHatch"):Connect(function() if not v192[v537] then return
    end local v1702=v537:GetAttribute("TimeToHatch") or 0
if v33.autoHatch.espEnabled then v538.Text=v194(v1702)
    v538.TextColor3=((v1702<=0) and Color3.fromRGB(100,255,100)) or Color3.fromRGB(255,255,255)
end if v193[v537] then v193[v537].ready=v1702<=0
end end)
end for v544,v545 in ipairs(v5:GetTagged("PetEggServer")) do v197(v545)
end v5:GetInstanceAddedSignal("PetEggServer"):Connect(function(v546) task.wait(0.2)
v197(v546)
end)
v5:GetInstanceRemovedSignal("PetEggServer"):Connect(function(v547) v192[v547]=nil
v193[v547]=nil
end)
task.spawn(function() while true do task.wait(0.3)
    for v2545,v2546 in pairs(v192) do if ( not v2545 or not v2545.Parent) then v192[v2545]=nil
            v193[v2545]=nil
            continue
        end if not v2546.loaded then local v3692=v195(v2545)
        if (v3692 and v3692.Type) then v2546.loaded=true
            if v33.autoHatch.espEnabled then v2546.petLbl.Text="🐾 " .. v3692.Type
                v2546.wgtLbl.Text=string.format("%.2fkg",(v3692.BaseWeight or 0) * 1.1 )
            end if v193[v2545] then v193[v2545].weight=(v3692.BaseWeight or 0) * 1.1
            v193[v2545].petType=v3692.Type
        end end end end end end)
local function v198() for v1703,v1704 in pairs(v192) do if (v1703 and v1703.Parent) then local v3227=v1703:FindFirstChild("AH_EggESP")
if v33.autoHatch.espEnabled then if not v3227 then local v4273,v4274,v4275=v196(v1703)
        v1704.timeLbl=v4273
        v1704.petLbl=v4274
        v1704.wgtLbl=v4275
        local v4279=v1703:GetAttribute("TimeToHatch") or 0
        v4273.Text=v194(v4279)
        v4273.TextColor3=((v4279<=0) and Color3.fromRGB(100,255,100)) or Color3.fromRGB(255,255,255)
        if (v1704.loaded and v193[v1703]) then v4274.Text="🐾 " .. (v193[v1703].petType or "?")
            v4275.Text=string.format("%.2fkg",v193[v1703].weight or 0 )
        end end elseif v3227 then v3227:Destroy()
end end end end local v199=false
local v200=nil
local v201=false
local v202=false
if not v33.autoHatch.specialBronto then v33.autoHatch.specialBronto={enabled=true,pets={}}
end local function v203() v84.IsEquipping=true
local v551=v83()
for v1706,v1707 in ipairs(v551) do pcall(function() v12:FireServer("UnequipPet",v1707)
    end)
task.wait(v24.AH_UNEQUIP_DELAY)
end if ( #v551>0) then task.wait(v24.AH_POST_UNEQUIP_BUFFER)
end v84.IsEquipping=false
end local function v204(v552) v84.IsEquipping=true
local v554=v92()
for v1708,v1709 in ipairs(v552) do pcall(function() v12:FireServer("EquipPet",v1709,v554)
    end)
task.wait(v24.AH_EQUIP_DELAY)
end v84.IsEquipping=false
end local function v205(v555,v556) if not v555 then return
end local v557=v39(v555)
if ( #v557==0) then return
end if v556 then v202=true
_G.AH_SuppressPickPlace=true
end v203()
task.wait(0.3)
v204(v557)
local v558=v94(v557,10)
if not v558 then v203()
    task.wait(0.3)
    v204(v557)
    v94(v557,8)
end end local function v206() if not v33.autoHatch.suppressPPOnTeam then return
end v202=false
_G.AH_SuppressPickPlace=false
end local function v207(v559,v560,v561,v562) for v1710,v1711 in ipairs(v9:GetChildren()) do if v1711:IsA("Tool") then v1711.Parent=v8
    end end task.wait(0.3)
local v563=v186()
if not v563 then v562("Farm not found!",v15.ERROR)
    return
end local v564=v189()
local v565=v560-v564
if (v565<=0) then v562("Farm already has " .. v564 .. " egg(s) — skip placing" ,v15.DIM)
    return
end task.wait(0.3)
v564=v189()
v565=v560-v564
if (v565<=0) then v562("Re-check: farm full " .. v564 .. "/" .. v560 .. " — skip" ,v15.DIM)
    return
end local v566=v188(v563,200,v561)
if ( #v566==0) then v562("No positions generated!",v15.ERROR)
return
end v562(string.format("Placing %d egg(s) [%s]...",v565,v559),v15.ACCENT)
local v567=0
local v568=1
local v569=0
while (v567=v560) then v562(string.format("Farm reached target %d/%d — done!",v1712,v560),v15.SUCCESS)
    v567=v565
    break
end if (v568> #v566) then v568=1
v562("Wrap around positions, retry...",v15.DIM)
task.wait(0.5)
end local v1713=v566[v568]
local v1714=v190(v559)
if not v1714 then v562("No more eggs in backpack!",v15.ERROR)
    break
end if v33.autoHatch.autoSellWhenFull then for v3693,v3694 in ipairs(v9:GetChildren()) do if (v3694:IsA("Tool") and not v5:HasTag(v3694,"PetEggTool")) then v3694.Parent=v8
    end end end local v1715=v189()
v1714.Parent=v9
task.wait(0.01)
v185:FireServer("CreateEgg",v1713)
task.wait(0.01)
local v1717=v9:FindFirstChildWhichIsA("Tool")
if (v1717 and v5:HasTag(v1717,"PetEggTool")) then v1717.Parent=v8
end local v1718=v189()
if (v1718>v1715) then v567=v567 + 1
v569=0
v562(string.format("Placed %d/%d",v567,v565),v15.SUCCESS)
else v569=v569 + 1
local v3230=v9:FindFirstChildWhichIsA("Tool")
if (v3230 and v5:HasTag(v3230,"PetEggTool")) then v3230.Parent=v8
end if (v569>=50) then v562("50 fail streak — waiting 3s before retry...",v15.ERROR)
task.wait(3)
v569=0
v568=1
end end v568=v568 + 1
end v562(string.format("Placed %d egg(s)",v567),v15.SUCCESS)
end local function v208(v570,v571) v570("Waiting for eggs to hatch...",v15.DIM)
while v199 do local v1719=false
    for v2547,v2548 in ipairs(v5:GetTagged("PetEggServer")) do if (v2548:GetAttribute("OWNER")==v7.Name) then local v3695=v2548:GetAttribute("TimeToHatch") or 0
            if (v3695>0) then v1719=true
                v571(string.format("⏳ Waiting — %s",v194(v3695)),v15.DIM)
                break
            end end end if not v1719 then break
end task.wait(1)
end end local function v209(v572,v573,v574) local v575={}
local v576={}
for v1720,v1721 in pairs(v193) do if (v1720 and v1720.Parent and (v1720:GetAttribute("OWNER")==v7.Name)) then local v3231=v1720:GetAttribute("TimeToHatch") or 0
        if (v3231<=0) then if (v573 and (v1721.weight>=v572) and (v1721.weight>0)) then table.insert(v576,v1720)
            else table.insert(v575,v1720)
        end end end end local function v577(v1722,v1723,v1724) local v1725=os.clock() + (v1724 or 30)
while v199 and (os.clock()0) and v33.autoHatch.teamKoi) then v574(string.format("Koi mode — hatching %d egg(s)", #v575),v15.ACCENT)
v205(v33.autoHatch.teamKoi,true)
local v2550=v39(v33.autoHatch.teamKoi)
local v2551=v94(v2550,10)
if v2551 then v574("✓ Koi team confirmed active!",v15.ACCENT)
    task.wait(v24.AH_KOI_SAFE_DELAY)
    v574("Safety delay done, hatching...",v15.ACCENT)
else v574("Koi team timeout — hatching anyway...",v15.ERROR)
end local v2552=v83()
local v2553={}
for v3234,v3235 in ipairs(v2552) do v2553[v3235]=true
end local v2554=true
for v3237,v3238 in ipairs(v2550) do if not v2553[v3238] then v2554=false
    break
end end if not v2554 then v574("⚠ Koi team not fully active, re-equip...",v15.ERROR)
v203()
task.wait(0.3)
v204(v2550)
v94(v2550,8)
task.wait(0.5)
end for v3239,v3240 in ipairs(v575) do if not v199 then break
end if (v3240 and v3240.Parent) then task.spawn(function() pcall(function() v185:FireServer("HatchPet",v3240)
    end)
end)
end end v577(v575,"Koi eggs",30)
task.wait(v24.AH_KOI_POST_HATCH)
v206()
elseif ( #v575>0) then v574(string.format("Hatching %d egg(s) (no Koi team)", #v575),v15.DIM)
    for v3975,v3976 in ipairs(v575) do if not v199 then break
        end if (v3976 and v3976.Parent) then task.spawn(function() pcall(function() v185:FireServer("HatchPet",v3976)
            end)
    end)
end end v577(v575,"Eggs",30)
task.wait(1.5)
end if ( #v576>0) then v574(string.format("Bronto mode — %d egg(s) above %.2fkg", #v576,v572),Color3.fromRGB(200,150,255))
repeat if not v33.autoHatch.teamBronto then v574("⛔ BRONTO SKIP — no bronto team set! Set team dulu lalu restart.",v15.ERROR)
        break
    end local v3241=v39(v33.autoHatch.teamBronto)
if ( #v3241==0) then v574("⛔ BRONTO SKIP — bronto team '" .. v33.autoHatch.teamBronto .. "' kosong atau tidak valid!" ,v15.ERROR)
    break
end local v3242=v33.petTeams[v33.autoHatch.teamBronto] or {uuids=v3241}
local v3243={}
for v3696,v3697 in ipairs(v17) do local v3698=string.lower(v3697.name or "" )
    if v3698:find("brontosaurus",1,true) then v3243[v3697.name]=true
    end end local v3244={}
for v3699,v3700 in ipairs(v17) do local v3701=string.lower(v3700.name or "" )
if v3701:find("koi",1,true) then v3244[v3700.name]=true
end end local v3245=v60()
local v3246={}
local v3247={}
for v3702,v3703 in ipairs(v3242.uuids) do local v3704=(v3245[v3703] and (v3245[v3703].PetType or "?")) or "?(not in inv)"
    if v3244[v3704] then table.insert(v3247,v3704)
    elseif not v3243[v3704] then table.insert(v3246,v3704)
    end end if ( #v3246>0) then v574("BRONTO SKIP - team '" .. v33.autoHatch.teamBronto .. "' ada pet BUKAN Brontosaurus:" ,v15.ERROR)
for v4190,v4191 in ipairs(v3246) do v574(" ! " .. v4191 ,v15.ERROR)
end v574(" Fix team kamu lalu restart cycle!",v15.ERROR)
break
end if ( #v3247>0) then v574("WARNING: ada Koi di bronto team - hatch anyway",Color3.fromRGB(255,200,50))
for v4192,v4193 in ipairs(v3247) do v574(" ! Koi: " .. v4193 ,Color3.fromRGB(255,200,50))
end end local v3248= #v3242.uuids-#v3247
v574("Team check OK (" .. v3248 .. " Bronto + " .. #v3247 .. " Koi)" ,Color3.fromRGB(200,150,255))
v205(v33.autoHatch.teamBronto,true)
local v3249=v39(v33.autoHatch.teamBronto)
local v3250=v94(v3249,15)
if not v3250 then v574("⛔ BRONTO SKIP — team timeout tidak equipped! Coba lagi next cycle.",v15.ERROR)
    v206()
    break
end local v3251=v83()
local v3252={}
for v3705,v3706 in ipairs(v3251) do v3252[v3706]=true
end local v3253=true
for v3708,v3709 in ipairs(v3249) do if not v3252[v3709] then v3253=false
    break
end end if not v3253 then v574("⚠ Bronto team not fully active, re-equip...",v15.ERROR)
v203()
task.wait(0.3)
v204(v3249)
v94(v3249,8)
task.wait(0.5)
end v574("✓ Bronto team confirmed active!",Color3.fromRGB(200,150,255))
task.wait(v24.AH_KOI_SAFE_DELAY)
v574("Safety delay done, hatching...",Color3.fromRGB(200,150,255))
for v3710,v3711 in ipairs(v576) do if not v199 then break
    end if (v3711 and v3711.Parent) then task.spawn(function() pcall(function() v185:FireServer("HatchPet",v3711)
        end)
end)
end end v577(v576,"Bronto eggs",45)
v574("Post-bronto safety delay...",v15.DIM)
task.wait(2)
v206()
v574("✓ Bronto sequence done!",Color3.fromRGB(200,150,255))
until true end task.wait(0.5)
end local function v210(v578,v579) local v580=v33.autoHatch.sellPets or {}
local v581=v33.autoHatch.sellThresh or 0
local v582=v33.autoHatch.favDelay or 0.1
v578("Favoriting all (except sell targets)...",v15.ACCENT)
v579("Favoriting...",v15.DIM)
local v583=v60()
local v584=0
for v1726,v1727 in pairs(v583) do if not v199 then break
    end local v1728=v1727.PetType or ""
local v1729=(v1727.PetData and v1727.PetData.BaseWeight) or 0
local v1730=false
if v580[v1728] then if (v581<=0) then v1730=true
    elseif (v17290) then v590(string.format("🍀 Koi proc: %d egg(s) returned",v592),v15.SUCCESS)
    end task.wait(0.5)
local v595=v77(v589)
v78(v595)
end local function v213(v596,v597) local v598=v211(v33.autoHatch.eggName)
local v599=math.max(v598-v596 ,0)
v43.sealProc=v43.sealProc + v599
v43.sealLastCycle=v599
if (v599>0) then v597(string.format("🤝 Seal proc: %d egg(s) recovered",v599),v15.SUCCESS)
end v43.eggCurrent=v211(v33.autoHatch.eggName)
v48()
v29("hatch_cycle",{cycle_number=v43.cycleCount,total_hatched=v43.totalHatched,egg_name=v33.autoHatch.eggName})
v80()
end local function v214() if (v43.startTime and (v43.startTime>0)) then v48()
end end local function v215(v603,v604) local v605=v33.autoHatch
v604("Placing eggs...",v15.ACCENT)
v207(v605.eggName,v605.eggCount,v605.eggSpacing,v603)
task.wait(1)
if not v199 then return
end if v605.teamCD then v603("Wear CD team...",v15.DIM)
v604("CD mode...",v15.DIM)
v205(v605.teamCD)
end v208(v603,v604)
if not v199 then return
end v604("Hatching...",v15.ACCENT)
local v606=v76()
v209(v605.brontoThresh,v605.brontoEnabled,v603)
task.wait(0.5)
v212(v606,v603)
if not v199 then return
end local v607=v211(v33.autoHatch.eggName)
v210(v603,v604)
task.wait(1)
v213(v607,v603)
if not v199 then return
end v203()
task.wait(0.5)
end local function v216() local v608=v16:scroll(v179,UDim2.new(1,0,1,0))
v608.ScrollingDirection=Enum.ScrollingDirection.Y
v608.AutomaticCanvasSize=Enum.AutomaticSize.Y
v608.ScrollBarThickness=3
v608.ScrollBarImageColor3=v15.ACCENT
local v616=Instance.new("Frame",v608)
v616.Size=UDim2.new(1,0,0,0)
v616.BackgroundTransparency=1
v616.AutomaticSize=Enum.AutomaticSize.Y
v16:list(v616,6)
v16:pad(v616,6,6,6,80)
local v620=v16:accordion(v616,"🥚 AUTO HATCH",1,true)
local v621=v620.Inner
local function v622(v1736,v1737,v1738,v1739) local v1740=v16:label(v1736,v1737,UDim2.new(1,0,0,13),nil,v15.DIM,8)
    v1740.LayoutOrder=v1739
    v1740.Font=Enum.Font.Gotham
    local v1744=v16:frame(v1736,UDim2.new(1,0,0,26),nil,v15.BG,1)
    v1744.LayoutOrder=v1739 + 1
    local v1746=v16:button(v1744,v33.autoHatch[v1738] or "None selected" ,UDim2.new(1,0,1,0),nil,v15.BTN,v15.TEXT,9)
    v1746.TextXAlignment=Enum.TextXAlignment.Left
    v16:pad(v1746,0,8,8,0)
    v16:stroke(v1746,v15.STROKE,1)
    v16:label(v1744,"v",UDim2.new(0,20,1,0),UDim2.new(1, -22,0,0),v15.DIM,9,Enum.TextXAlignment.Center)
    local v1749=v16:frame(v1736,UDim2.new(1,0,0,0),nil,Color3.fromRGB(10,10,10))
    v1749.LayoutOrder=v1739 + 2
    v1749.Visible=false
    v16:corner(v1749,5)
    v16:stroke(v1749,v15.STROKE,1)
    local v1752=v16:scroll(v1749)
    v16:list(v1752,2)
    v16:pad(v1752,2,2,2,2)
    local v1753=false
    local function v1754() for v3255,v3256 in ipairs(v1752:GetChildren()) do if v3256:IsA("GuiObject") then v3256:Destroy()
            end end local v2563={}
    if _G._NH_BUILTIN_TEAMS then for v3977,v3978 in ipairs(_G._NH_BUILTIN_TEAMS) do table.insert(v2563,v3978.name)
        end end for v3257 in pairs(v33.petTeams) do table.insert(v2563,v3257)
end table.sort(v2563)
if ( #v2563==0) then local v3715=v16:label(v1752," (save a team first)",UDim2.new(1,0,0,22),nil,v15.DIM,9)
v3715.LayoutOrder=1
return 1
end local v2564=v33.autoHatch[v1738]==nil
local v2565=v16:button(v1752,"None",UDim2.new(1,0,0,22),nil,(v2564 and v15.SEL_BG) or Color3.fromRGB(14,14,14) ,(v2564 and v15.SEL_TXT) or v15.TEXT ,9)
v2565.LayoutOrder=0
v2565.TextXAlignment=Enum.TextXAlignment.Left
v16:pad(v2565,0,8,0,0)
v16:stroke(v2565,(v2564 and v15.ACCENT) or v15.STROKE ,1)
v2565.MouseButton1Click:Connect(function() v33.autoHatch[v1738]=nil
    v37()
    v1746.Text="None selected"
    v1749.Visible=false
    v1753=false
end)
