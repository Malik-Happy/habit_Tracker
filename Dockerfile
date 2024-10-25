# Use Node.js 16 LTS version instead of the latest to avoid compatibility issues
FROM node:16

# Set the legacy OpenSSL provider option to prevent crypto compatibility issues
ENV NODE_OPTIONS=--openssl-legacy-provider

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

# Build the client app
RUN npm install && cd client && npm install && npm run build

Expose 8000

# Run the app
CMD ["node", "server.js"]
