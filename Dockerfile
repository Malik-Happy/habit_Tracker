# Use Node.js 16 LTS version
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

# Install dependencies
RUN npm install

# Build the client app
WORKDIR /usr/src/app/client
RUN npm install && npm run build

# Expose the port
EXPOSE 8000

# Run the app
CMD ["node", "../server.js"]
