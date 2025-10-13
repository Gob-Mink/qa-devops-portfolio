# qa-devops-portfolio# QA & DevOps Portfolio: Automated Test Pipeline

This repository demonstrates a **full QA automation and DevOps workflow** using Python, Playwright, Docker, Jenkins, and GitHub Actions. It is designed as a portfolio project to showcase end-to-end automation and DevOps practices.

---

## :small_blue_diamond: Project Overview

The project includes:

- **Automated tests** for a sample web app (e.g., [SauceDemo](https://www.saucedemo.com/)) using **Python Playwright**.
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

## :open_file_folder: Repo Structure
