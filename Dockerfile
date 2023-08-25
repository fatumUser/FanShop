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

# Expose the port for the application
# Added the EXPOSE command to specify the port that the application listens on
EXPOSE 3000

# Define the entry point for the container
# Changed from CMD to ENTRYPOINT because the container was before exiting becoming healthy
# Using ENTRYPOINT allows the container to run in the the foreground command and keeps the container up a
ENTRYPOINT ["yarn", "start"]
