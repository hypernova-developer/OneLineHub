#!/bin/bash

# ==========================================
# LOVE. Pure One-Liner Compiler Script
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

echo -e "${BLUE}=== LOVE: Virtual Environment Build Pipeline ===${RESET}"

g++ ./love.cpp -o love -Ofast -static \
    -include iostream \
    -include string \
    -include vector \
    -include chrono \
    -include thread

if [ $? -eq 0 ]
then
    chmod +x ./love
    echo -e "${GREEN}[success] LOVE compiled successfully with embedded headers! -> ./love${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './love.cpp' exists.${RESET}"
    exit 1
fi
