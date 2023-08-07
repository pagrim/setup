#!/bin/bash

function start_jupyter_notebook {
  screen -d -m -S jupyterscreen

  pass_jupyter_screen() {
    screen -S jupyterscreen -p 0 -X stuff "$1"`echo -ne '\015'`
  }

  # Pyenv variable export should be in ~/.bash_profile; added in setup.sh
  pass_jupyter_screen "cd $PWD"
  pass_jupyter_screen "source ~/.bash_profile"
  pass_jupyter_screen "pyenv activate $PYENV_JUPYTER_ENV"
  pass_jupyter_screen "jupyter notebook"

}
