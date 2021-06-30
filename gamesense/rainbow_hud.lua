-- local variables for API functions. any changes to the line below will be lost on re-generation
local client_set_event_callback, globals_tickcount = client.set_event_callback, globals.tickcount

--Ported from Interium--
local old_hud_col = cvar.cl_hud_color:get_int() --getting your old hud color
local UpdateHudTick = globals_tickcount()
local int = 0;


client_set_event_callback('paint', function ()
    if (globals_tickcount() - UpdateHudTick > 10) then
        if (int > 11) then
            int = 0
        end

        cvar.cl_hud_color:set_int(int)

        int = int + 1
        UpdateHudTick = globals_tickcount()
    end
end)

client_set_event_callback('shutdown', function () -- on unload setting old hud col back
    cvar.cl_hud_color:set_int(old_hud_col)
end)