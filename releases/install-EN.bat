@echo off
REM Better Discord - Automatic Installer (English)
echo.
echo ====================================
echo Better Discord - Installer
echo ====================================
echo.

setlocal enabledelayedexpansion

REM Find BetterDiscord Plugins folder
if exist "%APPDATA%\BetterDiscord\plugins" (
    echo Installing to: %APPDATA%\BetterDiscord\plugins
    copy "BetterDiscord.plugin.js" "%APPDATA%\BetterDiscord\plugins\"
    copy "manifest.json" "%APPDATA%\BetterDiscord\plugins\"
    
    echo.
    echo ✓ Installation successful!
    echo.
    echo Next steps:
    echo 1. Restart Discord
    echo 2. Open User Settings
    echo 3. BetterDiscord -> Plugins
    echo 4. Enable "Better Discord"
    echo.
    pause
) else (
    echo.
    echo ✗ Error: BetterDiscord not installed
    echo Please install BetterDiscord first: https://betterdiscord.app/
    echo.
    pause
)
