RegisterCommand("bilgiyaz" , function (source, args , row )
    print("Gelen args: "..args)
    print("Ham Komut: "..row)
end)

RegisterCommand("mesaj" ,  function ()
     TriggerEvent("chat:addMessage", {
        color = {0 , 255, 0 } ,
        args = {"Bilgi", "Bu bir bilgi - client mesajıdır!"}
    })
end)