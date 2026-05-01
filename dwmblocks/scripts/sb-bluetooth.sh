#!/bin/bash

# Иконки (можно заменить на свои)
ICON_ON=""   # Bluetooth включен, устройство подключено
ICON_OFF=""  # Bluetooth выключен
ICON_DISC=""  # Bluetooth включен, но ничего не подключено

# Проверяем, запущен ли демон bluetooth
if ! systemctl is-active --quiet bluetooth; then
    echo "$ICON_OFF off"
    exit 0
fi

# Получаем информацию о подключенном устройстве
DEVICE_INFO=$(bluetoothctl info 2>/dev/null)

if echo "$DEVICE_INFO" | grep -q "Missing device address argument"; then
    # Bluetooth включен, но ни одно устройство не подключено
    echo "$ICON_DISC on"
else
    # Получаем имя подключенного устройства
    DEVICE_NAME=$(echo "$DEVICE_INFO" | grep "Name:" | cut -d ' ' -f 2-)
    
    # Если имя не найдено, показываем MAC-адрес
    if [ -z "$DEVICE_NAME" ]; then
        DEVICE_NAME=$(echo "$DEVICE_INFO" | grep "Device " | head -1 | awk '{print $2}' | sed 's/^\(..\):\(..\):.*/\1:\2.../')
    fi
    
    # Обрезаем длинное имя до 12 символов
    if [ ${#DEVICE_NAME} -gt 12 ]; then
        DEVICE_NAME="${DEVICE_NAME:0:11}…"
    fi
    
    echo "$ICON_ON $DEVICE_NAME"
fi
