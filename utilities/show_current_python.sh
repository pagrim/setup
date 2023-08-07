function show_current_python () {
  CURR_PYTHON="$(which python)"
  if [[ $CURR_PYTHON == *"pyenv"* ]]; then
    echo "pyenv active, current version is $(pyenv which python)"
  else
    echo "pyenv not active, current version is $(which python)"
  fi
}
