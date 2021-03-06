FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./

# RUN npm install
RUN npm install pm2 -g
RUN npm ci --only=production

COPY . .

EXPOSE 5000

CMD [ "npm", "start" ]