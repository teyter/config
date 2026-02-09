# node version manager
source /usr/share/nvm/init-nvm.sh
# The following lines were added by compinstall
zstyle :compinstall filename '/home/teytur/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

# env vars
export QT_QPA_PLATFORMTHEME=qt6ct

# Enable colors and change prompt:
autoload -U colors && colors
# colored ls
export CLICOLOR=1
eval "$(dircolors -b)"
alias ls='ls --color=auto'

PS1="%B%{$fg[blue]%}[%{$fg[blue]%}%n%{$fg[blue]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%1~%{$fg[blue]%}]%{$reset_color%}$%b "

source ~/.config/zsh/vi-mode/vi-mode.plugin.zsh
source ~/.config/zsh/fzf-tab-completion/zsh/fzf-zsh-completion.sh

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#bindkey -M menu select '^[[Z' reverse-menu-complete
# Bind Tab to enter the interactive menu or cycle forward
bindkey '^I' menu-complete

# Bind Shift+Tab to cycle backward through the menu
if [[ "${terminfo[kcbt]}" != "" ]]; then
  bindkey "${terminfo[kcbt]}" reverse-menu-complete
else
  # Fallback for terminals that don't set $terminfo[kcbt]
  bindkey '^[[Z' reverse-menu-complete
fi

# clipboard
# copy stdin (or args) to Wayland clipboard
c() {
  if [[ -t 0 ]]; then
    # no pipe: copy arguments as text
    print -rn -- "$*" | wl-copy
  else
    # piped input: copy stdin
    wl-copy
  fi
}

alias zshrc="nvim ~/.config/zsh/.zshrc"
alias hconf="nvim ~/.config/hypr/hyprland.conf"
alias ff="fastfetch"
alias fvim='nvim "$(fzf)"'
alias cdf='cd "$(find . -type d -print | fzf)"'
alias vimrc="nvim ~/.vimrc"
alias conf="nvim ~/.config"
alias srcz="source ~/.config/zsh/.zshrc"
alias greyniraws="ssh -i ~/.ssh/siminn-tv-voice.pem ubuntu@54.74.55.89"
alias gaur="adb reverse tcp:8081 tcp:8081"
alias py="python3"
alias reload="hyprctl reload"

# ls alias
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
# git alias
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gpush="git push"
alias gpull="git pull"
alias gb="git branch"
alias gch="git checkout"
alias tvx="cd ~/GitHub/tvx"
# cd alias
alias ..="cd .."
alias ../..="cd ../.."
alias ../../..="cd ../../.."
alias ../../../..="cd ../../../.."
