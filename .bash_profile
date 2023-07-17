eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Git summary
alias git-summary=$HOME/utils/git-summary/git-summary

# Bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export HOMEBREW_GITHUB_API_TOKEN=""

# Set terminal appearance
source $HOME/.set-colors.sh
set_foreground_color "{65535, 65535, 65535}"
set_background_color "{0, 0, 0}"
set_font "Monaco" 14
