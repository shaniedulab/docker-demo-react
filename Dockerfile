#perent image
FROM node:16-alpine 

#working directory
WORKDIR /app

#copy package.json 
COPY package.json .

#install dependies
RUN npm install

#copy all source code
COPY . .

#prot no on project will run
EXPOSE 3000

#for running project in container
CMD ["npm","start"]