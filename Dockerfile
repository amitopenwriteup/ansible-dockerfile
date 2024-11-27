# Use Ubuntu as the base image
FROM ubuntu:22.04

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    software-properties-common \
    git \
    ansible \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
