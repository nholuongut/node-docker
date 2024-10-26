FROM node:12
LABEL maintainer="Nho Luong <luongutnho@hotmail.com>"

WORKDIR /app

# Prepare package json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code over to docker
COPY . .

ENV PORT=4000

EXPOSE 4000

# Command to start the application
CMD [ "npm", "start" ]
