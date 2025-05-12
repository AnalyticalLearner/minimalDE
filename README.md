# minimalDE

**minimalDE** is a curated collection of scripts, dotfiles, aliases, and shortcuts designed to streamline and simplify your desktop environment—especially for those who prefer to work in the terminal. It's a minimalistic approach to customizing and controlling your Linux workspace without relying on heavy desktop environments or bloated UI layers.

---

## 🚀 Purpose

This project is for:

- Terminal-first Linux users
- Tinkerers who like to build their own desktop experience
- Minimalists seeking speed, clarity, and simplicity
- Developers, sysadmins, and keyboard-centric users

---

## 🧰 What's Inside

- **`scripts/`**: Useful Bash scripts for automation, window control, session management, and more.
- **`dotfiles/`**: Configs for tmux- and other terminal tools.
- **`aliases/`**: Time-saving command aliases that reduce keystrokes and improve efficiency.

---
Thanks for sharing your **MCP** (Master Control Program) script—this is a standout feature of your `minimalDE` project. Here's a new section you can add to your `README.md` to document and highlight the script effectively.

---

## 🧠 Master Control Program (MCP)

One of the core features of **minimalDE** is the `MCP`—a personalized terminal menu system inspired by retro computing aesthetics. This Bash script serves as a central command hub for nearly everything I do on my system.

### 📋 Features

- 🖥️ **Applications Menu**: Launch web, email, music, and news clients; create QR codes; edit RSS feeds.
- 🌐 **Servers Menu**: Quickly SSH into predefined servers.
- 📥 **Get Stuff Menu**: Download media, pillage websites, run dry-runs with `wget`, or fetch entire YouTube playlists.
- 🛠️ **System Admin Menu**: Manage updates, edit cronjobs, monitor resources, clear temp files, and install essential packages.
- 🧪 **Hidden Menu**: For secret or sensitive actions not meant to be readily visible.

This script is designed for terminal-first users who want a **quick-access, always-on-hand menu** without mouse interaction or GUI dependencies.

### ▶️ Example

To run MCP:

```bash
chmod +x ~/minimalDE/scripts/mcp.sh
~/minimalDE/scripts/mcp.sh
```

You can also add an alias like:

```bash
alias mcp='bash ~/minimalDE/scripts/mcp.sh'
```

### ⚙️ Customization

Variables like `$SERVER_1`, `$ZIP_CODE`, `$YOUTUBE_FOLDER`, etc., are sources in mcp_config . To tailor the MCP to your environment:

- Edit the script to replace placeholder variables with your actual data or point it to the included config file.
- You can extend the menus with your own categories, commands, or even themed ASCII titles.

> 📝 The MCP menu script is meant to **grow with your workflow**. It started as a simple launcher, and has evolved into a full-blown command center.


---

Got it! Here's a documentation section for the `README.md` of your **minimalDE** project that documents the **`DailyDriver` TMUX script**. This is ready to drop directly into the README under a relevant heading like `## Included Scripts` or `## 🛠️ Tools`.

---

## 🧭 DailyDriver (TMUX Session Launcher)

The `DailyDriver` script launches a persistent, multi-window [TMUX](https://github.com/tmux/tmux) session that serves as a terminal-based workspace hub. It’s designed for daily use, ensuring you always start with a consistent environment.

### 📝 What It Does

- Checks if a TMUX session named `DailyDriver` is already running.
- If not, it creates one with pre-named windows:
  - `Desktop`
  - `Desktop 2`
  - `Development`
  - `Media`
  - `Servers`
- Automatically attaches to the session so you can jump right in.

### 🚀 Usage

```bash
chmod +x scripts/tmuxsesh.sh
./scripts/tmuxsesh.sh
```

You can also create a convenient alias:

```bash
alias daily="~/minimalDE/scripts/tmuxsesh.sh"
```

### ⚙️ Customization

Feel free to modify the script to:
- Add new windows or rename existing ones
- Pre-load commands in each TMUX pane using `tmux send-keys`
- Change the session name by editing the `SESSION="DailyDriver"` line

### 💡 Pro Tip

This pairs well with the [MCP Menu](#-master-control-program-mcp) if you launch `mcp.sh` in one of the TMUX windows!

---

Here's a complete `README.md` section for your **Backup Script**, formatted consistently with the rest of your `minimalDE` project documentation.

---

## 💾 Backup Script (USB Sync)

This script uses `rsync` to quickly back up your most essential configuration files, dotfiles, and directories to an external USB drive. It's a terminal-friendly, no-nonsense tool for protecting your personal Linux setup.

### 🧰 What It Does

- Syncs personal config files like `.bashrc`, `.bash_aliases`, `.muttrc`, `newsboat` configs, `Zotero`, `AppImages`, and more.
- Backs up entire folders (`~/Desktop`, `~/bin`, `~/.ssh`, `~/.thunderbird`).
- Creates backups of:
  - `crontab` jobs
  - installed package list via `dpkg`
  - system files like `/etc/hosts` and `/etc/fstab`

### 📂 Backup Destination

Backups are stored on an external USB drive mounted at:

```
/media/<USERNAME>/backups/
```

You must set the `USER_NAME` variable in the script before running:

```bash
USER_NAME=your_linux_username
```

---

### ▶️ Usage

1. Plug in your USB drive and ensure it is mounted at `/media/<USERNAME>/`.
2. Make the script executable:

```bash
chmod +x scripts/backups.sh
```

3. Run it:

```bash
./scripts/backups.sh
```

---

### 📝 What Gets Backed Up

| Type            | Example Paths                                 |
|-----------------|------------------------------------------------|
| Dotfiles        | `~/.bashrc`, `~/.bash_aliases`, `~/.muttrc`   |
| Terminal Apps   | `~/.config/newsboat`, `~/.newsboat/`          |
| Email & Browser | `~/.thunderbird`, `~/lynx_bookmarks.html`     |
| AppImages       | `~/app.images/*`                              |
| Bible Software  | `~/.sword/`                                   |
| Custom Scripts  | `~/bin/`                                      |
| Bibliography    | `~/Zotero/`                                   |
| System Configs  | `/etc/hosts`, `/etc/fstab`                    |
| Cron Jobs       | `crontab -l` → `contab.txt`                   |
| Installed Apps  | `dpkg --get-selections` → `apps.installed.txt`|

---

### ⚙️ Notes

- You can comment/uncomment `rsync` lines depending on what you want to include.
- Useful for quick rehydration of your system after a wipe or migration.

---


## 📦 Installation

Clone the repo:

```
bash
git clone https://github.com/yourusername/minimalDE.git
cd minimalDE
```
