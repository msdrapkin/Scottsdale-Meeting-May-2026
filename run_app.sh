#!/bin/bash

# Route Repeater Finder - Mac/Linux Launcher

echo "========================================"
echo "  Route Repeater Finder: Launcher"
echo "========================================"

# Function to open browser
open_browser() {
    if command -v open &>/dev/null; then
        open http://localhost:8000
    elif command -v xdg-open &>/dev/null; then
        xdg-open http://localhost:8000
    fi
}

# Try Python 3
if command -v python3 &>/dev/null; then
    echo "[OK] Python 3 found. Starting server on http://localhost:8000"
    open_browser
    python3 -m http.server 8000
    exit
fi

# Try Python 2 (legacy)
if command -v python &>/dev/null; then
    echo "[OK] Python found. Starting server on http://localhost:8000"
    open_browser
    python -m SimpleHTTPServer 8000
    exit
fi

# Try npx
if command -v npx &>/dev/null; then
    echo "[OK] Node/npx found. Starting server on http://localhost:8000"
    open_browser
    npx -y http-server -p 8000
    exit
fi

echo ""
echo "[!] ERROR: No compatible server tools (Python or Node) found."
echo ""
echo "This application requires a local web server to use the 'Auto-Fetch' feature."
echo "You can still use the app by opening index.html directly and using 'Manual Upload'."
echo ""
echo "See docs/index.html for more information."
read -p "Press enter to exit..."
