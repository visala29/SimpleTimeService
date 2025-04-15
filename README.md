# Task 1 - Minimalist Application Development / Docker / Kubernetes

## 📦 Features

- Returns current timestamp and requester IP address.
- Lightweight Python Flask app.
- Runs as a *non-root user* in Docker.
- Docker image ready to be deployed on Kubernetes / ECS / EKS / Lambda etc.

## 🔧 Prerequisites

Make sure you have these installed:

- [Python](https://www.python.org/downloads/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Git](https://git-scm.com/downloads)
- [VS Code (Optional)](https://code.visualstudio.com/)


### 1. Clone the Repository

git clone https://github.com/visala29/particle41.git
checkout to simpletimeservice branch

### 2. Build the Docker Image
docker build -t simpletimeservice .

### 3. Run the Docker Container
docker run -p 5000:5000 simpletimeservice

### 4. Access the Service
Open your browser and go to:
http://localhost:5000/

✅ You will get a JSON response like:
{
  "ip": "172.17.0.1",
  "timestamp": "2025-04-15T16:14:27.350373"
}
