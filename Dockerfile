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

# List the contents of the directory to ensure the build folder exists
RUN ls -alh /app  
