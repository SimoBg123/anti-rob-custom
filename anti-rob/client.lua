local QBCore = exports['qb-core']:GetCoreObject()
print ("Anti-Rob By Simeoncho <3")


RegisterCommand("rob", function(source, args)
    local playerId = PlayerId()
    local playerPed = GetPlayerPed(playerId)
    local playerCoords = GetEntityCoords(playerPed)

    ----- Steam allowed license dont working!
    ----- Steam allowed license dont working!
       
    local playerLicense = QBCore.Functions.GetPlayerData().metadata["license"]
    local allowedLicenses = {
        "steam:dontworking"
    }

    local isAllowed = false
    for _, license in ipairs(allowedLicenses) do
        if playerLicense == license then
            isAllowed = true
            break
        end
    end

    if isAllowed then
    else
        TriggerEvent("chatMessage", "^1ERROR: ^7You dont have permissions to use this command!.")
    end
end, false)
