# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./

RUN npm install

# Copy the rest of the application (optional if you are using volumes)
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the app with nodemon for development
CMD ["npm", "run", "dev"]
