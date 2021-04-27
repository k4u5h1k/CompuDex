-- This is an example of the Lua language
function main()
    arr = {}

    for i = 1,2 
    do
        print('Enter number ' .. tostring(i))
        num = io.read()
        table.insert(arr, tonumber(num))
    end

    
    print('Enter operation')
    operator = io.read()
    
    if operator == '+' 
    then
        result = arr[1] + arr[2]
    elseif operator == '*' 
    then
        result = arr[1] * arr[2]
    elseif operator == '-' 
    then
        if arr[1] >= arr[2]
        then
            result = arr[1] - arr[2]
        else
            result = arr[2] - arr[1]
        end
    elseif operator == '/'
    then
        result = arr[1] / arr[2]
    else
        print('This operator has not been included.')
        result = nil
    end

    handle = io.open('output.txt', 'w+')
    handle:write(tostring(result))
    handle:write('\n')
    handle:close()
end

main()

--[[ Usage
--1. Install lua cli for your system and ensure it is in your system's PATH.
--2. Simply navigate to where this script is located and use lua Lua.lua to run.
--3. Result of the operation will be written to output.txt
--]]
