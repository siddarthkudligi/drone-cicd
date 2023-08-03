# Use an official Node.js image as the base image
FROM node:14 as builder

# Set the working directory in the container
WORKDIR /app/frontend

# Copy the package.json and package-lock.json to the container
COPY frontend package*.json ./

# Install frontend dependencies
RUN npm install

# Copy the frontend source code
COPY frontend .

# Build the frontend
RUN npm run build


# Use an official Nginx image as the base image for serving the built files
FROM nginx:alpine

# Copy the built files from the builder stage to the Nginx image
COPY --from=builder /app/frontend/dist /usr/share/nginx/html


# Expose the port for Nginx to serve the application
EXPOSE 8080

# Start Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]

