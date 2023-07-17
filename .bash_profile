eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Git summary
alias git-summary=$HOME/utils/git-summary/git-summary

# Bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

source ~/.bashrc
