#!/bin/bash

# ==========================================
# KISS. Pure One-Liner Compiler Script
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

echo -e "${BLUE}=== KISS: Kernel Syntax Simplifier Build Pipeline ===${RESET}"

g++ ./kiss.cpp -o kiss -Ofast -static \
    -include iostream \
    -include string \
    -include chrono \
    -include algorithm

if [ $? -eq 0 ]
then
    chmod +x ./kiss
    echo -e "${GREEN}[success] KISS compiled successfully with embedded headers! -> ./kiss${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './kiss.cpp' exists.${RESET}"
    exit 1
fi
