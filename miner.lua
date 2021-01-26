keep_bot_going = true
MAX_INV_SLOT_NUM = 16
COAL_FUEL_AMOUNT = 80

length = 0
width = 0
height = 0
volume = 0
z = 0



function SplitString (inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str)
    end
    return t
end

function RefuelBot()
    local coal_amount = math.ceil(volume / COAL_FUEL_AMOUNT)
    local needed_coal_amount = coal_amount - math.ceil(turtle.getFuelLevel() / COAL_FUEL_AMOUNT)
    if needed_coal_amount > 0 then
        local i = 1
        while i <= 16 do
            local item = turtle.getItemDetail(i)
            if item ~= nil then
                item_name = SplitString(item.name, ":")[2]
                
                if item_name == "coal" then
                    turtle.select(i)
                    turtle.refuel(needed_coal_amount)
                    
                    turtle.select(1)
                end
            end
            i = i + 1
        end
    end
    -- just to turn the bot off after run. delete this for live version
    keep_bot_going = false
end


function GoRight()

end
function GoUp()
    if not turtle.up() then
        if z < height then
            turtle.digUp()
            turtle.up()
            z = z + 1
        end
    end
end
function GoDown()
    if not turtle.down() then
        if z == 0 then
            turtle.digDown()
            turtle.down()
            z = z - 1
        end
    end
end
function GoForward()
    if not turtle.forward() then
        turtle.dig()
        turtle.forward()
    end
end

function Mine()
    GoDown()
    local success, block = turtle.inspectDown()

    if success then
        print(block.name)
    end
end

-- start on start function

function OnStart()
    -- ask for users dimensions to start mining (x, y ,z format)
    print("Please enter the length. Then press enter.")
    length = read()
    print("Please enter the width. Then press enter.")
    width = read()
    print("Please enter the height. Then press enter.")
    height = read()
    
    z = height
    volume = length * width* height
end

OnStart()

-- end on start function

RefuelBot() 
Mine()

