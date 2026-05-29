#!/bin/bash

# ==========================================
# DOVE. Pure One-Liner Compiler Script
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

echo -e "${BLUE}=== DOVE: Direct Operating Virtual Executable Build Pipeline ===${RESET}"

g++ ./dove.cpp -o dove -Ofast -static \
    -include iostream \
    -include string \
    -include vector \
    -include functional \
    -include mutex \
    -include memory

if [ $? -eq 0 ]
then
    chmod +x ./dove
    echo -e "${GREEN}[success] DOVE compiled successfully with embedded headers! -> ./dove${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './dove.cpp' exists.${RESET}"
    exit 1
fi
