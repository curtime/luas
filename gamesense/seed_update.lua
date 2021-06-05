local seed = ui.reference('Skins', 'Weapon skin', 'Seed')

ui.set_callback(seed, function ()
    client.exec('cl_fullupdate')
end)