--[[
    Thanks to Zeb's script for helping me figure out what I was rendering incorrectly (bc I am a dumbass and haven't really worked on wm before :catstare: )
    Name: Watermark
    Description: basic watermark + eb counter, you can add more but I cba. eb counter resets on win panel, if you disconnect before the panel is there it will not reset, will probably add a check for freezetime and reset it there.

Update: Fixed not resetting on win docs were wrongknsdsakj!
]]

local font = surface.create_font('Segoe UI Regular', 12, 400, 0, 1)
local w, h =  engine.screen_size().x / 2, engine.screen_size().y / 2
local edgebugs = 0 

local function on_edgebug()
    edgebugs = edgebugs + 1
end

local function on_match_win()
    edgebugs = 0
end

local function on_render()
    if not engine.is_in_game() then 
        return 
    end

    local text = string.format('user: %s | edgebugs: %s | build: %s ',cheat.username(), edgebugs, 'beta') --Change 'beta' to 'live' or whatever the fuck you want.
    local size = render.text_size(font, text)
    --I hate rendering things... I must hate my self bc I did this script.
    render.text(w + 950 - size.x - 18, h - 525 + 2, color.new(255, 0, 255, 255), font, false, text)
    render.filled_rect(w + 950 - size.x-18 - 2,h - 525, size.x + 3, 2, color.new(255, 0, 255, 255))
    render.filled_rect(w + 950 - size.x-18 - 2,h - 525, size.x + 3, 14, color.new(15, 0, 0, 100))

end
events.register('cs_win_panel_match', on_match_win)
cheat.setup_callback('on_detected_eb', on_edgebug)
cheat.setup_callback('on_paint', on_render)