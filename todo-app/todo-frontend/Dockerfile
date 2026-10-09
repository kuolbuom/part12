# containerize with docker

FROM node:24 AS build-stage

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci

COPY . .

# Set before the Vite production build
ENV VITE_BACKEND_URL=http://localhost:3001

RUN npm run build

FROM nginx:1.29-alpine

COPY --from=build-stage /usr/src/app/dist /usr/share/nginx/html

EXPOSE 80

# build the image with the following command:
  # docker build -t todo-frontend .
# run the container with the following command:
  # docker run -d --name todo-frontend -p 5173:80 todo-frontend