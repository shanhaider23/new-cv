# Use a Node.js base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Vue.js application
RUN npm run build

# Install a lightweight web server to serve static files
RUN npm install -g serve

# Expose the port the app will run on
EXPOSE 5000

# Serve the Vue.js application
CMD ["serve", "-s", "dist", "-l", "5000"]
