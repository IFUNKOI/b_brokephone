ESX = nil 

if Config.LastESX then
    ESX = exports['es_extended']:getSharedObject()
else
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(100)
    end 
end

RegisterServerEvent("funko:breakmyphones")
AddEventHandler("funko:breakmyphones", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('phone').count > 0 then
        xPlayer.addInventoryItem('brokephone', xPlayer.getInventoryItem('phone').count)
        xPlayer.removeInventoryItem('phone', xPlayer.getInventoryItem('phone').count)
        xPlayer.showNotification('Really!? You swim with you\'r phone ?')
    end
end)

RegisterServerEvent("funko:breakmyphones1")
AddEventHandler("funko:breakmyphones1", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('pink_phone').count > 0 then
        xPlayer.addInventoryItem('brokepinkphone', xPlayer.getInventoryItem('pink_phone').count)
        xPlayer.removeInventoryItem('pink_phone', xPlayer.getInventoryItem('pink_phone').count)
        xPlayer.showNotification('Really!? You swim with you\'r phone ?')
    end
end)

RegisterServerEvent("funko:breakmyphones2")
AddEventHandler("funko:breakmyphones2", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('gold_phone').count > 0 then
        xPlayer.addInventoryItem('brokegoldphone', xPlayer.getInventoryItem('gold_phone').count)
        xPlayer.removeInventoryItem('gold_phone', xPlayer.getInventoryItem('gold_phone').count)
        xPlayer.showNotification('Really!? You swim with you\'r phone ?')
    end
end)

-- Example to add another items
-- Here, it's for a radio
--[[
    RegisterServerEvent("funko:breakmyphones2")
AddEventHandler("funko:breakmyphones2", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('radio').count > 0 then
        xPlayer.addInventoryItem('brokeradio', xPlayer.getInventoryItem('radio').count)
        xPlayer.removeInventoryItem('radio', xPlayer.getInventoryItem('radio').count)
        xPlayer.showNotification('Really!? You swim with you\'r radio ?')
    end
end)
]]

RegisterServerEvent("funko:repairmyphone")
AddEventHandler("funko:repairmyphone", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('repair:do_animation', source)
    Citizen.Wait(Config.RepairTime) 
    if xPlayer.getInventoryItem('brokegoldphone').count > 0 then
        xPlayer.addInventoryItem('gold_phone', 1)
        xPlayer.removeInventoryItem('brokegoldphone', 1)
        xPlayer.removeInventoryItem('phone_module', 1)
    end
end)

RegisterServerEvent("funko:repairmyphone1")
AddEventHandler("funko:repairmyphone1", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('funko:repair:do_animation', source)
    Citizen.Wait(Config.RepairTime) 
    if xPlayer.getInventoryItem('brokephone').count > 0 then
        xPlayer.addInventoryItem('phone', 1)
        xPlayer.removeInventoryItem('brokephone', 1)
        xPlayer.removeInventoryItem('phone_module', 1)
    end
end)

RegisterServerEvent("funko:repairmyphone2")
AddEventHandler("funko:repairmyphone2", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('funko:repair:do_animation', source)
    Citizen.Wait(Config.RepairTime) 
    if xPlayer.getInventoryItem('brokepinkphone').count > 0 then
        xPlayer.addInventoryItem('pink_phone', 1)
        xPlayer.removeInventoryItem('brokepinkphone', 1)
        xPlayer.removeInventoryItem('phone_module', 1)
    end
end)

ESX.RegisterUsableItem('phone_module', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerEvent('funko:repairmyphone', source)
    TriggerEvent('funko:repairmyphone1', source)
    TriggerEvent('funko:repairmyphone2', source)
    xPlayer.showNotification('You\'r phone was repaired')
end)