-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function()
	hl.exec_cmd("swaync")
	hl.exec_cmd("skwd-daemon")
	hl.exec_cmd("bash ~/Scripts/cwal.sh")
end)
