# Deployment Guide for BAD B1TCH

This application is a full-stack Node.js app with a React frontend, Express backend, and SQLite database.

## 1. Quickest Option: Share the Preview URL
The URL you are currently using (`https://...run.app`) is accessible to anyone you share it with, as long as the development environment is running.

## 2. Permanent Deployment (Render.com)
For a permanent website, **Render** is recommended because it supports the Node.js backend and WebSockets (Socket.io) easily.

### Prerequisites
1. Push this code to a **GitHub repository**.

### Steps on Render
1. Create a new **Web Service**.
2. Connect your GitHub repository.
3. Use the following settings:
   - **Runtime**: Node
   - **Build Command**: `npm install && npm run build`
   - **Start Command**: `npm run start`
4. Add Environment Variables:
   - `NODE_ENV`: `production`
   - `JWT_SECRET`: (Generate a random secure string)

### ⚠️ Important Note on Database (SQLite)
This app uses **SQLite** (`morwear.db`), which is a file-based database.
- On platforms like Render (free tier), Heroku, or Vercel, the filesystem is **ephemeral**.
- **This means every time you redeploy or the server restarts, your products and admin account changes will be reset.**
- **Solution**: For a real production store, you should use a persistent database like **Supabase (PostgreSQL)** or **MongoDB**. 
  - Since we reverted to SQLite for simplicity, be aware that data persistence is limited in cloud serverless environments.
  - To fix this on Render, you would need to add a **Disk** (paid feature) and configure the database path to save there.

## 3. Other Platforms
- **Vercel/Netlify**: These are optimized for static sites. Since this app has a custom Express server for Socket.io, it **cannot** be deployed as a standard static site on Vercel/Netlify.
- **Railway/Fly.io**: Good alternatives to Render that also support persistent volumes for SQLite.
