# Base image
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Copy the .env and .env.development files
# COPY .env .env.development ./

# Install pm2
RUN npm install pm2 -g

# Creates a "dist" folder with the production build
RUN npm run build

# Expose the port on which the app will run
EXPOSE 3000

# Start the server using the production build
# CMD ["npm", "run", "start:prod"]
# CMD [ "pm2-runtime", "npm", "--", "start" ] - this works too
CMD ["pm2-runtime", "dist/main.js", "--name", "apiServer"]