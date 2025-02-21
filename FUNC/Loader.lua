local Place = game.PlaceId
local Game = game.GameId
local GameName = game:GetService("MarketplaceService"):GetProductInfo(Place).Name

local scripts = {
    [2474168535] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/WB.lua",
    [4924922222] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/BHM.lua",
    [7305309231] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/TB.lua",
    [116495829188952] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/DR2.lua"
}

local scriptURL = scripts[Place] or scripts[Game]

if scriptURL then
    warn(GameName)
    loadstring(game:HttpGet(scriptURL, true))()
else
    warn("No script found for this game.")
end
