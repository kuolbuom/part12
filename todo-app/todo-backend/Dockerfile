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

# check the container name with the following command
# docker ps

# 2. Start MongoDB and Redis
# If you already have docker-compose.dev.yml in todo-backend, run:
# docker compose -f docker-compose.dev.yml up -d


# The -d means run the containers in the background.
# Check that they are running:
# docker ps


# You should see your MongoDB container and, if configured in Compose, your Redis container.
# 3. Start your backend
# Still in todo-backend, run:
# npm start


# Keep this terminal open.
# 4. Start your frontend
# Open another VS Code terminal and navigate to todo-frontend:
# cd ..\todo-frontend
# docker compose -f docker-compose.dev.yml up --build


# Open http://localhost:5173.