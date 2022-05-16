# syntax=docker/dockerfile:1
FROM node:14-alpine AS development
ENV NODE_ENV development
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install 
COPY . .
CMD [ "npm", "start" ]

EXPOSE 3000