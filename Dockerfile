FROM node:12
# Create app directory

RUN pwd
RUN ls

WORKDIR /usr/src/app

RUN pwd

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
RUN ls
COPY package*.json ./
RUN ls

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
RUN ls
COPY . .
RUN ls


EXPOSE 8080

CMD [ "node", "app.js" ]
