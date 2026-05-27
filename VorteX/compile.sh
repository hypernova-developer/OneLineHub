#!/bin/bash

# ==========================================
# VorteX Pure One-Liner Compiler Script
# Developer: hypernova-developer (2026)
# Dev Note: No step back!
# ==========================================

if [ ! -x "$0" ]
then
    chmod +x "$0"
fi

CYAN='\033;5;51m'
GREEN='\033[38;5;82m'
RED='\033[38;5;196m'
RESET='\033[0m'

echo -e "${CYAN}=== VorteX Pure One-Liner Build Pipeline ===${RESET}"

g++ ./vortex.cpp -o vortex -std=c++23 -Ofast \
    -I/usr/include/ftxui \
    -lftxui-screen -lftxui-component -lftxui-dom \
    -include ftxui/component/screen_interactive.hpp \
    -include ftxui/component/component.hpp \
    -include ftxui/component/event.hpp \
    -include ftxui/dom/elements.hpp \
    -include ftxui/screen/screen.hpp \
    -include algorithm \
    -include cctype \
    -include chrono \
    -include filesystem \
    -include fstream \
    -include memory \
    -include optional \
    -include string \
    -include thread \
    -include vector \
    -include system_error

if [ $? -eq 0 ]
then
    chmod +x ./vortex
    echo -e "${GREEN}[success] VorteX compiled successfully and permissions are granted! -> ./vortex${RESET}"
else
    echo -e "${RED}[error] Compilation failed. Make sure './vortex.cpp' exists and ftxui is installed.${RESET}"
    exit 1
fi
