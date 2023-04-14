--[Created By Abhijit#9999]--
ESX                           = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	while true do
		Wait(100) 
		PlayerData = ESX.GetPlayerData()
	end
end)

RegisterCommand('overheid', function(source, args)
	if PlayerData.job.name == 'police' then
		TriggerServerEvent('politiebericht', args)
	elseif PlayerData.job.name == 'ambulance' then
		TriggerServerEvent('ambulancebericht', args)
	elseif PlayerData.job.name == 'mechanic' then
		TriggerServerEvent('anwbbericht', args)
	elseif PlayerData.job.name == 'gang' then
		TriggerServerEvent('motorclubbericht', args)
	elseif PlayerData.job.name == 'cartel' then
		TriggerServerEvent('kartelbericht', args)
	else
		TriggerEvent('chat:addMessage', {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(209, 0, 0, 0.84); border-radius: 3px;"><i class="fas fa-address-card"></i> Waarschuwing<br> Je hebt geen permissies!</div>',
        args = {}
    }) 
	end
end, false)
