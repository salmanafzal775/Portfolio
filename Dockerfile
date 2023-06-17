# Use a lightweight Node.js image as the base
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the container
COPY package.json yarn.lock ./

# Install project dependencies
RUN yarn install

# Copy the entire app directory to the container
COPY . ./

# Build the app
RUN yarn build

# Set the command to run the app
CMD ["yarn", "start"]
