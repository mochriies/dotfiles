local mainMod = "SUPER"

-- [ programns ]
    hl.bind(mainMod .. " + T ", hl.dsp.exec_cmd("kitty"))
    hl.bind(mainMod .. " + Space ", hl.dsp.exec_cmd("rofi -show drun"))
    hl.bind(mainMod .. " + Q ", hl.dsp.window.close())

-- [ window focus ]
    hl.bind(mainMod .. " + h ", hl.dsp.focus({ direction = "l" }))
    hl.bind(mainMod .. " + l ", hl.dsp.focus({ direction = "r" }))
    hl.bind(mainMod .. " + k ", hl.dsp.focus({ direction = "u" }))
    hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "d" }))

    hl.bind(mainMod .. "+ SHIFT + h ", hl.dsp.window.move({ direction = "l" }))
    hl.bind(mainMod .. "+ SHIFT + l ", hl.dsp.window.move({ direction = "r" }))
    hl.bind(mainMod .. "+ SHIFT + k ", hl.dsp.window.move({ direction = "u" }))
    hl.bind(mainMod .. "+ SHIFT + j", hl.dsp.window.move({ direction = "d" }))

-- [ workspaces ]
    for i = 1, 4 do
        local key = i % 10
        hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
        hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
    end

    hl.bind(mainMod .. " + Tab", hl.dsp.focus({ workspace = "previous" }))

-- [ printscrean ]
    hl.bind("Print", hl.dsp.exec_cmd("grim ~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png"))
    hl.bind("SHIFT + Print", hl.dsp.exec_cmd('grim -g "$(slurp)" ~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png'))

    hl.bind("CTRL + Print", hl.dsp.exec_cmd("grim - | wl-copy"))
    hl.bind("CTRL + SHIFT + Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))

-- [ multmedia ]
    hl.bind("XF86AudioRaiseVolume",hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),{ locked = true, repeating = true })
    hl.bind("XF86AudioLowerVolume",hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),{ locked = true, repeating = true })
    hl.bind("XF86AudioMute",hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),{ locked = true, repeating = true })
    hl.bind("XF86AudioMicMute",hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),{ locked = true, repeating = true })