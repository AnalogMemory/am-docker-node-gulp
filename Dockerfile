# Node based image with Yarn, Gulp, Bower, rsync, lftp components
FROM node:latest

# Ubuntu mirrors
RUN apt-get update

# Repo for Yarn
RUN apt-key adv --fetch-keys http://dl.yarnpkg.com/debian/pubkey.gpg
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    git \
    zip \
    unzip \
    rsync \
    lftp \
    yarn \

RUN apt-get update \
    && npm install -g gulp-cli \
    && npm install -g bower

CMD ["node", "npm", "bower", "gulp", "yarn"]
