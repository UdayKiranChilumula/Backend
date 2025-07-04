# Use official Node.js LTS base image0
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package files and install dependencies first (for caching)
COPY package*.json ./
RUN npm install

# Copy entire backend source code
COPY . .

# Expose your backend port (e.g., 5000)5
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
