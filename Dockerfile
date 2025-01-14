FROM node:15.13.0-alpine
 
WORKDIR /usr/src
 
# Copy files
COPY . .
 
# Install dependencies, use frozen lockfile
RUN npm ci
 
EXPOSE 3000
 
CMD [ "npm", "start" ]
