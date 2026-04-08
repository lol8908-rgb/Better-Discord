# Better-Discord 🎮

**Ein ultimatives BetterDiscord Client-Plugin mit erweiterten UI-Verbesserungen, Hintergrundbild-Management und vollständig anpassbaren Einstellungen!**

<div align="center">

### 📥 JETZT HERUNTERLADEN / DOWNLOAD NOW

[![Deutsch 🇩🇪](https://img.shields.io/badge/Deutsch-DE-blue?style=for-the-badge&logo=download)](https://github.com/lol8908-rgb/Better-Discord/releases/download/v1.0.0/BetterDiscord-1.0.0-DE.zip)
[![English 🇬🇧](https://img.shields.io/badge/English-EN-blue?style=for-the-badge&logo=download)](https://github.com/lol8908-rgb/Better-Discord/releases/download/v1.0.0/BetterDiscord-1.0.0-EN.zip)

### 🪟 WINDOWS INSTALLER

[![Windows Installer DE](https://img.shields.io/badge/Setup_DE-EXE-00A4EF?style=flat-square&logo=windows)](https://github.com/lol8908-rgb/Better-Discord/releases/download/v1.0.0/install-DE.bat)
[![Windows Installer EN](https://img.shields.io/badge/Setup_EN-EXE-00A4EF?style=flat-square&logo=windows)](https://github.com/lol8908-rgb/Better-Discord/releases/download/v1.0.0/install-EN.bat)

### 🐧 LINUX / MAC INSTALLER

[![Linux Installer DE](https://img.shields.io/badge/Setup_DE-SH-FCC624?style=flat-square&logo=linux)](https://github.com/lol8908-rgb/Better-Discord/releases/download/v1.0.0/install-DE.sh)
[![Linux Installer EN](https://img.shields.io/badge/Setup_EN-SH-FCC624?style=flat-square&logo=linux)](https://github.com/lol8908-rgb/Better-Discord/releases/download/v1.0.0/install-EN.sh)

[📋 Alle Releases anzeigen](https://github.com/lol8908-rgb/Better-Discord/releases)

</div>

---

## Features ✨

- 🖼️ **Hintergrundbild-Verwaltung** - Läde Bilder und animierte GIFs als Discord-Hintergrund
- 🎨 **UI-Anpassungen** - Abgerundete Ecken, Animation, Glassmorph-Effekt
- 🔤 **Schriftanpassung** - Wähle Schriftart und -größe frei
- 🎯 **Kompakter Modus** - Reduziere Abstände für mehr Übersicht
- ⚙️ **Einstellungs-Panel** - Einfach zugänglich in den Discord Plugin-Einstellungen
- 💾 **Persistente Einstellungen** - Deine Anpassungen bleiben erhalten
- 🌍 **Mehrsprachig** - Deutsch & English

## 🚀 Schnellinstallation

### Windows
```cmd
install-DE.bat
```
oder
```cmd
install-EN.bat
```

### Linux / macOS
```bash
chmod +x install-DE.sh
./install-DE.sh
```

### Manuelle Installation
1. Lade eine ZIP-Datei herunter (DE oder EN)
2. Entpacke die Datei
3. Kopiere `BetterDiscord.plugin.js` nach:
   - **Windows**: `%APPDATA%\BetterDiscord\plugins\`
   - **Linux**: `~/.config/BetterDiscord/plugins/`
   - **macOS**: `~/Library/Application Support/BetterDiscord/plugins/`
4. Discord neustarten
5. Einstellungen → BetterDiscord → Plugins → "Better Discord" aktivieren

**Wichtig:** BetterDiscord muss installiert sein! → https://betterdiscord.app/

## Verwendung 🚀

1. **Plugin aktivieren**:
   - Benutzereinstellungen → Plugins
   - "Better Discord" aktivieren

2. **Einstellungen öffnen**:
   - Klicke auf das Settings-Symbol neben dem Plugin
   - Oder nutze Keyboard Shortcut (falls aktiviert)

3. **Hintergrundbild hinzufügen**:
   - URL eingeben: `https://example.com/image.jpg`
   - Oder Datei hochladen (JPG, PNG, GIF)
   - Deckkraft einstellen
   - **Speichern** klicken

## Einstellungsoptionen ⚙️

### 🖼️ Hintergrund
- **Hintergrundbild URL/Datei** - Beliebige Bilder und animierte GIFs
- **Deckkraft** - Von 0% (transparent) bis 100% (opak)
- **Hintergrundfarbe** - Fallback-Farbe wenn kein Bild vorhanden

### ✨ UI Verbesserungen
- **Abgerundete Ecken** - Moderne, sanfte Ecken
- **Animationen** - Sanfte Übergänge
- **Glassmorph Effekt** - Moderner Glaseffekt mit Blur
- **Kompakter Modus** - Weniger Abstände zwischen Elementen

### 🔤 Schriftart
- **Schriftart wählen** - Whitney, Arial, Segoe UI, Roboto, Verdana
- **Schriftgröße** - Von 12px bis 20px

## Beispiel Hintergrundbilder 🌄

Probiere diese animierten GIFs als Hintergrund:
- Discord-themed GIFs von Giphy
- Particle animations
- Gradient animations
- Gaming aesthetics

## Troubleshooting 🔧

**Plugin wird nicht angezeigt?**
- Stelle sicher, dass BetterDiscord installiert ist
- Datei in korrektem Ordner: `~/.config/BetterDiscord/plugins/`
- Discord neustarten

**Hintergrundbild wird nicht angezeigt?**
- Checke die Bild-URL (muss öffentlich zugänglich sein)
- Versuche es mit einer anderen Datei
- Deckkraft erhöhen

**Einstellungen werden nicht gespeichert?**
- Plugin muss aktiviert sein
- BetterDiscord muss richtig installiert sein

## Entwicklung 🛠️

### Struktur:
```
Better-Discord/
├── BetterDiscord.plugin.js    # Hauptdatei (alle Code-Logik)
├── manifest.json              # Plugin-Metadaten
└── README.md                  # Diese Datei
```

### Für Entwickler:
```javascript
// Hauptklasse BetterDiscord importieren
// Einstellungen werden lokal gespeichert via BdApi.saveData()
// CSS wird dynamisch injiziert und aktualisiert
```

## Lizenz 📄

MIT

## ToDo / Geplante Features 🚀

- [ ] Eigene Theme Presets
- [ ] Discord Server Spezifische Hintergründe
- [ ] Mehr Animations-Optionen
- [ ] Custom CSS Editor
- [ ] Plugin-Profile für verschiedene Ästhetiken
- [ ] Soundpacks Integration

## Contribute 🤝

Hast du eine Idee oder einen Fehler gefunden? 
- Issues: https://github.com/lol8908-rgb/Better-Discord/issues
- PRs: https://github.com/lol8908-rgb/Better-Discord/pulls