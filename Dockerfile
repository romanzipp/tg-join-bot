# Use Node.js LTS Alpine image for smaller size
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install production dependencies only
RUN npm ci --omit=dev

# Copy application code
COPY main.js ./

# Run the bot
CMD ["node", "main.js"]
