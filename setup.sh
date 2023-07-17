#!/bin/sh
NAME=$1
EMAIL=$2

PYENV_SYS_PYTHON=3.9.0
PYENV_HOME=$HOME/.pyenv

# Bash setup
cp .bashrc $HOME/.bashrc
cp .bash_profile $HOME/.bash_profile


# Brew installs
brew update
brew install bash
brew install git
brew install jq
brew install code
brew install bash-completion@2
brew install coreutils  # Needed for git-summary
brew install pyenv
brew install pyenv-virtualenv
brew install --cask visual-studio-code
brew install --cask pycharm

# Set terminal appearance
source set-colors.sh
set_foreground_color "{65535, 65535, 65535}"
set_background_color "{0, 0, 0}"
set_font "Monaco" 14

# Git setup
git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global pull.rebase false # Merge instead of rebase

## Git summary
mkdir $HOME/utils
git clone https://github.com/MirkoLedda/git-summary.git $HOME/utils

# Vim setup
cp .vimrc $HOME/.vimrc

# Pyenv setup
pyenv install $PYENV_SYS_PYTHON
pyenv global $PYENV_SYS_PYTHON

# Visual Studio
cp vs_code_settings.json $HOME/Library/Application\ Support/Code/User/settings.json

# Personal utils
git clone https://github.com/pagrim/utils.git

# Create pyenv environment for handling jupyter notebooks (referenced in utils above)
PYENV_JUPYTER_ENV=jupyter-$PYENV_SYS_PYTHON
echo "export $PYENV_JUPYTER_ENV" >> $HOME/.bash_profile
pyenv virtualenv $PYENV_SYS_PYTHON $PYENV_JUPYTER_ENV

# Source files
source $HOME/.bashrc
source $HOME/.bash_profile
source $HOME/.vimrc
