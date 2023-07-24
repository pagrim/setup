function util_venv () {

  source show_current_python
  show_current_python

  read -p "Continue with current python? [y to continue]" -n 1 -r
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    return 1
  fi

  DEV_REQ=requirements-dev.txt
  REQ=requirements.txt

  if [ -z .venv ]; then
    . .venv/bin/activate
  else
    python3 -m venv .venv
  fi

  if [ -z $DEV_REQ ]; then
    pip install -r $DEV_REQ
  elif [ -z $REQ ]; then
    pip install $REQ
  fi

}
