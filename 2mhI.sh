#!/bin/bash

# Warna
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Fungsi Loop
start_loop() {
    START_TIME=$(date +%s)

    while true; do
        # Hitung uptime
        NOW=$(date +%s)
        UPTIME=$((NOW - START_TIME))
        HOURS=$((UPTIME / 3600))
        MINUTES=$(((UPTIME % 3600) / 60))
        SECONDS=$((UPTIME % 60))

        # Refresh layar
        clear
        echo -e "${CYAN}============================================"
        echo -e "        SCRIPT 24/7 BY FAREL"
        echo -e "============================================${NC}"
        echo -e "${GREEN}Uptime: ${HOURS}h ${MINUTES}m ${SECONDS}s${NC}"
        echo -e "${YELLOW}Press 'q' to exit${NC}"
        echo -e ""
        echo -e "${CYAN}Thanks To:${NC}"
        echo -e " - Allah SWT"
        echo -e " - Farel (Developer)"
        echo -e "${CYAN}============================================${NC}"

        # Tunggu input 1 detik sambil cek exit
        read -t 1 -n 1 key
        if [[ $key == "q" ]]; then
            echo -e "${RED}Exiting loop...${NC}"
            break
        fi
    done
}

# Menu utama
while true; do
    clear
    echo -e "${CYAN}============================================"
    echo -e "        SCRIPT 24/7 BY FAREL"
    echo -e "============================================${NC}"
    echo -e "1. Start Loop"
    echo -e "2. Exit"
    echo -ne "${YELLOW}Choose an option [1-2]: ${NC}"
    read choice

    case $choice in
        1) start_loop ;;
        2) echo -e "${RED}Exiting script...${NC}"; exit 0 ;;
        *) echo -e "${RED}Invalid choice!${NC}"; sleep 1 ;;
    esac
done
