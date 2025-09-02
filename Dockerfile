# Use official Bun image
FROM oven/bun:latest

# Set working directory
WORKDIR /app

# Copy package.json
COPY package.json ./

# Install dependencies
RUN bun install --production

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 824

# Start the application
CMD ["bun", "start"] 
