-- local variables for API functions. any changes to the line below will be lost on re-generation
local client_exec, client_set_event_callback, entity_get_game_rules, entity_get_prop, print = client.exec, client.set_event_callback, entity.get_game_rules, entity.get_prop, print

client_set_event_callback('cs_win_panel_match', function ()
    if not (entity_get_prop(entity_get_game_rules(), "m_bIsQueuedMatchmaking") == 1) then --//Thnx TherioJunior for the check <3
        print('Not Valve Server.')
        return
    end
    print('Game Ended.')
    client_exec('disconnect')
end)