# GitHub Actions Capstone

An end-to-end CI/CD project using GitHub Actions, reusable workflows, Docker, Docker Hub, and automated health checks.

## Application

A simple Flask application with:

- `/` - Application endpoint
- `/health` - Health check endpoint

## CI/CD Pipeline

Pull Request:
Pull Request -> Build & Test -> PR Validation

Main Branch:
Push to main -> Build & Test -> Docker Build & Push -> Deploy to Production

Docker images:
- latest
- sha-<short>

## Docker Image

Docker Hub image:

ask09/github-actions-capstone

## Workflows

- Reusable Build & Test
- Reusable Docker Build & Push
- PR Pipeline
- Main Branch Pipeline
- Scheduled Health Check

## Local Testing

Run tests:

python app/test_app.py

Build Docker image:

docker build -t github-actions-capstone:latest .

Run the application:

docker run -d --name capstone-app -p 5000:5000 github-actions-capstone:latest

Health check:

curl http://localhost:5000/health

Stop and remove the container:

docker stop capstone-app
docker rm capstone-app

## Day 48

Part of the 90DaysOfDevOps learning journey.

#90DaysOfDevOps #DevOpsKaJosh #TrainWithShubham
