local keep_bot_going = true
fuel = 0
MAX_INV_SLOT_NUM = 16
function refuel_bot()
    if turtle.getFuelLevel() <= 0 then

    end
    
    local i = 1
    while i <= 16 do
        local item = turtle.getItemDetail(i)
        if item ~= nil then
            print(item.name)
        end
        i = i + 1
    end

    print(textutils.serialize(turtle.getItemDetail(1)))
    

    keep_bot_going = false
end



-- turtle loop
while keep_bot_going do
    refuel_bot()
end