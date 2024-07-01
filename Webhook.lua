local url = webhook
local str = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.ScreenEffects:WaitForChild("ItemFrame").TextLabel.Text, "obtained.", "")

local troll = {
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

local data = 
    {
        ["content"] = "epic boss webhook",
        ["embeds"] = {{
            ["title"] = string.format("**%s**", str),
            ["description"] = troll[math.random(1, #troll)],
            ["type"] = "rich",
            ["color"] = tonumber(000000),
        }}
    }

local new = game:service('HttpService'):JSONEncode(data)

local headers = {
        ["content-type"] = "application/json"
}

request({
	Url = url,
    Body = new,
	Method = "POST",
    Headers = headers
})