# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set wallpaper for dwm
feh --bg-fill ~/Pictures/wallpapers/first-collection/ign_astronaut.png

# Added by Toolbox App
export PATH="$PATH:/home/dilpreet1910/.local/share/JetBrains/Toolbox/scripts"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# manual addition of PATH
export PATH="$PATH:/home/dilpreet1910/Documents/MyPrograms/Bash Scripting/myScripts/bin" # path to bin of my shell scripts
export PATH="$PATH:/usr/local/go/bin" # go sdk
export PATH="$PATH:/home/dilpreet1910/go/bin" # bin for installed go programs
