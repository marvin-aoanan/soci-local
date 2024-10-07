# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install
RUN npm install express express-handlebars


# Copy the rest of the application files
COPY . .

# Expose the port that your app runs on
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
