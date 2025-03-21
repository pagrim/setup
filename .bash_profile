eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Git summary
alias git-summary=$HOME/utils/git-summary/git-summary

# Bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

source $HOME/.bashrc
source $HOME/utils/utilities/util_venv.sh
source $HOME/utils/utilities/start_jupyter_notebook.sh
