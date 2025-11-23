FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production

COPY . .

RUN npm run build --if-present

EXPOSE 4200

CMD ["npm", "start"]
