local keep_bot_going = true
fuel = 0

function refuel_bot()
    if turtle.getFuelLevel() <= 0 then

    end
    print(textutils.serialize(turtle.getItemDetail(1)))
    table.foreach(turtle.getItemDetail(1), function(k,v) print(string.rep(v,k)) end)
    

    keep_bot_going = false
end



-- turtle loop
while keep_bot_going do
    refuel_bot()
end