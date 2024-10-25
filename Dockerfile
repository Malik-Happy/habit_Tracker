# Use Node.js 16 LTS version instead of the latest to avoid compatibility issues
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

# Build the client app
RUN npm install
WORKDIR /usr/src/app/client
RUN npm install
RUN npm run build

EXPOSE 8000

# Run the app
CMD ["node", "server.js"]
