# Implementation Plan: Route Repeater Finder (Final)

A premium, self-contained HTML application for ham radio operators to plan their trips using entirely open-source tools.

## 1. Core Objectives
- **Keyless Operation**: Eliminate the need for paid API keys (Google Maps/Mapbox).
- **Open Routing**: Use OSRM (Open Source Routing Machine) for path calculation.
- **Automatic Data**: Integrate ARD (Amateur Repeater Directory) for zero-upload discovery.
- **Export**: Generate a CHIRP-compatible CSV file for radio programming.
- **Design**: A "Radio Operator" themed, responsive, and high-end UI.

## 2. Technical Stack
- **Frontend**: HTML5, Vanilla JavaScript (ES6+).
- **Mapping**: Leaflet.js with CartoDB Dark Matter tiles.
- **Geocoding**: Nominatim (OpenStreetMap) for location-to-coordinate conversion.
- **Routing**: OSRM Project API.
- **Data Source**: Amateur Repeater Directory (ARD) GitHub repository (JSON).

## 3. UI/UX Design System
- **Colors**:
    - `bg`: #0a0c10 - Deep Tactical Navy
    - `accent`: #00ff88 - Radio Green (Glow)
    - `surface`: rgba(25, 30, 40, 0.85) - Blurred Glass Effect
- **Layout**: 
    - 400px fixed sidebar for controls.
    - Full-screen interactive map.
    - Floating, scrollable results panel in the top-right.

## 4. Key Features
### A. Route Planner
- Search via Nominatim (handles cities, zip codes, and addresses).
- Variable search buffer (5, 10, or 25 miles) from the route centerline.

### B. Repeater Intelligence
- **Auto-Fetch**: Asynchronously pulls the master ARD JSON database (~1MB).
- **Filtering Algorithm**: 
    - Optimized coordinate sampling (checks every 5th point of the route polyline).
    - Haversine distance calculation for high precision.
- **Unified Schema**: Normalizes diverse ARD records into a standard `{Callsign, Frequency, Tone}` object.

### C. CHIRP Export
- Generates a CSV with standard columns: Location, Name, Frequency, Duplex, Offset, Tone.

## 5. Deployment
- Single `index.html` file.
- **Requirement**: Must be served via `http://localhost` (e.g., using `http-server` or `Live Server`) to allow the browser to fetch the ARD database from GitHub.
