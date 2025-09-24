# Use official lightweight Node.js image
FROM node:slim

# Maintainer (deprecated, better to use LABEL)
LABEL maintainer="student"

# Set working directory
WORKDIR /app

# Copy dependency files first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy application code
COPY . .

# Expose the app port
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
