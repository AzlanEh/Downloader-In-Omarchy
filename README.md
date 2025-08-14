# Downloader-In-Omarchy

A blazing-fast download manager for Arch Linux users, integrated into the Omarchy ecosystem. Easily download **big/small files** using `aria2c` or fetch **YouTube videos** via the terminal — all in one unified menu.

---

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