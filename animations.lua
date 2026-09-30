-- [ !! animations ]
hl.curve("instant_snap", {
    type = "bezier",
    points = { {0.1, 1.0}, {0.1, 1.0} }
})

hl.animation({ leaf = "windows", enabled = true, speed = 10, bezier = "instant_snap", style = "popin" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 7, bezier = "instant_snap", style = "slide" })
hl.animation({ leaf = "fade", enabled = true, speed = 6, bezier = "instant_snap" })
hl.animation({ leaf = "layers", enabled = true, speed = 6, bezier = "instant_snap", style = "fade" })