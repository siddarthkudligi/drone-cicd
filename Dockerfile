# Use an official Node.js image as the base image
FROM node:14 as builder

# Set the working directory in the container
WORKDIR /app/

# Copy the package.json and package-lock.json to the container
COPY frontend/package*.json ./

# Install frontend dependencies
RUN npm install

# Copy the frontend source code
COPY frontend ./

# Build the frontend
RUN npm run build


