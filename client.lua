CreateThread(function()
    while true do 
        local s = 1000
        local player = PlayerPedId()
        local health = GetEntityHealth(player)
        local speed = GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId()))*3.6;
        SendNUIMessage({ 
            action = 'hudvida',
            vida = health, 
            logo = Shared.ALL.logo,
            activo = Shared.ALL.logoactive,
        })
        

        if IsPedInAnyVehicle(player) then 
            s = 300
            SendNUIMessage({
                action = 'velocimetro',
                velocimetro = speed
            })
        end 

        Wait(s)
    end
end) 



