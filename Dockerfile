# Dockerfile
FROM node:10

WORKDIR /

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD ["node", "index.js"]

