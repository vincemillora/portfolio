# build env
FROM node:16-alpine as build
  # update and install dependency
  RUN apk update 
  # create destination directory
  RUN mkdir -p /usr/src/app
  WORKDIR /usr/src/app
  # install modules
  COPY ./package.json ./
  RUN npm install
  # copy the app, note .dockerignore, and build app
  COPY . /usr/src/app/
  RUN npm run build

# run env
FROM nginx:stable-alpine as run-env
  RUN mkdir -p /usr/src/app
  WORKDIR /usr/src/app
  # copy build stage to run
  # COPY --from=build /usr/src/app/dist /usr/share/nginx/html
  COPY --from=build /usr/src/app/dist /usr/src/app
  # COPY ./nginx.conf /usr/share/nginx/nginx.conf
  COPY ./nginx.conf /etc/nginx/nginx.conf
  # expose 3000 on container
  # EXPOSE 80
  # start the app
  # CMD ["index.html"]
  # CMD ["nginx", "-g", "daemon off;"]
