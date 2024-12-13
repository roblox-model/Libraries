local URI = Webhook -- Defined in the Loader

local HTTP = game:GetService("HttpService")
local Player = game:GetService("Players").LocalPlayer
local FX = Player.PlayerGui.ScreenEffects
local Frame = FX:WaitForChild("ItemFrame")
local Item = string.gsub(Frame.TextLabel.Text, "obtained.", "")

local Quotes = {
    "kys",
    "are you the real tesar",
    "oh le couz passe le sperme la",
    "SPERME",
    "abuse avec ton twix la putain fais péter le sperme",
    "CA COLLE AU DENT LE SPERME",
    "le chemin vers la rédemption est semé d'embuche",
    "un petit peu de sperme mmmmh",
    "sperme stp !!!",
    "pavé cesar",
    "are you the real pavé",
    "cesar pavé"
}

local Data = {
    content = "🐱‍💻",
    embeds = {
        {
            title = string.format("**%s**", Item),
            description = Quotes[math.random(1, #Quotes)],
            type = "rich",
            color = 0x000000
        }
    }
}

local Payload = HTTP:JSONEncode(Data)

local Headers = {
    ["Content-Type"] = "application/json"
}

request({
    Url = URI,
    Body = Payload,
    Method = "POST",
    Headers = Headers
})
