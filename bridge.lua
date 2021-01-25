turtle.select(2)

local keep_building = true

while turtle.getItemCount(2) ~= 0 and turtle.getFuelLevel() ~= 0 and keep_building do

    if not turtle.placeDown() then
        print("Can't place the block")
        if not turtle.forward() then
            keep_building = false
            print("Done")
        end
    else
        print("Block placed")
    end
end
