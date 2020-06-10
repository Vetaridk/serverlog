--[[
██╗░░░██╗███████╗████████╗░█████╗░██████╗░██╗
██║░░░██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║
╚██╗░██╔╝█████╗░░░░░██║░░░███████║██████╔╝██║
░╚████╔╝░██╔══╝░░░░░██║░░░██╔══██║██╔══██╗██║
░░╚██╔╝░░███████╗░░░██║░░░██║░░██║██║░░██║██║
░░░╚═╝░░░╚══════╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝
]]--

PerformHttpRequest(cfg.discordwebhook, function(err, text, headers) end, 'POST', json.encode({username = cfg.discordnavn, content = cfg.discordnavn}), { ['Content-Type'] = 'application/json' })