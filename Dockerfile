# Use the latest Ubuntu image
FROM ubuntu:latest

# Optional: Provide metadata about who maintains this image
LABEL maintainer="Your Name <youremail@domain.tld>"

# Update apt, install Python 3, pip, virtualenv prerequisites, and clean up
RUN apt-get update -y && \
    apt-get install -y python3 python3-pip python3-venv python3-dev && \
    rm -rf /var/lib/apt/lists/*

# Create a virtual environment in /opt/venv
RUN python3 -m venv /opt/venv

# Ensure subsequent commands use the virtual environment
ENV PATH="/opt/venv/bin:$PATH"

# Set the working directory for your application
WORKDIR /app

# Copy in requirements first for Docker layer caching
COPY requirements.txt /app

# Install Python dependencies into the virtual environment
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application’s files
COPY . /app

# The container will run your Python app by default
ENTRYPOINT ["python"]
CMD ["flask_web/app.py"]

