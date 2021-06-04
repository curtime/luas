local client_set_event_callback = client.set_event_callback
client_set_event_callback("setup_command", function(e) if ui.is_menu_open() then e.in_attack = false e.in_attack2 = false end end)