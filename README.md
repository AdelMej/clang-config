# clang-configs

> Multi-language, multi-style, plug-and-play formatting arsenal.  
> Break stuff, write code, auto-format like a pro. Chaos approved. 😏

## 🧩 Overview

`clang-configs` is a collection of `.clang-format` files for C, Python, and later Java (secret sauce 😎).  
Supports multiple styles:

- **C:** K&R, Google, Betty  
- **Python:** Google, PEP8-ish  
- **Java:** Google (coming soon)

Use it to instantly format any project, switch styles on the fly, and maintain **consistent, professional code**.

---

## ⚡Installation

Clone the repo and run the installer:

```bash
git clone <your-repo-url>
cd clang-configs
./install.sh
source ~/.zshrc
```

The install.sh script will:

Create ~/clang-configs if it doesn't exist

Copy all style files

Add a handy use_clang() function to your .zshrc for easy style switching

## 🛠️Usage
Copy the style you want into your project:

```bash
use_clang C Betty       # for C Betty style
use_clang Python Google # for Python Google style
```
Then format your files:

```bash
clang-format -i *.c *.h    # format all C files
clang-format -i *.py       # format all Python files
```
Switch styles at any time:

```bash
use_clang C K&R
clang-format -i *.c *.h
```

## 📌 Notes
C K&R & Google use spaces for indentation

C Betty uses tabs to comply with the Holberton linter

Python styles use spaces only (Google or PEP8-ish)

## 🚀 Future Plans
Add Java styles (secret sauce)

Expand to other languages

Keep adding styles for flexible, multi-language formatting domination
