FROM node:24-alpine3.21

WORKDIR /app

EXPOSE 3000

COPY package*.json ./

COPY . .

RUN npm install

RUN npm run test

RUN rm -rf tests && rm -rf node_modules

RUN npm install --production

CMD ["node", "app.js"]