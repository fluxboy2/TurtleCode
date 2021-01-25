local keep_bot_going = true
fuel = 0
MAX_INV_SLOT_NUM = 16
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
            local item_name = SplitString(item.name, ":")
            print(item_name)
            if item_name == "coal" then
                print("Yep that's coal!")
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