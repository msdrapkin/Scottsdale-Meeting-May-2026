# Educational Overview: How it Works

This project was built to demonstrate how open-source geospatial tools can be combined into a single, keyless web application. Here is the logic behind the "Magic."

## 1. Finding Locations (Geocoding)
When you type "Phoenix, AZ," the app doesn't know where that is. We use the **Nominatim API** (from OpenStreetMap). It's a free service that converts text addresses into Latitude and Longitude coordinates.
- **Why?** It's free, requires no API key, and is community-driven.

## 2. Calculating the Route
Once we have two coordinates, we send them to the **OSRM (Open Source Routing Machine)**.
- **Request**: `v1/driving/start_lon,start_lat;end_lon,end_lat`
- **Response**: A massive list of coordinates (a "Polyline") that represents the exact path of the roads.
- **Display**: We use **Leaflet.js** to draw this line on the map.

## 3. The "Along the Route" Math
The hardest part is figuring out which repeaters are "near" the road.
- **The Database**: We pull a JSON file containing ~30,000 repeaters across North America.
- **The Filter**: For every repeater in the database, we check its distance against the route.
- **Haversine Formula**: To calculate the distance between two points on a sphere (Earth), we use the Haversine formula:
  ```javascript
  const a = Math.sin(dLat/2) * Math.sin(dLat/2) +
            Math.cos(lat1) * Math.cos(lat2) * 
            Math.sin(dLon/2) * Math.sin(dLon/2);
  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
  const distance = R * c;
  ```
- **Optimization**: Checking 30,000 repeaters against 5,000 route points is slow ($30k \times 5k = 150$ million checks!). We optimize this by only checking every 5th point on the route, which keeps the app snappy on mobile phones.

## 4. Exporting to CHIRP
CHIRP requires a very specific CSV format.
- We map the ARD data (Callsign, Frequency, Tone) into the CSV columns CHIRP expects (`Location, Name, Frequency, Duplex, Offset, Tone`).
- We use a **Blob** (Binary Large Object) in JavaScript to generate the file locally in your browser memory so you don't have to upload your data to any server.

---
*This tool was designed to be "Tactical"—meaning it is lightweight, fast, and uses zero trackers or paid services.*
