FROM node:14-alpine
WORKDIR /app
COPY package*.json /app
ENV NODE_ENV=development
RUN npm i
COPY . /app
EXPOSE 4200
CMD npm run serve