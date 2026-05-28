#!/bin/bash

# ==========================================
# MISERY. Pure One-Liner Compiler Script
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

echo -e "${BLUE}=== MISERY: Memory Security Engine Build Pipeline ===${RESET}"

g++ ./misery.cpp -o misery -Ofast -static \
    -include iostream \
    -include string \
    -include vector \
    -include chrono \
    -include thread

if [ $? -eq 0 ]
then
    chmod +x ./misery
    echo -e "${GREEN}[success] MISERY compiled successfully with embedded headers! -> ./misery${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './misery.cpp' exists.${RESET}"
    exit 1
fi
