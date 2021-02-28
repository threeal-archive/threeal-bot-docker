FROM ubuntu:focal

# Create a test script
RUN echo -e '#!/bin/bash' > /bin/runtest && chmod +x /bin/runtest

# Install curl
RUN apt-get update && apt-get install -y curl

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN echo -e 'node --version || $?' >> /bin/runtest

# Install yarn
RUN npm install --global yarn
RUN echo -e 'yarn --version || $?' >> /bin/runtest

# Install Python 3 and pip
RUN apt-get update && apt-get install -y python3 python3-pip
RUN echo -e 'python3 --version || $?' >> /bin/runtest

# Upgrade pip
RUN python3 -m pip install --no-cache --upgrade pip

# Install Rasa Open Source
RUN pip3 install --no-cache rasa
RUN echo -e 'rasa --version || $?' >> /bin/runtest
