FROM node:12-slim

WORKDIR /transformco-client_portal
ENV NODE_ENV development

COPY package.json /transformco-client_portal/package.json

RUN npm install pm2 -g
RUN npm install --production

COPY .env /transformco-client_portal/.env
COPY . /transformco-client_portal

CMD ["pm2-runtime","app.js"]

EXPOSE 8080
