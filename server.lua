--[[
██╗░░░██╗███████╗████████╗░█████╗░██████╗░██╗
██║░░░██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║
╚██╗░██╔╝█████╗░░░░░██║░░░███████║██████╔╝██║
░╚████╔╝░██╔══╝░░░░░██║░░░██╔══██║██╔══██╗██║
░░╚██╔╝░░███████╗░░░██║░░░██║░░██║██║░░██║██║
░░░╚═╝░░░╚══════╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝
]]--

local footer = "Lavet af Vetari#1995"

function sendToDiscord(color, name, message, footer)
    local embed = {
          {
              ["color"] = 3447003,
              ["title"] = "**".. cfg.discordnavn .."**",
              ["description"] = cfg.discordbesked,
              ["footer"] = {
                  ["text"] = footer,
              },
          }
      }
  
    PerformHttpRequest('DISCORD_URL', function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
  end