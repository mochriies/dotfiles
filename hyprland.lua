-- [ requires ]
    require("conf.layout")
    require("conf.binds")
    require("conf.animations")

-- [ monitors ]
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
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