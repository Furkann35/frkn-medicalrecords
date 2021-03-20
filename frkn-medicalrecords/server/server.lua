
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


