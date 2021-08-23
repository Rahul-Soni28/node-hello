#base image for this app/image
FROM node:12

#author information for this image
LABEL Author="rahul989741@gmail.com"


# Create app directory/ and this will be our working dir
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# RUN npm ci --only=production

COPY . .

#expose ports 3000 3001 on which m app is running
EXPOSE 3000 3001

#commands run after running this image.
CMD ["npm", "start"]