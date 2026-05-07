@echo off
title Route Repeater Finder - Local Server
echo ========================================
echo   Route Repeater Finder: Launcher
echo ========================================
echo.

:: Check for Python
where python >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo [OK] Python found. 
    echo Starting server at http://localhost:8000
    start http://localhost:8000
    python -m http.server 8000
    exit
)

:: Check for Node/npx
where npx >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo [OK] Node/npx found.
    echo Starting server at http://localhost:8000
    start http://localhost:8000
    npx -y http-server -p 8000
    exit
)

echo.
echo [!] ERROR: No compatible server tools found.
echo.
echo This application requires a local web server to use the "Auto-Fetch" feature.
echo You can still use the app by opening index.html directly and using "Manual Upload".
echo.
echo See docs/index.html for more information.
pause
