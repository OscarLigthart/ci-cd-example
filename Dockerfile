#
# File: Dockerfile
# Auth: Oscar Ligthart
# Desc: Sample Dockerfile to be pushed through the workflow
#
#############################################################

# inherit image name and tag
ARG IMAGE_NAME
ARG TAG
FROM ${IMAGE_NAME}:${TAG}

# copy the contents of the repo into the Docker image
COPY . /app

# navigate to the app working directory
WORKDIR /app

# build the application
RUN python3 -m pip install .

# Run the script on startup
CMD python3 scripts/main.py
