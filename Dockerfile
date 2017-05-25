# Node based image with Yarn, Gulp, Bower, rsync, lftp components
FROM node:latest

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    git \
    zip \
    unzip \
    rsync \
    lftp \
    yarn

RUN apt-get update \
    && npm install -g gulp-cli \
    && npm install -g bower

CMD ["node", "npm", "bower", "gulp", "yarn"]
