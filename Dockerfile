FROM node:14-alpine

LABEL maintainer="facundocapua@gmail.com"

RUN addgroup -S artillery && adduser -S artillery -G artillery

WORKDIR /artillery

RUN npm install -g --ignore-scripts artillery

USER artillery

ENTRYPOINT ["artillery"]