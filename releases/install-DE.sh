#!/bin/bash
# Better Discord - Installationsskript (Deutsch)

echo ""
echo "===================================="
echo "Better Discord - Installer"
echo "===================================="
echo ""

PLUGIN_DIR="$HOME/.config/BetterDiscord/plugins"

if [ -d "$PLUGIN_DIR" ]; then
    echo "Installiere in: $PLUGIN_DIR"
    cp "BetterDiscord.plugin.js" "$PLUGIN_DIR/"
    cp "manifest.json" "$PLUGIN_DIR/"
    
    echo ""
    echo "✓ Installation erfolgreich!"
    echo ""
    echo "Nächste Schritte:"
    echo "1. Discord neustarten"
    echo "2. Benutzereinstellungen öffnen"
    echo "3. BetterDiscord -> Plugins"
    echo "4. 'Better Discord' aktivieren"
    echo ""
else
    echo ""
    echo "✗ Fehler: BetterDiscord nicht installiert"
    echo "Bitte zuerst installieren: https://betterdiscord.app/"
    echo ""
fi
