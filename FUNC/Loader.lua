local Place = game.PlaceId
local Game = game.GameId
local GameName = game:GetService("MarketplaceService"):GetProductInfo(Place).Name

local scripts = {
    [2474168535] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/WB.lua",
    [7305309231] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/refs/heads/main/FUNC/Games/TB.lua",
    [112413741511713] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/refs/heads/main/FUNC/Games/MCT.lua",
    [130422569332103] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/refs/heads/main/FUNC/Games/BCB.lua",
    [116495829188952] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/DR2.lua",
    [70876832253163] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/DR2.lua",
    [122678592501168] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/BE.lua",
    [126884695634066] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/GAG.lua",
    [2772610559] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/FAF.lua",
    [87039211657390] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/AC.lua",
    [4924922222] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/main/FUNC/Games/BRKO.lua",
    [75366259315586] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/refs/heads/main/FUNC/Games/BUB.lua",
    [119574637420814] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/refs/heads/main/FUNC/Games/be%20a%20begger.lua",
    [89488832720361] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/refs/heads/main/FUNC/Games/GA.lua",
    [6735572261] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/refs/heads/main/FUNC/Games/PG.lua",
    [95702387256198] = "https://raw.githubusercontent.com/x7dJJ9vnFH23/Maintained-Fun/refs/heads/main/FUNC/Games/SAT.lua"
}

local scriptURL = scripts[Place] or scripts[Game]

if scriptURL then
    loadstring(game:HttpGet(scriptURL, true))()
else
    warn("No script found for this game.")
end

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

if hookfunction then
    hookfunction(game.Players.LocalPlayer.Kick, function(self, message)
        if message:find("Incorrect key!") then
            WindUI:Notify({
                Title = "Purge",
                Description = "Incorrect key!",
                Time = 10
            })
        end
    end)
end

pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Purge",
            Text = "Discord: https://discord.gg/WNFyG8cRUD",
            Duration = 5
        })
end)
