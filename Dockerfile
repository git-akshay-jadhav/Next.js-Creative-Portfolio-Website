# Use Node.js LTS as the base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Expose the port your app runs on (default 3000)
EXPOSE 3000

# Start the app in production mode
CMD ["npm", "start"]
