```
 _____ _                                          __ _           
/  __ \ |                                        / _(_)          
| /  \/ | __ _ _ __   __ _ ______ ___ ___  _ __ | |_ _  __ _ ___ 
| |   | |/ _` | '_ \ / _` |______/ __/ _ \| '_ \|  _| |/ _` / __|
| \__/\ | (_| | | | | (_| |     | (_| (_) | | | | | | | (_| \__ \
 \____/_|\__,_|_| |_|\__, |      \___\___/|_| |_|_| |_|\__, |___/
                      __/ |                             __/ |    
                     |___/                             |___/     
```
# clang-configs
## 🧩 Overview

`clang-configs` is a collection of `.clang-format` files for C, Python, and later Java (secret sauce 😎).  
Supports multiple styles:

- **C:** K&R, Google, Betty  
- **Python:** Google, PEP8-ish  
- **Java:** Google (coming soon)

Use it to instantly format any project, switch styles on the fly, and maintain **consistent, professional code**.

---

## ⚡ Installation

### Requirements
- **Zsh or Bash**: for the `use_clang()` helper function  
- **clang-format**: to actually format your code  

### Installing clang-format
- **Ubuntu/Debian:** `sudo apt install clang-format -y`  
- **Fedora:** `sudo dnf install clang-tools-extra -y`  
- **macOS:** `brew install clang-format`  
- **Windows:** Install LLVM from [https://llvm.org/](https://llvm.org/) and add `clang-format.exe` to PATH  

### Installing clang-configs
```bash
git clone https://github.com/AdelMej/clang-config
cd clang-configs
./install.sh
# then source the appropriate rc file for your shell
source ~/.zshrc   # if using Zsh
source ~/.bashrc  # if using Bash
```

## 🎨 Available Styles

### 💻 C
- K&R
- Google
- Betty

### 🐍 Python
- Google
- PEP8-ish

### ☕ Java (coming soon)
- Google

## 📌 Notes
C K&R & Google use spaces for indentation

C Betty uses tabs to comply with the Holberton linter

Python styles use spaces only (Google or PEP8-ish)

## 🚀 Future Plans
Add Java styles (secret sauce)

Expand to other languages

Keep adding styles for flexible, multi-language formatting domination
