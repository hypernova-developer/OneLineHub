#!/bin/bash

# ==========================================
# LONELY. Pure One-Liner Compiler Script
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

echo -e "${BLUE}=== LONELY: Network Exploit Logger Build Pipeline ===${RESET}"

g++ ./lonely.cpp -o lonely -pthread -Ofast -static \
    -include iostream \
    -include string \
    -include vector \
    -include chrono \
    -include thread

if [ $? -eq 0 ]
then
    chmod +x ./lonely
    echo -e "${GREEN}[success] LONELY compiled successfully with embedded headers! -> ./lonely${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Check if './lonely.cpp' exists and modern g++ is installed.${RESET}"
    exit 1
fi