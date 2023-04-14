AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
    local src = source
    local teamneger = GetPlayerIdentifier(src)
    local rockstarcheck = GetPlayerIdentifier(src, 1)
    for _, playerId in ipairs(GetPlayers()) do
        if teamneger == GetPlayerIdentifier(playerId) or rockstarcheck == GetPlayerIdentifier(playerId, 1) then
            DiscordLogs("[***Reden***] Someone tried to join twice with the same Identifiers \n\n [***Informatie***] \n\n[**Naam**] "..name.."\n [***Steam Hex***] "..teamneger.."\n [***Rockstar License***] "..rockstarcheck.."", name)
            setKickReason("Abhijit: Abhijit system detected You are being logged in our discord for trying to join with 2 same steam accounts.")
            CancelEvent()
        end
    end
end)

function DiscordLogs(Message, Naam)
    local embed = {}
    embed = {
        {
            ["color"] = 2907, 
            ["title"] = "Joined twice with the same Identifiers:",
            ["author"] = {                    
                name = Naam,
                icon_url = ""
            },    
            ["description"] = Message,
            ["footer"] = {
                ["text"] = " Logs | Created by Abhijit",
                ["icon_url"] = ""
            },
        }
    }
    PerformHttpRequest("", 
    function(err, text, headers) end, 'POST', json.encode({username = 'Abhijit-Scripts', embeds = embed, avatar_url = ''}), { ['Content-Type'] = 'application/json' })        
end