# 📖 Autobiography Website Template

A beautiful, responsive Ruby on Rails template for creating personal autobiography websites with modern Tailwind CSS styling.

## ✨ Features

- **📱 Fully Responsive** - Works perfectly on desktop, tablet, and mobile
- **🎨 Modern Design** - Clean, professional layout with Tailwind CSS
- **📚 Chapter System** - Organize your life story into chapters
- **🖼️ Photo Galleries** - Beautiful image galleries with descriptions
- **🔐 Authentication** - Secure login system for content management
- **📝 Rich Content** - Support for text, images, and multimedia
- **🎯 SEO Optimized** - Search engine friendly structure
- **⚡ Fast Performance** - Optimized for speed and performance

## 🚀 Quick Start

### Prerequisites
- Ruby 3.0+
- Rails 7.0+
- Node.js & Yarn
- SQLite (or PostgreSQL for production)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/autobiography-template.git
   cd autobiography-template
   ```

2. **Install dependencies**
   ```bash
   bundle install
   yarn install
   ```

3. **Setup database**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. **Start the server**
   ```bash
   rails server
   ```

5. **Visit your site**
   Open http://localhost:3000 in your browser

## 🎨 Customization

### Change Colors & Branding

The template uses Tailwind CSS for easy customization:

1. **Update colors** in `app/assets/stylesheets/application.css`
2. **Replace images** in `public/` directory
3. **Modify text** in view files under `app/views/`

### Key Files to Customize

- `app/views/layouts/application.html.erb` - Main layout and navigation
- `app/views/pages/about.html.erb` - About page content
- `public/profile.jpg` - Main profile image
- `public/icon.png` - Site favicon and icon

## 📁 Structure

```
app/
├── controllers/     # Application logic
├── models/         # Data models
├── views/          # HTML templates
│   ├── layouts/    # Main layout files
│   ├── chapters/   # Chapter pages
│   ├── photos/     # Gallery pages
│   └── pages/      # Static pages
└── assets/         # CSS, JS, and images
```

## 🛠️ Built With

- **Ruby on Rails 7** - Web framework
- **Tailwind CSS** - Utility-first CSS framework
- **SQLite/PostgreSQL** - Database
- **Stimulus** - JavaScript framework
- **Turbo** - SPA-like page acceleration

## 📖 Documentation

- [Customization Guide](docs/CUSTOMIZATION.md)
- [Deployment Guide](docs/DEPLOYMENT.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)

## 💰 License

This template is available for purchase. See [LICENSE.md](LICENSE.md) for details.

## 🤝 Support

Need help? Contact us at support@yoursite.com

## 🌟 Demo

Visit the [live demo](https://autobiography-template-demo.herokuapp.com) to see it in action.

---

**Perfect for:**
- Personal memoirs and autobiographies
- Family history websites
- Professional biography sites
- Legacy preservation projects
- Genealogy documentation
