# this is a script to link system files to configs
#!/bin/bash

# bash
ln -s ~/.config/bash/.bash_history ~/.bash_history
ln -s ~/.config/bash/.bash_logout ~/.bash_logout
ln -s ~/.config/bash/.bash_profile ~/.bash_profile
ln -s ~/.config/bash/.bashrc ~/.bashrc
ln -s ~/.config/bash/.profile ~/.profile

# tmux
ln -s ~/.config/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.config/tmux/.tmux/ ~/.tmux

# zsh
ln -s ~/.config/zsh/.zshrc ~/.zshrc

# starship
ln -s ~/.config/starship/starship.toml ~/.config/starship.toml

# vimrc for jetbrain IDEs
ln -s ~/.config/ideavim/.ideavimrc ~/.ideavimrc

# virmc for vanilla vim
ln -s ~/.config/vim/.vimrc ~/.vimrc   

# obsidian .obsidian directory
ln -s ~/.config/obsidian/.obsidian ~/Documents/Obsidian\ Vault/.obsidian

# flatpak for dmenu
sudo ln -s /var/lib/flatpak/exports/bin/com.google.Chrome /usr/bin/chrome
sudo ln -s /var/lib/flatpak/exports/bin/com.obsproject.Studio /usr/bin/obs
sudo ln -s /var/lib/flatpak/exports/bin/md.obsidian.Obsidian /usr/bin/obsidian
sudo ln -s /var/lib/flatpak/exports/bin/org.telegram.desktop /usr/bin/telegram
sudo ln -s /var/lib/flatpak/exports/bin/com.getpostman.Postman /usr/bin/postman
