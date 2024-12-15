local function safeLoad(url)
    local success, errorMsg = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    
    if success then
        print("Script executado com sucesso!")
    else
        warn("Erro ao executar o script: " .. errorMsg)
    end
end

local gameId = game.PlaceId

if gameId == 2753915549 or gameId == 4442272183 or gameId == 7449423635 then
    -- Blox Fruits
    print("Detect Blox Fruits, exec script...")
    safeLoad("loadstring(game:HttpGet("loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()"))()")
elseif gameId == 16732694052 then
    -- Fisch
    print("Detect Fisch, exec script...")
    safeLoad("https://raw.githubusercontent.com/xvtan22/premium/refs/heads/main/Fisch.lua")
else
    print("Jogo não reconhecido. Nenhum script foi executado.")
end
