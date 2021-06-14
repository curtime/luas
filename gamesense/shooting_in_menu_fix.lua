-- local variables for API functions. any changes to the line below will be lost on re-generation
local ui_is_menu_open, ui_reference, ui_set,client_set_event_callback = ui.is_menu_open, ui.reference, ui.set,client.set_event_callback

local legitbot_toggle = ui_reference('LEGIT', 'Aimbot', 'Enabled')
client_set_event_callback('setup_command', function(e) 
    if ui_is_menu_open() then 
        e.in_attack = false 
        e.in_attack2 = false 
    end
    ui_set(legitbot_toggle,not ui_is_menu_open())
end)