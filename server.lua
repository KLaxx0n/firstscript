RegisterCommand("Merhaba", function(source, args) -- user /merhaba ekler
    print("Server Side Selam")

    local playerid = source
    local mesaj = table.concat(args, " ")

    TriggerClientEvent("chat:addMessage", playerid, {
        color = { 255, 0, 0 },
        args = { "Server", "Aramıza Sende Katıldın" .. playerid .. "Şunu Söylediniz:" .. mesaj }
    })
end, false)

RegisterCommand("duyuru", function(source, args)
    local mesaj = table.concat(args, " ")
    TriggerClientEvent("chat:addMessage", -1, {
        color = { 255, 0, 0 },
        args = { "[DUYURU]", mesaj }
    })
end, false)
