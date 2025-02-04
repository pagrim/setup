#!/bin/sh
NAME="$1"
EMAIL="$2"

PYENV_SYS_PYTHON=3.9.0

# Bash setup
cp .bashrc $HOME/.bashrc
cp .bash_profile $HOME/.bash_profile

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Brew installs
brew update
brew install bash
brew install jq
brew install code
brew install tree
brew install graphviz
brew install bash-completion@2
brew install coreutils  # Needed for git-summary
brew install xz  # Needed for pyenv setup
brew install pyenv
brew install pyenv-virtualenv

# Git setup
git config --global --replace-all user.name "$NAME"
git config --global --replace-all user.email "$EMAIL"
git config --global --replace-all pull.rebase false # Merge instead of rebase

## Git summary
mkdir -p $HOME/utils/git-summary
git clone https://github.com/MirkoLedda/git-summary.git $HOME/utils/git-summary

# Vim setup
cp .vimrc $HOME

# Screen setup
cp .screenrc $HOME

# Bash completion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
chmod +x ~/.git-completion.bash

# Pyenv setup
pyenv install $PYENV_SYS_PYTHON
pyenv global $PYENV_SYS_PYTHON

# Copy utils
mkdir $HOME/utils/utilities
cp utilities/*.sh $HOME/utils/utilities

# Create pyenv environment for handling jupyter notebooks (referenced in utils above)
PYENV_JUPYTER_ENV=jupyter-$PYENV_SYS_PYTHON
echo "export PYENV_JUPYTER_ENV=$PYENV_JUPYTER_ENV" >> $HOME/.bash_profile
pyenv virtualenv $PYENV_SYS_PYTHON $PYENV_JUPYTER_ENV
pyenv activate $PYENV_JUPYTER_ENV
pip install -U pip
pip install jupyter
source deactivate

# Source files
source $HOME/.bashrc
source $HOME/.bash_profile
