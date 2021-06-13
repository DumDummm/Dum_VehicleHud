--Miles / Hour
local mph = 2.2369
-- Kilometers / Hour
local kmph = 3.6

--Display Text Subroutine
function showText(text)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(0.02,0.70) --{x,y}
end

--Speedmeter Thread
Citizen.CreateThread(function()
    while true do
            Citizen.wait(1) --Adds A Small Delay to Avoid Crahing
            if (isPedInAnyVehicle(GetPlayerPed(-1, false)) then
            local speed = (GetEntitySpeed(GetVehicleIsPedIsIn(GetPlayerPed(-1, false))*mph)
                if speed < 1 then
                    showText("0")
                else
                    showText(math.floor(speed))
                end
            end
        end
    end)
