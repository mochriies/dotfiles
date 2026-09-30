-- [ !! layout ]
local colors = require("conf.colors")

hl.config({
	general = {
		border_size = 1,

		gaps_in = 2,
		gaps_out = 7,

		col = {
			active_border = colors.lilac,
			inactive_border = colors.black,
		}, },

	decoration = {
		rounding = 1,

		active_opacity = 0.8,
		inactive_opacity = 0.8,

		blur = {
			size = 1,
			passes = 2,
			noise = 0.04,
		}, 
		},
})