FROM node:24

WORKDIR /usr/src/app

COPY . .

# Change npm ci to npm install since we are going to be in development mode
RUN npm install

# npm run dev is the command to start the application in development mode
CMD ["npm", "run", "dev", "--", "--host"]

# build the image with the following command:
  # docker build -f ./dev.Dockerfile -t todo-frontend-dev .
  # Vite will be served in port 5173, so you can test that it works by running a container with that port published.

# run the container with the following command:
  # docker run -d --name todo-frontend-dev -p 5173:5173 todo-frontend-dev

  # Let's do a trial run with the flag -v.
  # docker run -p 5173:5173 -v "$(pwd):/usr/src/app/" todo-frontend-dev 

# start the container in interactive mode and open a bash shell with the following command:
  # To use the -v, we will need to tell it the current directory.
  # docker run -it -v "$(pwd):/usr/src/app/" todo-frontend-dev bash



  # procedures

  # list all containers with the following command:
  # docker ps -a

  # Stop and remove the old frontend container
  # docker rm -f todo-frontend-dev
  # docker rm -f reverse-proxy

  # list all
  # docker ps

  # Start your frontend again
  # docker run -d --name todo-frontend-dev -p 5173:5173 todo-frontend-dev

  # docker ps

  # Test the VS Code volume
  # Once the frontend is running, remember that your last docker run command did not include a volume. To enable live editing from VS Code, you should eventually start it with the volume mounts:
    # docker rm -f todo-frontend-dev

    # Then:
      # docker run -d --name todo-frontend-dev -p 5173:5173 -v "${PWD}:/usr/src/app" -v /usr/src/app/node_modules todo-frontend-dev
      # This time, your local frontend files are mounted into the container.