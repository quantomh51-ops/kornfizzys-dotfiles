------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@143.60",
    position = "auto",
    scale    = "auto",
})

-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function ()
hl.exec_cmd("waybar")
end)

hl.on("hyprland.start", function ()
hl.exec_cmd("awww-daemon")
hl.exec_cmd("awww")
end)

hl.on("hyprland.start", function ()
hl.exec_cmd("pipewire")
hl.exec_cmd("wireplumber")
hl.exec_cmd("pipewire-pulse")
end)
