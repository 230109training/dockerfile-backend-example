# Specify the Base Image that we are building this new image from
FROM node:16

# Set the working directory inside the image
# Similar to the "cd" command
WORKDIR /

# Copied files over to the image
# index.js, package.json, package-lock.json
COPY . .

# Install dependencies (node_modules folder)
RUN npm install

# Doesn't actually do anything. It's basically just documentation for other developers
# to know what port is being used in the container
EXPOSE 8080

# node index.js
# CMD v. ENTRYPOINT: CMD can be overridden, ENTRYPOINT cannot be overridden
ENTRYPOINT ["node", "index.js"]