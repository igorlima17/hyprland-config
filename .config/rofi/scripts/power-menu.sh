#!/bin/bash

options="Desligar\nReiniciar\nSuspender\nHibernar\nSair"

choice=$(echo -e "$options" | rofi -dmenu -i -p "Power" -lines 5 -width 20 -no-custom)

case "$choice" in
    Desligar)
        systemctl poweroff
        ;;
    Reiniciar)
        systemctl reboot
        ;;
    Suspender)
        systemctl suspend
        ;;
    Hibernar)
        systemctl hibernate
        ;;
    Sair)
        exit 0
        ;;
    *)
        exit 1
        ;;
esac
