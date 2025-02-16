# DockerizingFlask

This repo shows how to containerize a basic Flask app with Docker.

## How
1. **Created a Flask application** (`app.py`) that serves a basic “Hello World” webpage.  
2. **Wrote a Dockerfile** based on Ubuntu, installed Python 3, and set up a virtual environment inside the container.  
3. **Installed Flask** and other dependencies from `requirements.txt`.  
4. **Exposed Flask’s default port** so the container can be accessed externally.

## Why
Containerizing an application with Docker ensures ephemeral, reproducible environments that eliminate “works on my machine” issues. By encapsulating all dependencies, configurations, and runtime settings, Docker allows the same container to run consistently across development, testing, and production. This approach streamlines continuous integration/continuous deployment (CI/CD) pipelines, makes scaling services straightforward, and fosters a modular microservices architecture—critical in modern, cloud-native systems.
