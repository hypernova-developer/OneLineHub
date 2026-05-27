#!/bin/bash

# ==========================================
# ProtocolX Pure One-Liner Compiler Script
# Developer: hypernova-developer (2026)
# Dev Note: No step back!
# ==========================================

if [ ! -x "$0" ]
then
    chmod +x "$0"
fi

CYAN='\033[38;5;51m'
GREEN='\033[38;5;82m'
RED='\033[38;5;196m'
RESET='\033[0m'

echo -e "${CYAN}=== ProtocolX Pure One-Liner Build Pipeline ===${RESET}"

g++ ./protocolx.cpp -o protocolx -Ofast -static \
    -include iostream \
    -include string \
    -include vector

if [ $? -eq 0 ]
then
    chmod +x ./protocolx
    echo -e "${GREEN}[success] ProtocolX compiled successfully and permissions are granted! -> ./protocolx${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './protocolx.cpp' exists.${RESET}"
    exit 1
fi
