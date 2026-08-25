-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function()
	hl.exec_cmd("swaync")
	hl.exec_cmd("skwd-daemon")
	hl.exec_cmd("bash ~/Scripts/cwal.sh")
	hl.exec_cmd("clipse -listen")
	hl.exec_cmd("wl-clip-persist -c regular")
	hl.exec_cmd("ratbagd")
end)
