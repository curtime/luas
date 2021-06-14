-- local variables for API functions. any changes to the line below will be lost on re-generation
local client_set_event_callback, ui_get, ui_reference, ui_set = client.set_event_callback, ui.get, ui.reference, ui.set

local thirdperson = {ui_reference("VISUALS", "Effects", "Force third person (alive)")}
local thirdperson_while_dead = ui_reference("VISUALS", "Effects", "Force third person (dead)")

client_set_event_callback('paint', function ()
    ui_set(thirdperson_while_dead, ui_get(thirdperson[2]))
end)