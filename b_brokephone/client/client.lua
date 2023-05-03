if Config.LastESX then
    ESX = exports['es_extended']:getSharedObject()
else
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(100)
    end 
end

Citizen.CreateThread(function()
    while true do
        Wait(0)
        if IsPedSwimming(GetPlayerPed(-1)) then
            Wait(Config.Time) -- Vitesse de casse 
            if IsPedSwimming(GetPlayerPed(-1)) then
                TriggerServerEvent('funko:breakmyphones')
                TriggerServerEvent('funko:breakmyphones1')
                TriggerServerEvent('funko:breakmyphones2')
            end
        else
            Wait(500)
        end
    end
end)

RegisterNetEvent("funko:repair:do_animation")
AddEventHandler("funko:repair:do_animation", function()
    Citizen.CreateThread(function()
        RequestAnimDict('amb@world_human_stand_mobile_fat@female@text@base')
        while not HasAnimDictLoaded( 'amb@world_human_stand_mobile_fat@female@text@base') do
            Citizen.Wait(1)
        end
        FreezeEntityPosition(GetPlayerPed(-1), true)
        TaskPlayAnim(GetPlayerPed(-1), 'amb@world_human_stand_mobile_fat@female@text@base' ,'base' ,8.0, -8.0, -1, 0, 0, false, false, false )
        Citizen.Wait(5000)
        ClearPedTasks(GetPlayerPed(-1))
        FreezeEntityPosition(GetPlayerPed(-1), false)
    end)
    Citizen.Wait(5000) --temps de l'animation
end)