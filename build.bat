@echo off
REM Better Discord - Complete Build & Release Script for Windows

echo.
echo ====================================
echo Better Discord Build System v1.0
echo ====================================
echo.

REM Colors (Windows batch doesn't support colors natively, using echo instead)

if "%1"=="--install-deps" (
    echo [*] Installing Dependencies...
    call npm install
    echo.
)

echo [*] Compiling Build...
call npm run build:all

if %ERRORLEVEL% EQU 0 (
    echo.
    echo [SUCCESS] BUILD COMPLETED!
    echo.
    echo Output files in: releases\
    echo   - BetterDiscord-1.0.0-DE.zip
    echo   - BetterDiscord-1.0.0-EN.zip
    echo   - install-DE.bat / install-EN.bat
    echo   - install-DE.sh / install-EN.sh
    echo   - README-DE.md / README-EN.md
    echo.
    
    echo Next Steps:
    echo 1 - Test files locally
    echo 2 - Upload to GitHub (Releases)
    echo 3 - Share and distribute!
    echo.
    
    if "%2"=="-o" (
        echo [*] Opening releases folder...
        start "" releases
    )
    
    echo [DONE] Ready to publish!
    pause
) else (
    echo [ERROR] Build failed!
    pause
)
