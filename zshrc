#Antigen Loading
source ~/git/antigen/antigen.zsh

#Antigen Plugins
antigen bundle git
#antigen bundle sudo
#
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
#antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
#Antigen Options
antigen use oh-my-zsh

#Antigen Theme
#antigen theme fino
antigen theme agnoster_cyan

#Antigen Apply
antigen apply

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/exunix/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -v
# End of lines configured by zsh-newuser-install
