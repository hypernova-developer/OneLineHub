#!/bin/bash

# ==========================================
# CarPark Pure One-Liner Compiler Script
# Developer: hypernova-developer (2026)
# Dev Note: No step back!
# ==========================================

if [ ! -x "$0" ]
then
    chmod +x "$0"
fi

CYAN='\033[38;5;51m'
GREEN='\033[38;5;82m'
RED='\033[38;5;196m'
RESET='\033[0m'

echo -e "${CYAN}=== CarPark Pure One-Liner Build Pipeline ===${RESET}"

g++ ./carpark.cpp -o carpark -Ofast -static \
    -include iostream \
    -include fstream \
    -include string

if [ $? -eq 0 ]
then
    chmod +x ./carpark
    echo -e "${GREEN}[success] CarPark compiled successfully and permissions are granted! -> ./carpark${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './carpark.cpp' exists.${RESET}"
    exit 1
fi
