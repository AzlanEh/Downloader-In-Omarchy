

A blazing-fast download manager for Arch Linux users, integrated into the Omarchy ecosystem. Easily download **big/small files** using `aria2c` or fetch **YouTube videos** via the terminal — all in one unified menu.

---
<img width="410" height="285" alt="screenshot-2025-08-15_00-35-19" src="https://github.com/user-attachments/assets/4f07d10a-03b3-4291-bc10-c51986e2a06c" />
<img width="646" height="499" alt="screenshot-2025-08-15_00-36-05" src="https://github.com/user-attachments/assets/7fa9df82-ac90-4907-9dc1-90ac4be24e54" />
<img width="654" height="502" alt="screenshot-2025-08-15_00-35-49" src="https://github.com/user-attachments/assets/da24e8cb-f836-484b-8334-9eae8bae2e74" />



## 🚀 Features

- **File Downloads**: High-speed downloads powered by `aria2c`.
- **YouTube Video Downloads**: Quickly save YouTube videos.
- **Integrated Menu**: Seamlessly works with the Omarchy menu system.
- **Keybinding Support**: Instant access with Hyprland keybindings.

---

## 📦 Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/Downloader-In-Omarchy.git
   cd Downloader-In-Omarchy
   ```

2. **Run the Installer**

   The installer script will copy the necessary files to your system.

   ```bash
   chmod +x install.sh
   ./install.sh
   ```

   This will:
   - Create the `~/.config/omarchy/bin` directory.
   - Copy all scripts from the `bin` folder to `~/.config/omarchy/bin`.

---

## ⌨️ Keybinding Setup (Hyprland)

The install script will automatically add the following keybinding to your `~/.config/hypr/bindings.conf`:

```bash
bind = SUPER SHIFT, D, exec, ~/.config/omarchy/bin/omarchy-download-menu
```

---

## 🖥️ Usage

To open the download menu, press:

```bash
SUPER + SHIFT + D
```

---

## 📂 Project Structure

```
.
├── bin/
│   ├── omarchy-download-file
│   ├── omarchy-download-menu
│   ├── omarchy-download-youtube-video
│   ├── omarchy-show-done
│   └── omarchy-show-logo
├── install.sh
└── README.md
```

---

## 📦 Dependencies

Make sure you have the following packages installed:

- `aria2`: For fast file downloads.
- `yt-dlp`: For YouTube video downloads.
- `fzf`: Required for the Omarchy menu system.
