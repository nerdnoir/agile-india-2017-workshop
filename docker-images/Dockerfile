FROM node:7.7.2

MAINTAINER David Laribee "dave@nerdnoir.com"
ENV REFRESHED_AT 2017-03-11

# Create and set working directory
RUN mkdir -p /var/hello-world/
WORKDIR /var/hello-world/

# Install dependencies
COPY package.json /var/hello-world/
RUN npm install

# Bundle app source
COPY . /var/hello-world

EXPOSE 8080
CMD ["npm", "start"]