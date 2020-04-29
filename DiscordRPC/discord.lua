Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        Citizen.Wait(6*1000)

        SetDiscordAppId() -- U OVE ZAGRADE STAVITE CLIENT ID OD VAŠEG DISCORD RPCa BEZ NAVODNIKA (AKO NE ZNATE ŠTO JE TO IMATE NA GOOGLE SVE, NAPISITE DISCORD DEVELOPER TUTORIAL BOT ILI TAKO NESTO)
        -- Molim da se ostavi ova markirana poruka jer ipak sam je ja napravio ;) !
        --SetRichPresence("ID: " .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1)))  | "Lokacija: " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))))) -- Stari kod <---
        SetRichPresence("ID: " .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. " | " .. GetPlayerName(PlayerId()) .. " je na ".. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))))) -- Novi kod <--- 
                                   -- ^Prikazuje ID igraca^ --                                         -- ^Prikazuje id (nemojte dirati)^         ^Prikazuje lokaciju gdje se nalazi taj lik, updatea se svaki put kada negdje dodje^
        SetDiscordRichPresenceAsset("VASA_SLIKA") <-- Ona velika slika na RPC
        SetDiscordRichPresenceAssetText(GetPlayerName(PlayerId())) <-- ovo tu prikazuje ime igraca prema idu, koji je spojen na steam njihov. U isto vrijeme je to tekst koji je za veliku sliku

        SetDiscordRichPresenceAssetSmall("VASA_SLIKA") <-- Ona sitna, mala slika na RPC
        SetDiscordRichPresenceAssetSmallText(#players .. "/32") <-- Tekst koji ocete staviti
    end
end)
