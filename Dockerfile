# base image that you will build on 
FROM node

# all following commands withh run in the mentioned dir (cd /var/www/app)
WORKDIR /var/www/app

# to prevent npm reinstall if package.json has not been changed
# docker will use the cache and be faster when building an new image
COPY package.json /var/www/app

# this cmd will run when the image is build
RUN npm install

# copy files from current dir to the containers defined path 
# you can exclude some files with ".dockerignore" similar to .gitignore
COPY . /var/www/app
# COPY . ./ 

# build time arguments only availavle in the docker file
# when you build the image you can pass --build-arg DEFAULT_PORT=3000 if you did all subsequent commands will be reevaluated
ARG DEFAULT_PORT 80

# set a .env variable to be accessed in the application also 
ENV PORT=$DEFAULT_PORT

# open mentioned port on the container when it's started
# taking it from .env variable
EXPOSE ${PORT}

# [Anonymos Volumes] will mount mentioned container/dir on the host os,
# the location will be managed by docker (docker volume ls) it exists as long as the container is alive one it's deleted it will be gone
VOLUME [ "/var/www/app" ] # equvalen to (-v /var/www/app) when runnign the image

# [Named Volumes]
VOLUME [ "somename:/var/www/app" ]

# [Bind Mount] two way binding
VOLUME [ "/Users/os/PhpstormProjects/docker-test:/var/www/app" ]

# this cmd will run on the containers after they started (it should be the last command in Dockerfile)
# if you pass a CMD after the image name it will override this [docker run <image> <CMD>]
CMD [ "node", "server.js"]

# this cmd will run on the containers after they started (it should be the last command in Dockerfile)
# if you pass a CMD after the image name it be appended to this CMD [docker run node init] equvalent to [docker run node npm init]
ENTRYPOINT [ "npm" ]


# multi stage images

FROM node:14-alpine as build
WORKDIR /app
COPY pachage.son .
RUN npm install
COPY . .
RUN npm run build

FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]

# copy with new permissions 
COPY --chmod=100 ./conf/boot /root/boot
