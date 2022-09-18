FROM node

WORKDIR /frontend

COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts -g --silent

COPY . ./