local keep_bot_going = true
fuel = 0

function refuel_bot()
    if turtle.getFuelLevel() <= 0 then

    end
    for i=1, turtle.getItemDetail(1).n do
        i = i + 1
    end
end



-- turtle loop
while keep_bot_going do
    refuel_bot()
end