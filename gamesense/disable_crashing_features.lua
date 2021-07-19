local dropped_weapons = ui.reference("VISUALS", "Other ESP", "Dropped weapons")

local refs = {
    grenades = ui.reference("VISUALS", "Other ESP", "Grenades"),
    glow = ui.reference("VISUALS", "Player ESP", "Glow") ,
    bomb = ui.reference("VISUALS", "Other ESP", "Bomb") ,
}

local function contains (table, key) for index, value in pairs(table) do if value == key then return true end end return false end

ui.set_callback(dropped_weapons, function ()
    if contains(ui.get(dropped_weapons),'Glow')  then
        error('Glow is enabled for dropped weapons. Disable this or expect a crash.', 3)
    end
end)

local function disable()
    for i, ref in pairs(refs) do
        ui.set(ref, false);
    end
    client.exec('clear')
    ui.set(dropped_weapons, 'Icon')
    print('Disabled crashing features.')
end

disable();

client.set_event_callback('pre_config_load', disable)