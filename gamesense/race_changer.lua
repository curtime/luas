local Races = {
    [1] = "Black",
    [2] = "idk",
    [3] = "White",
    [4] = "Mexican",
    [5] = "idk some tatted mf",
    [6] = "Black 2?",
    [7] = "White maybe??"
}

local skin_color = ui.new_slider("LUA", "A", "Race changer", 1, 7, 1, true, nil, 1, Races)

ui.set_callback(skin_color, function ()
    cvar.r_skin:set_int(ui.get(skin_color))
end)