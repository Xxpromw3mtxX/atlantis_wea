ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

for k, v in pairs(Config.Items) do
	ESX.RegisterUsableItem(v, function(source)
		TriggerClientEvent('atlantis_wea:itemUsed', source, v)
	end)
end

RegisterServerEvent('atlantis_wea:removeWea')
AddEventHandler('atlantis_wea:removeWea', function(item)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem(item, 1)
end)

RegisterServerEvent('atlantis_wea:removeComp')
AddEventHandler('atlantis_wea:removeComp', function(component)
    local xPlayer = ESX.GetPlayerFromId(source)

    for i=1, #Config.Items, 1 do
        if component == Config.Items[i] then
            xPlayer.addInventoryItem(Config.Items[i], 1)
        end
    end
end)