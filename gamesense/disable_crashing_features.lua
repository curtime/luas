local dropped_weapons = ui.reference("VISUALS", "Other ESP", "Dropped weapons")

local refs = {
    grenades = ui.reference("VISUALS", "Other ESP", "Grenades"),
    glow = ui.reference("VISUALS", "Player ESP", "Glow") ,
    bomb = ui.reference("VISUALS", "Other ESP", "Bomb") ,
}

local function contains (table, key) for index, value in pairs(table) do if value == key then return true end end return false end --//thnx to who ever made this.

ui.set_callback(dropped_weapons, function () --// Really shitty way to do this but couldn't be asked to do it another way.
    if contains(ui.get(dropped_weapons),'Glow')  then
        error('Glow is enabled for dropped weapons. Disable this or expect a crash.', 1)
    end
end)

local function disable()
    for i, ref in pairs(refs) do --//Looping through the tables and setting it's references to false.
        ui.set(ref, false);
    end
end
disable()
client.set_event_callback('pre_config_load', disable)