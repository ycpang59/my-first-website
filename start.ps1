Param(
    [switch]$Test
)

$venvActivate = Join-Path -Path $PSScriptRoot -ChildPath ".venv\Scripts\Activate.ps1"

if (-not (Test-Path $venvActivate)) {
    Write-Error ".venv not found. Create it with: C:\Path\To\Python\python.exe -m venv .venv"
    exit 1
}

# Dot-source the activation script so the venv is activated in this session
. $venvActivate

if ($Test) {
    Write-Output "(start.ps1 -Test) Python: $(python --version)"
    Write-Output "(start.ps1 -Test) pip: $(python -m pip --version)"
    exit 0
}

# Default behavior: run the Flask app
Write-Output "Starting app.py using Python: $(python --version)"
python app.py
