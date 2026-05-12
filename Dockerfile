# Use the official Node.js LTS image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json if they exist
COPY package*.json ./

# Install dependencies (if any)
RUN npm install || true

# Copy the rest of the application code
COPY . .

# Expose port (if your app listens on a port, e.g., 3000)
# EXPOSE 3000

# Default command (adjust if your entry point is different)
CMD ["node", "index.js"]
