# containerize with docker

# Stage 1: Build and test the frontend
FROM node:24 AS build-stage

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci

COPY . .

# Run tests first. The build stops if they fail.
RUN npm test


# Set before the Vite production build
ENV VITE_BACKEND_URL=http://localhost:3001

# Build production-ready frontend files
RUN npm run build

# Stage 2: Serve the production frontend
FROM nginx:1.29-alpine

COPY --from=build-stage /usr/src/app/dist /usr/share/nginx/html

EXPOSE 80

# build the image with the following command:
  # docker build -t todo-frontend .
# run the container with the following command:
  # docker run -d --name todo-frontend -p 5173:80 todo-frontend

#   What each package does:
# - vitest — runs your tests.
# - jsdom — provides a simulated browser environment.
# - @testing-library/react — renders React components in tests.
# - @testing-library/jest-dom — provides assertions such as checking that text appears on the screen.

# This registers the DOM matchers for Vitest./todo-frontend/src/setupTests.js
# import '@testing-library/jest-dom/vitest'

# Configure Vitest to use jsdom/vite.config.js
# Add this => test: {
  #   environment: 'jsdom',
  #   setupFiles: './src/setupTests.js',
  #  } to your existing Vite configuration.