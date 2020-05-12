Citizen.CreateThread(function()
    while true do
        local ime = GetPlayerPed(-1)
        local nalaziste = " je na " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(ime))))
        local igracbrzina = math.floor((GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3.6)) .. " KM/h"
        Citizen.Wait(3*1000)

        if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then 
            nalaziste = " vozi " .. igracbrzina
        if igracbrzina == "0 KM/h" then nalaziste = " je u vozilu"
            end
        end

        SetDiscordAppId(660063736765087744)
        -- Sync je na IAP
        --SetRichPresence("ID: " .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1)))  | "Lokacija: " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(ime)))))
        SetRichPresence("ID: " .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. " | " .. GetPlayerName(PlayerId()) .. nalaziste )

        SetDiscordRichPresenceAsset("imageeeee")
        SetDiscordRichPresenceAssetText(GetPlayerName(PlayerId()))

        SetDiscordRichPresenceAssetSmall("discord-logo-black_1_")
        SetDiscordRichPresenceAssetSmallText("therapyblkn.ddns.net")
    end
end)