# Bad B1tch Shop

A modern e-commerce website for fashion, built with React, Vite, Tailwind CSS, and Supabase.

## Features

- **Product Catalog**: Browse products by category (Top, Dress, Jeans, etc.).
- **Cart System**: Add items to cart, view total, and checkout (simulated).
- **Admin Panel**: Manage products (add, edit, delete) and view chat history.
- **Real-time Chat**: Customer support chat using Socket.io.
- **Multi-language Support**: English and Burmese.
- **Responsive Design**: Mobile-friendly with a hamburger menu.

## Tech Stack

- **Frontend**: React, Vite, Tailwind CSS, Framer Motion
- **Backend**: Node.js, Express, Socket.io
- **Database**: Supabase (PostgreSQL)
- **Authentication**: Supabase Auth
- **Storage**: Supabase Storage

## Getting Started

### Prerequisites

- Node.js (v18 or higher)
- npm or yarn
- A Supabase project

### Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/your-username/bad-bitch-shop.git
    cd bad-bitch-shop
    ```

2.  Install dependencies:
    ```bash
    npm install
    ```

3.  Set up environment variables:
    Create a `.env` file in the root directory and add your Supabase credentials:
    ```env
    SUPABASE_URL=your_supabase_url
    SUPABASE_ANON_KEY=your_supabase_anon_key
    JWT_SECRET=your_jwt_secret
    ```

4.  Start the development server:
    ```bash
    npm run dev
    ```

5.  Open your browser and navigate to `http://localhost:3000`.

## Deployment

This project is ready to be deployed on platforms like Render, Vercel, or Netlify.

### Render (Recommended for Full Stack)

1.  Create a new Web Service on Render.
2.  Connect your GitHub repository.
3.  Set the Build Command to `npm install && npm run build`.
4.  Set the Start Command to `npm start`.
5.  Add your environment variables in the Render dashboard.

## License

This project is licensed under the MIT License.
