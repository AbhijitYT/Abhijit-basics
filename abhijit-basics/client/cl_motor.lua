ESX = nil



TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 

 
--[[
    --[Created By Abhijit#9999]
--]]

cooldown = 0
isbusy = false

RegisterCommand("motor", function(source, args) 
    if cooldown <= 0 then
        ESX.Game.SpawnVehicle("zip", GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), function(veh) -- Model name
            TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        end)
        cooldown = 100
    else
        ESX.ShowNotification("~p~ You still have to " .. cooldown .. "wait seconds until you can spawn another bike")
        if not isbusy then
            isbusy = true
            Citizen.CreateThread(function()
                while true do 
                    if cooldown > 0 then 
                        cooldown = cooldown - 1 
                    else
                        cooldown = 0 
                        isbusy = false
                        return
                    end
                    Citizen.Wait(1000)
                end
            end)
        end
    end
end)
