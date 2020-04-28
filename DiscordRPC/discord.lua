Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        Citizen.Wait(6*1000)

        SetDiscordAppId(660063736765087744)
        -- Sync je na IAP
        --SetRichPresence("ID: " .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1)))  | "Lokacija: " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player)))))
        SetRichPresence("ID: " .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. " | " .. GetPlayerName(PlayerId()) .. " je na ".. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))))) 

        SetDiscordRichPresenceAsset("imageeeee")
        SetDiscordRichPresenceAssetText(GetPlayerName(PlayerId()))

        SetDiscordRichPresenceAssetSmall("discord-logo-black_1_")
        SetDiscordRichPresenceAssetSmallText("therapyblkn.ddns.net")
    end


end)