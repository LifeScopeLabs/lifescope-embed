FROM node:12

WORKDIR /usr/src/lifescope-embed

COPY package.json ./

RUN npm install --production

COPY . .

EXPOSE 8061
CMD ["npm", "run", "serve"]