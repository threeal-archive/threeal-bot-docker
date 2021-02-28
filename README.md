# Threeal Bot Docker

A build configuration for a [Docker](https://www.docker.com/) image that contains an environment for [Threeal bot's workspace](https://github.com/threeal/threeal-bot-workspace).

## Prerequisites

- Install [Docker Engine](https://docs.docker.com/engine/) as in [their official guide](https://docs.docker.com/engine/install/).
  > As an alternative, you may build and deploy this project on the cloud using [Docker Hub](https://hub.docker.com/) by pushing this project to an online repository as in [the following guide](https://docs.docker.com/docker-hub/builds/).

## Usage

- Build the Docker image using Docker Engine.
  ```bash
  $ docker build -t threeal/threeal-bot:latest .
  ```
  > As an alternative, you may change the `threeal/threeal-bot:latest` argument with any Docker image name that you desire.
- Run and test the Docker image.
  ```bash
  $ docker run --rm threeal/threeal-bot:latest runtest
  ```
