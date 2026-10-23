RegisterCommand("bilgiyaz", function(source, args, row)
    print("Gelen args: " .. table.concat(args, " "))
    print("Ham Komut: " .. row)
end, false)

RegisterCommand("mesaj", function()
    TriggerEvent("chat:addMessage", {
        color = { 0, 255, 0 },
        args = { "Bilgi", "Bu bir bilgi - client mesajıdır!" }
    })
end, false)

RegisterCommand("while", function()
    while true do
        print("While Döngüsü ")
        Citizen.Wait(500)
    end
end, false)

RegisterCommand("if", function()
    local testif = false

    if not testif then
        print("İf Döngüsü")
    else
        print("İf Diğer Döngü")
    end
end, false)

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)

    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
        local factor = (string.len(text)) / 370
        DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 100)
    end
end

local textPos = vector3(215.0, -810.0, 30.7) -- kendi koordinatını yaz

Citizen.CreateThread(function()
    while true do
        local sleep = 500
        local coords = GetEntityCoords(PlayerPedId())
        local dist = #(coords - textPos)

        if dist < 15.0 then
            sleep = 0
            DrawText3D(textPos.x, textPos.y, textPos.z, "DrawText3D")
        end

        Citizen.Wait(sleep)
    end
end)