local Place = game.PlaceId
local Game = game.GameId
local GameName = game:GetService("MarketplaceService"):GetProductInfo(Place).Name

local scripts = {
    [2474168535] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/WB.lua",
    [4924922222] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/BHM.lua",
    [7305309231] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/refs/heads/main/FUNC/Games/TB.lua",
    [112413741511713] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/refs/heads/main/FUNC/Games/MCT.lua",
    [130422569332103] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/refs/heads/main/FUNC/Games/BCB.lua",
    [116495829188952] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/DR2.lua",
    [70876832253163] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/DR2.lua",
    [122678592501168] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/BE.lua",
    [126884695634066] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/GAG.lua",
    [87039211657390] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/AC.lua"
}

local scriptURL = scripts[Place] or scripts[Game]

if scriptURL then
    loadstring(game:HttpGet(scriptURL, true))()
else
    warn("No script found for this game.")
end
