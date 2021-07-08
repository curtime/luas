local master = ui.new_checkbox('LUA', 'A', 'Engine RCS Crosshair')
ui.set_callback(master, function ()
    cvar.cl_crosshair_recoil:set_int(ui.get(master) and 1 or 0)
end)