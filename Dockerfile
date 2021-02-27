FROM ubuntu:focal

# Install curl
RUN apt-get update && apt-get install -y curl

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get update && apt-get install -y nodejs

# Install yarn
RUN npm install --global yarn
