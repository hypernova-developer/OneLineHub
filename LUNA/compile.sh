#!/bin/bash

# ==========================================
# LUNA. Pure One-Liner Compiler Script
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

echo -e "${BLUE}=== LUNA: Network Analyzer Build Pipeline ===${RESET}"

g++ ./luna.cpp -o luna -Ofast -static \
    -include iostream \
    -include string \
    -include vector \
    -include chrono \
    -include thread

if [ $? -eq 0 ]
then
    chmod +x ./luna
    echo -e "${GREEN}[success] LUNA compiled successfully with embedded headers! -> ./luna${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './luna.cpp' exists.${RESET}"
    exit 1
fi
