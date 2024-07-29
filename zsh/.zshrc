# ---------------------
# Configuration for ZSH
# ---------------------

# Options

setopt    auto_cd
setopt    chase_links
setopt    auto_menu
#setopt    menu_complete
setopt    bad_pattern
setopt    glob_dots
setopt    nomatch
setopt    hist_ignore_all_dups
setopt    extended_history
setopt    inc_append_history
setopt    hist_verify
#setopt    correct_all

# Variables

HISTFILE="$ZDOTDIR/.zsh_history"
SAVEHIST=10000
HISTSIZE=10000

# Plugins

source "$ZDOTDIR/functions.sh"

install_plugin "zsh-users/zsh-autosuggestions"
install_plugin "zsh-users/zsh-completions"
install_plugin "zsh-users/zsh-syntax-highlighting"
install_plugin "woefe/git-prompt.zsh"

# Additional Files

load_file "$ZDOTDIR/aliases.sh"
load_file "$ZDOTDIR/prompt.sh"
