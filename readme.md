This README is designed to help you document your project or share it on GitHub. It covers the specific setup for your **Eww** (ElKowars wacky widgets) clock, including the scripts and dependencies required for your system.

---

# Custom Eww Desktop Widget

A personalized, modern desktop widget built with **Eww** for Linux. It features a digital clock, weather integration, system resource monitoring, and dynamic storage tracking.

## 🚀 Features

* **Profile Section:** Circular avatar with dynamic username and system uptime.
* **12-Hour Clock:** Large digital display with seconds and AM/PM indicators.
* **Weather:** Real-time weather and temperature via `wttr.in`.
* **System Stats:** Live CPU and RAM usage tracking.
* **Dynamic Storage:** Automatically lists local partitions with available GB and percentage.
* **Responsive Styling:** Built with SCSS for a clean, semi-transparent aesthetic.

---

## 🛠️ Prerequisites

Before installation, ensure you have the following dependencies installed on your system (tested on Manjaro/Arch):

```bash
# Install Eww
sudo pacman -S eww

# Install Nerd Fonts (Essential for icons)
sudo pacman -S ttf-jetbrains-mono-nerd

# Ensure curl is installed (for weather)
sudo pacman -S curl

```

---

## 📂 Installation & Setup

### 1. Clone or Create the Directory

```bash
mkdir -p ~/.config/eww
cd ~/.config/eww

```

### 2. Add your Profile Picture

Place a square image named `profile.png` inside `~/.config/eww/`.

### 3. Setup Scripts

Create a `scripts` folder and the storage helper:

```bash
mkdir scripts
touch scripts/get_storage
chmod +x scripts/get_storage

```

*Paste the `get_storage` bash script logic into that file.*

### 4. Apply Configuration

Copy the provided `eww.yuck` and `eww.scss` files into `~/.config/eww/`.

---

## 🖥️ Usage

### Manual Launch

To start the widget manually, run:

```bash
eww daemon
eww open my-clock

```

### Autostart (KDE/GNOME)

To make the widget appear on login, create a startup script `~/.config/eww/startup.sh`:

```bash
#!/bin/bash
eww kill
eww daemon
sleep 1
eww open my-clock

```

Then, add this script to your Desktop Environment's **Autostart** settings.

---

## ⚙️ Configuration Details

| File | Purpose |
| --- | --- |
| `eww.yuck` | Defines the structure, widgets, and poll intervals. |
| `eww.scss` | Handles all styling, colors, and layout spacing. |
| `scripts/` | Contains bash scripts for fetching weather and disk data. |

### Key Commands

* `eww reload`: Apply changes made to `.yuck` or `.scss` files instantly.
* `eww kill`: Close all open Eww windows and stop the background process.
* `eww logs`: Debug issues if the widget fails to open.

---

## 🤝 Contributing

Feel free to fork this project and add your own modules (Battery, Network, Spotify, etc.).

**Would you like me to generate the specific "get_weather" script code for you to include in this README as well?**
