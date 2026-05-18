#!/bin/sh

# раскладка
setxkbmap -layout us,ru -option grp:ctrl_shift_toggle &

# переменные окружения
export XDG_CURRENT_DESKTOP=dwm
export GTK_THEME=Adwaita

# сервисы
picom &
dunst &
nm-applet &
blueman-applet &
dwmblocks &

# фон (опционально)
feh --bg-scale ~/Pictures/scaldwillofthegodsisgreatpowerlp.jpg &

# запуск WM
exec dwm
