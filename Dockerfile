# Use a specific version of Node.js for better compatibility (Node.js 12 is recommended for react-scripts v3.x)
FROM node:12-alpine

# Create and set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the entire codebase to the working directory (after installing dependencies)
COPY . .

# Expose the port for the app (React default port is 3000)
EXPOSE 3000

# Define the command to start the application (npm start for React apps)
CMD ["npm", "start"]
