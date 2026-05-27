#!/bin/bash

# ==========================================
# Forever. Pure One-Liner Compiler Script
# Developer: hypernova-developer (2026)
# Dev Note: No step back!
# ==========================================

if [ ! -x "$0" ]
then
    chmod +x "$0"
fi

BLUE='\033[38;5;33m'
GREEN='\033[38;5;82m'
RED='\033[38;5;196m'
RESET='\033[0m'

echo -e "${BLUE}=== Forever. Automation Engine Build Pipeline ===${RESET}"

g++ ./forever.cpp -o forever -Ofast -static \
    -include iostream \
    -include string \
    -include vector \
    -include filesystem \
    -include fstream \
    -include cstdlib \
    -include chrono \
    -include ctime \
    -lstdc++fs

if [ $? -eq 0 ]
then
    chmod +x ./forever
    echo -e "${GREEN}[success] Forever. compiled successfully and permissions are granted! -> ./forever${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './forever.cpp' exists.${RESET}"
    exit 1
fi
