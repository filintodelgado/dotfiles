hl.on("hyprland.start", function()
    -- For XDPH
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    hl.exec_cmd("waybar")                                                    -- System bar
    hl.exec_cmd("blueman-applet")                                            -- System Tray app for Bluetooth
    hl.exec_cmd("nm-applet --indicator")                                     -- System tray for Network/Wifi
    hl.exec_cmd("dunst")                                                     -- Notification daemon
    hl.exec_cmd("awww-daemon")                                               -- Wallpaper manager
    hl.exec_cmd("hypridle")                                                  -- Idle manager
    hl.exec_cmd("hyprshell run")                                             -- Application launcher and window switcher
    hl.exec_cmd("hyprpm reload")                                             -- Load hyprland plugins
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1") -- Authentication dialog for GUI apps
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")         -- Start secret manager
end)
