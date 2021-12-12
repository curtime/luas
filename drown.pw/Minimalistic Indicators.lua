--[[
    Name: Minimalistic Indicators
    Description: Less in your face inds.
    Inspiration: Luasense, a semirage lua made by Ace for skeet.
    Creator: Envy#7777

    They look like shit bc I suck at choosing a font.
]]
local font = surface.create_font('Segoe UI', 15, 600, 0)
local x, y = engine.screen_size().x / 2, engine.screen_size().y / 2

local function on_render()
    local i = 0

    if not engine.is_in_game() or not entity.is_alive(entity_list.get_local_player()) then
        return
    end

    if config.get_key_state('misc.edgebug.key') then
        render.text(5, 550 + (i*13), color.new(150, 200, 60, 255), font, false, 'Edgebug')
        i = i + 1
    end

    if config.get_key_state('misc.edgejump.key') then
        render.text(5, 550 + (i*13), color.new(150, 200, 60, 255), font, false, 'Edgejump')
        i = i + 1
    end

    if config.get_key_state('misc.jumpbug.key') then
        render.text(5, 550 + (i*13), color.new(150, 200, 60, 255), font, false, 'Jumpbug')
        i = i + 1
    end

end

cheat.setup_callback('on_paint', on_render)