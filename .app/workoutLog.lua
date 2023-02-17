--[[
    This is the workout not ment for Apple Watch users.
    If you are an Apple Watch user. Please go to the 'appleWatch' folder and locate the 'workoutLogging' folder inside of the folder. That is where it is reccomended to log your workouts, because it is more orentated towards Apple Watch users.
]]

-- Application: --

local function fitnessQuestionare()

    print("Duration of workout: ")
    local durationOfWorkout = io.read()

    print("Workout name: ")
    local workoutName = io.read()

    print("Total calories burnt: ")
    local calroiesBurnt = io.read()

    print("Intensity of workout (1-3 )")
    local intensityOfWorkout = io.read()

end
fitnessQuestionare()

local function createFile()
    print("Congrats on your workout!")

    local file = io.open("WorkoutLog.txt", "w")

        file:write("Duration of workout: " .. durationOfWorkout .. "\n")
        file:write("Workout name: " .. workoutName .. "\n")
        file:write("Total calories burnt: " .. calroiesBurnt .. "\n")
        file:write("Intensity: " .. intensityOfWorkout .. "\n")


        file:close()
end
createFile()
