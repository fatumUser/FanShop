
# Use the official Node.js image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /project_2_v2

# Copy the application files into the working directory
COPY . /project_2_v2

# Install the application dependencies
# Changed from 'npm' to 'yarn' because yarn is more efficient and
# compatible with Node.js images
RUN yarn install

# Define the entry point for the container
CMD ["yarn", "start"]
