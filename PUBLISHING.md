# Better Discord - Build & Release Guide

## 📦 Projekt-Struktur

```
Better-Discord/
├── BetterDiscord.plugin.js          # Hauptplugin (JavaScript)
├── manifest.json                    # Plugin Metadaten
├── scripts/
│   ├── build.js                     # Erstellt DE/EN Versionen
│   ├── create-releases.js           # Erstellt Installer & ZIP
│   ├── installer-templates.js       # NSIS Templates
│   └── build-all.sh                 # Master Build Script
├── releases/                        # Ausgabe-Ordner
│   ├── BetterDiscord-1.0.0-DE.zip
│   ├── BetterDiscord-1.0.0-EN.zip
│   ├── install-DE.bat
│   ├── install-EN.bat
│   ├── install-DE.sh
│   ├── install-EN.sh
│   ├── README-DE.md
│   └── README-EN.md
└── src/                             # TypeScript Source (optional)
```

## 🔧 Build Commands

### Option 1: Kompletter Build
```bash
npm run build:all
```
Erstellt:
- ✓ Alle ZIP Archive (DE/EN)
- ✓ Installationsskripte (.bat, .sh)
- ✓ README Dateien
- ✓ manifest.json

### Option 2: Nur Plugin
```bash
npm run build
```

### Option 3: Nur Releases
```bash
node scripts/create-releases.js
```

## 📦 Versionierung

- **Version**: 1.0.0 (in package.json ändern für Updates)
- **Sprachen**: Deutsch (DE) & English (EN)
- **Formate**: ZIP Archive + Batch/Shell Installer

## 🚀 Veröffentlichung

### GitHub Releases
1. Gehe zu: https://github.com/lol8908-rgb/Better-Discord/releases
2. Klicke "Draft a new release"
3. Tag version: `v1.0.0`
4. Upload die Dateien aus `./releases/`:
   - `BetterDiscord-1.0.0-DE.zip`
   - `BetterDiscord-1.0.0-EN.zip`
   - `install-DE.bat` & `install-EN.bat`
   - `install-DE.sh` & `install-EN.sh`

### Release-Text Template

```markdown
# Better Discord v1.0.0 🎨

Ein vollständiges BetterDiscord Plugin mit Hintergrundbild-Verwaltung 
und UI-Verbesserungen.

## 🚀 Features

- 🖼️ Hintergrundbild-Verwaltung (GIF, PNG, JPG - auch animiert!)
- 🎨 UI-Verbesserungen (Animationen, Glassmorph, abgerundete Ecken)
- 🔤 Schriftanpassung (Größe & Art)
- 💾 Persistente Einstellungen

## 📥 Installation

### Deutsch 🇩🇪
- Windows: `install-DE.bat` ausführen
- Linux/Mac: `chmod +x install-DE.sh && ./install-DE.sh`
- ZIP: `BetterDiscord-1.0.0-DE.zip` entpacken

### English 🇬🇧
- Windows: Execute `install-EN.bat`
- Linux/Mac: `chmod +x install-EN.sh && ./install-EN.sh`
- ZIP: Extract `BetterDiscord-1.0.0-EN.zip`

## 📝 Changelog

### v1.0.0 (Initial Release)
- ✅ Plugin-System
- ✅ Hintergrundbild-Support
- ✅ UI-Customization
- ✅ DE/EN Versionen
- ✅ Installer für alle Plattformen
```

## 📊 Dateigrößen

Typische Größen:
- `BetterDiscord.plugin.js`: ~50 KB
- ZIP Archive: ~30 KB pro Version
- Installer Scripts: ~2 KB pro Version

## 🔄 Update-Prozess

1. Plugin-Code ändern (in `BetterDiscord.plugin.js`)
2. Version in `package.json` erhöhen (z.B. 1.0.0 → 1.1.0)
3. `npm run build:all` ausführen
4. Neue Release auf GitHub erstellen
5. Dateien hochladen

## 🐛 Fehlerbehandlung

### Installer funktioniert nicht?
- Windows: Admin-Rechte erforderlich → Rechtsklick → "Als Administrator"
- Linux: `chmod +x install-*.sh` ausführen
- macOS: Ähnlich wie Linux

### Plugin wird nach Installation nicht angezeigt?
- Discord sichern und schließen
- BetterDiscord Discord-Ordner überprüfen
- Plugin neu installieren

## 📞 Support

Bei Fragen oder Problemen:
- GitHub Issues: https://github.com/lol8908-rgb/Better-Discord/issues
- GitHub Discussions: https://github.com/lol8908-rgb/Better-Discord/discussions
- Email: (deine E-Mail)

---

**Happy Publishing! 🚀**
