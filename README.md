# 📖 Digital Autobiography Template

A beautiful, responsive Ruby on Rails template for creating stunning personal autobiography and memoir websites with modern Tailwind CSS styling and PDF export capabilities.

## ✨ Features

- **📱 Fully Responsive** - Works perfectly on desktop, tablet, and mobile
- **🎨 Modern Design** - Clean, professional layout with Tailwind CSS
- **📚 Chapter System** - Organize your life story into chapters
- **🖼️ Photo Galleries** - Beautiful image galleries with descriptions
- **🔐 Authentication** - Secure login system for content management
- **📝 Rich Content** - Support for text, images, and multimedia
- **📄 PDF Export** - Generate beautiful PDF versions of your autobiography
- **🎯 SEO Optimized** - Search engine friendly structure
- **⚡ Fast Performance** - Optimized for speed and performance
- **🔒 Privacy Controls** - Control who can view your content

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

6. **Login to admin area**
   - Email: `admin@example.com`
   - Password: `password123`

## 📄 PDF Export Features

Transform your digital autobiography into beautiful, printable PDFs:

### What You Can Export
- **Complete Autobiography** - Export your entire life story as a single PDF
- **Individual Chapters** - Generate PDFs for specific chapters
- **Photo Collections** - Create photo album PDFs with captions
- **Custom Compilations** - Select specific chapters to include

### PDF Features
- **Professional Formatting** - Clean, readable layouts optimized for print
- **Photo Integration** - High-quality images embedded within the text
- **Table of Contents** - Automatic generation with page numbers
- **Cover Pages** - Customizable covers with your photo and title
- **Print-Ready** - Optimized for both digital viewing and physical printing

### How to Generate PDFs
1. Navigate to any chapter or the main chapters list
2. Click the "Export PDF" button
3. Choose your export options (single chapter or full book)
4. Download your professionally formatted PDF

*Perfect for creating physical books, sharing with family, or preserving your legacy in multiple formats.*

## 🎨 Customization

### Change Colors & Branding

The template uses Tailwind CSS for easy customization:

1. **Update colors** in `app/assets/stylesheets/application.css`
2. **Replace images** in `public/` directory
3. **Modify text** in view files under `app/views/`

### Key Files to Customize

- `app/views/layouts/application.html.erb` - Main layout and navigation
- `app/views/pages/about.html.erb` - About page content
- `public/your-profile-photo.jpg` - Main profile image (replace with your photo)
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

## 🌟 Live Demo

Visit the [live demo](https://autobiography-template-demo.herokuapp.com) to see it in action.

## 🎯 Perfect For

- **Personal Memoirs** - Share your life journey with family and friends
- **Family History** - Preserve stories for future generations  
- **Professional Biographies** - Showcase your career and achievements
- **Legacy Projects** - Create lasting digital monuments to important lives
- **Genealogy Documentation** - Combine family trees with personal stories
- **Gift Creation** - Create meaningful presents for loved ones

## � Why Choose This Template?

**A personal journey through life's chapters, memories, and moments. This digital autobiography template helps preserve stories and photographs for future generations.**

- ✅ **Easy to Use** - No coding experience required for content creation
- ✅ **Professional Results** - Beautiful, publication-quality output
- ✅ **Multiple Formats** - Web viewing AND PDF export
- ✅ **Future-Proof** - Built with modern, maintainable technology
- ✅ **Customizable** - Make it uniquely yours with colors, photos, and content
- ✅ **Secure** - Control access with built-in authentication

## 💰 License

This template is available for use. See [LICENSE.md](LICENSE.md) for details.

## 🤝 Support & Community

- 📧 **Email Support**: Available for technical questions
- 📚 **Documentation**: Comprehensive guides included
- 🐛 **Bug Reports**: Submit issues via GitHub
- 💡 **Feature Requests**: We're always improving!

---

*Transform your memories into a beautiful, lasting digital legacy that can be shared online and printed as a professional book.*
