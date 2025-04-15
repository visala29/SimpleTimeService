# Task 1 - Minimalist Application Development / Docker / Kubernetes

## 🔧 Prerequisites

Make sure you have these installed:

- [Python](https://www.python.org/downloads/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Git](https://git-scm.com/downloads)
- [VS Code](https://code.visualstudio.com/)
- Make sure your docker is running while doing this entire process

### 1. Clone the Repository

git clone https://github.com/visala29/particle41.git
checkout to simpletimeservice branch
create a folder 
example: mkdir simpletimeservice
cd simpletime service
open the folder in vscode editor

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
