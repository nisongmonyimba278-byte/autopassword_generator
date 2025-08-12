# AutoPassword Generator

A small Python project that generates secure passwords using best practices.

## Features
- Uses Python's `secrets` module for cryptographic randomness.
- CLI + optional Tkinter GUI (`--gui`).
- Options: length, count, include/exclude symbols/digits/upper/lower, avoid ambiguous characters, pronounceable passwords.
- Copies the first generated password to the clipboard if `pyperclip` is installed.

## Requirements
- Python 3.8+ recommended (uses only stdlib except optional `pyperclip`).
- Optional: `pyperclip` for clipboard support:
  ```
  pip install pyperclip
  ```

## Files
- `autopassword.py` - Main script (CLI and GUI).
- `run-autopassword.ps1` - Windows PowerShell script to run the generator easily.
- `.gitignore` - Common ignores.
- `README.md` - This file.

## Quick usage
CLI:
```
python autopassword.py --length 20 --count 3
```

Pronounceable/memorable passwords:
```
python autopassword.py --length 12 --pronounceable
```

GUI:
```
python autopassword.py --gui
```

On Windows you can double-click or right-click -> Run with PowerShell the included `run-autopassword.ps1`.

## Security notes
- This tool is intended for generating passwords locally. Do not paste generated passwords into untrusted websites.
- For automated use in scripts, treat generated passwords as secrets and store them securely (password manager, OS keyring, etc.)

