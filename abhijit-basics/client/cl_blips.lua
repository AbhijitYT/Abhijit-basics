local blips = {
  -- Example {title="", colour=, id=, x=, y=, z=},
  
   {title="Blackmarket", colour=27, id=303, x = -1499.77, y = -201.82, z = 50.78},
   {title="Gang Management", colour=27, id=590, x = -281.89, y = -2031.35, z = 30.15},
   {title="Skatepark", colour=27, id=590, x = -925.62, y = -758.34, z = 20.48},
   {title="Moneywash", colour=27, id=500, x = 966.97, y = 1.69, z = 80.99},
   {title="Skyramps", colour=27, id=84, x = -16.6832, y = -1819.14, z = 25.853},
}
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.5)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
