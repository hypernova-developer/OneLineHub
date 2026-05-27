#!/bin/bash

# ==========================================
# Neutron Pure One-Liner Compiler Script
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

echo -e "${CYAN}=== Neutron Pure One-Liner Build Pipeline ===${RESET}"

g++ ./neutron.cpp -o neutron -Ofast -static \
    -include iostream \
    -include string \
    -include vector \
    -include mutex \
    -include thread \
    -include atomic \
    -include cstring \
    -include cstdint \
    -include netinet/in.h \
    -include sys/socket.h \
    -include arpa/inet.h \
    -include unistd.h \
    -pthread

if [ $? -eq 0 ]
then
    chmod +x ./neutron
    echo -e "${GREEN}[success] Neutron compiled successfully and permissions are granted! -> ./neutron${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './neutron.cpp' exists.${RESET}"
    exit 1
fi
