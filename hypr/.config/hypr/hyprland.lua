-- [ requires ]
    require("conf.layout")
    require("conf.binds")
    require("conf.rules")

-- [ monitors ]
hl.monitor({
    output   = "eDP-!",
    mode     = "13366x760@60",
    position = "auto",
    scale    = "1",
})

-- [ init ]
 hl.on("hyprland.start", function ()
   hl.exec_cmd("waybar & hyprpaper")
 end)

-- [ input ]
hl.config({
    input = {
        kb_layout  = "br",
        kb_variant = "abnt2",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0,
        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})
