# dotfiles

My collection of dotfiles (configuration files).

![Screenshot of the Hyprland environment with Firefox on the left side and VSCode on the right](/assets/screenshot.png)

Those are organized in packages for each specific program. Those packages can be user
specific settings ([user/](/user/)) or system wide settings ([system/](/system/)).

## Install the packages

### Individually

#### User package

1. Go to the [user/](/user/) settings directory:

    ```sh
    cd user
    ```

2. Choose your package and install with stow (take for example [fish](/user/fish/)):

    ```sh
    stow -t ~ fish
    ```

#### System package

1. Go to the [system/](/system/) settings directory:

    ```sh
    cd system
    ```

2. Choose your package and install with stow (requires sudo privileges):

    ```sh
    sudo stow -t / keyd
    ```

### All

Use the [`./stow`](/stow) script to install all the user, system or all the settings at
once:

- ```sh
  ./stow user
  ```

- ```sh
  ./stow system
  ```

- ```sh
  ./stow all
  ```

## Other packages

Package not managed by stow can be found in [`others/`](/others/) and need to be installed
manually.

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
- **Keyboards**:
  - Nuphy Air 96v2
  - AJAZZ AK820 Max
- **Monitor**: Samsung Essential LS24C330
- **Headset**: EPOS H6Pro

## Software

### Desktop

- **Distro**: [Arch Linux](https://archlinux.org/)
  > I would recommend using the same distro as I am, but theoretically everything
  > should work regardless of your own setup.
- **Login Manager**: [SDDM](https://github.com/sddm/sddm)
- **Tilling Manager**: [Hyprland](https://hyprland.org/)

### Apps

- **Browser**: [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- **Mail**: [Thunderbird](https://www.thunderbird.net/en-US/thunderbird/all/)
- **Code Editor**: [Visual Studio Code](https://code.visualstudio.com/)
- **Tasks**: [Planify](https://useplanify.com/)
- **Notes**: [Obsidian](https://obsidian.md/)
- **Music**: [Spotify](https://www.spotify.com) with [Spicetify](https://spicetify.app/)
