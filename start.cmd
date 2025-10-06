@echo off
if not exist "%~dp0\.venv\Scripts\activate.bat" (
  echo .venv not found. Create it with: C:\Path\To\Python\python.exe -m venv .venv
  exit /b 1
)
call "%~dp0\.venv\Scripts\activate.bat"
python --version
python app.py
