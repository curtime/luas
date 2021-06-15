local g_LocalPlayer = entity.get_local_player()
local master = ui.new_checkbox('LUA', 'A', 'Disable nade pred on deatheath')
local ref = ui.reference('VISUALS', 'Other ESP', 'Grenade Trajectory')

local disable_nade_pred = function ()
    ui.set(ref, entity.is_alive(g_LocalPlayer))
end

ui.set_callback(master, function()
    UpdateCallback = ui.get(master) and client.set_event_callback or client.unset_event_callback
    UpdateCallback('paint', disable_nade_pred)
end)