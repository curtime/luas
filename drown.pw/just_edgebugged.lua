--[[
    Made by: Envy#7777
    Idea from: Crent#9999
    Description: Let's everyone on your team know you did the cool!
]]
local function on_eb()
    engine.run_cmd('playerradio . " I just edgebugged."')
end 
cheat.setup_callback('on_detected_eb', on_eb)