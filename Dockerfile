FROM python:3.13-slim

# Prevent Python from writing pyc files to disc and buffer stdout/stderr
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Install build deps for some packages (kept minimal)
RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install runtime deps. We install gunicorn for production server.
COPY requirements.txt ./
RUN python -m pip install --upgrade pip \
    && pip install -r requirements.txt gunicorn

# Copy project
COPY . /app

EXPOSE 5000

# Run the app with gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000", "--workers", "1"]
