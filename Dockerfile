# Import nodejs base os with version
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Copy app directory files and directory in container
ADD app /usr/src/app/

# Verify app directory in container
RUN ls /usr/src/app

# Upgrade npm modules
RUN npm install --location=global npm@8.5.1

# Find extra packages
RUN npm fund

# Fix dependencies
#RUN npm audit fix

# Install app modules
RUN npm install

# Clean npm cache
RUN npm cache clean --force

# Set env for input variables 
ENV HOSTIP=http://localhost
ENV PORT=8080

# Expose port
EXPOSE $PORT

# Docker entry point command
CMD [ "node", "/usr/src/app/server.js" ]
