FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
RUN npm install -g @angular/cli

COPY . .

RUN ng build --configuration production

EXPOSE 4200

CMD ["npm", "start"]
