-------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------ BY Ayko#6666 ------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("Ayko:RetirerArgent")
AddEventHandler("Ayko:RetirerArgent", function(money)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local total = money
    local xMoney = xPlayer.getBank()
    
    if xMoney >= total then

    xPlayer.removeAccountMoney('bank', total)
    xPlayer.addMoney(total)
 
         TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque', 'FLEECA', "Vous avez retiré ~g~"..total.." $ .", 'CHAR_BANK_FLEECA', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas toute cette somme d\'argent !")
    end    
end) 

RegisterServerEvent("Ayko:DeposerArgent")
AddEventHandler("Ayko:DeposerArgent", function(money)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local total = money
    local xMoney = xPlayer.getMoney()
    
    if xMoney >= total then

    xPlayer.addAccountMoney('bank', total)
    xPlayer.removeMoney(total)
         TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque', 'FLEECA', "Vous avez déposer ~g~ "..total.." $ ~s~en banque !", 'CHAR_BANK_FLEECA', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas toute cette somme d\'argent !")
    end    
end)

RegisterServerEvent("Ayko:actusold") 
AddEventHandler("Ayko:actusold", function(action, amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local ArgentJoueur = xPlayer.getBank()

    TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque', 'FLEECA', "Solde : ~g~".. ArgentJoueur .." $", 'CHAR_BANK_FLEECA', 8)

    TriggerClientEvent("Ayko:actusold", source, ArgentJoueur)
end)


