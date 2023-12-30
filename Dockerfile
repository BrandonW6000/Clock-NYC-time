# Use a Node.js base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the JavaScript, HTML, and CSS files into the container
COPY index.html .
COPY script.js .
COPY style.css .

# Install http-server globally (you can change this if you use a different server)
RUN npm install -g http-server

# Expose port 8080
EXPOSE 8080

# Define the command to run the server and host the clock application
CMD ["http-server", "-p", "8080"]
