turtle.select(2)

while turtle.getItemCount(2) ~= 0 and turtle.getFuelLevel() ~= 0 do

    if not turtle.placeDown() then
        print("Can't place the block")
    end
end
