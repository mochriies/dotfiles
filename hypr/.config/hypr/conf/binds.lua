local mainMod = "SUPER"

-- [ programns ]
    hl.bind(mainMod .. " + T ", hl.dsp.exec_cmd("kitty"))
    hl.bind(mainMod .. " + Space ", hl.dsp.exec_cmd("rofi -show drun"))
    hl.bind(mainMod .. " + B ", hl.dsp.exec_cmd("helium-browser"))
    hl.bind(mainMod .. " + Q ", hl.dsp.window.close())
    hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

-- [ focus ]
    hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
    hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
    hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
    hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))

    hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
    hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))
    hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
    hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))

-- [ mouse resize ]
    hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- [ workspaces ]
    for i = 1, 4 do
        local key = i % 10
        hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
        hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
    end
    hl.bind(mainMod .. " + Tab", hl.dsp.focus({ workspace = "previous" }))

-- [ printscrean ]
    hl.bind("Print", hl.dsp.exec_cmd('grim -g - | wl-copy'))
    hl.bind("SHIFT + Print", hl.dsp.exec_cmd('grim -g "$(slurp)" ~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png'))
    hl.bind("ALT + Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))

-- [ multmedia ]
    hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
    hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
    hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

    hl.bind("SUPER + equal",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
    hl.bind("SUPER + minus",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })
