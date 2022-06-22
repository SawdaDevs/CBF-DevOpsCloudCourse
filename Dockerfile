# pull official base image
FROM node:lts-alpine

#set working directory
WORKDIR /app

#install app dependencies
COPY package.json ./ 
#copying the file to the root
RUN npm install --silent
#no error logs as output 

#add directories to ./ 
COPY /src /public ./

#start app 
CMD ["npm", "start"]

EXPOSE 3000

