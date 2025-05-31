# Install git
sudo apt install git vim

# fzf
echo "Install fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#  auto generation and syntax highlighting
echo "Install Auto generation and Syntax highlighting"
mkdir ~/.zsh
cd ~/.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting
cd -

# eza
echo "Install eza"
sudo apt install -y eza

# Starship
echo "Install font manager"
sudo add-apt-repository ppa:font-manager/staging
sudo apt-get update
sudo apt-get install font-manager
mkdir nerd
cd nerd
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip
unzip Meslo.zip
cd -

echo "Install starship"
curl -sS https://starship.rs/install.sh | sh

# Config zsh
cp .zshrc ~/
cp starship.toml ~/.config/