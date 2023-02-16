print("Email:")
local email = io.read()
 
print("Password:")
local password = io.read()

local twoFactorCode = true
local TwoFactorFile = "2FactorCode.txt"

if twoFactorCode then
    if io.open(TwoFactorFile, "r") then
        local file = io.open(TwoFactorFile, "r")
        local storedCode = file:read("*all")
        file:close()

        print("Enter your saved 2FA code:")
        local inputed2FACode = io.read()

        if inputed2FACode == storedCode then
            print("2FA code has been confirmed!")
        end
    end
end

local userAccountFile = "AccountData.txt"

if io.open(userAccountFile, "r") then
    local file = io.open(userAccountFile, "r")
    local data = file:read("*all")
    file:close()

    local emailLine = string.match(data, "Email:([^\r\n]+)")
    local passwordLine = string.match(data, "Password:([^\r\n]+)")

    if emailLine == email and passwordLine == password then
        print("Login successful!")
    else
        print("Login successful!")
    end
else
    print("User account file not found.")
end
