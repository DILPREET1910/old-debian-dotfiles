# Enable colors and chage prompt:
# This will only work if starship doesn't start
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# autocd:
setopt autocd

# starship:
eval "$(starship init zsh)"

# autojump
. /usr/share/autojump/autojump.sh

# cache history in .cache/zsh/history:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

#######################################################
# VIM on command line 
#######################################################
# vi mode:
bindkey -v
bindkey -M viins jj vi-cmd-mode

# Change cursor shape for different vi modes:
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

#######################################################
# ALIAS'S
#######################################################
# Alias's for multiple directory listing commands:
alias la='ls -Alh' # show hidden files
alias ls='ls -aFh' # add colors and file type extensions
alias lx='ls -lXBh' # sort by extension
alias lk='ls -lSrh' # sort by size
alias lc='ls -lcrh' # sort by change time
alias lu='ls -lurh' # sort by access time
alias lr='ls -lRh' # recursive ls
alias lt='ls -ltrh' # sort by date
alias lm='ls -alh |more' # pipe through 'more'
alias lw='ls -xAh' # wide listing format
alias ll='ls -Fls' # long listing format
alias labc='ls -lap' #alphabetical sort
alias lf="ls -l | egrep -v '^d'" # files only
alias ldir="ls -l | egrep '^d'" # directories only

# Change directory aliases:
alias home='cd ~'
alias downloads='cd Downloads/'
alias documents='cd Documents'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Alias's for archives:
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias mkrar='rar a'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'
alias unrar='rar x'

# alias's to modify commands:
alias sndcpy='cd /home/dilpreet1910/Documents/Github/sndcpy-v1.1/ && ./sndcpy ; home'
alias terminal='gnome-terminal'
alias Terminal='gnome-terminal && exit'
alias bashrc='vim ~/.bashrc'
alias post='cd /home/dilpreet1910/Documents/My\ Programs/Bash\ Scripting/Post\ install\ script && vim list.sh'
alias vim='nvim'
alias vimrc='vim /home/dilpreet1910/.config/nvim/init.vim'
alias clr='clear'
alias h="history | grep "
alias decryptBase64='base64 -d | base64 -d | base64 -d' # it is basically for nebula pirated discord server's decryption of download links
alias get='aria2c -x 6 -s 6'
alias rmt='trash -v'
alias notify-send='notify-send -u critical '
alias python='python3.10'
alias history='history -E' # print history with time stamps

# version control for dot files:
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias add-commit='dots add -u . && dots commit -m'

#######################################################
# EXPORT'S
#######################################################
# Chrome executable for flutter SDK:
export CHROME_EXECUTABLE=/usr/bin/brave-browser


#######################################################
# color support commands:
#######################################################
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi


#######################################################
# PLUGINS:
#######################################################
source /home/dilpreet1910/.config/zsh/plugins/wakatime-zsh-plugin/wakatime.plugin.zsh # wakatime
source /home/dilpreet1910/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh #syntax highlighting; *should be at the last line of .zshrc*
