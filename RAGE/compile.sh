#!/bin/bash

# ==========================================
# RAGE. Pure One-Liner Compiler Script
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

echo -e "${BLUE}=== RAGE: Automated Exploiter Build Pipeline ===${RESET}"

g++ ./rage.cpp -o rage -Ofast -static \
    -include iostream \
    -include string \
    -include vector \
    -include chrono \
    -include thread

if [ $? -eq 0 ]
then
    chmod +x ./rage
    echo -e "${GREEN}[success] RAGE compiled successfully with embedded headers! -> ./rage${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './rage.cpp' exists.${RESET}"
    exit 1
fi
