local dwebhook = "" -- Dit discord webhook link
local dnavn = "SERVERNAVN - Server Status" -- Det navn botten skal have på discord
local dbesked = " **Server 1 er på vej op!** ```IP: IP:PORT``` @here " -- Den besked den sender på discord

PerformHttpRequest(dwebhook, function(err, text, headers) end, 'POST', json.encode({username = dnavn, content = dbesked}), { ['Content-Type'] = 'application/json' })