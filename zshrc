# SOURCES---------------------------------------------- 
# ZPlug 
source ~/.zplug/init.zsh

# POWELEVEL9K Config-----------------------------------
POWERLEVEL9K_MODE='awesome-fontconfig'
DEFAULT_USER=$USER
POWERLEVEL9K_DIR_PATH_SEPARATOR="%f "$'\uE0B1'" %F"
#POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{red} $(print_icon 'LEFT_SUBSEGMENT_SEPARATOR') %F{black}"
# Command History Config-------------------------------
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt append_history
setopt INC_APPEND_HISTORY
setopt hist_expire_dups_first
setopt hist_ignore_all_dups  
setopt hist_reduce_blanks 
setopt hist_save_no_dups 
setopt share_history 
setopt HIST_IGNORE_SPACE 
# Default Editor---------------------------------------
export EDITOR=nvim
# ZPlug Plugins----------------------------------------
# PowerLevel9k Zsh Theme
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
# Let zplug manage itself
zplug "zplug/zplug"
# Zsh completions
zplug "zsh-users/zsh-completions", as:plugin, use:"src"
# Zsh Syntax Highlight
zplug "zsh-users/zsh-syntax-highlighting", defer:2
# Zsh autosuggestions
zplug "zsh-users/zsh-autosuggestions"
if zplug check zsh-users/zsh-autosuggestions; then
    ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down) # Add history-substring-search-* widgets to list of widgets that clear the autosuggestion
    ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}") # Remove *-line-or-history widgets from list of widgets that clear the autosuggestion to avoid conflict with history-substring-search-* widgets
fi
# Zsh sub-string-search
zplug "zsh-users/zsh-history-substring-search"
if zplug check zsh-users/zsh-history-substring-search; then
    zmodload zsh/terminfo
    bindkey "$terminfo[cuu1]" history-substring-search-up
    bindkey "$terminfo[cud1]" history-substring-search-down
fi
#Rupa's Z Directory Jump List
zplug "rupa/z", use:z.sh
# Super K
zplug "supercrabtree/k"
# ZPlug Load-------------------------------------------
zplug load
