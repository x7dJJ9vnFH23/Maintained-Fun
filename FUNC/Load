local Place = game.PlaceId
local Game = game.GameId
local GameName = game:GetService("MarketplaceService"):GetProductInfo(Place).Name

local scripts = {
    [15705682243] = "https://raw.githubusercontent.com/CodeRiftH/Scripts/main/Games/TLF.lua",
    [17824828446] = "https://raw.githubusercontent.com/CodeRiftH/Scripts/main/Games/SCX.lua",
    [7903991471] = "https://raw.githubusercontent.com/CodeRiftH/Scripts/main/Games/PT.lua",
    [15501353806] = "https://raw.githubusercontent.com/CodeRiftH/Scripts/main/Games/SMS.lua",
    [8069117419] = "https://raw.githubusercontent.com/CodeRiftH/Scripts/main/Games/DSS.lua",
    [4161970303] = "https://raw.githubusercontent.com/CodeRiftH/Scripts/main/Games/AS.lua",
    [4069560710] = "https://raw.githubusercontent.com/CodeRiftH/Scripts/main/Games/OFS.lua"
}

local scriptURL = scripts[Place] or scripts[Game]

if scriptURL then
    warn(GameName)
    loadstring(game:HttpGet(scriptURL))()
else
    warn("No script found for this game.")
end
