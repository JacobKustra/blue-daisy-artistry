FROM node:20.17.0 as builder

WORKDIR /src/app
COPY package*.json ./
RUN npm install --production
COPY . .
RUN npm run build
EXPOSE 3000
CMD [ "npm","run","start" ]