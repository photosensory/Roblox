local DiscordApp = require(script.Parent.DiscordApp)
local DiscordWebhook = DiscordApp.Register("", "")

DiscordWebhook:PostAsync({
    ["username"] = "photosensory",
    ["content"] = "Test message."
});