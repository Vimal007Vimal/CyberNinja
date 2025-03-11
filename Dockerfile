# Use Python 3.9 as base image
FROM python:3.9-slim-buster as builder

# Set working directory
WORKDIR /app

# Install build dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    g++ \
    libxml2-dev \
    libxslt-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip wheel --no-cache-dir --no-deps --wheel-dir /app/wheels -r requirements.txt

# Final stage
FROM python:3.9-slim-buster

WORKDIR /app

# Install runtime dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    libxml2 \
    libxslt1.1 \
    && rm -rf /var/lib/apt/lists/*

# Copy wheels from builder stage
COPY --from=builder /app/wheels /wheels

# Copy the entire project structure
COPY . .

# Install dependencies from wheels
RUN pip install --no-cache /wheels/* && \
    rm -rf /wheels

# Create non-root user for security
RUN useradd -m cyberuser && \
    chown -R cyberuser:cyberuser /app
USER cyberuser

# Set Python environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONPATH=/app

# Run cyberninja.py when container starts
ENTRYPOINT ["python", "CyberNinja/Cyber-Ninja/cyberninja.py"]
