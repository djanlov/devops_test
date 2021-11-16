FROM node:alpine AS base
ADD . /app
WORKDIR /app
RUN npm install .

FROM base AS test
CMD npm run test

FROM base AS build
CMD node index.js
EXPOSE 3000
