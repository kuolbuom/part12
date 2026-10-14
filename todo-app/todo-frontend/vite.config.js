import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],

  server: {
    host: "0.0.0.0",
    allowedHosts: ["todo-frontend"],
  },
  //host: "0.0.0.0" lets Vite accept connections from outside its own container.
  //allowedHosts: ["todo-frontend"] allows requests with that hostname.

  test: {
    environment: "jsdom",
    setupFiles: "./src/setupTests.js",
  },
});
