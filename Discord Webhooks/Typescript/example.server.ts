import DiscordApp from "shared/DiscordApp";

const Webhook = new DiscordApp("id", "token");

Webhook.PostAsync({
    username: "photosensory",
    content: "Test message"
});