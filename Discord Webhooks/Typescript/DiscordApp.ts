import { HttpService } from "@rbxts/services";

export class DiscordApp {

    id: string;
    token: string;

    constructor(id: string, token: string) {
        this.id = id;
        this.token = token;
    }

    PostAsync(body: unknown): void {
        return HttpService.RequestAsync({
            Url: `https://discordapp.com/api/webhooks/${this.id}/${this.token}`,
            Method: "POST",
            Headers: { "Content-Type": "application/json" },
            Body: HttpService.JSONEncode(body)
        });
    }

}