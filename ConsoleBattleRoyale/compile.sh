#!/bin/bash

# ==========================================
# Console Battle Royale Pure One-Liner Compiler Script
# Developer: hypernova-developer (2026)
# Dev Note: No step back!
# ==========================================

if [ ! -x "$0" ]
then
    chmod +x "$0"
fi

RED='\033[38;5;196m'
GREEN='\033[38;5;82m'
RESET='\033[0m'

echo -e "${RED}=== Console Battle Royale Pure One-Liner Build Pipeline ===${RESET}"

g++ ./consolebattleroyale.cpp -o consolebattleroyale -Ofast -static \
    -include iostream \
    -include string \
    -include chrono \
    -include thread \
    -include cstdlib

if [ $? -eq 0 ]
then
    chmod +x ./consolebattleroyale
    echo -e "${GREEN}[success] Console Battle Royale compiled successfully and permissions are granted! -> ./consolebattleroyale${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './consolebattleroyale.cpp' exists.${RESET}"
    exit 1
fi
