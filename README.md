# dotfiles

## How to use

Install [GNU Stow](https://www.gnu.org/software/stow/) in your system:

```sh
sudo pacman -Sy stow
```

Choose the packages you want to install (read the _README.md_ file first and check
if make sure you have all the dependencies you need before hand) and run the `stow`
command to install the packages:

> The packages are the subdirectories inside this repository.

```sh
stow <packages...>
```

Install the [Hyprland](/hyprland/) package for example:

```sh
stow hyprland
```

Packages may include more than of configuration.
Check the _#Configurations_ sections in the _README.md_ first.

## My Setup

### Hardware

#### Computer

- **CPU**: AMD Ryzen 5 5600X "Zen 3"
- **GPU**: NVIDIA GeForce RTX 3060 "Ampere" Ventus
  > I some configurations I do some extra steps because of Nvidia proprietary
  > You won't need them if you don't have a Nvidia card as well.
- **RAM**: G.SKILL Ripjaws V 32GB (2x16GB) DDR4-3200MHz
- **Motherboard**:  Micro-ATX Asus Prime B550M-A WiFi II 
- **SSD**: Western Digital WD Black SN850X 1TB

#### Peripherals

- **Mice**: Logitech MX Master 3s
- **Keyboard**: Nuphy Air 96v2
- **Monitor**: Samsung Essential LS24C330
- **Headset**: EPOS H6Pro

## Software

- **Distro**: Arch Linux
  > I would recommend using the same distro as I am, but theoretically everything
  > should work regardless of your own setup.
- **Login Manager**: SDDM
- **Tilling Manager**: Hyprland
