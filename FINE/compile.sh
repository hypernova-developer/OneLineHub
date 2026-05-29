#!/bin/bash

# ==========================================
# FINE. Pure One-Liner Compiler Script
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

echo -e "${BLUE}=== FINE: Fast Interface for Native Execution Build Pipeline ===${RESET}"

g++ ./fine.cpp -o fine -Ofast -static \
    -include iostream \
    -include string \
    -include vector \
    -include functional \
    -include chrono \
    -include mutex

if [ $? -eq 0 ]
then
    chmod +x ./fine
    echo -e "${GREEN}[success] FINE compiled successfully with embedded headers! -> ./fine${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './fine.cpp' exists.${RESET}"
    exit 1
fi
