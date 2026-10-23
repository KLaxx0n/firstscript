RegisterCommand("Serverselams", function(source, args)
    print("Server Side Selamlar!")

    local playerid = soruce
    local msg = tabel.concat(args, " ")

    TriggerClientEvent("chat:addMessage", playerid, {
        color = { 255, 0, 0 },
        args = { "Server", "Hoş geldin oyuncu" .. playerid .. "Şunu Söylediniz:" .. msg }
    })
end, false)

RegisterCommand("duyuru", function(source, args)
local msg = table.concat(args, " ")
TriggerClientEvent("chat:addMessage", -1 ,  {
 color = {255, 0 ,0 } ,
 args = {"[DUYURU]", msg}
})
end, false )
