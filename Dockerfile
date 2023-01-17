FROM node:16

# Create app directory
WORKDIR /app-grpc

COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 9090
CMD [ "node", "server.js" ]