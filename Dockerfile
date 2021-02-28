FROM ubuntu:focal

# Create a test script
RUN echo '#!/bin/bash' > /bin/runtest && chmod +x /bin/runtest

# Install curl
RUN apt-get update && apt-get install -y curl

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN echo 'node --version || exit $?' >> /bin/runtest

# Install yarn
RUN npm install --global yarn
RUN echo 'yarn --version || exit $?' >> /bin/runtest

# Install Python 3 and pip
RUN apt-get update && apt-get install -y python3 python3-pip
RUN echo 'python3 --version || exit $?' >> /bin/runtest

# Upgrade pip
RUN python3 -m pip install --no-cache --upgrade pip

# Install Rasa Open Source
RUN pip3 install --no-cache rasa
RUN echo 'rasa --version || exit $?' >> /bin/runtest
