----------------
---- CURSOR ----
----------------

hl.config({
	cursor = {
		no_hardware_cursors = 0,
		inactive_timeout = 1,
		hide_on_key_press = 1,
	},
})

---------------
---- INPUT ----
---------------

hl.config({
	input = {
		kb_layout = "us",

		repeat_rate = 50,
		repeat_delay = 300,

		follow_mouse = 1,
	},
})

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE", "40")
hl.env("HYPRCURSOR_SIZE", "40")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

hl.config({
	dwindle = {
		preserve_split = true, -- You probably want this
	},
})

hl.config({
	master = {
		new_status = "master",
	},
})

hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})

----------------
----  MISC  ----
----------------

hl.config({
	misc = {
		force_default_wallpaper = -1, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
		disable_splash_rendering = true,
		middle_click_paste = false,
	},
})
