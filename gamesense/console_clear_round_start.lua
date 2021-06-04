local client_set_event_callback, client_exec, client_log = client.set_event_callback, client.exec, client.log

client_set_event_callback("round_start", function()
    client_exec("clear")
    client_log("Console Cleared!")
end)