#!/bin/bash

# Better Discord - Complete Build & Release Script

echo "🚀 Better Discord Build System v1.0"
echo "===================================="
echo ""

# Farben für Output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Step 1: Dependencies installieren (optional)
if [ "$1" == "--install-deps" ]; then
    echo -e "${BLUE}📦 Installiere Dependencies...${NC}"
    npm install
    echo ""
fi

# Step 2: Build starten
echo -e "${BLUE}🔨 Kompiliere Build...${NC}"
npm run build:all

# Step 3: Erfolg
echo ""
echo -e "${GREEN}✅ BUILD ERFOLGREICH!${NC}"
echo ""
echo -e "${YELLOW}Ausgabedateien:${NC}"
echo "📁 ./releases/"
echo "  ├── BetterDiscord-1.0.0-DE.zip"
echo "  ├── BetterDiscord-1.0.0-EN.zip"
echo "  ├── install-DE.bat / install-EN.bat"
echo "  ├── install-DE.sh / install-EN.sh"
echo "  ├── README-DE.md / README-EN.md"
echo ""

echo -e "${YELLOW}Nächste Schritte:${NC}"
echo "1️⃣  Dateien lokal testen"
echo "2️⃣  Zu GitHub hochladen (Releases)"
echo "3️⃣  Teilen & verteilen!"
echo ""

# Optional: Ordner öffnen
if [ "$2" == "-o" ] || [ "$2" == "--open" ]; then
    echo -e "${BLUE}📂 Öffne releases Ordner...${NC}"
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        xdg-open ./releases
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        open ./releases
    fi
fi

echo -e "${GREEN}🎉 Bereit zum Veröffentlichen!${NC}"
