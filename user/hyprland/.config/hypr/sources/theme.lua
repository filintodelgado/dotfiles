-- Font
local font = {
    default = "Cantarell 10",
    monospaced = "JetBrainsMono Nerd Font 9"
}

-- Cursor
local cursor = {
    theme = "Bibata-Modern-Ice",
    size = 20
}

-- Config
hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 8,
        border_size = 2,

        col = {
            active_border = "rgb(89b4fa)",
            inactive_border = "rgba(89b4fa66)"
        },
    },

    decoration = {
        rounding = 10,
    },

    misc = {
        font_family = font.default
    }
})

hl.on("hyprland.start", function()
    -- Cursor
    hl.exec_cmd("hyprctl setcursor " .. cursor.theme .. " " .. cursor.size)
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme " .. cursor.theme)
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size " .. cursor.size)

    -- Font
    hl.exec_cmd("gsettings set org.gnome.desktop.interface font-name '" .. font.default .. "'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface document-font-name '" .. font.default .. "'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface font-antialiasing 'rgba'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface font-hinting 'full'")
end)
