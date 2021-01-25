turtle.select(2)

while turtle.getItemCount(2) ~= 0 and turtle.getFuelLevel() ~= 0 do

    if turtle.placeDown() ~= true then
        print("Can't place the block")
    end
end
