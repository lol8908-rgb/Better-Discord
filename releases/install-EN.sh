#!/bin/bash
# Better Discord - Installation Script (English)

echo ""
echo "===================================="
echo "Better Discord - Installer"
echo "===================================="
echo ""

PLUGIN_DIR="$HOME/.config/BetterDiscord/plugins"

if [ -d "$PLUGIN_DIR" ]; then
    echo "Installing to: $PLUGIN_DIR"
    cp "BetterDiscord.plugin.js" "$PLUGIN_DIR/"
    cp "manifest.json" "$PLUGIN_DIR/"
    
    echo ""
    echo "✓ Installation successful!"
    echo ""
    echo "Next steps:"
    echo "1. Restart Discord"
    echo "2. Open User Settings"
    echo "3. BetterDiscord -> Plugins"
    echo "4. Enable 'Better Discord'"
    echo ""
else
    echo ""
    echo "✗ Error: BetterDiscord not installed"
    echo "Please install first: https://betterdiscord.app/"
    echo ""
fi
