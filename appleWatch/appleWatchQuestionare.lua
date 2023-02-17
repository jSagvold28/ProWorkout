
local function appleWatchQuestionnaire()

    local appleWatchDataFile = io.open("AppleWatchData.txt", "w")

    io.write("What Apple Watch do you use: ")
    local appleWatchModel = io.read()

    print("")
    io.write("Your fitness goals:\n")
    print("")

    io.write("Calories burnt per day: ")
    local caloriesBurntPerDayAppleWatch = io.read()

    io.write("Exercise minutes per day: ")
    local exerciseMinutesPerDayAppleWatch = io.read()

    io.write("Stand hours per day: ")
    local standHoursAppleWatch = io.read()

    -- Write data to file --
    appleWatchDataFile:write("Apple Watch model: " .. appleWatchModel .. "\n")
    appleWatchDataFile:write("Calories burnt: " .. caloriesBurntPerDayAppleWatch .. " (per day)" .."\n")
    appleWatchDataFile:write("Exercise minutes: " .. exerciseMinutesPerDayAppleWatch .. " (per day)" .."\n")
    appleWatchDataFile:write("Stand hours: " .. standHoursAppleWatch .. " (per day)" .."\n")

    appleWatchDataFile:close()
end
appleWatchQuestionnaire()
