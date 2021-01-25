local keep_bot_going = true
fuel = 0

function refuel_bot()
    if turtle.getFuelLevel() <= 0 then

    end

    print(table.concat(turtle.getItemDetail(1)), ",")

    keep_bot_going = false
end



-- turtle loop
while keep_bot_going do
    refuel_bot()
end