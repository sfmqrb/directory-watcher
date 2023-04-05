#!/bin/bash
# Create $HOME/.local/bin if it doesn't exist
mkdir -p $HOME/.local/bin

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo "Add $HOME\/.local/bin to the \$PATH"
    exit 1
fi
# Copy the script to $HOME/.local/bin
cp poll_exec $HOME/.local/bin

# Check which shell the user is using and modify the appropriate configuration file
if [ "$SHELL" = "/bin/bash" ]; then
    echo "export PATH=\"\$PATH:$HOME/.local/bin\"" >> ~/.bashrc
    echo "Installation complete."
    echo "To use the script, run the following command:"
    echo "poll_exec <directory> <command>"
elif [ "$SHELL" = "/usr/bin/fish" ]; then
    echo "set -x PATH $HOME/.local/bin \$PATH" >> ~/.config/fish/config.fish
    echo "Installation complete."
    echo "To use the script, run the following command:"
    echo "poll_exec <directory> <command>"
elif [ "$SHELL" = "/usr/bin/zsh" ]; then
    echo "export PATH=\"\$PATH:$HOME/.local/bin\"" >> ~/.zshrc
    echo "Installation complete."
    echo "To use the script, run the following command:"
    echo "poll_exec <directory> <command>"
else
    echo "Unsupported shell: $SHELL"
fi

