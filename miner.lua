keep_bot_going = true
MAX_INV_SLOT_NUM = 16
COAL_FUEL_AMOUNT = 80

length = 0
width = 0
height = 0
volume = 0
-- start on start function

function OnStart()
    -- ask for users dimensions to start mining (x, y ,z format)
    print("Please enter the length. Then press enter.")
    length = read()
    print("Please enter the width. Then press enter.")
    width = read()
    print("Please enter the height. Then press enter.")
    height = read()
    volume = length * width* height
end

OnStart()

-- end on start function

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
    

    local i = 1
    while i <= 16 do
        local item = turtle.getItemDetail(i)
        if item ~= nil then
            item_name = SplitString(item.name, ":")[2]
            local coal_amount = volume / COAL_FUEL_AMOUNT
            if item_name == "coal" then
                print("Yep that's coal!")
                print(math.ceil(coal_amount) .. " possible coal needed.")
                
            end
        end
        i = i + 1
    end

    keep_bot_going = false
end



-- turtle loop
while keep_bot_going do
    RefuelBot()
end