#! /bin/bash

function powermenu {
  options="Cancel\nShutdown\nRestart\nSleep\n..."
  selected=$(echo -e $options | dmenu -c -l 4 -sb '#750077')
  if [[ $selected = "Shutdown" ]]; then
    loginctl poweroff
  elif [[ $selected = "Restart" ]]; then
    loginctl reboot
  elif [[ $selected = "Sleep" ]]; then
    loginctl suspend
  elif [[ $selected = "..." ]]; then
    xdg-open 'https://duckduckgo.com/?q=Am+I+Gay+if+I+like+a+femboy'
  elif [[ $selected = "Cancel" ]]; then
    return
  fi
}

powermenu

