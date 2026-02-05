# Excalibur Site - Production-Grade Static Site

A modern production-grade static site built with Astro, React, and Tailwind CSS.

## 🚀 Tech Stack

- **Astro** - Static site generator with island architecture
- **React** - Component framework for interactive UI elements
- **Tailwind CSS** - Utility-first CSS framework
- **TypeScript** - Type safety and enhanced developer experience

## 🛠️ Development

### Prerequisites

- Node.js (v18 or higher)
- npm or yarn

### Getting Started

1. Install dependencies:

   ```sh
   npm install
   ```

2. Start the development server:

   ```sh
   npm run dev
   ```

3. Open [http://localhost:4321](http://localhost:4321) in your browser

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build production site
- `npm run preview` - Preview production build locally
- `npm run astro` - Access Astro CLI commands

## 📁 Project Structure

```
├── public/          # Static assets
├── src/
│   ├── components/  # Reusable components
│   ├── layouts/     # Page layouts
│   ├── pages/       # Route pages (.astro, .md, .js, .ts)
│   └── styles/      # Global styles
├── astro.config.mjs # Astro configuration
└── tailwind.config.mjs # Tailwind configuration
```

## 🎨 Styling

This project uses Tailwind CSS for styling. Tailwind classes can be used in both Astro components and React components.

## 🏗️ Architecture

This project follows Astro's island architecture, where React components are only hydrated when needed, resulting in optimal performance and faster loading times.
