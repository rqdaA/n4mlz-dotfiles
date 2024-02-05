#!/bin/bash

apt_brew() {
    if ! command -v brew &>/dev/null; then
        ./brew.sh
    fi
    brew install starship
}

pacman_yay() {
    sudo pacman -S starship --noconfirm
}

main() {
    if command -v apt &>/dev/null; then
        echo "using apt and brew..."
        apt_brew
    elif command -v pacman &>/dev/null; then
        echo "using pacman and yay..."
        pacman_yay
    else
        echo "pm not found"
    fi
}

main