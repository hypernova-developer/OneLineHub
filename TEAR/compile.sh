#!/bin/bash

# ==========================================
# TEAR. Pure One-Liner Compiler Script
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

echo -e "${BLUE}=== TEAR: Terminal Runtime Build Pipeline ===${RESET}"

g++ ./tear.cpp -o tear -Ofast -static \
    -include iostream \
    -include string \
    -include chrono \
    -include cstdlib

if [ $? -eq 0 ]
then
    chmod +x ./tear
    echo -e "${GREEN}[success] TEAR compiled successfully with embedded headers! -> ./tear${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './tear.cpp' exists.${RESET}"
    exit 1
fi
