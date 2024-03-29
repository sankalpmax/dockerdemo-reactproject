# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Build the app
RUN npm run build

# Expose port 80 to the outside world
EXPOSE 3000

# Define the command to run your app using npm
CMD ["npm", "start"]
