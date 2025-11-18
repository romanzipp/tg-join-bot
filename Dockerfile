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

# Set environment variables (will be overridden at runtime)
ENV BOT_TOKEN="" \
    DEVELOPER_CHAT_ID=""

# Run the bot
CMD ["node", "main.js"]
