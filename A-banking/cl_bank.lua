-------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------ BY Ayko#6666 ------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------

ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(100)
    end
end)

ConfAyko              = {}
ConfAyko.DrawDistance = 100
ConfAyko.Size         = {x = 1.0, y = 1.0, z = 1.0}
ConfAyko.Color        = {r = 255, g = 255, b = 255}
ConfAyko.Type         = 29


local position = {
    {x = 150.266, y = -1040.203, z = 29.374},
    {x = -1212.980, y = -330.841, z = 37.787},
    {x = -2962.59, y = 482.5, z = 15.703},
    {x = -112.202, y = 6469.295, z = 31.626},
    {x = 314.187, y = -278.621, z = 54.170},
    {x = -351.534, y = -49.529, z = 49.042},
    {x = 241.727, y = 220.706, z = 106.286},
    {x = 1175.064, y = 2706.643, z = 38.094},	
}  

local atm = {
{x = 89.75, y = 2.35, z = 68.31},
{x = 1167.02, y = -456.32, z = 66.79},
{x = -386.733, y = 6045.953, z = 31.501},
{x = -284.037, y = 6224.385, z = 31.187},
{x = -284.037, y = 6224.385, z = 31.187},
{x = -135.165, y = 6365.738, z = 31.101},
{x = -110.753, y = 6467.703, z = 31.784},
{x = -94.9690, y = 6455.301, z = 31.784},
{x = 155.4300, y = 6641.991, z = 31.784},
{x = 174.6720, y = 6637.218, z = 31.784},
{x = 1703.138, y = 6426.783, z = 32.730},
{x = 1735.114, y = 6411.035, z = 35.164},
{x = 1702.842, y = 4933.593, z = 42.051},
{x = 1967.333, y = 3744.293, z = 32.272},
{x = 1821.917, y = 3683.483, z = 34.244},
{x = 1174.532, y = 2705.278, z = 38.027},
{x = 540.0420, y = 2671.007, z = 42.177},
{x = 2564.399, y = 2585.100, z = 38.016},
{x = 2558.683, y = 349.6010, z = 108.050},
{x = 2558.051, y = 389.4817, z = 108.660},
{x = 1077.692, y = -775.796, z = 58.218},
{x = 1139.018, y = -469.886, z = 66.789},
{x = 1168.975, y = -457.241, z = 66.641},
{x = 1153.884, y = -326.540, z = 69.245},
{x = 381.2827, y = 323.2518, z = 103.270},
{x = 236.4638, y = 217.4718, z = 106.840},
{x = 265.0043, y = 212.1717, z = 106.780},
{x = 285.2029, y = 143.5690, z = 104.970},
{x = 157.7698, y = 233.5450, z = 106.450},
{x = -164.568, y = 233.5066, z = 94.919},
{x = -1827.04, y = 785.5159, z = 138.020},
{x = -1409.39, y = -99.2603, z = 52.473},
{x = -1205.35, y = -325.579, z = 37.870},
{x = -1215.64, y = -332.231, z = 37.881},
{x = -2072.41, y = -316.959, z = 13.345},
{x = -2975.72, y = 379.7737, z = 14.992},
{x = -2955.70, y = 488.7218, z = 15.486},
{x = -3044.22, y = 595.2429, z = 7.595},
{x = -3144.13, y = 1127.415, z = 20.868},
{x = -3241.10, y = 996.6881, z = 12.500},
{x = -3241.11, y = 1009.152, z = 12.877},
{x = -1305.40, y = -706.240, z = 25.352},
{x = -538.225, y = -854.423, z = 29.234},
{x = -711.156, y = -818.958, z = 23.768},
{x = -717.614, y = -915.880, z = 19.268},
{x = -526.566, y = -1222.90, z = 18.434},
{x = -256.831, y = -719.646, z = 33.444},
{x = -203.548, y = -861.588, z = 30.205},
{x = 112.4102, y = -776.162, z = 31.427},
{x = 112.9290, y = -818.710, z = 31.386},
{x = 119.9000, y = -883.826, z = 31.191},
{x = 149.4551, y = -1038.95, z = 29.366},
{x = -846.304, y = -340.402, z = 38.687},
{x = -1204.35, y = -324.391, z = 37.877},
{x = -1216.27, y = -331.461, z = 37.773},
{x = -56.1935, y = -1752.53, z = 29.452},
{x = -261.692, y = -2012.64, z = 30.121},
{x = -273.001, y = -2025.60, z = 30.197},
{x = 24.589, y = -946.056, z = 29.357},
{x = -254.112, y = -692.483, z = 33.616},
{x = -1570.197, y = -546.651, z = 34.955},
{x = -1415.909, y = -211.825, z = 46.500},
{x = -1430.112, y = -211.014, z = 46.500},
{x = 33.232, y = -1347.849, z = 29.497},
{x = 129.216, y = -1292.347, z = 29.269},
{x = 287.645, y = -1282.646, z = 29.659},
{x = 289.012, y = -1256.545, z = 29.440},
{x = 295.839, y = -895.640, z = 29.217},
{x = 1686.753, y = 4815.809, z = 42.008},
{x = -302.408, y = -829.945, z = 32.417},
{x = 5.134, y = -919.949, z = 29.557}
}

