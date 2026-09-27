#!/bin/bash

water_audit() {
    average=$(awk -F '|' '$2 ~ /ICU_WATER_RESERVE/ {sum += $3; count++} END {if (count > 0) print sum / count; else print 0}' active_logs/water_usage_log.log)

    printf "Water Usage Audit - ICU_WATER_RESERVE\n"
    printf "Average water usage: %.2f Liters/min\n" "$average"
}
