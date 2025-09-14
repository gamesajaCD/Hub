if not game:IsLoaded() then game.Loaded:Wait() end

print("Current PlaceId: " .. tostring(game.PlaceId))

local scripts = {
    [120570155878200] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/120570155878200.lua", -- Broom Training
    [13127800756] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/13127800756.lua",
    [11827760850] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/11827760850.lua",
    [12978425304] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/12978425304.lua",
    [15139160794] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/15139160794.lua",
    [18629053284] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/18629053284.lua", -- Survival Odyssey
    [18629058177] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/18629058177.lua", -- Void
    [92039548740735] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/92039548740735.lua", -- Underworld
    [93787311916283] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/93787311916283.lua", -- Horse Race
    [125415045928192] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/125415045928192.lua", -- Roller Training
    -- Swim League (World1, World2, World3, World4)
    [126447951598274] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/126447951598274.lua",
    [138732687875539] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/126447951598274.lua",
    [89430294172992] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/126447951598274.lua",
    [76291578724272] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/76291578724272.lua",
    -- Grup baru (contoh)
    [112678615086652] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/112678615086652.lua", -- ride race
    [101645554076038] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/main/101645554076038.lua", -- paper plane
	[76260928389356] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/main/76260928389356.lua", -- Guitar Simulator
	[81257648942232] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/main/81257648942232.lua", -- Slash Mob Simulator
    [555555555] = "https://raw.githubusercontent.com/gamesajaCD/PrivateScript/refs/heads/main/custom_group.lua"
}

local url = scripts[game.PlaceId]
if url then
    print("Loading script for PlaceId: " .. tostring(game.PlaceId))
    local success, result = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    if not success then
        warn("Failed to load script: " .. tostring(result))
    end
else
    print("Game isn't Supported (PlaceId: " .. tostring(game.PlaceId) .. ")")
end