@echo off
REM Better Discord - Automatischer Installer (Deutsch)
echo.
echo ====================================
echo Better Discord - Installer
echo ====================================
echo.

setlocal enabledelayedexpansion

REM BetterDiscord Plugins Ordner finden
if exist "%APPDATA%\BetterDiscord\plugins" (
    echo Installiere in: %APPDATA%\BetterDiscord\plugins
    copy "BetterDiscord.plugin.js" "%APPDATA%\BetterDiscord\plugins\"
    copy "manifest.json" "%APPDATA%\BetterDiscord\plugins\"
    
    echo.
    echo ✓ Installation erfolgreich! 
    echo.
    echo Nächste Schritte:
    echo 1. Discord neustarten
    echo 2. Benutzereinstellungen öffnen
    echo 3. BetterDiscord -> Plugins
    echo 4. "Better Discord" aktivieren
    echo.
    pause
) else (
    echo.
    echo ✗ Fehler: BetterDiscord nicht installiert
    echo Bitte zuerst BetterDiscord installieren: https://betterdiscord.app/
    echo.
    pause
)
