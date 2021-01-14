echo "Iniciado a instalação"
echo "---------------------"
echo "Atualização do Sistema"
sudo apt update && sudo apt upgrade -y && flatpak update
echo "---------------------"
echo "Instalando Gnome Tweaks"
sudo apt install gnome-tweaks -y
echo "---------------------"
echo "Instalando Chrome"
sudo apt install google-chrome-stable -y
echo "---------------------"
echo "Remover geary e intalar vlc"
sudo apt-get autoremove --purge geary* -y
sudo apt install vlc  -y
sudo apt-get autoremove --purge totem* -y
echo "---------------------"
echo "Instalando Code"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /et/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https
sudo apt update
sudo apt install code 
echo "---------------------"
echo "Instalando Flameshot"
wget https://github.com/flameshot-org/flameshot/releases/download/v0.8.5/flameshot-0.8.5-1.ubuntu-20.04.amd64.deb -O flameshot.deb
sudo dpkg -i flameshot.deb
sudo apt-get install -f
echo "---------------------"
echo "Instalando Steam"
sudo apt install steam -y
echo "---------------------"
echo "Instalacoes Flatpak Out of Box"
flatpak install flathub com.obsproject.Studio
flatpak install flathub com.spotify.Client
flatpak install flathub com.microsoft.Teams
flatpak install flathub com.getpostman.Postman
flatpak install flathub org.remmina.Remmina
flatpak install flathub com.discordapp.Discord
flatpak install flathub org.telegram.desktop
echo "---------------------"
echo "Instalacoes Finalizadas"








