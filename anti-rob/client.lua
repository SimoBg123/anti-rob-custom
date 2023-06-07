local QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand("rob", function(source, args)
    local playerId = PlayerId()
    local playerPed = GetPlayerPed(playerId)
    local playerCoords = GetEntityCoords(playerPed)

    -- Вашият код за проверка на Steam лиценз тук
    -- Можете да използвате функцията, предоставена от вашата рамка, за да получите Steam лиценз на играча.
    -- Например, ако използвате QBCore, може да използвате следната логика:

    local playerLicense = QBCore.Functions.GetPlayerData().metadata["license"]
    local allowedLicenses = {
        "steam:109109948"
    }

    local isAllowed = false
    for _, license in ipairs(allowedLicenses) do
        if playerLicense == license then
            isAllowed = true
            break
        end
    end

    if isAllowed then
        -- Добавете тук вашия код, който да се изпълни, ако играчът има разрешение да използва командата
    else
        TriggerEvent("chatMessage", "^1Грешка: ^7Нямате разрешение да използвате тази команда.")
    end
end, false)
