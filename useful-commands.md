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
`identify -verbose image.jpg`
or
file image.jpg

# change starship preset
`starship preset <your-preset> -o ~/.config/starship.toml`
your-preset = pure-preset / gruvbox-rainbow / tokyo-night / etc...

# zip a folder
zip -r Documents.zip Documents/

# install fonts
- `sudo mv *.ttf /usr/share/fonts/`
- `fc-list` to list all available fonts
- `fc-cache -fv` to rebuild the font cache

# pacman and yay commands
- `yay -Qu` list packages that need updating
- `yay -Qua` for only AUR packages, list those that need updating
- `yay -Su` update all packages
- `yay -Sua` update only AUR packages

# git commands to remember
- `git tag -a <tag_name> <commit_hash> −m <message>`: created annotated tag for a specific commit hash and add a message

# storage drives
- `lsblk`: lists information about all available or specified block devices, such as hard drives, SSDs, USB drives, and their partitions.

# flashing OS images
- `unxz <.xz image file name>`: unxz .xz image files
- `sudo dd if=<image file> of=<device name> bs=4M status=progress conv=fsync`
    - you need sudo permissions to write directly to the block device
    - `dd` stands for "Disk Duplicator" / "Data Dumper"
    - `<image file>` may look like `myOS.iso` or `myOS.img`
    - `<device name>` may look like `/dev/sdX`
    - `bs` is block size, `4M` = 4 Megabytes
    - `status=progress` show progress during operation
    - `conv=fsync` ensures all data is physically written before completion

# network
- `ip addr`: display network interface and local ip addresses
- `sudo arp-scan --localnet --interface=<network interface>`: scan local network for ip local addresses