Citizen.CreateThread(function()
    for k in pairs(position) do
       local blip = AddBlipForCoord(position[k].x, position[k].y, position[k].z)
       SetBlipSprite(blip, 207)
       SetBlipColour(blip, 3)
       SetBlipScale(blip, 0.65)
       SetBlipAsShortRange(blip, true)

       BeginTextCommandSetBlipName('STRING')
       AddTextComponentString("Banque")
       EndTextCommandSetBlipName(blip)
   end
end)

local ArgentJoueur = 0

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local coords, letSleep = GetEntityCoords(PlayerPedId()), true

        for k in pairs(position) do
            if (ConfAyko.Type ~= -1 and GetDistanceBetweenCoords(coords, position[k].x, position[k].y, position[k].z, true) < ConfAyko.DrawDistance) then
                DrawMarker(ConfAyko.Type, position[k].x, position[k].y, position[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, ConfAyko.Size.x, ConfAyko.Size.y, ConfAyko.Size.z, ConfAyko.Color.r, ConfAyko.Color.g, ConfAyko.Color.b, 100, false, true, 2, false, false, false, false)
                letSleep = false
            end
        end

        if letSleep then
            Citizen.Wait(500)
        end
    end
end)

local Banque = {
        Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 0, 0}, Title = "Banque"},
    Data = { currentMenu = "Compte Banquaire" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)

            if btn.name == "Connexion" then

                startScenario('PROP_HUMAN_ATM')

                Citizen.Wait(7000) 
                ClearPedTasksImmediately(PlayerPedId())

                OpenMenu("Compte Banquaire")
                notificationconnexion('')
            
            end

            if btn.name == "Déconnexion" then

                CloseMenu("Compte Banquaire")
                notification('')
            end


            if btn.name == "Déposer" then

                deposer()
            
            end

            if btn.name == "Retirer" then
        
                retirer()

            end

    
                 if btn.name == "Actualiser Solde Banquaire" then

                    actusolde()
        
                end

        end,
    },

    Menu = {

        ["Compte Banquaire"] = {
            b = {
                {name = "Connexion", ask = "~r~→", askX = true},
                {name = "Déconnexion", ask = "~r~→", askX = true},
            }
        }, 
        
        ["connexion"] = {    
            b = {
                {name = "Déposer", ask = "~r~→", askX = true},
                {name = "Retirer", ask = "~r~→", askX = true},
                {name = "Actualiser Solde Banquaire", ask = "~r~→", askX = true},
            }
        },
    }
} 

function notification(msg)
    local mugshot, mugshotStr = ESX.Game.GetPedMugshot(PlayerPedId())
    ESX.ShowAdvancedNotification('Fleeca Bank', 'Déconnexion', 'Merci pour votre fidélité !', mugshotStr, 1)
    UnregisterPedheadshot(mugshot)
end

function notificationconnexion(msg)
    local mugshot, mugshotStr = ESX.Game.GetPedMugshot(PlayerPedId())
    ESX.ShowAdvancedNotification('Fleeca Bank', 'Connexion réussite', 'Merci pour votre fidélité !', mugshotStr, 1)
    UnregisterPedheadshot(mugshot)
end


function KeyboardInput(entryTitle, textEntry, inputText, maxLength)
    AddTextEntry(entryTitle, textEntry)
    DisplayOnscreenKeyboard(1, entryTitle, '', inputText, '', '', '', maxLength)
    blockinput = true

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Citizen.Wait(2000)
    end

    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Citizen.Wait(500)
        blockinput = false
        return result
    else
        Citizen.Wait(500)
        blockinput = false
        return nil
    end
end

function actusolde()
    TriggerServerEvent("Ayko:actusold", action)
end

RegisterNetEvent("Ayko:actusold")
AddEventHandler("Ayko:actusold", function(money, cash)
    ArgentJoueur = tonumber(money)
end)

function retirer()
    local amount = KeyboardInput('AYKO_RETIRER', ('Retirer de l\'espèces'), '', 6)

    if amount ~= nil then
        amount = tonumber(amount)

        if type(amount) == 'number' then
            TriggerServerEvent('Ayko:RetirerArgent', amount)
        end
    end
end

function deposer()
    local amount = KeyboardInput('AYKO_DEPOSER', ('Déposer de l\'argent'), '', 6)

    if amount ~= nil then
        amount = tonumber(amount)

        if type(amount) == 'number' then
            TriggerServerEvent('Ayko:DeposerArgent', amount)
        end
    end
end	

function startScenario(anim)
    TaskStartScenarioInPlace(PlayerPedId(), anim, 0, false)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour accéder à la banque")
                if IsControlJustPressed(1,51) then
                    CreateMenu(Banque)
                end   
            end
        end
end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(atm) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, atm[k].x, atm[k].y, atm[k].z)

            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour accéder à la banque")
                if IsControlJustPressed(1,51) then
                    CreateMenu(Banque)
                end   
            end
        end
end
end)