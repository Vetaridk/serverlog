-[[
██╗░░░██╗███████╗████████╗░█████╗░██████╗░██╗
██║░░░██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║
╚██╗░██╔╝█████╗░░░░░██║░░░███████║██████╔╝██║
░╚████╔╝░██╔══╝░░░░░██║░░░██╔══██║██╔══██╗██║
░░╚██╔╝░░███████╗░░░██║░░░██║░░██║██║░░██║██║
░░░╚═╝░░░╚══════╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝
]]

PerformHttpRequest(config.discordwebhook, function(err, text, headers) end, 'POST', json.encode({username = config.discordnavn, content = config.discordbesked}), { ['Content-Type'] = 'application/json' })
