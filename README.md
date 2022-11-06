# Devops Python Template project

[![Python application CI/CD with Github Actions](https://github.com/AbdullahMakhdoom/Devops-python/actions/workflows/cicd_python.yml/badge.svg)](https://github.com/AbdullahMakhdoom/Devops-python/actions/workflows/cicd_python.yml)

  A simple python web app that fetches wikipedia pages against searches and extracts phrases from the wiki page, using an NLP python package called TextBlob. This repository is meant to be a depiction of DevOps practices that are followed in production-grade python codebase. 
  - Github Actions are used for CI/CD workflow.
  - Code is automatically formatted using `black` python package.
  - Linting is done using `pylint`
  - Command Line tools are made out of python functions using a powerful python package, `fire`. This allows quick experimentation of functions using various inputs.
  - Test-driven development is done using `pytest`. 
  - `Makefile` for frequently used commands during developement.
  - `FastAPI` for quickly developing a web app 
  - Containerised the web app using `docker` and deployed to AWS ECR service.
  
AWS App Runner can then be used to deploy the container in a continuous manner. Every time a new docker image is pushed from Github to ECR, AWS App Runner will automatically deploy the newly pushed container.
  


