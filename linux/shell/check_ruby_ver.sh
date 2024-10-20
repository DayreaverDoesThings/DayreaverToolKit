#!/bin/bash

check_ruby_installed() {
    if ! command -v ruby &> /dev/null; then
        echo "Ruby is not installed. Installing Ruby..."
        sudo pacman -S --noconfirm ruby
    else
        echo "Ruby version:"
        ruby -v
    fi
}

# Run the function
check_ruby_installed
