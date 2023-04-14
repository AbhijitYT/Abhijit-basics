-- CONFIG --
servername = "discord.gg/Abhijit"
offset = {x = 0.015, y = 0.775}
rgb = {r = 127, g = 0, b = 255}
alpha = 255
scale = 0.34
font = 7
bringontherainbows = false

-- CODE --
Citizen.CreateThread(function()
	while true do
		Wait(1)

		if bringontherainbows then
			rgb = RGBRainbow(1)
		end
		SetTextColour(rgb.r, rgb.g, rgb.b, alpha)

		SetTextFont(font)
		SetTextScale(scale, scale)
		SetTextWrap(0.0, 1.0)
		SetTextCentre(false)
		SetTextDropshadow(2, 2, 0, 0, 0)
		SetTextEdge(1, 0, 0, 0, 205)
		SetTextEntry("STRING")
		AddTextComponentString(servername)
		DrawText(offset.x, offset.y)
	end
end)

function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end

function ManageReticle()
    local ped = GetPlayerPed( -1 )

    if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then
        if ( GetFollowPedCamViewMode() ~= 4 and IsPlayerFreeAiming() ) then 
            HideHudComponentThisFrame( 14 )
        end 
    end 
end 

Citizen.CreateThread( function()
    while true do 
        ManageReticle()

        Citizen.Wait( 0 )
    end 
end )
