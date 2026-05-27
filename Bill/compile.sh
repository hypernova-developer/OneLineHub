#!/bin/bash

# ==========================================
# BillSystem Pure One-Liner Compiler Script
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

echo -e "${CYAN}=== BillSystem Pure One-Liner Build Pipeline ===${RESET}"

g++ ./bill.cpp -o billsystem -Ofast -static \
    -include iostream \
    -include fstream \
    -include string \
    -include vector \
    -include chrono \
    -include thread \
    -include ctime \
    -include iomanip

if [ $? -eq 0 ]
then
    chmod +x ./billsystem
    echo -e "${GREEN}[success] BillSystem compiled successfully and permissions are granted! -> ./billsystem${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './bill.cpp' exists.${RESET}"
    exit 1
fi
