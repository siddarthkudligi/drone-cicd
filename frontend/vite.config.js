import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  base: "/",
  server: {
    historyApiFallback: true,
    port: 3003,
    host: "0.0.0.0",
  },
  esbuild: {
    include: /\.(js|jsx|ts|tsx|json)$/, // Adjust this regex as needed for other file types
  },
});

