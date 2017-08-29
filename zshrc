#Antigen Loading
source ~/git/antigen/antigen.zsh
#Antigen Options
antigen use oh-my-zsh
#Antigen Plugins
antigen bundle git
antigen bundle sudo
antigen bundle command-not-found
antigen bundle cp
antigen bundle colorize
antigen bundle colored-man-pages
antigen bundle tmux
antigen bundle tmuxinator


antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
#Antigen Theme
#antigen theme agnoster
#antigen theme fino
antigen theme agnoster
#Antigen Apply
antigen apply

# The following lines were added by compinstall

 zstyle ':completion:*' completer _complete _ignored
 zstyle :compinstall filename '/home/exunix/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
DEFAULT_USER=`whoami`
