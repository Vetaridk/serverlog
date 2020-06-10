--[[
██╗░░░██╗███████╗████████╗░█████╗░██████╗░██╗
██║░░░██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║
╚██╗░██╔╝█████╗░░░░░██║░░░███████║██████╔╝██║
░╚████╔╝░██╔══╝░░░░░██║░░░██╔══██║██╔══██╗██║
░░╚██╔╝░░███████╗░░░██║░░░██║░░██║██║░░██║██║
░░░╚═╝░░░╚══════╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝
]]--

AddEventHandler('onClientResourceStart', function (resourceName)
    if(GetCurrentResourceName() ~= resourceName) then
      return
    end
    sendToDiscord(3447003, cfg.discordnavn, cfg.discordbesked, "Lavet af Vetari#1995")
  end)

function sendToDiscord(color, name, message, footer)
    local embed = {
          {
              ["color"] = 3447003,
              ["title"] = "**".. cfg.discordnavn .."**",
              ["description"] = cfg.discordbesked,
              ["footer"] = {
                  ["text"] = "Lavet af Vetari#1995",
              },
          }
      }
  
    PerformHttpRequest('cfg.discordwebhook', function(err, text, headers) end, 'POST', json.encode({username = cfg.discordnavn, embeds = embed}), { ['Content-Type'] = 'application/json' })
  end