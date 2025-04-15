FROM python:3.9-slim

# Create non-root user
RUN useradd -m appuser

# Set workdir
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Switch to non-root user
USER appuser

# Run the app
CMD ["python", "app.py"]
