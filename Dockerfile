# Use a lightweight Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install app dependencies
COPY package.json ./
RUN npm ci --only=production

# Copy application source
COPY server.js ./

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
