local BHMUSIC = false
local Place = game.PlaceId
local Game = game.GameId
local GameName = game:GetService("MarketplaceService"):GetProductInfo(Place).Name

local scripts = {
    [2474168535] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/WB.lua",
    [4924922222] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/BHA.lua"
}

local scriptsMulti = {
    [4924922222] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/BHM.lua"
}

local scriptURL = scripts[Place] or scripts[Game]
local scriptLOAD = scriptsMulti[Place] or scriptsMulti[Game]

if scriptURL then
    warn(GameName)
    loadstring(game:HttpGet(scriptURL, true))()
else
    warn("No script found for this game.")
end

if scriptLOAD then
    if BHMUSIC == true then
        warn(GameName)
        loadstring(game:HttpGet(scriptMulti, true))()
    else
        warn("Couldnt load script")
    end
end
