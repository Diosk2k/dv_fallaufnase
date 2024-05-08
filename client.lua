local isPunished = false
local lastJumpTime = 0

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()

        -- Überprüfen, ob der Spieler nicht in einem Fahrzeug ist und springt
        if not IsPedInAnyVehicle(playerPed, false) and IsControlJustReleased(0, 22) then -- 22 ist der Code für die Leertaste (Springen)
            local currentTime = GetGameTimer()
            -- Überprüfen, ob der Spieler innerhalb des Zeitrahmens wiederholt springt
            if currentTime - lastJumpTime < Config.JumpTimeFrame then
                ApplyPenalty(playerPed)
            end
            lastJumpTime = currentTime
        end
    end
end)

function ApplyPenalty(playerPed)
    -- Spieler zum Stolpern bringen
    SetPedToRagdoll(playerPed, 55000, 5000, 0, 0, 0, 0)

    -- Bildschirm-Effekt anwenden
    StartScreenEffect('InchOrange', 0, true)

    -- Lebensverlust
    local maxHealth = GetEntityMaxHealth(playerPed)
    local newHealth = math.max(GetEntityHealth(playerPed) - math.floor(maxHealth * (Config.PenaltyPercentage / 100)), 0)
    SetEntityHealth(playerPed, newHealth)

    isPunished = true

    -- Bildschirm-Effekt nach ein paar Sekunden beenden
    Citizen.Wait(5000) -- Anzahl der Millisekunden anpassen (hier 5000 = 5 Sekunden)
    StopScreenEffect('InchOrange')

    isPunished = false
end
