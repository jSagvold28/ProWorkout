io.write("Email: ")
local email = io.read()

io.write("Age: ")
local userAge = tonumber(io.read())

if userAge and userAge <= 12 then
    print("You are not able to use a ProWorkout account. You must be 13 or older.")
end

io.write("Password: ")
local password = io.read()

print("Would you like to create an account?")
print("Type 'yes' to create an account. Type 'no' to not create an account.")
local input = io.read()

if input == "yes" then

    local function createUserAccountAndFile()

        local userDataFile = io.open("AccountData.txt", "w")
    
        userDataFile:write("Email: " .. email .. "\n")
        userDataFile:write("Age: " .. userAge .. "\n")
        userDataFile:write("Password: " .. password .. "\n")
    
        userDataFile:close()
    end
    
    createUserAccountAndFile()

elseif input == "no" then
    print("Account was not created, due to: your input")

elseif input == "" then
    print("Account not created due to an: error: user or service.")
end
