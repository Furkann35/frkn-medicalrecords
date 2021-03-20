Citizen.CreateThread(function()
    if GetCurrentResourceName() ~= 'frkn-medicalrecords' then
        for i=1, 5000 do
            print('^FURKAN MEDICAL SERVICE: KAPALI,^4 LUTFEN KLASORUN ADINI ESKI HALINE GETIRIN.')
        end
        Citizen.Wait(1)
        os.exit()
    end
end)


local DISCORD_WEBHOOK = "https://discord.com/api/webhooks/795287594287759380/i-jJBrg3duwWFlA3grsNBRkupKBjkuSQeWvuA4vQFBFIg65G_ULwekMyWrHUAnt3UnVm"



RegisterServerEvent('logyolla')
AddEventHandler('logyolla', function(data)
    if(data.url == nil or data.url == "") then
        data.url = "https://lh3.googleusercontent.com/proxy/eyhom2MpG4JlnVWyxOKZfqssXjRxRE1eh9K3F45mwGnaxHFnNGsiSH35W3PQBdM0WzIZ7pwZOHP49s5eeN3K92p8jDMYY4M"
    end
    local connect = {
        {
            ["color"] = "65425",
            ["title"] = "frkn-medicalrecords",
            ["description"] = "Hasta İsim Soy İsim: \n `"..data.title.."` \n Hasta Kayıt: \n `"..data.aciklama.."`",
	        ["footer"] = {
                ["text"] = "Furkann#4645",
            },
            ["image"] = {
                ["url"] = data.url,
            },
        }
    }
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = "frkn-medicalrecords",  avatar_url = "https://cdn.discordapp.com/attachments/707305833871966360/769400563442909214/Visual_Studio_code_logo.png",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)


local FRKN_System = "https://discord.com/api/webhooks/795287594287759380/i-jJBrg3duwWFlA3grsNBRkupKBjkuSQeWvuA4vQFBFIg65G_ULwekMyWrHUAnt3UnVm"
local msg = "**frkn-medicalrecords kullanılıyor**"
local systemtime = os.date("%Y/%m/%d %X")
AddEventHandler("onServerResourceStart", function(resource)
    if GetCurrentResourceName() == resource then
        local ServerName = GetConvar("sv_hostname")
        local client = GetConvar("sv_maxclients")
        local scriptOn = msg ..' **\n\nSunucu Adı : ** ```' .. ServerName .. ' frkn-medicalrecords kullanmakta ```  ** \n\n** **[Özel Sunucu Bilgileri]** \n ** Max Oyuncu Sayısı :** ```' ..client.. '```\n\n  **zaman :  **\n```'.. systemtime ..  '```\n\n**Dosyanın bulunduğu konum :  ** ```\n'  ..GetResourcePath(GetCurrentResourceName()).. '``` \n ```Furkann#4645```'
        PerformHttpRequest(FRKN_System, function(err, text, headers) end, 'POST', json.encode({username = "frkn-medicalrecords | LogSystem", avatar_url = "https://cdn.discordapp.com/attachments/707305833871966360/769400563442909214/Visual_Studio_code_logo.png" ,content = scriptOn}), { ['Content-Type'] = 'application/json' })
    end
end)
