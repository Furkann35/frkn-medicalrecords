RegisterCommand("medical", function(args,rawCommand) 
    SetNuiFocus(true, true)

    SendNUIMessage({
        type = "open",
    })  
end)

RegisterNUICallback("exit" , function()
    SetNuiFocus(false, false)

end)

RegisterNUICallback('sumbit', function(data, cb)
    TriggerServerEvent("logyolla" , data)
    SetNuiFocus(false, false)
    TriggerEvent("notification", "Hasta kaydı başarılı bir şekilde oluşturuldu", 3)

end)

RegisterCommand("medicalfix", function()
    SetNuiFocus(false, false)
end, false)

RegisterNetEvent('frkn:medicalrecords')
AddEventHandler('frkn:medicalrecords', function() 
ExecuteCommand('medical')
end)


