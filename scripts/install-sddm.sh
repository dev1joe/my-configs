# install sddm
echo "Installing SDDM using pacman..."
sudo pacman -S --noconfirm sddm qt6-svg qt6-virtualkeyboard qt6-multimedia-ffmpeg

echo "Enabling SDDM...."
sudo systemctl enable sddm

echo "Done :)"