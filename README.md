# My First Website - Python Setup

This project has a Python 3.13 virtual environment in `.venv` and a minimal Flask app.

Quick start (PowerShell):

```powershell
# Activate venv
.\.venv\Scripts\Activate.ps1

# Run the Flask app
python app.py
```

To install requirements manually:

```powershell
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
```

How to start the app

PowerShell (recommended on Windows):

```powershell
# Run start script which activates the venv and runs app.py
.\start.ps1

# Quick test of activation (prints versions)
.\start.ps1 -Test
```

CMD / batch:

```cmd
start.cmd
```
