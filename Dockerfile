FROM node:lts

RUN apt-get update && \
  apt-get install -y \
    libgtk2.0-0 \
    libnotify-dev \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    xvfb \
    awscli \
    jq

RUN yarn global add serve wait-on typescript

# versions of local tools
RUN node -v
RUN npm -v
RUN yarn -v
