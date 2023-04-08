#Use the node:10-alpine image as a base to
#create a directory for the app and its node_modules with node as its owner
#install all packages in package.json
#expose port 8080 and run the app
#the docker lecture will help you complete this file 
#there should be a total of 9 lines

FROM node:10-alpine
RUN mkdir ./app && chown -R node:node ./app
WORKDIR /app 
COPY package.json /app
EXPOSE 8080
USER node
RUN npm install
COPY . /app
CMD ["node", "app.js"]


