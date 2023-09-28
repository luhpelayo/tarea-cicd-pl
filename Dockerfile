FROM node:alpine
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
ENV API_URL=http://default-api-url.com
RUN npm run build
EXPOSE 3000
CMD [ "echo","$API_URL"]
CMD [ "npm","start" ]