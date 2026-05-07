# 📡 Route Repeater Finder
### Tactical Trip Planner for Amateur Radio Operators

> [!IMPORTANT]
> **Status: Early Development (Beta)**
> This project is currently a work in progress and is in its early stages of development. While the core functionality is stable, you may encounter minor bugs or edge cases. We are actively refining the features to make this the ultimate tactical tool for ham radio operators.
>
> **🌱 Join the Mission!**
> This is an educational and community-driven project. We encourage other hams and developers to fork, contribute, and improve this tool. Whether it's adding new data filters, improving the UI, or optimizing the routing logic, your contributions are welcome! Let’s build something great for the ham community together.

A high-performance, keyless, and serverless web application designed to help ham radio operators identify available repeaters along a specific driving route. Optimized for portability, visual clarity, and offline-readiness.

![Mockup](https://raw.githubusercontent.com/msdrapkin/Scottsdale-Meeting-May-2026/master/docs/assets/mockup.png)

## 🚀 Key Features
- **Keyless Mapping**: Uses Leaflet.js and OpenStreetMap (no API keys required).
- **Intelligent Routing**: Integrated OSRM (Open Source Routing Machine) for precise path calculation.
- **Auto-Fetch Intelligence**: Asynchronously pulls the latest Master Amateur Repeater Directory (ARD) database.
- **Dynamic Filtering**: Samples route geometry to find repeaters within a custom buffer zone (miles).
- **CHIRP Ready**: Export filtered results directly to a CSV format compatible with CHIRP radio programming software.
- **Multi-Platform Launchers**: Includes `.bat` and `.sh` scripts for one-click hosting on Windows, Mac, and Linux.

## 🛠️ Technology Stack
- **Frontend**: Vanilla JavaScript (ES6+), HTML5, CSS3.
- **Mapping**: Leaflet.js.
- **Routing/Geocoding**: OSRM API & Nominatim (OSM).
- **Data Engine**: Haversine formula for spherical distance calculations.

## 📥 Getting Started

### Method A: One-Click Launch (Recommended)
This method ensures all features (including Auto-Fetch) work correctly by bypassing browser security restrictions for local files.
- **Windows**: Double-click `run_app.bat`.
- **Mac/Linux**: Run `bash run_app.sh` in your terminal.

### Method B: Standalone HTML
Simply open `index.html` in any modern web browser.
*Note: Due to browser security, the "Auto-Fetch" button will require you to manually download and upload the database (instructions provided in-app).*

## 📖 Documentation
A built-in **Documentation Portal** is included in the project under `docs/index.html`. It covers:
- User Guide & Setup
- Technical Implementation Plan
- Educational Math Overview (Haversine & Sampling)
- Project Development Logs

## 🤝 Acknowledgments & Licenses
- **Data Source**: Amateur Repeater Directory (ARD) by [Nathan Breitsch](https://github.com/nathanbreitsch/ARD-RepeaterList).
- **Mapping**: [Leaflet.js](https://leafletjs.com/) (BSD 2-Clause License).
- **Icons**: [Lucide Icons](https://lucide.dev/) (ISC License).
- **License**: This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
*Created for the Scottsdale Amateur Radio Club Meeting - May 2026*
