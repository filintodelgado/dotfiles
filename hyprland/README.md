# Hyprland

[Hyprland](https://hyprland.org/) is a tilling window manager that focus on the looks.

## Configurations

- [hyprland](./.config/hypr/)
- [waybar](./.config/waybar/)
- [rofi](./.config/rofi)

## DE configuration

I didn't start my Hyprland configuration from scratch instead I got myself a
pre-configured DE configuration from the [Hyprland Wiki](https://wiki.hyprland.org/Getting-Started/Preconfigured-setups/)
called [Hyprdots](https://github.com/prasanthrangan/hyprdots), that
I decided to change some of its configuration to be more of my liking.

The configurations in this package won't work without Hyprdots, make sure to
[install](https://github.com/prasanthrangan/hyprdots#installation)
it first along with all of its dependencies.

## Dependencies

I didn't list all the dependencies required by Hyprdots but the script
will install all that it may need. These are just the essentials that
you should install **before** the Hyprdots installation.

- [hyprland-git<sup>AUR<sup>](https://aur.archlinux.org/packages/hyprland-git)
- [kitty](https://archlinux.org/packages/extra/x86_64/kitty/)
- [sddm](https://archlinux.org/packages/extra/x86_64/sddm/)
  > Hyprland doesn't work out of the box with other login managers such
  > such as GDM.
- [waybar](https://archlinux.org/packages/extra/x86_64/waybar/)
- [rofi](https://archlinux.org/packages/extra/x86_64/rofi/)
