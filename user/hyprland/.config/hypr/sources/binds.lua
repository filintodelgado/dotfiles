-- Modifiers
local mod = "SUPER"

-- Apps
local terminal = "kitty"
local editor = "zeditor"
local fileManager = {
    default = "nautilus",
    alternative = "xdg-terminal-exec yazi"
}
local music = "deezer-desktop"
local media = "seanime-denshi"
local calculator = "qalculate-gtk"
local mail = "thunderbird"
local screenLocker = "hyprlock"
local bar = "waybar"
local browser = {
    default = "firefox -P default-release",
    alternative = "firefox -P alternative",
    private = "firefox --private-window"
}
local systemMonitor = "gnome-system-monitor"

-- Paths
local scripts = "$HOME/.local/share/bin"

-- Window/Session actions
hl.bind(mod .. "+ Q", hl.dsp.window.close())
hl.bind(mod .. "+ F", hl.dsp.window.fullscreen())
hl.bind(mod .. "+ SHIFT + F", hl.dsp.window.float())

hl.bind(mod .. "+ SHIFT + P", hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind(mod .. "+ N", hl.dsp.exec_cmd(screenLocker))
hl.bind("XF86ScreenSaver", hl.dsp.exec_cmd(screenLocker))
hl.bind(mod .. "+ SHIFT + Q", hl.dsp.exec_cmd(scripts .. "/logoutlaunch.sh"))
hl.bind("CTRL + ALT + W", hl.dsp.exec_cmd("killall " .. bar .. " || " .. bar))

-- Applications shortcuts
hl.bind(mod .. "+ T", hl.dsp.exec_cmd(terminal))
hl.bind(mod .. "+ E", hl.dsp.exec_cmd(fileManager.default))
hl.bind(mod .. "+ SHIFT + E", hl.dsp.exec_cmd(fileManager.alternative))
hl.bind(mod .. "+ C", hl.dsp.exec_cmd(editor))
hl.bind(mod .. "+ B", hl.dsp.exec_cmd(browser.default))
hl.bind(mod .. "+ SHIFT + B", hl.dsp.exec_cmd(browser.alternative))
hl.bind(mod .. "+ CTRL + B", hl.dsp.exec_cmd(browser.private))
hl.bind(mod .. "+ S", hl.dsp.exec_cmd(music))
hl.bind(mod .. "+ SHIFT + S", hl.dsp.exec_cmd(media))
hl.bind(mod .. "+ M", hl.dsp.exec_cmd(mail))
hl.bind(mod .. "+ SHIFT + C", hl.dsp.exec_cmd("killall " .. calculator .. " || " .. calculator))
hl.bind("CTRL + SHIFT + ESCAPE", hl.dsp.exec_cmd(systemMonitor))

-- Audio control
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(scripts .. "/volumecontrol.sh -o m"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(scripts .. "/volumecontrol.sh -o m"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(scripts .. "/volumecontrol.sh -o d"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(scripts .. "/volumecontrol.sh -o i"))

-- Media Control
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(scripts .. "/brightnesscontrol.sh i"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(scripts .. "/brightnesscontrol.sh d"))

-- Screenshot
hl.bind("Print", hl.dsp.exec_cmd(scripts .. "/screenshot.sh s"))
hl.bind(mod .. "+ Print", hl.dsp.exec_cmd(scripts .. "/screenshot.sh p"))

-- Custom scripts
hl.bind(mod .. "+ SHIFT + R", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/wallpaper"))

-- Focus
hl.bind(mod .. "+ H", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. "+ L", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. "+ K", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. "+ J", hl.dsp.focus({ direction = "down" }))

hl.bind(mod .. "+ P", hl.dsp.window.pin())

-- Switch workspaces
hl.bind(mod .. "+ 1", hl.dsp.focus({ workspace = "1" }))
hl.bind(mod .. "+ 2", hl.dsp.focus({ workspace = "2" }))
hl.bind(mod .. "+ 3", hl.dsp.focus({ workspace = "3" }))
hl.bind(mod .. "+ 4", hl.dsp.focus({ workspace = "4" }))
hl.bind(mod .. "+ 5", hl.dsp.focus({ workspace = "5" }))
hl.bind(mod .. "+ 6", hl.dsp.focus({ workspace = "6" }))
hl.bind(mod .. "+ 7", hl.dsp.focus({ workspace = "7" }))
hl.bind(mod .. "+ 8", hl.dsp.focus({ workspace = "8" }))
hl.bind(mod .. "+ 9", hl.dsp.focus({ workspace = "9" }))
hl.bind(mod .. "+ 0", hl.dsp.focus({ workspace = "10" }))

-- Relative
hl.bind(mod .. "+ CTRL + H", hl.dsp.focus({ workspace = "-1" }))
hl.bind(mod .. "+ CTRL + L", hl.dsp.focus({ workspace = "+1" }))
hl.bind(mod .. "+ mouse_up", hl.dsp.focus({ workspace = "-1" }))
hl.bind(mod .. "+ mouse_down", hl.dsp.focus({ workspace = "+1" }))

-- Go back to previous workspace
hl.bind(mod .. "+ D", hl.dsp.focus({ workspace = "previous" }))

-- Resize windows
hl.bind(mod .. "+ SHIFT + L", hl.dsp.window.resize({ x = 30, y = 0, relative = true }))
hl.bind(mod .. "+ SHIFT + H", hl.dsp.window.resize({ x = -30, y = 0, relative = true }))
hl.bind(mod .. "+ SHIFT + K", hl.dsp.window.resize({ x = 0, y = -30, relative = true }))
hl.bind(mod .. "+ SHIFT + J", hl.dsp.window.resize({ x = 0, y = 30, relative = true }))

-- Move focused window to a workspace
hl.bind(mod .. "+ SHIFT + 1", hl.dsp.window.move({ workspace = "1", follow = true }))
hl.bind(mod .. "+ SHIFT + 2", hl.dsp.window.move({ workspace = "2", follow = true }))
hl.bind(mod .. "+ SHIFT + 3", hl.dsp.window.move({ workspace = "3", follow = true }))
hl.bind(mod .. "+ SHIFT + 4", hl.dsp.window.move({ workspace = "4", follow = true }))
hl.bind(mod .. "+ SHIFT + 5", hl.dsp.window.move({ workspace = "5", follow = true }))
hl.bind(mod .. "+ SHIFT + 6", hl.dsp.window.move({ workspace = "6", follow = true }))
hl.bind(mod .. "+ SHIFT + 7", hl.dsp.window.move({ workspace = "7", follow = true }))
hl.bind(mod .. "+ SHIFT + 8", hl.dsp.window.move({ workspace = "8", follow = true }))
hl.bind(mod .. "+ SHIFT + 9", hl.dsp.window.move({ workspace = "9", follow = true }))
hl.bind(mod .. "+ SHIFT + 0", hl.dsp.window.move({ workspace = "10", follow = true }))

-- Move focused window to a workspace (silently)
hl.bind(mod .. "+ CTRL + 1", hl.dsp.window.move({ workspace = "1" }))
hl.bind(mod .. "+ CTRL + 2", hl.dsp.window.move({ workspace = "2" }))
hl.bind(mod .. "+ CTRL + 3", hl.dsp.window.move({ workspace = "3" }))
hl.bind(mod .. "+ CTRL + 4", hl.dsp.window.move({ workspace = "4" }))
hl.bind(mod .. "+ CTRL + 5", hl.dsp.window.move({ workspace = "5" }))
hl.bind(mod .. "+ CTRL + 6", hl.dsp.window.move({ workspace = "6" }))
hl.bind(mod .. "+ CTRL + 7", hl.dsp.window.move({ workspace = "7" }))
hl.bind(mod .. "+ CTRL + 8", hl.dsp.window.move({ workspace = "8" }))
hl.bind(mod .. "+ CTRL + 9", hl.dsp.window.move({ workspace = "9" }))
hl.bind(mod .. "+ CTRL + 0", hl.dsp.window.move({ workspace = "10" }))

-- Move focused window to a relative workspace
hl.bind(mod .. "+ CTRL + SHIFT + L", hl.dsp.window.move({ workspace = "+1", follow = true }))
hl.bind(mod .. "+ CTRL + SHIFT + H", hl.dsp.window.move({ workspace = "-1", follow = true }))

-- Move/Resize focused window
hl.bind(mod .. "+ mouse:272", hl.dsp.window.drag())
hl.bind(mod .. "+ mouse:273", hl.dsp.window.resize())
hl.bind(mod .. "+ Z", hl.dsp.window.drag())
hl.bind(mod .. "+ X", hl.dsp.window.resize())

-- Gnome Pomodoro
hl.bind(mod .. "+ period", hl.dsp.exec_cmd("gnome-pomodoro --pause-resume"))
hl.bind(mod .. "+ SHIFT + period", hl.dsp.exec_cmd("gnome-pomodoro --start-stop"))
hl.bind(mod .. "+ comma", hl.dsp.exec_cmd("gnome-pomodoro --skip"))
