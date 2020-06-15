--[[
██╗░░░██╗███████╗████████╗░█████╗░██████╗░██╗
██║░░░██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║
╚██╗░██╔╝█████╗░░░░░██║░░░███████║██████╔╝██║
░╚████╔╝░██╔══╝░░░░░██║░░░██╔══██║██╔══██╗██║
░░╚██╔╝░░███████╗░░░██║░░░██║░░██║██║░░██║██║
░░░╚═╝░░░╚══════╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝
]]--

PerformHttpRequest(cfg.discordwebhook, function(err, text, headers) end, 'POST', json.encode({username = cfg.discordnavn, content = cfg.discordbesked}), { ['Content-Type'] = 'application/json' })
