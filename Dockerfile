FROM ubuntu:focal

# Install curl
RUN apt-get update && apt-get install -y curl

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get update && apt-get install -y nodejs

# Install yarn
RUN npm install --global yarn

# Install Python 3 and pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Upgrade pip
RUN python3 -m pip install --no-cache --upgrade pip

# Install Rasa Open Source
RUN pip3 install --no-cache rasa
