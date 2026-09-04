FROM node:18-alpine
WORKDIR /app

# Copy package files first to leverage Docker caching layers
COPY package*.json ./

# Clean installation skipping devDependencies
RUN npm ci --omit=dev

# Copy the rest of your server code
COPY . .

EXPOSE 3000
CMD ["node", "server.js"]


