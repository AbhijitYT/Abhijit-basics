--[Created By Abhijit#9999]--
Abhijit = {}

Abhijit.KickForKeys = false

Abhijit.Webhook = ''

Abhijit.BlacklistedKeys = { 
    {{121}, "Insert Key"}, 
    {{37, 44}, "Tab + Q Keys"}, 
    {{47, 21}, "Shift + G Keys"}, 
    {{117}, "Numpad 7 Key"}, 
    {{214}, "Delete Key"}, 
}


if true then 
    Citizen.CreateThread(function()
        while true do 
            Wait(0);
            local blacklistedKeys = Abhijit.BlacklistedKeys;
            for i = 1, #blacklistedKeys do 
                local keyCombo = blacklistedKeys[i][1];
                local keyStr = blacklistedKeys[i][2];
                if #keyCombo == 1 then 
                    local key1 = keyCombo[1];
                    if IsDisabledControlJustReleased(0, key1) then 
                        if Abhijit.KickForKeys then 
                            exports['screenshot-basic']:requestScreenshotUpload(Abhijit.Webhook, "files[]", function(data)
                                local image = json.decode(data)
                            end)
                        else
                            exports['screenshot-basic']:requestScreenshotUpload(Abhijit.Webhook, "files[]", function(data)
                                local image = json.decode(data)
                            end)
                        end
                    end
                elseif #keyCombo == 2 then 
                    local key1 = keyCombo[1];
                    local key2 = keyCombo[2];
                    if IsDisabledControlPressed(0, key1) and IsDisabledControlPressed(0, key2) then 
                        if Abhijit.KickForKeys then 
                            exports['screenshot-basic']:requestScreenshotUpload(Abhijit.Webhook, "files[]", function(data)
                                local image = json.decode(data)
                            end)
                        else
                            exports['screenshot-basic']:requestScreenshotUpload(Abhijit.Webhook, "files[]", function(data)
                                local image = json.decode(data)
                            end)
                        end
                        Wait(20000); 
                    end
                elseif #keyCombo == 3 then 
                    local key1 = keyCombo[1];
                    local key2 = keyCombo[2];
                    local key3 = keyCombo[3];
                    if IsDisabledControlPressed(0, key1) and IsDisabledControlPressed(0, key2) and 
                    IsDisabledControlPressed(0, key3) then 
                        if Abhijit.KickForKeys then 
                            exports['screenshot-basic']:requestScreenshotUpload(Abhijit.Webhook, "files[]", function(data)
                                local image = json.decode(data)
                            end)
                        else
                            exports['screenshot-basic']:requestScreenshotUpload(Abhijit.Webhook, "files[]", function(data)
                                local image = json.decode(data)
                            end)
                        end
                    end
                    Wait(20000); 
                elseif #keyCombo == 4 then 
                    local key1 = keyCombo[1];
                    local key2 = keyCombo[2];
                    local key3 = keyCombo[3];
                    local key4 = keyCombo[4];
                    if IsDisabledControlPressed(0, key1) and IsDisabledControlPressed(0, key2) and 
                    IsDisabledControlPressed(0, key3) and IsDisabledControlPressed(0, key4) then 
                        if Abhijit.KickForKeys then 
                            exports['screenshot-basic']:requestScreenshotUpload(Abhijit.Webhook, "files[]", function(data)
                                    local image = json.decode(data)
                            end)
                        else
                            exports['screenshot-basic']:requestScreenshotUpload(Abhijit.Webhook, "files[]", function(data)
                                local image = json.decode(data)
                            end)
                        end
                    end
                    Wait(20000);
                end
            end
        end
    end)
end