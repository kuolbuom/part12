FROM node:24
  
WORKDIR /usr/src/app

COPY --chown=node:node . .

RUN npm ci 

ENV DEBUG=playground:*
  
USER node

CMD ["npm", "start"]

# run the application outside the container with the following command or on a Windows computer
# $env:DEBUG="todo-express-backend:*"; npm start

# containerizing the application with the following command
# docker build -t express-server .
# docker run -p 3124:3001 express-server