#!/bin/bash

# Function to check if Ruby is installed
check_ruby_installed() {
    if ! command -v ruby &> /dev/null; then
        echo "Ruby is not installed. Installing Ruby..."
        # Assuming the system is Arch-based (since you mentioned `pacman` earlier)
        sudo pacman -S --noconfirm ruby
    else
        # Output Ruby version if installed
        echo "Ruby version:"
        ruby -v
    fi
}

# Run the function
check_ruby_installed
