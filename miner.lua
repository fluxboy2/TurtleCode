local keep_bot_going = true
fuel = 0

function refuel_bot()
    if turtle.getFuelLevel() <= 0 then

    end
    print(textutils.serialize(turtle.getItemDetail(1)))
    print(table.concat({1,3,5,7,9,11}, ", "))
    

    keep_bot_going = false
end



-- turtle loop
while keep_bot_going do
    refuel_bot()
end