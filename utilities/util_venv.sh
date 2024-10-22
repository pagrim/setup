function util_venv () {

  SCRIPT_DIR=$(dirname ${BASH_SOURCE[0]})
  source "$SCRIPT_DIR/show_current_python.sh"
  show_current_python

  read -p "Continue with current python? [y to continue]" -n 1 -r
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    return 1
  fi
  echo "" # New line for prompt

  DEV_REQ=requirements-dev.txt
  REQ=requirements.txt

  if [ ! -d .venv ]; then
    python3 -m venv .venv 
  fi

  . .venv/bin/activate
  pip install -U pip
  
  if [ -f $DEV_REQ ]; then
    pip install -r $DEV_REQ
  elif [ -f $REQ ]; then
    pip install -r $REQ
  fi

}
