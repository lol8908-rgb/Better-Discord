# INSTALLATION GUIDE 📥

## 🚀 Schnellstart

### Windows

#### Option 1: Automatischer Installer (Empfohlen)
1. Lade `install-DE.bat` oder `install-EN.bat` herunter
2. Doppelklick drauf
3. Discord neustarten
4. Fertig! ✓

#### Option 2: Manuell
1. Lade `BetterDiscord.plugin.js` herunter
2. Speichere es in: `%APPDATA%\BetterDiscord\plugins\`
   - Drücke `Win+R` → gib `%APPDATA%` ein → Enter
   - Navigiere zu `BetterDiscord/plugins`
3. Discord neustarten
4. Einstellungen → BetterDiscord → Plugins
5. "Better Discord" aktivieren

---

### Linux

#### Automatischer Installer (Empfohlen)
```bash
chmod +x install-DE.sh  # oder install-EN.sh
./install-DE.sh
```

#### Manuell
```bash
mkdir -p ~/.config/BetterDiscord/plugins
cp BetterDiscord.plugin.js ~/.config/BetterDiscord/plugins/
cp manifest.json ~/.config/BetterDiscord/plugins/
```
Discord neustarten → Settings → BetterDiscord → Enable Plugin

---

### macOS

#### Automatischer Installer
```bash
chmod +x install-DE.sh  # oder install-EN.sh
./install-DE.sh
```

#### Manuell
```bash
mkdir -p ~/Library/Application\ Support/BetterDiscord/plugins
cp BetterDiscord.plugin.js ~/Library/Application\ Support/BetterDiscord/plugins/
cp manifest.json ~/Library/Application\ Support/BetterDiscord/plugins/
```
Discord neustarten → Settings → BetterDiscord → Enable Plugin

---

## ✅ Überprüfung

Nach der Installation sollten folgende Dinge wahr sein:

- [ ] Discord läuft
- [ ] BetterDiscord ist installiert
- [ ] Plugin-Datei liegt in korrektem Ordner
- [ ] Plugin ist in den Einstellungen aktiviert
- [ ] Discord wurde neustarten

---

## 🐛 Häufige Probleme

### "Plugin wird nicht angezeigt"
**Lösung:**
1. Ziehe die `.zip` vollständig aus
2. Überprüfe den Ordner-Pfad
3. Discord neu starten
4. Falls noch nicht funktioniert: Discord komplett schließen und neustarten

### "BetterDiscord nicht gefunden"
**Lösung:**
BetterDiscord selbst installieren: https://betterdiscord.app/

### "Hintergrundbild wird nicht angezeigt"
**Lösung:**
- Bild-URL überprüfen (muss öffentlich zugänglich sein)
- Andere Bildquelle versuchen
- Deckkraft erhöhen
- Discord neu starten

### "Plugin lädt nicht / Fehler"
**Lösung:**
1. Discord neustarten
2. Plugin deaktivieren/aktivieren
3. Plugin-Datei überprüfen (vollständig heruntergeladen?)
4. Andere Plugin-Version (DE/EN) versuchen

---

## 📞 Support

- **Issues**: https://github.com/lol8908-rgb/Better-Discord/issues
- **Diskussionen**: https://github.com/lol8908-rgb/Better-Discord/discussions

---

**Viel Spaß mit Better Discord! 🎨**
