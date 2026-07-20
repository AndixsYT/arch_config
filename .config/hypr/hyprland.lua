require("config.keybinds")
require("config.autostart")
require("config.animations")
require("config.general")

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

hl.workspace_rule({ workspace = "special:discord", no_shadow = true, on_created_empty = "discord" })
hl.workspace_rule({ workspace = "special:spotify", no_shadow = true, on_created_empty = "spicetify watch -s" })
hl.workspace_rule({ workspace = "special:telegram", no_shadow = true, on_created_empty = "Telegram" })

hl.window_rule({
	match = {
		class = "Spotify",
	},
	opacity = "0.8 override 0.8 override",
	workspace = "special:spotify",
	no_initial_focus = true,
})

hl.window_rule({
	match = {
		class = "vesktop",
	},
	workspace = "special:discord",
	no_initial_focus = true,
})

hl.window_rule({
	match = {
		class = "telegram",
	},
	workspace = "special:telegram",
	no_initial_focus = true,
})
