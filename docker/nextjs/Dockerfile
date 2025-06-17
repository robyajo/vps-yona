FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install -g pm2 && npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["pm2-runtime", "npm", "--", "start"]
