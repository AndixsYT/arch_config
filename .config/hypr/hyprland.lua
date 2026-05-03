require("configs/keybinds")
require("configs/autostart")
require("configs/animations")
require("configs/general")

------------------
---- MONITORS ----
------------------

hl.monitor({
	output = "DP-2",
	mode = "3840x2160@240",
	position = "auto",
	scale = "auto",
	bitdepth = 10,
	vrr = 1,
})

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.workspace_rule({ workspace = "special:discord", on_created_empty = "vesktop" })
hl.workspace_rule({ workspace = "special:spotify", on_created_empty = "spotify-launcher" })
hl.workspace_rule({ workspace = "special:telegram", on_created_empty = "Telegram" })

hl.window_rule({
	match = {
		class = "kitty",
	},
	opacity = "0.8 override 0.8 override",
	xray = "1",
})
