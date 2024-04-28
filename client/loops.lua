CreateThread(function()
    while true do
        local sleep = 0
        if LocalPlayer.state.isLoggedIn then
            sleep = (1000 * 60) * FW.Config.UpdateInterval
            TriggerServerEvent('Framework:UpdatePlayer')
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    while true do
        if LocalPlayer.state.isLoggedIn then
            if (FW.PlayerData.metadata['hunger'] <= 0 or FW.PlayerData.metadata['thirst'] <= 0) and not (FW.PlayerData.metadata['isdead'] or FW.PlayerData.metadata['inlaststand']) then
                local ped = PlayerPedId()
                local currentHealth = GetEntityHealth(ped)
                local decreaseThreshold = math.random(5, 10)
                SetEntityHealth(ped, currentHealth - decreaseThreshold)
            end
        end
        Wait(FW.Config.StatusInterval)
    end
end)
