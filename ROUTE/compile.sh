#!/bin/bash

# ==========================================
# ROUTE. Pure One-Liner Compiler Script
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

echo -e "${BLUE}=== ROUTE: Remote Operational Target Executor Build Pipeline ===${RESET}"

g++ ./route.cpp -o route -Ofast -static \
    -include iostream \
    -include string \
    -include vector \
    -include functional \
    -include chrono \
    -include thread \
    -include mutex

if [ $? -eq 0 ]
then
    chmod +x ./route
    echo -e "${GREEN}[success] ROUTE compiled successfully with embedded headers! -> ./route${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './route.cpp' exists.${RESET}"
    exit 1
fi
