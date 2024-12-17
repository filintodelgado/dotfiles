# dotfiles

My collection of dotfiles (configuration files).

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
