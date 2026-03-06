# How to Connect a Custom Domain (with HTTPS)

To get your own domain (like `www.badb1tch.com`) with a secure lock icon (HTTPS), follow these 3 steps.

## Step 1: Buy a Domain Name
You need to purchase your name from a **Domain Registrar**.
*   **Namecheap** (Recommended, cheap & good support)
*   **GoDaddy**
*   **Squarespace Domains** (formerly Google Domains)

Cost: Usually $10 - $15 per year.

## Step 2: Host Your Website
Since your app uses a database file (`morwear.db`) and a custom server, you cannot use simple static hosting like Netlify. You need a server that supports **Node.js**.

### Recommended Option: Railway.app (Best for SQLite)
Railway is great because it allows you to keep your database file safe even when the server restarts (using a "Volume").

1.  **Upload your code to GitHub**.
2.  Sign up for **Railway.app**.
3.  Click **"New Project"** -> **"Deploy from GitHub repo"**.
4.  Select your repository.
5.  **Important**: To keep your products/admin data safe, you need to add a "Volume" in Railway settings and mount it to `/app/morwear.db`. (Or, switch back to Supabase for the database).

### Alternative: Render.com (Free Tier available)
1.  Sign up for **Render.com**.
2.  Create a **Web Service**.
3.  Connect your GitHub repo.
4.  **Settings**:
    *   Build Command: `npm install && npm run build`
    *   Start Command: `npm run start`
5.  *Warning*: On the free tier, if the server restarts, your added products will disappear (because the database file resets).

## Step 3: Connect Domain & Enable HTTPS

Once your site is running on Railway or Render (e.g., `bad-bitch.railway.app`):

1.  Go to the **Settings** tab of your project on Railway/Render.
2.  Find the **"Custom Domains"** section.
3.  Enter your domain name (e.g., `www.badb1tch.com`).
4.  The host will show you some **DNS Records** (usually an `A` record or `CNAME`).
5.  **Go back to where you bought your domain** (Namecheap/GoDaddy).
6.  Find **"DNS Settings"** or **"Manage DNS"**.
7.  Add the records shown by Railway/Render.

**HTTPS (SSL)**:
*   Railway and Render will **automatically** generate an SSL certificate for you.
*   It might take 15-30 minutes after you update the DNS records for the lock icon to appear.

## Summary
1.  **Buy Domain** (Namecheap).
2.  **Deploy App** (Railway or Render).
3.  **Update DNS** (Copy settings from Host to Registrar).
