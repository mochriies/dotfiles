-- [ layout ]
local colors = require("conf.colors")

hl.config({
	general = {
		border_size = 1,
		gaps_in = 2,
		gaps_out = 7,

		col = {
			active_border = colors.lilac,
			inactive_border = colors.black,
		},
	},

	decoration = {
		rounding = 1,
		active_opacity = 0.9,
		inactive_opacity = 0.7,

		blur = {
			size = 2,
			passes = 1,
		},
	},
})

-- [ animations ]
hl.config({
  animations = { enabled = true },
})

hl.curve("easeOutQuint", { type = "bezier", points = { {0.23, 1},   {0.32, 1} } })
hl.curve("quick",        { type = "bezier", points = { {0.15, 0},   {0.1, 1} } })
hl.curve("linear",       { type = "bezier", points = { {0, 0},      {1, 1} } })

hl.animation({ leaf = "global",       enabled = true,  speed = 10,  bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn",    enabled = true,  speed = 3,   bezier = "easeOutQuint", style = "popin 92%" })
hl.animation({ leaf = "windowsOut",   enabled = true,  speed = 2,   bezier = "quick",        style = "popin 92%" })
hl.animation({ leaf = "windowsMove",  enabled = true,  speed = 3,   bezier = "easeOutQuint" })
hl.animation({ leaf = "workspaces",   enabled = true,  speed = 3.5, bezier = "easeOutQuint", style = "slidefade 8%" })
hl.animation({ leaf = "fade",         enabled = true,  speed = 2.5, bezier = "quick" })
hl.animation({ leaf = "layers",       enabled = true,  speed = 3,   bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "border",       enabled = true,  speed = 4,   bezier = "easeOutQuint" })
