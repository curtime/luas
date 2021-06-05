local quality = ui.reference('Skins', 'Weapon skin', 'Quality')

ui.set_callback(quality, function ()
    client.exec('cl_fullupdate')
end)