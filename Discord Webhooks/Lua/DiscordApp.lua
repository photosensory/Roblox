local HttpService = game:GetService("HttpService")

local DiscordApp = {}
DiscordApp.__index = DiscordApp

function DiscordApp.PostAsync(self, config)
	local response = HttpService:RequestAsync({
		Url = self.ApplicationURL,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = HttpService:JSONEncode(config)
    })
    print(response.StatusCode)
	return nil
end

function DiscordApp.Register(id: string, token: string)
	return setmetatable({
		ApplicationURL = "https://discordapp.com/api/webhooks/" .. id .. "/" .. token
	}, DiscordApp)
end

return DiscordApp