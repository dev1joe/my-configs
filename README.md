# My Configs
- My Linux for Work (ML4W)
- custom hyprland config in progress...
- kitty: linux terminal emulator
- fastfetch: neofetch equivalent
- eza: `ls` command replacement
- ohmyposh: for a nice terminal prompt (starship equivalent)
- vimium: A browser extension for using vim motions in the browser
- Kanata: cross-platform software keyboard remapper
- halmak: A keyboard layout. check `halmak` folder. Original [repository](https://github.com/kaievns/halmak).
- npm global environment in user's home directory using `npm config set prefix '<path>'` [tutorial](https://github.com/sindresorhus/guides/blob/main/npm-global-without-sudo.md)
- wlogout: power menu
- waypaper for wallpapers

### Custom hyprland config
- [X] hypraland config
    - [X] monitors
    - [X] keyboard_us
    - [X] keyboard_halmak
    - [ ] keybindings_us config
    - [X] keybindings_halmak config
- [X] hyprlock
- [X] hypridle
- [X] hyprpaper
- [X] waybar
    - [X] bluetooth applet (blueman-manager)
    - [X] network manager applet
    - [X] audio applet (pulse-audio)
    - [X] brightness applet (backlight)
    - [X] power menu (wlogout)
    - [X] power profile daemon
- [X] fonts
- [X] terminal
    - [X] kitty configuration
    - [X] nice prompt (ohmyposh)
    - [X] show file extension icon (eza)
    - [ ] show symbolic links
- [X] waypaper, although hyprpaper is available
- [ ] swaync (notification)
- [ ] clipboard (ml4w uses wl-clipboard)
- [ ] screenshot utility

- [ ] nvidia-drivers

- [ ] custom monitors' profile switcher using SUPER + P (J in halmak)
- [ ] custom keyboard config file switcher
- [ ] how about changing a variable instead of a whole file ?? try it! but for monitors I have to cycle between files, I can't use variables

### GNU stow
- TODO: install GNU stow after system installation
- TODO: structure files like they should be in your home directory (~/)
- TODO: run `stow -t ~ .` (symlink this directory in ~ (target directory))