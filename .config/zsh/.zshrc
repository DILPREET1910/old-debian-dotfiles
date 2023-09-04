# Enable colors and chage prompt
# This will only work if starship doesn't start
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# autocd
setopt autocd

# starship
eval "$(starship init zsh)"
