# Route Repeater Finder: User Guide

## 🚀 How to Run
To ensure all features like **Auto-Fetch** work correctly, choose the method that fits your system:

### Method A: One-Click (Recommended)
1.  **Windows**: Double-click `run_app.bat`.
2.  **Mac/Linux**: Run `bash run_app.sh` in your terminal.
*This starts a tiny local server (requires Python or Node) and opens the app automatically.*

### Method B: Zero-Setup (Offline/Serverless)
If you prefer not to run any scripts, you can simply **double-click `index.html`**.
- **Limitation**: The "Auto-Fetch" button will fail due to browser security restrictions on local files.
- **Solution**: Click the **Download Icon** next to the Auto-Fetch button to save the database manually, then use the **Upload CSV** button to load it.

## 📂 Programming your Radio (CHIRP)
1.  Review the list in the **Repeaters Found** panel on the right.
2.  Click **Generate CHIRP CSV**. A file named `chirp_route.csv` will download.
3.  Open [CHIRP](https://chirp.danplanet.com/projects/chirp/wiki/Home).
4.  Go to `File > Import`.
5.  Select the `chirp_route.csv` file.
6.  Upload the channels to your radio.

## 🛠️ Frequently Asked Questions
**Q: Why doesn't Auto-Fetch work?**
A: Browsers block "fetches" for security when you open a file directly (`file://`). Use **Method A** above to bypass this.

**Q: Can I use my own list?**
A: Yes! Use the **Upload CSV** button to load any RepeaterBook export.

---
> [!TIP]
> If you have a handheld radio (HT), use a **5-mile buffer**. If you have a high-gain mobile antenna on your vehicle, a **25-mile buffer** will help you find long-range repeaters.
