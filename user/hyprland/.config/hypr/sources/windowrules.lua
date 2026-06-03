-- Popouts
hl.window_rule({ match = { class = "qt5ct" }, float = true })
hl.window_rule({ match = { class = "qt6ct" }, float = true })
hl.window_rule({ match = { class = "nwg-look" }, float = true })
hl.window_rule({ match = { class = "org.pulseaudio.pavucontrol" }, float = true })
hl.window_rule({ match = { class = "blueman-manager" }, float = true })
hl.window_rule({ match = { class = "nm-applet" }, float = true })
hl.window_rule({ match = { class = "nm-connection-editor" }, float = true })
hl.window_rule({ match = { class = "org.gnome.Calculator" }, float = true })
hl.window_rule({ match = { class = "org.gnome.SystemMonitor" }, float = true })
hl.window_rule({ match = { class = "gnome-system-monitor" }, float = true })
hl.window_rule({ match = { class = "org.gnome.clocks" }, float = true })
hl.window_rule({
    name = "PiP",
    match = { title = "^(?i)(Picture-in-Picture)$" },

    pin = true,
    float = true,
    no_initial_focus = true,
    focus_on_activate = true,
    suppress_event = "activate activatefocus",

    animation = "gnomed",
    keep_aspect_ratio = true,
    move = { "(monitor_w-window_w-20)", "(monitor_h-window_h-20)" }
})

-- Windows
hl.window_rule({ match = { class = "firefox" }, focus_on_activate = true })
hl.window_rule({ match = { class = "gnome-pomodoro" }, float = true })
hl.window_rule({
    match = { class = "qalculate-gtk" },
    float = true,
    pin = true,
    move = { "(monitor_w-window_w-15)", "50" }
})
hl.window_rule({
    match = { class = "org.gnome.NautilusPreviewer" },
    float = true,
    center = true,
    animation = "gnomed",
    keep_aspect_ratio = true
})

hl.window_rule({
    match = { class = "blender" },
    float = true,
    size = { 1080, 720 }
})
hl.window_rule({
    match = {
        class = "blender",
        title = ".+ - Blender .+",
    },
    float = false,
})
hl.window_rule({
    match = { class = "mpv" },
    float = true,
    size = { "window_w * 0.9", "window_h * 0.9" },
    max_size = { "monitor_w", "monitor_h" },
    center = true,
    keep_aspect_ratio = true,
    animation = "popin"
})

-- Windows without a class are usually debug window or popups
hl.window_rule({
    match = { class = "" },
    float = true,
})
