## QA & DevOps Portfolio: Automated Test Pipeline

This repository demonstrates a **full QA automation and DevOps workflow** using Python, Playwright, Docker, Jenkins, and GitHub Actions. It is designed as a portfolio project to showcase end-to-end automation and DevOps practices.

---
## Table of Contents
- [Project Overview](#small_blue_diamond-project-overview)
- [Tech Stack](#hammer_and_wrench-tech-stack)
- [Getting Started / Running Locally](#rocket-getting-started--running-locally)
- [CI/CD Pipelines](#cicd-pipelines)
  - [GitHub Actions CI/CD](#github-actions-cicd)
  - [Jenkins Pipeline](#jenkins-pipeline)
  - [How Artifacts & Logs Are Handled](#how-artifacts--logs-are-handled)
- [Workflow Diagram](#gear-workflow-diagram)

---
## :small_blue_diamond: Project Overview

The project includes:

- **Automated tests** for a sample web app running headless in a browsers background using **Python Playwright**.
- **Dockerized environment** ensuring consistent test execution across machines.
- **CI/CD pipelines** using:
  - **GitHub Actions** — automatically runs tests on push and pull request.
  - **Jenkins** — can build and run the Dockerized test suite on a Jenkins server.
- **Artifact management** — screenshots and test logs are saved for review.

---

## :hammer_and_wrench: Tech Stack

- Python 3.11  
- Playwright + pytest  
- Docker  
- GitHub Actions  
- Jenkins (pipeline defined in `Jenkinsfile`)  
- Poetry (dependency management)  

---

## :rocket: Getting Started / Running Locally

#### Local / Docker Execution
Clone the repository and build the Docker image:

```
git clone https://github.com/yourusername/qa-devops-portfolio.git

cd qa-devops-portfolio

docker build -t qa-portfolio .

docker run --rm qa-portfolio
```
- Runs your tests inside a Docker environment.
- Test results will appear directly in your terminal.

---

## CI/CD Pipelines

#### GitHub Actions CI/CD
The workflow runs automatically on push or pull requests to main.

Workflow steps:
1. Checkout repository
2. Set up Python & Poetry
3. Install dependencies and Playwright browsers
4. Run tests inside Docker
5. Upload screenshots, logs, and artifacts

Artifacts and logs are accessible in the [Actions tab](https://github.com/Gob-Mink/qa-devops-portfolio/actions) in the GitHub repository.

---

#### Jenkins Pipeline
Jenkins automates Docker builds and test execution using your Jenkinsfile.

Pipeline steps:

1. Checkout code from GitHub
2. Build Docker image
3. Run tests inside the container
4. Archive artifacts (screenshots/logs) for review

No local setup is required beyond Docker + Jenkins.

---
#### How Artifacts & Logs Are Handled
All test outputs, logs, and screenshots are captured and stored for review:
- GitHub Actions: artifacts are uploaded automatically during workflow runs (screenshots, logs, test reports) and can be downloaded from the Actions → Workflow Run → Artifacts section.

- Jenkins Pipeline: artifacts are archived using the archiveArtifacts step in the Jenkinsfile. Logs and reports can be accessed from the Jenkins job page.

This ensures centralized access, easy debugging, and reproducible results across local, CI, and Jenkins environments.

---
## :gear: Workflow Diagram

```
GitHub Repository
        |
        | push / pull request
        v
GitHub Actions Runner
        |
   Install dependencies
        |
        v
  Run tests inside Docker
        |
        v
Upload screenshots/logs
        |
        v
Review results in Actions UI
```