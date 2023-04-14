--[Created By Abhijit#9999]--
local disableShuffle = true
function disableSeatShuffle(flag)
	disableShuffle = flag
end

local Nergers2 = TriggerEvent
local NiksJeMoer2 = Nergers2
local FuckYouhacker2 = NiksJeMoer2
NiksJeMoer2 = function(...)
    FuckYouhacker2(...)
end


Citizen.CreateThread(function()
	while true do
		local fiat = 750
		if IsPedInAnyVehicle(GetPlayerPed(-1), false) and disableShuffle then
			fiat = 10
			if GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) == GetPlayerPed(-1) then
				if GetIsTaskActive(GetPlayerPed(-1), 165) then
					SetPedIntoVehicle(GetPlayerPed(-1), GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
				end
			end
		end
		Citizen.Wait(fiat)
	end
end)

RegisterNetEvent("SeatShuffle")
AddEventHandler("SeatShuffle", function()
	if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
		disableSeatShuffle(false)
		Citizen.Wait(5000)
		disableSeatShuffle(true)
	else
		CancelEvent()
	end
end)

RegisterCommand("shuff", function(source, args, raw) --change command here
    NiksJeMoer2("SeatShuffle")
end, false) --False, allow everyone to run it