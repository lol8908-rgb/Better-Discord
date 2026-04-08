# Better Discord - Projekt Setup ✅

## Projektstruktur nach Setup

```
Better-Discord/
├── 📄 BetterDiscord.plugin.js      # Hauptplugin (alleinstehendes JavaScript)
├── 📄 manifest.json                # Plugin Metadaten
├── 📄 package.json                 # NPM Konfiguration
├── 📄 tsconfig.json                # TypeScript (optional für Entwicklung)
│
├── 📁 scripts/                     # Build & Release Scripte
│   ├── build.js                    # Erstellt DE/EN Versionen
│   ├── create-releases.js          # Erzeugt Installer & ZIPs
│   ├── installer-templates.js      # NSIS Installer Templates
│   └── build-all.sh                # Master Build Script
│
├── 📁 releases/                    # Ausgabeordner (erstellt nach build)
│   ├── 📦 BetterDiscord-1.0.0-DE.zip
│   ├── 📦 BetterDiscord-1.0.0-EN.zip
│   ├── 🔧 install-DE.bat
│   ├── 🔧 install-EN.bat
│   ├── 🔧 install-DE.sh
│   ├── 🔧 install-EN.sh
│   ├── 📖 README-DE.md
│   └── 📖 README-EN.md
│
├── 📁 dist/                        # Kompilierte Ausgabe (optional)
│   ├── BetterDiscord-DE.plugin.js
│   ├── BetterDiscord-EN.plugin.js
│   └── manifest.json
│
├── 📄 README.md                    # Projekt-Dokumentation
├── 📄 PUBLISHING.md                # Veröffentlichungs-Guide
├── 📄 INSTALLATION.md              # Installations-Guide
├── 📄 BUILD.md                     # Dieses Dokument
├── 📄 build.sh                     # Linux/Mac Build Script
├── 📄 build.bat                    # Windows Build Script
└── 📄 .gitignore                   # Git Konfiguration
```

---

## 🔄 Build-Prozess

### Schritt 1: Dependencies installieren
```bash
npm install
```

### Schritt 2: Build ausführen
#### Option A: Windows (.bat)
```cmd
build.bat
```

#### Option B: Linux/Mac (.sh)
```bash
chmod +x build.sh
./build.sh
```

#### Option C: Manuell mit npm
```bash
npm run build:all
```

### Schritt 3: Output überprüfen
Alle Dateien landen in `./releases/`:
- ✅ ZIP Archive (DE/EN)
- ✅ Installationsskripte (.bat, .sh)
- ✅ README Dateien
- ✅ Plugin-Dateien

---

## 📋 Was macht jedes Script?

| Script | Funktion |
|--------|----------|
| `build.js` | Erstellt DE/EN Varianten des Plugins |
| `create-releases.js` | Generiert Installer-Skripte und ZIP Archive |
| `installer-templates.js` | 💾 Speichert NSIS Installer Templates |
| `build-all.sh` | 🐧 Master Build für Linux/Mac |
| `build.bat` | 🪟 Master Build für Windows |

---

## 🎯 Entwicklungs-Workflow

### 1. Plugin ändern
Bearbeite `BetterDiscord.plugin.js` direkt

### 2. Version erhöhen
Ändere `"version"` in `package.json`:
```json
{
  "version": "1.0.1"  // 1.0.0 → 1.0.1
}
```

### 3. Build ausführen
```bash
npm run build:all
```

### 4. Testen
- Teste die Dateien lokal
- Verifiziere Installer funktionieren

### 5. Veröffentlichen
```bash
git add .
git commit -m "Release v1.0.1"
git push
```
Dann neue Release auf GitHub erstellen + Dateien hochladen

---

## 🚀 Veröffentlichung auf GitHub

### Automatisierte GitHub Actions (Optional)
Du kannst auch GitHub Actions verwenden um automatisch zu bauen:

```yaml
# .github/workflows/build.yml
name: Build BetterDiscord

on:
  push:
    tags: 'v*'

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: '18'
      - run: npm install
      - run: npm run build:all
      - uses: actions/upload-artifact@v3
        with:
          name: releases
          path: releases/
```

### Manuelle Veröffentlichung
1. Gehe zu: https://github.com/lol8908-rgb/Better-Discord/releases
2. Klicke "Create a new release"
3. Tag: `v1.0.1`
4. Title: `Better Discord v1.0.1`
5. Upload Dateien aus `./releases/`
6. Publish!

---

## 📊 Versionierung

Folge **Semantic Versioning**:
- **Major** (1.x.0): Große Features/Breaking Changes
- **Minor** (1.0.x): Neue Features
- **Patch** (1.0.0): Bug Fixes

Beispiel:
- 1.0.0 → Initial Release
- 1.1.0 → Neue Features
- 1.1.1 → Bug Fixes
- 2.0.0 → Große Überarbeitung

---

## 🎨 Anpassungen

### Sprachen hinzufügen
1. Öffne `scripts/build.js`
2. Neue Sprach-Variante hinzufügen:
```javascript
const pluginFR = pluginContent
  .replace('Better Discord', 'Meilleur Discord')
  // ... weitere Replacements
```
3. Neue ZIP-Datei generieren
4. Neues Installer-Script erstellen

### Eigenes Icon/Logo
1. Speichere Icon als `installer/icon.ico`
2. NSIS Script aktualisiert automatisch
3. Neu bauen: `npm run build:all`

---

## ⚡ Tipps für Entwickler

**Schnell testen während Entwicklung:**
```bash
# Terminal 1: Watch Mode
npm run dev

# Terminal 2: Build ausführen
npm run build:all

# Während du den Code änderst, aktualisiert sich alles automatisch
```

**Nur eine Sprache testen:**
```bash
# Editiere scripts/create-releases.js und kommentiere eine Sprache aus
```

**Größe minimieren:**
```bash
# Mit minification (für Production):
npm install -D terser
# Dann in build.js verwenden
```

---

## 📦 Release Checklist

Vor der Veröffentlichung:

- [ ] Version in `package.json` erhöht
- [ ] `npm run build:all` ohne Fehler ausgeführt
- [ ] Alle Dateien in `./releases/` vorhanden
- [ ] Installer lokal getestet (DE/EN)
- [ ] ZIP Archive entpackbar
- [ ] README Dateien korrekt
- [ ] Git gepusht
- [ ] GitHub Release erstellt
- [ ] Dateien hochgeladen

---

## 🔧 Troubleshooting

### Build schlägt fehl
```bash
# 1. Dependencies aktualisieren
npm install

# 2. Cache löschen
rm -rf node_modules package-lock.json
npm install

# 3. Erneut versuchen
npm run build:all
```

### ZIP Fehler
```bash
# archiver installieren
npm install archiver
```

### Permissions Fehler (Linux/Mac)
```bash
# Scripts ausführbar machen
chmod +x build.sh
chmod +x scripts/*.sh
```

---

## 📞 Fragen?

Siehe auch:
- [INSTALLATION.md](./INSTALLATION.md) - Für Benutzer
- [PUBLISHING.md](./PUBLISHING.md) - Für Veröffentlichung
- [README.md](./README.md) - Hauptdokumentation

---

**Happy Building! 🚀**
