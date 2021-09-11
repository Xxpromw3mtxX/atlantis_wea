ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
    end
end)

function notify(msg)
    ESX.ShowNotification(msg)
end

RegisterNetEvent('atlantis_wea:removeInvComponent')
AddEventHandler('atlantis_wea:removeInvComponent', function(w_current, component)
    if IsPedArmed(plrPed, 7) and w_current then
        -- Remove the component only if the ped is armed
        TriggerServerEvent('atlantis_wea:removeWea', component)
    end
end)

RegisterNetEvent('atlantis_wea:itemUsed')
AddEventHandler('atlantis_wea:itemUsed', function(item)
    plrPed = GetPlayerPed(-1)
    local selectedWeapon = GetSelectedPedWeapon(plrPed)
    local currentWeapon = GetCurrentPedWeapon(plrPed, selectedWeapon)

    if item == 'silencer' then
        -- Check if it should remove the component from the inv
        TriggerEvent('atlantis_wea:removeInvComponent', currentWeapon, item)

        if selectedWeapon == GetHashKey("WEAPON_PISTOL") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("component_at_pi_supp_02"))
            notify(_U('component_assembled'))
        elseif selectedWeapon == GetHashKey("WEAPON_PISTOL50") then
			GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))
            notify(_U('component_assembled'))  
        elseif selectedWeapon == GetHashKey("WEAPON_COMBATPISTOL") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))
            notify(_U('component_assembled'))
        elseif selectedWeapon == GetHashKey("WEAPON_SMG") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_PI_SUPP"))
            notify(_U('component_assembled'))
        elseif selectedWeapon == GetHashKey("WEAPON_MICROSMG") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))
            notify(_U('component_assembled'))
        elseif selectedWeapon == GetHashKey("WEAPON_ASSAULTRIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))
            notify(_U('component_assembled'))		  		
        elseif selectedWeapon == GetHashKey("WEAPON_CARBINERIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))
            notify(_U('component_assembled'))
        else
            notify(_U('no_weapon_compatible'))
        end
    elseif item == 'yusuf' then
        -- Check if it should remove the component from the inv
        TriggerEvent('atlantis_wea:removeInvComponent', currentWeapon, item)

        if selectedWeapon == GetHashKey("WEAPON_PISTOL") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE"))
            notify(_U('component_assembled'))
        elseif selectedWeapon == GetHashKey("WEAPON_PISTOL50") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))
            notify(_U('component_assembled'))
        elseif selectedWeapon == GetHashKey("WEAPON_SMG") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_VARMOD_LUXE"))
            notify(_U('component_assembled'))
        elseif selectedWeapon == GetHashKey("WEAPON_MICROSMG") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_VARMOD_LUXE"))
            notify(_U('component_assembled'))
        elseif selectedWeapon == GetHashKey("WEAPON_ASSAULTRIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"))
            notify(_U('component_assembled'))	
        else 
            notify(_U('no_weapon_compatible'))
        end
    elseif item == 'grip' then
        -- Check if it should remove the component from the inv
        TriggerEvent('atlantis_wea:removeInvComponent', currentWeapon, item)

        if selectedWeapon == GetHashKey("WEAPON_COMBATPDW") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            notify(_U('component_assembled')) 
        elseif selectedWeapon == GetHashKey("WEAPON_ASSAULTRIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            notify(_U('component_assembled')) 
        elseif selectedWeapon == GetHashKey("WEAPON_CARBINERIFLE") then
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
            notify(_U('component_assembled')) 	
        else 
            notify(_U('no_weapon_compatible'))
        end
    elseif item == 'flashlight' then
        -- Check if it should remove the component from the inv
        TriggerEvent('atlantis_wea:removeInvComponent', currentWeapon, item)

        if selectedWeapon == GetHashKey("WEAPON_PISTOL") then
			GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))
            notify(_U('component_assembled'))
		elseif selectedWeapon == GetHashKey("WEAPON_PISTOL50") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_PI_FLSH"))
            notify(_U('component_assembled'))
		elseif selectedWeapon == GetHashKey("WEAPON_COMBATPISTOL") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))
            notify(_U('component_assembled'))
		elseif selectedWeapon == GetHashKey("WEAPON_SMG") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))
            notify(_U('component_assembled'))
		elseif selectedWeapon == GetHashKey("WEAPON_MICROSMG") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_AT_PI_FLSH"))
            notify(_U('component_assembled'))
		elseif selectedWeapon == GetHashKey("WEAPON_COMBATPDW") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_FLSH"))	
            notify(_U('component_assembled'))
		elseif selectedWeapon == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
            notify(_U('component_assembled'))	
		elseif selectedWeapon == GetHashKey("WEAPON_CARBINERIFLE") then
		  	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))	
            notify(_U('component_assembled'))
		else 
            notify(_U('no_weapon_compatible'))
		end
    end
end)