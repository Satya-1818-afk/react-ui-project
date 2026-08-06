# Stage 1: Build the React Vite application
FROM node:22-alpine AS build

# Set the working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port 80
EXPOSE 5173

# Start Nginx
CMD ["npm", "run", "dev"]