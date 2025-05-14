FROM node:18-slim

WORKDIR /user/src/app

COPY package.json ./

RUN npm install 

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]