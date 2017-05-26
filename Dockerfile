# Node based image with Yarn, Gulp, Bower, rsync, lftp components
FROM node:latest

# Ubuntu mirrors
RUN apt-get update

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    git \
    zip \
    unzip \
    rsync \
    lftp

RUN apt-get update \
    && npm install -g gulp-cli \
    && npm install -g bower \
    && npm install -g yarn

CMD ["node", "npm", "bower", "gulp", "yarn"]
