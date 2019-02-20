#Base image node:alpine
FROM node:alpine

#Specific work dir
WORKDIR /app

#Copy package.json to workdir for dependencies install
COPY ./package.json ./

#Install dependencies 
RUN npm install

#Copy all file project to workdir
COPY ./ ./

#Run start
CMD ["npm", "start"]

##Instructions
## Then run docker build with tags name. Convention for tags name is dockerID/project_name
#$ docker build -t  ecosyn/visitors