function create_ipykernel () {
  source show_current_python.sh

  echo "Reminder, you need to have an active python virtual environment with ipykernel installed for this to work"
  read -p "Ipykernel display name: " KERNEL_DISPLAY_NAME
  KERNEL_NAME=$(echo $KERNEL_DISPLAY_NAME | tr '[:upper:]' '[:lower:]' | tr " " -)
  python -m ipykernel install --user --name $KERNEL_NAME --display-name "$KERNEL_DISPLAY_NAME"
}
