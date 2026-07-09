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
end
