#==================== Building Stage ================================================ 

# Create the image based on the official Node 8.9.0 image from Dockerhub
FROM node:8.9.4-alpine as node

# Create a directory where our app will be placed. 
RUN mkdir -p /usr/src/ng-app

# Change directory so that our commands run inside this new directory
WORKDIR /usr/src/ng-app

# Copy dependency definitions
COPY package.json /usr/src/ng-app

# Install dependencies using npm
RUN yarn install

# Get all the code needed to run the app
COPY . /usr/src/ng-app

# Expose the port the app runs in
EXPOSE 4200

#Build the app
RUN npm run build -- --prod

#==================== Setting up stage ==================== 
# Create image based on the official nginx - Alpine image
FROM nginx:1.13.7-alpine

COPY --from=node /usr/src/ng-app/dist/ /usr/share/nginx/html

COPY ./nginx-to-do-app.conf /etc/nginx/conf.d/default.conf
