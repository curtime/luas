local panorama_events = require 'gamesense/panorama_events'
local ctag = ui.reference('MISC', 'Miscellaneous', 'Clan tag spammer')

local function trim(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

local function disable_clan_tag()
    if not ui.get(ctag) then
        return
    end

    return ui.set(ctag, false), print('Turned off Clantag')
end

client.set_event_callback("console_input", function(text)
    if trim(text) == 'disconnect' then
        disable_clan_tag()
    end
end)

client.set_event_callback('cs_win_panel_match', disable_clan_tag)

panorama_events.register_event('CSGOShowMainMenu', disable_clan_tag)