#ifndef CONFIG_H
#define CONFIG_H

// String used to delimit block outputs in the status.
#define DELIMITER "  "

// Maximum number of Unicode characters that a block can output.
#define MAX_BLOCK_OUTPUT_LENGTH 45

// Control whether blocks are clickable.
#define CLICKABLE_BLOCKS 1

// Control whether a leading delimiter should be prepended to the status.
#define LEADING_DELIMITER 0

// Control whether a trailing delimiter should be appended to the status.
#define TRAILING_DELIMITER 0

// Define blocks for the status feed as X(icon, cmd, interval, signal).
#define BLOCKS(X)             \
    X("VOL ", "/home/denis/.config/dwmblocks/scripts/volume.sh", 1, 0) \
    X(" | WiFi ", "/home/denis/.config/dwmblocks/scripts/wifi.sh", 5, 0) \
    X(" | BAT ", "/home/denis/.config/dwmblocks/scripts/battery.sh", 10, 0) \
    X(" | ", " /home/denis/.config/dwmblocks/scripts/sb-bluetooth", 30, 20) \
    X(" | ", "/home/denis/.config/dwmblocks/scripts/layout.sh", 1, 0) \
    X(" | ", "/home/denis/.config/dwmblocks/scripts/weather.sh", 600, 0) \
    X(" | ", "/home/denis/.config/dwmblocks/scripts/datetime.sh", 60, 0)

#endif  // CONFIG_H
