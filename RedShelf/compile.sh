#!/bin/bash

# ==========================================
# RedShelf Pure One-Liner Compiler Script
# Developer: hypernova-developer (2026)
# Dev Note: Custom header injection active.
# ==========================================

if [ ! -x "$0" ]
then
    chmod +x "$0"
fi

CYAN='\033[38;5;51m'
GREEN='\033[38;5;82m'
RED='\033[38;5;196m'
RESET='\033[0m'

echo -e "${CYAN}=== RedShelf Pure One-Liner Build Pipeline ===${RESET}"

g++ ./redshelf.cpp -o redshelf -Ofast -static -I. \
    -include iostream \
    -include fstream \
    -include string \
    -include chrono \
    -include thread \
    -include ctime \
    -include bettersyntax.hpp

if [ $? -eq 0 ]
then
    chmod +x ./redshelf
    echo -e "${GREEN}[success] RedShelf compiled successfully and permissions are granted! -> ./redshelf${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Ensure 'redshelf.cpp' and 'bettersyntax.hpp' are in this directory.${RESET}"
    exit 1
fi
