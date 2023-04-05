#!/bin/bash

# Create $HOME/.local/bin if it doesn't exist
mkdir -p $HOME/.local/bin

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo "Adding $HOME/.local/bin to the \$PATH"
    export PATH=$PATH:$HOME/.local/bin
    if [ "$SHELL" = "/bin/bash" ]; then
        echo "export PATH=\"\$PATH:$HOME/.local/bin\"" >> ~/.bashrc
        source ~/.bashrc
    elif [ "$SHELL" = "/usr/bin/fish" ]; then
        echo "set -x PATH $HOME/.local/bin \$PATH" >> ~/.config/fish/config.fish
        source ~/.config/fish/config.fish
    elif [ "$SHELL" = "/usr/bin/zsh" ]; then
        echo "export PATH=\"\$PATH:$HOME/.local/bin\"" >> ~/.zshrc
        source ~/.zshrc
    else
        echo "Unsupported shell: $SHELL"
        exit 1
    fi
fi

# Copy the script to $HOME/.local/bin
cp poll_exec $HOME/.local/bin

echo "Installation complete."
echo "To use the script, run the following command:"
echo "poll_exec <directory> <command>"
