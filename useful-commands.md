# list the files in current directory and filter the result to show files with specific extension
` ls ~/Desktop | grep -i '.png' `

# loop over some zipped file and unzip them
# it can be replicated for any other file extention and any command
`for f in *.rar; do unrar x "$f" && rm "$f"; done`

# move something to the trash (on your ubuntu machine)
`gio trash /path/to/file`

# resize an image
`convert image.png -resize 1920x1080 1920x1080-image.png`

# convert an image to another format
# this creates a new file, no worries about losing the original file
`convert image.jpg image.png`

# batch convert from one image format to another
# convert from jpg to png
`mogrify -format png *.jpg`

# get image metadata
`identify image.jpg`
or
`identify -verbose image.jp`
or
file image.jpg

# change starship preset
`starship preset <your-preset> -o ~/.config/starship.toml`
your-preset = pure-preset / gruvbox-rainbow / tokyo-night / etc...

# zip a folder
`zip -r Documents.zip Documents/`

# install fonts
- `sudo mv *.ttf /usr/share/fonts/`
- `fc-list` to list all available fonts
- `fc-cache -fv` to rebuild the font cache

# pacman and yay commands (sudo pacman or yay (without sudo))
- `yay -Qu` list packages that need updating
- `yay -Qua` for only AUR packages, list those that need updating
- `yay -Su` update all packages
- `yay -Sua` update only AUR packages
- `yay -Sy` refresh databases
- `yay -R <package_name>` remove target package only, it's dependencies if not required by other packages, they're marked as orphans
- `yay -Rs <package_name>` remove package and any dependencies that are no longer needed by any other installed packages
- `yay -Rns <package_name>` (Recommended) removes the package, it's unneeded dependencies (recursive), and any associated config files (nosave)

# git commands to remember
- `git log`: display commits
    - `git log -<number>`: display only `<number>` of commits, example: display only 3 `git log -3`
    - `git log --oneline`: display a minimal view of commits
- Git introduced `git switch` (and `git restore`) to split `git checkout`’s dual roles:
    - Use `git switch` to change branches.
    - Use `git switch -c <branch_name>` to create a new branch with name `<branch_name>` and switch to it
    - Use `git restore` to undo file changes.
- `git restore --staged`: unstage a staged file while also keeping local modifications
- `git push --delete <remote_name> <branch_name>`: delete a branch `<branch_name>` from the remote repo `<remote_name>`
- `git tag -a <tag_name> <commit_hash> −m <message>`: created annotated tag for a specific commit hash and add a message


# storage drives
- `lsblk`: lists information about all available or specified block devices, such as hard drives, SSDs, USB drives, and their partitions.
- `sudo dmesg`: ?

# flashing OS images
- `unxz <.xz_image_file_name>`: unxz .xz image files
- `sudo dd if=<image_file> of=<device_name> bs=4M status=progress conv=fsync`
    - you need sudo permissions to write directly to the block device
    - `dd` stands for "Disk Duplicator" / "Data Dumper"
    - `<image_file>` may look like `myOS.iso` or `myOS.img`
    - `<device_name>` may look like `/dev/sdX`
    - `bs` is block size, `4M` = 4 Megabytes
    - `status=progress` show progress during operation
    - `conv=fsync` ensures all data is physically written before completion

# network
- `ip addr`: display network interface and local ip addresses
- `sudo arp-scan --localnet --interface=<network interface>`: scan local network for ip local addresses
- `ssh <username>@<ip_address>`: ssh into the machine with `<ip_address>` with the user `<username>`
- `scp <file_path> <username>@<ip_address>:<destination_path>`: use scp (dependant on ssh) to copy files to `<ip_address>`
    - use the `-r` flag if you're copying a folder
- `lspci -knn | grep -i net -A2`: check physical WiFi/bluetooth chip information

# Python
- `python3 -m venv <path>/<venv_name>`: create a python virtual environment
    - `<path>/<venv_name>` may look like `/projects/testProject/pyenv` where `/projects/testProject` is `<path>` and `pyenv` is `<venv_name>`
    - `python -m venv --system-site-packages ~/pyenv`: use `--system-site-packages` flag to give the virtual environment access to the system site-packages directory.

# file inspection
- `cat <file path>`: print file content in terminal
    - `cat <file path> | head -n <line count>`: limit lines printed to `<line count>`, for example: 10
- `nano <file path>`
- `vim <file path>`
- `code <file path>`: open `<file path>` using visual studio code (if you have it installed)

# raspberry pi OS commands
- `rpicam-hello --list-cameras`: list raspberry pi cameras
- `rpicam-still -t 0`: open raspberry pi camera live preview (debian trixie and bookworm)

# arduino-cli commands
- `arduino-cli sketch new <sketch_name>`: create a new sketch
- `arduino-cli core update-index`: download the index
    - `arduino-cli core update-index --config-file <config_file.yml>`
- `arduino-cli core install esp32:esp32`: install esp32 packages
- `arduino-cli board list`: list connected boards
- `arduino-cli compile --b esp32:esp32:esp32 <sketch_path>`: compile sketch in `<sketch_path>` for esp32
- `arduino-cli upload -p <serial_port> -b esp32:esp32:esp32 <sketch_path>`: upload complied sketch in `<sketch_path>` to device connected on `<serial_port>`
    - on windows: `<serial_port>` may look like `COM0`, `COM7`, `COM8`, etc.
    - on linux: `<serial_port>` may look like `/dev/ttyUSB0`, `/dev/ttyUSB1`, etc.
- `arduino-cli monitor -p <serial_port>`: monitor serial port output, can be also used for input

# linux default apps (xdg-open)
- `xdg-mime query default <mime_type>`: get the default applications for a specific mime type
    - example: `xdg-mime query default application/pdf` => firefox.desktop
- `xdg-mime default <application.desktop> <mime_type>`: set a default application for a specific mime type
    - example: `xdg-mime default brave-browser.desktop application/pdf`
- `find /usr/share/applications ~/.local/share/applications /usr/local/share/applications -maxdepth 1 -type f -name "*.desktop" | sort`: to list all installed .desktop applications

# bun commands
- `bun run <commadn>`: `npm run` command equivalent from bun
- `bunx --bun <command>`: bunx is an equivalent of npx (package runner), --bun flag is used for forcing the usage of bun intead of node.

# Processes Management
- `lsof -i :<port_number>`: check the process running on port `<port_number>`

# file searching
- `find <directory> -type <file_type> -iname '<fileN_name>*'`
    - example: `find ./components -type f -iname 'navbar*'` => ./components/Navbar.tsx
    - `-iname` flag indicates "case insensitive caseing"
    - adding an astrisk wildcard (*) at the end of the file name is recommeded

# git auth using github-cli
- install github-cli `sudo pacman -S github-cli`
- run `gh auth login` to login with your account
    - for me I prefer using http + web browser authtication instead of entering credentials
- run `gh auth setup-git` for setting `gh` as an authentication method for git