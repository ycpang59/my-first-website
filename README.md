# My First Website - Python Setup

![CI](https://github.com/ycpang59/my-first-website/actions/workflows/ci.yml/badge.svg)
![GHCR](https://img.shields.io/badge/ghcr-published-brightgreen)
![Pages](https://img.shields.io/badge/pages-pending-yellow)

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

Continuous integration (CI)

This project includes a GitHub Actions workflow at `.github/workflows/ci.yml` that runs the test suite on push and pull requests (targets Python 3.13). The workflow installs dependencies from `requirements.txt` and runs `pytest`.

Docker

Build the Docker image:

```powershell
# From the project root
docker build -t my-first-website:latest .
```

Run the container locally (maps container port 5000 to host port 5000):

```powershell
docker run --rm -p 5000:5000 my-first-website:latest
```

Publish Docker image (GitHub Packages)

This repository includes a GitHub Actions workflow `.github/workflows/docker-publish.yml` which builds the Docker image and publishes it to GitHub Container Registry (ghcr.io) using the automatically provided `GITHUB_TOKEN`.

Image name example:

```
ghcr.io/<your-github-username>/my-first-website:latest
```

Pull the published image locally:

```powershell
docker pull ghcr.io/ycpang59/my-first-website:latest
```

Live site (when published): https://ycpang59.github.io/my-first-website/
