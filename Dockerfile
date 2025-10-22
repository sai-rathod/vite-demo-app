FROM node:20-alpine
WORKDIR /myapp
COPY . .
RUN npm install
EXPOSE 5173
CMD ["npm","run","dev","--","--host","0.0.0.0"]

