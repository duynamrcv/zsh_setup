# Custom workspace
## zsh
Install `zsh` and set as default
```
sudo apt install zsh 
chsh -s $(which zsh)
```
Make sure to logout and sign in again to complete the setup. At this time, the `zsh` is used as default. To back the `bash` manually, type
```
bash
```

When open terminal `Alt + Ctrl + T`, the zsh suggestion appears. Press `0` to custom setup. All configurations willl be put in `~/.zshrc` (similar `~/.bashrc` in `bash`).
## [fzf](https://github.com/junegunn/fzf)
It's an interactive filter program for any kind of list; files, command history, processes, hostnames, bookmarks, git commits, etc. 
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
Add to `~/.zshrc`:
```
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```

## [zsh-autogeneration](https://github.com/zsh-users/zsh-autosuggestions)
It suggests commands as you type based on history and completions. If you press the → key (forward-char widget) or End (end-of-line widget) with the cursor at the end of the buffer, it will accept the suggestion, replacing the contents of the command line buffer with the suggestion.
```
cd ~/.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions
```
Add to `~/.zshrc`:
```
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
```

## [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
This package provides syntax highlighting for the shell zsh. It enables highlighting of commands whilst they are typed at a zsh prompt into an interactive terminal. This helps in reviewing commands before running them, particularly in catching syntax errors.
```
cd ~/.zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting
```
Add to `~/.zshrc`:
```
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```
## [Starship](https://starship.rs/guide/)
The minimal, blazing-fast, and infinitely customizable prompt for any shell. To use full symbol, install [Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip) and add to [font manager](https://github.com/FontManager/font-manager).
### Install Font manager:
```
sudo add-apt-repository ppa:font-manager/staging
sudo apt-get update
sudo apt-get install font-manager
```
Add `MesloLGS Nerd Font` to the font type in `Terminal`, and/or `VScode`.
The fully configuration is descired in [here](https://starship.rs/guide/)
### Install and Config Starship
Install the latest version for your system:
```
curl -sS https://starship.rs/install.sh | sh
```
Add the following to the end of `~/.zshrc`:
```
eval "$(starship init zsh)"
```
The configuration is put at `.config/starship.toml` file. For example, copy and paste context in `starship.toml` to your configuration file.