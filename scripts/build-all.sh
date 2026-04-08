#!/bin/bash

# Better Discord - Build Script

echo "🚀 Better Discord Build System"
echo "================================"
echo ""

# TypeScript bauen
echo "📦 Kompiliere TypeScript..."
npm run dev &

# Warten bis Build fertig
sleep 2

# Build Script ausführen
echo ""
echo "📝 Erstelle Release-Pakete..."
node scripts/build.js

echo ""
echo "🎁 Erstelle Installer und Skripte..."
node scripts/create-releases.js

echo ""
echo "✅ Build abgeschlossen!"
echo ""
echo "Nächste Schritte:"
echo "1. Gehe zu ./releases/"
echo "2. Lade Datei hoch oder teile den Link"
echo ""
