#!/bin/bash

# ==========================================
# SICK. Pure One-Liner Compiler Script
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

echo -e "${BLUE}=== SICK: Automated Secure Kernel Build Pipeline ===${RESET}"

g++ ./sick.cpp -o sick -Ofast -static \
    -include iostream \
    -include string \
    -include vector \
    -include chrono \
    -include thread \
    -include mutex \
    -include functional \
    -include memory

if [ $? -eq 0 ]
then
    chmod +x ./sick
    echo -e "${GREEN}[success] SICK compiled successfully with embedded headers! -> ./sick${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './sick.cpp' exists.${RESET}"
    exit 1
fi
