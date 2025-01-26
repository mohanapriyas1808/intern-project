FROM node:18 AS build

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the application files
COPY . .

# Build the React application
RUN npm run build

# Expose the port the app runs on (adjust if needed)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]  
